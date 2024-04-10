(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41706%_)
      (let* ((_%__stx4436044361%_ _%$stx41706%_)
             (_%g4171141730%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4436044361%_))))
        (let ((_%__kont4436344364%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4436544366%_
               (lambda (_%L41757%_ _%L41759%_ _%L41760%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41759%_
                                   (cons (cons _%L41760%_ _%L41757%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4436044361%_)
              (let ((_%e4171341782%_ (gx#syntax-e _%__stx4436044361%_)))
                (let ((_%tl4171541789%_
                       (let () (declare (not safe)) (##cdr _%e4171341782%_)))
                      (_%hd4171441786%_
                       (let () (declare (not safe)) (##car _%e4171341782%_))))
                  (if (gx#stx-null? _%tl4171541789%_)
                      (_%__kont4436344364%_)
                      (if (gx#stx-pair? _%tl4171541789%_)
                          (let ((_%e4172241747%_
                                 (gx#syntax-e _%tl4171541789%_)))
                            (let ((_%tl4172441754%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4172241747%_)))
                                  (_%hd4172341751%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4172241747%_))))
                              (_%__kont4436544366%_
                               _%tl4172441754%_
                               _%hd4172341751%_
                               _%hd4171441786%_)))
                          (let () (declare (not safe)) (_%g4171141730%_))))))
              (let () (declare (not safe)) (_%g4171141730%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41800%_)
      (let* ((_%__stx4439044391%_ _%$stx41800%_)
             (_%g4180541845%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4439044391%_))))
        (let ((_%__kont4439344394%_
               (lambda (_%L41983%_ _%L41985%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L41985%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L41983%_ '()))
                                   '())))))
              (_%__kont4439544396%_
               (lambda (_%L41912%_ _%L41914%_ _%L41915%_ _%L41916%_)
                 (cons _%L41916%_
                       (cons _%L41915%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41914%_
                                               (foldr (lambda (_%g4193741940%_
                                                               _%g4193841943%_)
                                                        (cons _%g4193741940%_
                                                              _%g4193841943%_))
                                                      '()
                                                      _%L41912%_)))
                                   '()))))))
          (let* ((_%__match4444544446%_
                  (lambda (_%e4182241852%_
                           _%hd4182341856%_
                           _%tl4182441859%_
                           _%e4182541862%_
                           _%hd4182641866%_
                           _%tl4182741869%_
                           _%e4182841872%_
                           _%hd4182941876%_
                           _%tl4183041879%_
                           _%__splice4439744398%_
                           _%target4183141882%_
                           _%tl4183341885%_)
                    (letrec ((_%loop4183441888%_
                              (lambda (_%hd4183241892%_ _%body4183841895%_)
                                (if (gx#stx-pair? _%hd4183241892%_)
                                    (let ((_%e4183541898%_
                                           (gx#syntax-e _%hd4183241892%_)))
                                      (let ((_%lp-tl4183741905%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4183541898%_)))
                                            (_%lp-hd4183641902%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4183541898%_))))
                                        (_%loop4183441888%_
                                         _%lp-tl4183741905%_
                                         (cons _%lp-hd4183641902%_
                                               _%body4183841895%_))))
                                    (let ((_%body4183941908%_
                                           (reverse _%body4183841895%_)))
                                      (let ((_%L41912%_ _%body4183941908%_)
                                            (_%L41914%_ _%tl4183041879%_)
                                            (_%L41915%_ _%hd4182941876%_)
                                            (_%L41916%_ _%hd4182341856%_))
                                        (if (gx#identifier? _%L41915%_)
                                            (_%__kont4439544396%_
                                             _%L41912%_
                                             _%L41914%_
                                             _%L41915%_
                                             _%L41916%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4180541845%_)))))))))
                      (_%loop4183441888%_ _%target4183141882%_ '()))))
                 (_%__match4441944420%_
                  (lambda (_%e4180941953%_
                           _%hd4181041957%_
                           _%tl4181141960%_
                           _%e4181241963%_
                           _%hd4181341967%_
                           _%tl4181441970%_
                           _%e4181541973%_
                           _%hd4181641977%_
                           _%tl4181741980%_)
                    (let ((_%L41983%_ _%hd4181641977%_)
                          (_%L41985%_ _%hd4181341967%_))
                      (if (gx#identifier? _%L41985%_)
                          (_%__kont4439344394%_ _%L41983%_ _%L41985%_)
                          (if (gx#stx-pair? _%hd4181341967%_)
                              (let ((_%e4182841872%_
                                     (gx#syntax-e _%hd4181341967%_)))
                                (let ((_%tl4183041879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4182841872%_)))
                                      (_%hd4182941876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4182841872%_))))
                                  (if (gx#stx-pair/null? _%tl4181441970%_)
                                      (let ((_%__splice4439744398%_
                                             (gx#syntax-split-splice
                                              _%tl4181441970%_
                                              '0)))
                                        (let ((_%tl4183341885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4439744398%_
                                                  '1)))
                                              (_%target4183141882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4439744398%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4183341885%_)
                                              (_%__match4444544446%_
                                               _%e4180941953%_
                                               _%hd4181041957%_
                                               _%tl4181141960%_
                                               _%e4181241963%_
                                               _%hd4181341967%_
                                               _%tl4181441970%_
                                               _%e4182841872%_
                                               _%hd4182941876%_
                                               _%tl4183041879%_
                                               _%__splice4439744398%_
                                               _%target4183141882%_
                                               _%tl4183341885%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4180541845%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4180541845%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4180541845%_))))))))
            (if (gx#stx-pair? _%__stx4439044391%_)
                (let ((_%e4180941953%_ (gx#syntax-e _%__stx4439044391%_)))
                  (let ((_%tl4181141960%_
                         (let () (declare (not safe)) (##cdr _%e4180941953%_)))
                        (_%hd4181041957%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4180941953%_))))
                    (if (gx#stx-pair? _%tl4181141960%_)
                        (let ((_%e4181241963%_ (gx#syntax-e _%tl4181141960%_)))
                          (let ((_%tl4181441970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4181241963%_)))
                                (_%hd4181341967%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4181241963%_))))
                            (if (gx#stx-pair? _%tl4181441970%_)
                                (let ((_%e4181541973%_
                                       (gx#syntax-e _%tl4181441970%_)))
                                  (let ((_%tl4181741980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4181541973%_)))
                                        (_%hd4181641977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4181541973%_))))
                                    (if (gx#stx-null? _%tl4181741980%_)
                                        (_%__match4441944420%_
                                         _%e4180941953%_
                                         _%hd4181041957%_
                                         _%tl4181141960%_
                                         _%e4181241963%_
                                         _%hd4181341967%_
                                         _%tl4181441970%_
                                         _%e4181541973%_
                                         _%hd4181641977%_
                                         _%tl4181741980%_)
                                        (if (gx#stx-pair? _%hd4181341967%_)
                                            (let ((_%e4182841872%_
                                                   (gx#syntax-e
                                                    _%hd4181341967%_)))
                                              (let ((_%tl4183041879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4182841872%_)))
                                                    (_%hd4182941876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4182841872%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4181441970%_)
                                                    (let ((_%__splice4439744398%_
                                                           (gx#syntax-split-splice
                                                            _%tl4181441970%_
                                                            '0)))
                                                      (let ((_%tl4183341885%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4439744398%_ '1)))
                    (_%target4183141882%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4439744398%_ '0))))
                (if (gx#stx-null? _%tl4183341885%_)
                    (_%__match4444544446%_
                     _%e4180941953%_
                     _%hd4181041957%_
                     _%tl4181141960%_
                     _%e4181241963%_
                     _%hd4181341967%_
                     _%tl4181441970%_
                     _%e4182841872%_
                     _%hd4182941876%_
                     _%tl4183041879%_
                     _%__splice4439744398%_
                     _%target4183141882%_
                     _%tl4183341885%_)
                    (let () (declare (not safe)) (_%g4180541845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4180541845%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4180541845%_))))))
                                (if (gx#stx-pair? _%hd4181341967%_)
                                    (let ((_%e4182841872%_
                                           (gx#syntax-e _%hd4181341967%_)))
                                      (let ((_%tl4183041879%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4182841872%_)))
                                            (_%hd4182941876%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4182841872%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4181441970%_)
                                            (let ((_%__splice4439744398%_
                                                   (gx#syntax-split-splice
                                                    _%tl4181441970%_
                                                    '0)))
                                              (let ((_%tl4183341885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4439744398%_
                                                        '1)))
                                                    (_%target4183141882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4439744398%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4183341885%_)
                                                    (_%__match4444544446%_
                                                     _%e4180941953%_
                                                     _%hd4181041957%_
                                                     _%tl4181141960%_
                                                     _%e4181241963%_
                                                     _%hd4181341967%_
                                                     _%tl4181441970%_
                                                     _%e4182841872%_
                                                     _%hd4182941876%_
                                                     _%tl4183041879%_
                                                     _%__splice4439744398%_
                                                     _%target4183141882%_
                                                     _%tl4183341885%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4180541845%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4180541845%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4180541845%_))))))
                        (let () (declare (not safe)) (_%g4180541845%_)))))
                (let () (declare (not safe)) (_%g4180541845%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42005%_)
      (let* ((_%__stx4444844449%_ _%$stx42005%_)
             (_%g4201042050%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4444844449%_))))
        (let ((_%__kont4445144452%_
               (lambda (_%L42188%_ _%L42190%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42190%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42188%_ '()))
                                   '())))))
              (_%__kont4445344454%_
               (lambda (_%L42117%_ _%L42119%_ _%L42120%_ _%L42121%_)
                 (cons _%L42121%_
                       (cons _%L42120%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42119%_
                                               (foldr (lambda (_%g4214242145%_
                                                               _%g4214342148%_)
                                                        (cons _%g4214242145%_
                                                              _%g4214342148%_))
                                                      '()
                                                      _%L42117%_)))
                                   '()))))))
          (let* ((_%__match4450344504%_
                  (lambda (_%e4202742057%_
                           _%hd4202842061%_
                           _%tl4202942064%_
                           _%e4203042067%_
                           _%hd4203142071%_
                           _%tl4203242074%_
                           _%e4203342077%_
                           _%hd4203442081%_
                           _%tl4203542084%_
                           _%__splice4445544456%_
                           _%target4203642087%_
                           _%tl4203842090%_)
                    (letrec ((_%loop4203942093%_
                              (lambda (_%hd4203742097%_ _%body4204342100%_)
                                (if (gx#stx-pair? _%hd4203742097%_)
                                    (let ((_%e4204042103%_
                                           (gx#syntax-e _%hd4203742097%_)))
                                      (let ((_%lp-tl4204242110%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4204042103%_)))
                                            (_%lp-hd4204142107%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4204042103%_))))
                                        (_%loop4203942093%_
                                         _%lp-tl4204242110%_
                                         (cons _%lp-hd4204142107%_
                                               _%body4204342100%_))))
                                    (let ((_%body4204442113%_
                                           (reverse _%body4204342100%_)))
                                      (let ((_%L42117%_ _%body4204442113%_)
                                            (_%L42119%_ _%tl4203542084%_)
                                            (_%L42120%_ _%hd4203442081%_)
                                            (_%L42121%_ _%hd4202842061%_))
                                        (if (gx#identifier? _%L42120%_)
                                            (_%__kont4445344454%_
                                             _%L42117%_
                                             _%L42119%_
                                             _%L42120%_
                                             _%L42121%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4201042050%_)))))))))
                      (_%loop4203942093%_ _%target4203642087%_ '()))))
                 (_%__match4447744478%_
                  (lambda (_%e4201442158%_
                           _%hd4201542162%_
                           _%tl4201642165%_
                           _%e4201742168%_
                           _%hd4201842172%_
                           _%tl4201942175%_
                           _%e4202042178%_
                           _%hd4202142182%_
                           _%tl4202242185%_)
                    (let ((_%L42188%_ _%hd4202142182%_)
                          (_%L42190%_ _%hd4201842172%_))
                      (if (gx#identifier? _%L42190%_)
                          (_%__kont4445144452%_ _%L42188%_ _%L42190%_)
                          (if (gx#stx-pair? _%hd4201842172%_)
                              (let ((_%e4203342077%_
                                     (gx#syntax-e _%hd4201842172%_)))
                                (let ((_%tl4203542084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4203342077%_)))
                                      (_%hd4203442081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4203342077%_))))
                                  (if (gx#stx-pair/null? _%tl4201942175%_)
                                      (let ((_%__splice4445544456%_
                                             (gx#syntax-split-splice
                                              _%tl4201942175%_
                                              '0)))
                                        (let ((_%tl4203842090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4445544456%_
                                                  '1)))
                                              (_%target4203642087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4445544456%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4203842090%_)
                                              (_%__match4450344504%_
                                               _%e4201442158%_
                                               _%hd4201542162%_
                                               _%tl4201642165%_
                                               _%e4201742168%_
                                               _%hd4201842172%_
                                               _%tl4201942175%_
                                               _%e4203342077%_
                                               _%hd4203442081%_
                                               _%tl4203542084%_
                                               _%__splice4445544456%_
                                               _%target4203642087%_
                                               _%tl4203842090%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4201042050%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4201042050%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4201042050%_))))))))
            (if (gx#stx-pair? _%__stx4444844449%_)
                (let ((_%e4201442158%_ (gx#syntax-e _%__stx4444844449%_)))
                  (let ((_%tl4201642165%_
                         (let () (declare (not safe)) (##cdr _%e4201442158%_)))
                        (_%hd4201542162%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4201442158%_))))
                    (if (gx#stx-pair? _%tl4201642165%_)
                        (let ((_%e4201742168%_ (gx#syntax-e _%tl4201642165%_)))
                          (let ((_%tl4201942175%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4201742168%_)))
                                (_%hd4201842172%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4201742168%_))))
                            (if (gx#stx-pair? _%tl4201942175%_)
                                (let ((_%e4202042178%_
                                       (gx#syntax-e _%tl4201942175%_)))
                                  (let ((_%tl4202242185%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4202042178%_)))
                                        (_%hd4202142182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4202042178%_))))
                                    (if (gx#stx-null? _%tl4202242185%_)
                                        (_%__match4447744478%_
                                         _%e4201442158%_
                                         _%hd4201542162%_
                                         _%tl4201642165%_
                                         _%e4201742168%_
                                         _%hd4201842172%_
                                         _%tl4201942175%_
                                         _%e4202042178%_
                                         _%hd4202142182%_
                                         _%tl4202242185%_)
                                        (if (gx#stx-pair? _%hd4201842172%_)
                                            (let ((_%e4203342077%_
                                                   (gx#syntax-e
                                                    _%hd4201842172%_)))
                                              (let ((_%tl4203542084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4203342077%_)))
                                                    (_%hd4203442081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4203342077%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4201942175%_)
                                                    (let ((_%__splice4445544456%_
                                                           (gx#syntax-split-splice
                                                            _%tl4201942175%_
                                                            '0)))
                                                      (let ((_%tl4203842090%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4445544456%_ '1)))
                    (_%target4203642087%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4445544456%_ '0))))
                (if (gx#stx-null? _%tl4203842090%_)
                    (_%__match4450344504%_
                     _%e4201442158%_
                     _%hd4201542162%_
                     _%tl4201642165%_
                     _%e4201742168%_
                     _%hd4201842172%_
                     _%tl4201942175%_
                     _%e4203342077%_
                     _%hd4203442081%_
                     _%tl4203542084%_
                     _%__splice4445544456%_
                     _%target4203642087%_
                     _%tl4203842090%_)
                    (let () (declare (not safe)) (_%g4201042050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4201042050%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4201042050%_))))))
                                (if (gx#stx-pair? _%hd4201842172%_)
                                    (let ((_%e4203342077%_
                                           (gx#syntax-e _%hd4201842172%_)))
                                      (let ((_%tl4203542084%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4203342077%_)))
                                            (_%hd4203442081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4203342077%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4201942175%_)
                                            (let ((_%__splice4445544456%_
                                                   (gx#syntax-split-splice
                                                    _%tl4201942175%_
                                                    '0)))
                                              (let ((_%tl4203842090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4445544456%_
                                                        '1)))
                                                    (_%target4203642087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4445544456%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4203842090%_)
                                                    (_%__match4450344504%_
                                                     _%e4201442158%_
                                                     _%hd4201542162%_
                                                     _%tl4201642165%_
                                                     _%e4201742168%_
                                                     _%hd4201842172%_
                                                     _%tl4201942175%_
                                                     _%e4203342077%_
                                                     _%hd4203442081%_
                                                     _%tl4203542084%_
                                                     _%__splice4445544456%_
                                                     _%target4203642087%_
                                                     _%tl4203842090%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4201042050%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4201042050%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4201042050%_))))))
                        (let () (declare (not safe)) (_%g4201042050%_)))))
                (let () (declare (not safe)) (_%g4201042050%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42210%_)
      (let* ((_%__stx4450644507%_ _%$stx42210%_)
             (_%g4221542255%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4450644507%_))))
        (let ((_%__kont4450944510%_
               (lambda (_%L42393%_ _%L42395%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42395%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42393%_ '()))
                                   '())))))
              (_%__kont4451144512%_
               (lambda (_%L42322%_ _%L42324%_ _%L42325%_ _%L42326%_)
                 (cons _%L42326%_
                       (cons _%L42325%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42324%_
                                               (foldr (lambda (_%g4234742350%_
                                                               _%g4234842353%_)
                                                        (cons _%g4234742350%_
                                                              _%g4234842353%_))
                                                      '()
                                                      _%L42322%_)))
                                   '()))))))
          (let* ((_%__match4456144562%_
                  (lambda (_%e4223242262%_
                           _%hd4223342266%_
                           _%tl4223442269%_
                           _%e4223542272%_
                           _%hd4223642276%_
                           _%tl4223742279%_
                           _%e4223842282%_
                           _%hd4223942286%_
                           _%tl4224042289%_
                           _%__splice4451344514%_
                           _%target4224142292%_
                           _%tl4224342295%_)
                    (letrec ((_%loop4224442298%_
                              (lambda (_%hd4224242302%_ _%body4224842305%_)
                                (if (gx#stx-pair? _%hd4224242302%_)
                                    (let ((_%e4224542308%_
                                           (gx#syntax-e _%hd4224242302%_)))
                                      (let ((_%lp-tl4224742315%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4224542308%_)))
                                            (_%lp-hd4224642312%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4224542308%_))))
                                        (_%loop4224442298%_
                                         _%lp-tl4224742315%_
                                         (cons _%lp-hd4224642312%_
                                               _%body4224842305%_))))
                                    (let ((_%body4224942318%_
                                           (reverse _%body4224842305%_)))
                                      (let ((_%L42322%_ _%body4224942318%_)
                                            (_%L42324%_ _%tl4224042289%_)
                                            (_%L42325%_ _%hd4223942286%_)
                                            (_%L42326%_ _%hd4223342266%_))
                                        (if (gx#identifier? _%L42325%_)
                                            (_%__kont4451144512%_
                                             _%L42322%_
                                             _%L42324%_
                                             _%L42325%_
                                             _%L42326%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221542255%_)))))))))
                      (_%loop4224442298%_ _%target4224142292%_ '()))))
                 (_%__match4453544536%_
                  (lambda (_%e4221942363%_
                           _%hd4222042367%_
                           _%tl4222142370%_
                           _%e4222242373%_
                           _%hd4222342377%_
                           _%tl4222442380%_
                           _%e4222542383%_
                           _%hd4222642387%_
                           _%tl4222742390%_)
                    (let ((_%L42393%_ _%hd4222642387%_)
                          (_%L42395%_ _%hd4222342377%_))
                      (if (gx#identifier? _%L42395%_)
                          (_%__kont4450944510%_ _%L42393%_ _%L42395%_)
                          (if (gx#stx-pair? _%hd4222342377%_)
                              (let ((_%e4223842282%_
                                     (gx#syntax-e _%hd4222342377%_)))
                                (let ((_%tl4224042289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4223842282%_)))
                                      (_%hd4223942286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4223842282%_))))
                                  (if (gx#stx-pair/null? _%tl4222442380%_)
                                      (let ((_%__splice4451344514%_
                                             (gx#syntax-split-splice
                                              _%tl4222442380%_
                                              '0)))
                                        (let ((_%tl4224342295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4451344514%_
                                                  '1)))
                                              (_%target4224142292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4451344514%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4224342295%_)
                                              (_%__match4456144562%_
                                               _%e4221942363%_
                                               _%hd4222042367%_
                                               _%tl4222142370%_
                                               _%e4222242373%_
                                               _%hd4222342377%_
                                               _%tl4222442380%_
                                               _%e4223842282%_
                                               _%hd4223942286%_
                                               _%tl4224042289%_
                                               _%__splice4451344514%_
                                               _%target4224142292%_
                                               _%tl4224342295%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4221542255%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4221542255%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4221542255%_))))))))
            (if (gx#stx-pair? _%__stx4450644507%_)
                (let ((_%e4221942363%_ (gx#syntax-e _%__stx4450644507%_)))
                  (let ((_%tl4222142370%_
                         (let () (declare (not safe)) (##cdr _%e4221942363%_)))
                        (_%hd4222042367%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4221942363%_))))
                    (if (gx#stx-pair? _%tl4222142370%_)
                        (let ((_%e4222242373%_ (gx#syntax-e _%tl4222142370%_)))
                          (let ((_%tl4222442380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4222242373%_)))
                                (_%hd4222342377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4222242373%_))))
                            (if (gx#stx-pair? _%tl4222442380%_)
                                (let ((_%e4222542383%_
                                       (gx#syntax-e _%tl4222442380%_)))
                                  (let ((_%tl4222742390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4222542383%_)))
                                        (_%hd4222642387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4222542383%_))))
                                    (if (gx#stx-null? _%tl4222742390%_)
                                        (_%__match4453544536%_
                                         _%e4221942363%_
                                         _%hd4222042367%_
                                         _%tl4222142370%_
                                         _%e4222242373%_
                                         _%hd4222342377%_
                                         _%tl4222442380%_
                                         _%e4222542383%_
                                         _%hd4222642387%_
                                         _%tl4222742390%_)
                                        (if (gx#stx-pair? _%hd4222342377%_)
                                            (let ((_%e4223842282%_
                                                   (gx#syntax-e
                                                    _%hd4222342377%_)))
                                              (let ((_%tl4224042289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4223842282%_)))
                                                    (_%hd4223942286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4223842282%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4222442380%_)
                                                    (let ((_%__splice4451344514%_
                                                           (gx#syntax-split-splice
                                                            _%tl4222442380%_
                                                            '0)))
                                                      (let ((_%tl4224342295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4451344514%_ '1)))
                    (_%target4224142292%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4451344514%_ '0))))
                (if (gx#stx-null? _%tl4224342295%_)
                    (_%__match4456144562%_
                     _%e4221942363%_
                     _%hd4222042367%_
                     _%tl4222142370%_
                     _%e4222242373%_
                     _%hd4222342377%_
                     _%tl4222442380%_
                     _%e4223842282%_
                     _%hd4223942286%_
                     _%tl4224042289%_
                     _%__splice4451344514%_
                     _%target4224142292%_
                     _%tl4224342295%_)
                    (let () (declare (not safe)) (_%g4221542255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4221542255%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221542255%_))))))
                                (if (gx#stx-pair? _%hd4222342377%_)
                                    (let ((_%e4223842282%_
                                           (gx#syntax-e _%hd4222342377%_)))
                                      (let ((_%tl4224042289%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4223842282%_)))
                                            (_%hd4223942286%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4223842282%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4222442380%_)
                                            (let ((_%__splice4451344514%_
                                                   (gx#syntax-split-splice
                                                    _%tl4222442380%_
                                                    '0)))
                                              (let ((_%tl4224342295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4451344514%_
                                                        '1)))
                                                    (_%target4224142292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4451344514%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4224342295%_)
                                                    (_%__match4456144562%_
                                                     _%e4221942363%_
                                                     _%hd4222042367%_
                                                     _%tl4222142370%_
                                                     _%e4222242373%_
                                                     _%hd4222342377%_
                                                     _%tl4222442380%_
                                                     _%e4223842282%_
                                                     _%hd4223942286%_
                                                     _%tl4224042289%_
                                                     _%__splice4451344514%_
                                                     _%target4224142292%_
                                                     _%tl4224342295%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4221542255%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221542255%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4221542255%_))))))
                        (let () (declare (not safe)) (_%g4221542255%_)))))
                (let () (declare (not safe)) (_%g4221542255%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42415%_)
       (let* ((_%g4241842438%_
               (lambda (_%g4241942434%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4241942434%_)))
              (_%g4241742509%_
               (lambda (_%g4241942442%_)
                 (if (gx#stx-pair? _%g4241942442%_)
                     (let ((_%e4242142445%_ (gx#syntax-e _%g4241942442%_)))
                       (let ((_%hd4242242449%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4242142445%_)))
                             (_%tl4242342452%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4242142445%_))))
                         (if (gx#stx-pair/null? _%tl4242342452%_)
                             (let ((_g44656_
                                    (gx#syntax-split-splice
                                     _%tl4242342452%_
                                     '0)))
                               (begin
                                 (let ((_g44657_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44656_)
                                              (##vector-length _g44656_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44657_ 2)))
                                       (error "Context expects 2 values"
                                              _g44657_)))
                                 (let ((_%target4242442455%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44656_ 0)))
                                       (_%tl4242642458%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44656_ 1))))
                                   (if (gx#stx-null? _%tl4242642458%_)
                                       (letrec ((_%loop4242742461%_
                                                 (lambda (_%hd4242542465%_
                                                          _%body4243142468%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4242542465%_)
                                                       (let ((_%e4242842471%_
                                                              (gx#syntax-e
                                                               _%hd4242542465%_)))
                                                         (let ((_%lp-hd4242942475%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4242842471%_)))
                       (_%lp-tl4243042478%_
                        (let () (declare (not safe)) (##cdr _%e4242842471%_))))
                   (_%loop4242742461%_
                    _%lp-tl4243042478%_
                    (cons _%lp-hd4242942475%_ _%body4243142468%_))))
               (let ((_%body4243242481%_ (reverse _%body4243142468%_)))
                 ((lambda (_%L42485%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4250042503%_
                                                _%g4250142506%_)
                                         (cons _%g4250042503%_
                                               _%g4250142506%_))
                                       '()
                                       _%L42485%_))))
                  _%body4243242481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4242742461%_
                                          _%target4242442455%_
                                          '()))
                                       (_%g4241842438%_ _%g4241942442%_)))))
                             (_%g4241842438%_ _%g4241942442%_))))
                     (_%g4241842438%_ _%g4241942442%_)))))
         (_%g4241742509%_ _%stx42415%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42514%_)
       (let* ((_%g4251742537%_
               (lambda (_%g4251842533%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4251842533%_)))
              (_%g4251642608%_
               (lambda (_%g4251842541%_)
                 (if (gx#stx-pair? _%g4251842541%_)
                     (let ((_%e4252042544%_ (gx#syntax-e _%g4251842541%_)))
                       (let ((_%hd4252142548%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4252042544%_)))
                             (_%tl4252242551%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4252042544%_))))
                         (if (gx#stx-pair/null? _%tl4252242551%_)
                             (let ((_g44658_
                                    (gx#syntax-split-splice
                                     _%tl4252242551%_
                                     '0)))
                               (begin
                                 (let ((_g44659_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44658_)
                                              (##vector-length _g44658_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44659_ 2)))
                                       (error "Context expects 2 values"
                                              _g44659_)))
                                 (let ((_%target4252342554%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44658_ 0)))
                                       (_%tl4252542557%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44658_ 1))))
                                   (if (gx#stx-null? _%tl4252542557%_)
                                       (letrec ((_%loop4252642560%_
                                                 (lambda (_%hd4252442564%_
                                                          _%body4253042567%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4252442564%_)
                                                       (let ((_%e4252742570%_
                                                              (gx#syntax-e
                                                               _%hd4252442564%_)))
                                                         (let ((_%lp-hd4252842574%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4252742570%_)))
                       (_%lp-tl4252942577%_
                        (let () (declare (not safe)) (##cdr _%e4252742570%_))))
                   (_%loop4252642560%_
                    _%lp-tl4252942577%_
                    (cons _%lp-hd4252842574%_ _%body4253042567%_))))
               (let ((_%body4253142580%_ (reverse _%body4253042567%_)))
                 ((lambda (_%L42584%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4259942602%_
                                                _%g4260042605%_)
                                         (cons _%g4259942602%_
                                               _%g4260042605%_))
                                       '()
                                       _%L42584%_))))
                  _%body4253142580%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4252642560%_
                                          _%target4252342554%_
                                          '()))
                                       (_%g4251742537%_ _%g4251842541%_)))))
                             (_%g4251742537%_ _%g4251842541%_))))
                     (_%g4251742537%_ _%g4251842541%_)))))
         (_%g4251642608%_ _%stx42514%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42613%_)
       (let* ((_%g4261642640%_
               (lambda (_%g4261742636%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4261742636%_)))
              (_%g4261542768%_
               (lambda (_%g4261742644%_)
                 (if (gx#stx-pair? _%g4261742644%_)
                     (let ((_%e4262042647%_ (gx#syntax-e _%g4261742644%_)))
                       (let ((_%hd4262142651%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4262042647%_)))
                             (_%tl4262242654%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4262042647%_))))
                         (if (gx#stx-pair? _%tl4262242654%_)
                             (let ((_%e4262342657%_
                                    (gx#syntax-e _%tl4262242654%_)))
                               (let ((_%hd4262442661%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4262342657%_)))
                                     (_%tl4262542664%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4262342657%_))))
                                 (if (gx#stx-pair/null? _%tl4262542664%_)
                                     (let ((_g44660_
                                            (gx#syntax-split-splice
                                             _%tl4262542664%_
                                             '0)))
                                       (begin
                                         (let ((_g44661_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44660_)
                                                      (##vector-length
                                                       _g44660_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44661_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44661_)))
                                         (let ((_%target4262642667%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44660_ 0)))
                                               (_%tl4262842670%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44660_ 1))))
                                           (if (gx#stx-null? _%tl4262842670%_)
                                               (letrec ((_%loop4262942673%_
                                                         (lambda (_%hd4262742677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4263342680%_)
                   (if (gx#stx-pair? _%hd4262742677%_)
                       (let ((_%e4263042683%_ (gx#syntax-e _%hd4262742677%_)))
                         (let ((_%lp-hd4263142687%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4263042683%_)))
                               (_%lp-tl4263242690%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4263042683%_))))
                           (_%loop4262942673%_
                            _%lp-tl4263242690%_
                            (cons _%lp-hd4263142687%_ _%id4263342680%_))))
                       (let ((_%id4263442693%_ (reverse _%id4263342680%_)))
                         ((lambda (_%L42697%_ _%L42699%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4271642719%_
                                                 _%g4271742722%_)
                                          (cons _%g4271642719%_
                                                _%g4271742722%_))
                                        '()
                                        _%L42697%_))
                                (let* ((_%keys42733%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4272442727%_
                                                         _%g4272542730%_)
                                                  (cons _%g4272442727%_
                                                        _%g4272542730%_))
                                                '()
                                                _%L42697%_)))
                                       (_%keytab42744%_
                                        (let ((_%ht42736%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4273842740%_)
                                             (hash-put!
                                              _%ht42736%_
                                              _%g4273842740%_
                                              '#t))
                                           _%keys42733%_)
                                          _%ht42736%_))
                                       (_%imports42747%_
                                        (gx#core-expand-import-source
                                         _%L42699%_))
                                       (_%fold-e42763%_
                                        (letrec ((_%fold-e42750%_
                                                  (lambda (_%in42753%_
                                                           _%r42755%_)
                                                    (if (gx#module-import?
                                                         _%in42753%_)
                                                        (if (hash-get
                                                             _%keytab42744%_
                                                             (gx#module-import-name
                                                              _%in42753%_))
                                                            (cons _%in42753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42755%_)
                    _%r42755%_)
                (if (gx#import-set? _%in42753%_)
                    (foldl _%fold-e42750%_
                           _%r42755%_
                           (gx#import-set-imports _%in42753%_))
                    _%r42755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42750%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42763%_
                                               '()
                                               _%imports42747%_)))
                                (_%g4261642640%_ _%g4261742644%_)))
                          _%id4263442693%_
                          _%hd4262442661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4262942673%_
                                                  _%target4262642667%_
                                                  '()))
                                               (_%g4261642640%_
                                                _%g4261742644%_)))))
                                     (_%g4261642640%_ _%g4261742644%_))))
                             (_%g4261642640%_ _%g4261742644%_))))
                     (_%g4261642640%_ _%g4261742644%_)))))
         (_%g4261542768%_ _%stx42613%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42773%_)
       (let* ((_%g4277642800%_
               (lambda (_%g4277742796%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4277742796%_)))
              (_%g4277542928%_
               (lambda (_%g4277742804%_)
                 (if (gx#stx-pair? _%g4277742804%_)
                     (let ((_%e4278042807%_ (gx#syntax-e _%g4277742804%_)))
                       (let ((_%hd4278142811%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4278042807%_)))
                             (_%tl4278242814%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4278042807%_))))
                         (if (gx#stx-pair? _%tl4278242814%_)
                             (let ((_%e4278342817%_
                                    (gx#syntax-e _%tl4278242814%_)))
                               (let ((_%hd4278442821%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4278342817%_)))
                                     (_%tl4278542824%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4278342817%_))))
                                 (if (gx#stx-pair/null? _%tl4278542824%_)
                                     (let ((_g44662_
                                            (gx#syntax-split-splice
                                             _%tl4278542824%_
                                             '0)))
                                       (begin
                                         (let ((_g44663_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44662_)
                                                      (##vector-length
                                                       _g44662_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44663_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44663_)))
                                         (let ((_%target4278642827%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44662_ 0)))
                                               (_%tl4278842830%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44662_ 1))))
                                           (if (gx#stx-null? _%tl4278842830%_)
                                               (letrec ((_%loop4278942833%_
                                                         (lambda (_%hd4278742837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4279342840%_)
                   (if (gx#stx-pair? _%hd4278742837%_)
                       (let ((_%e4279042843%_ (gx#syntax-e _%hd4278742837%_)))
                         (let ((_%lp-hd4279142847%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4279042843%_)))
                               (_%lp-tl4279242850%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4279042843%_))))
                           (_%loop4278942833%_
                            _%lp-tl4279242850%_
                            (cons _%lp-hd4279142847%_ _%id4279342840%_))))
                       (let ((_%id4279442853%_ (reverse _%id4279342840%_)))
                         ((lambda (_%L42857%_ _%L42859%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4287642879%_
                                                 _%g4287742882%_)
                                          (cons _%g4287642879%_
                                                _%g4287742882%_))
                                        '()
                                        _%L42857%_))
                                (let* ((_%keys42893%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4288442887%_
                                                         _%g4288542890%_)
                                                  (cons _%g4288442887%_
                                                        _%g4288542890%_))
                                                '()
                                                _%L42857%_)))
                                       (_%keytab42904%_
                                        (let ((_%ht42896%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4289842900%_)
                                             (hash-put!
                                              _%ht42896%_
                                              _%g4289842900%_
                                              '#t))
                                           _%keys42893%_)
                                          _%ht42896%_))
                                       (_%imports42907%_
                                        (gx#core-expand-import-source
                                         _%L42859%_))
                                       (_%fold-e42923%_
                                        (letrec ((_%fold-e42910%_
                                                  (lambda (_%in42913%_
                                                           _%r42915%_)
                                                    (if (gx#module-import?
                                                         _%in42913%_)
                                                        (if (hash-get
                                                             _%keytab42904%_
                                                             (gx#module-import-name
                                                              _%in42913%_))
                                                            _%r42915%_
                                                            (cons _%in42913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42915%_))
                (if (gx#import-set? _%in42913%_)
                    (foldl _%fold-e42910%_
                           _%r42915%_
                           (gx#import-set-imports _%in42913%_))
                    (cons _%in42913%_ _%r42915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42910%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42923%_
                                               '()
                                               _%imports42907%_)))
                                (_%g4277642800%_ _%g4277742804%_)))
                          _%id4279442853%_
                          _%hd4278442821%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4278942833%_
                                                  _%target4278642827%_
                                                  '()))
                                               (_%g4277642800%_
                                                _%g4277742804%_)))))
                                     (_%g4277642800%_ _%g4277742804%_))))
                             (_%g4277642800%_ _%g4277742804%_))))
                     (_%g4277642800%_ _%g4277742804%_)))))
         (_%g4277542928%_ _%stx42773%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in42980%_ _%rename42982%_)
      (gx#make-module-import
       (gx#module-import-source _%in42980%_)
       _%rename42982%_
       (gx#module-import-phi _%in42980%_)
       (gx#module-import-weak? _%in42980%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42933%_ _%pre42935%_)
      (let* ((_%name4293642944%_ _%name42933%_)
             (_%else4293842956%_
              (lambda () (make-symbol _%pre42935%_ _%name42933%_)))
             (_%K4294042964%_
              (lambda (_%mark42960%_ _%id42962%_)
                (cons (make-symbol _%pre42935%_ _%id42962%_) _%mark42960%_))))
        (if (let () (declare (not safe)) (##pair? _%name4293642944%_))
            (let ((_%hd4294142968%_
                   (let () (declare (not safe)) (##car _%name4293642944%_)))
                  (_%tl4294242971%_
                   (let () (declare (not safe)) (##cdr _%name4293642944%_))))
              (let* ((_%id42974%_ _%hd4294142968%_)
                     (_%mark42977%_ _%tl4294242971%_))
                (_%K4294042964%_ _%mark42977%_ _%id42974%_)))
            (_%else4293842956%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx42984%_)
       (let* ((_%g4298743020%_
               (lambda (_%g4298843016%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4298843016%_)))
              (_%g4298643215%_
               (lambda (_%g4298843024%_)
                 (if (gx#stx-pair? _%g4298843024%_)
                     (let ((_%e4299243027%_ (gx#syntax-e _%g4298843024%_)))
                       (let ((_%hd4299343031%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4299243027%_)))
                             (_%tl4299443034%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4299243027%_))))
                         (if (gx#stx-pair? _%tl4299443034%_)
                             (let ((_%e4299543037%_
                                    (gx#syntax-e _%tl4299443034%_)))
                               (let ((_%hd4299643041%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4299543037%_)))
                                     (_%tl4299743044%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4299543037%_))))
                                 (if (gx#stx-pair/null? _%tl4299743044%_)
                                     (let ((_g44664_
                                            (gx#syntax-split-splice
                                             _%tl4299743044%_
                                             '0)))
                                       (begin
                                         (let ((_g44665_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44664_)
                                                      (##vector-length
                                                       _g44664_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44665_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44665_)))
                                         (let ((_%target4299843047%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44664_ 0)))
                                               (_%tl4300043050%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44664_ 1))))
                                           (if (gx#stx-null? _%tl4300043050%_)
                                               (letrec ((_%loop4300143053%_
                                                         (lambda (_%hd4299943057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4300543060%_
                          _%id4300643062%_)
                   (if (gx#stx-pair? _%hd4299943057%_)
                       (let ((_%e4300243065%_ (gx#syntax-e _%hd4299943057%_)))
                         (let ((_%lp-hd4300343069%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4300243065%_)))
                               (_%lp-tl4300443072%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4300243065%_))))
                           (if (gx#stx-pair? _%lp-hd4300343069%_)
                               (let ((_%e4300943075%_
                                      (gx#syntax-e _%lp-hd4300343069%_)))
                                 (let ((_%hd4301043079%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4300943075%_)))
                                       (_%tl4301143082%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4300943075%_))))
                                   (if (gx#stx-pair? _%tl4301143082%_)
                                       (let ((_%e4301243085%_
                                              (gx#syntax-e _%tl4301143082%_)))
                                         (let ((_%hd4301343089%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4301243085%_)))
                                               (_%tl4301443092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4301243085%_))))
                                           (if (gx#stx-null? _%tl4301443092%_)
                                               (_%loop4300143053%_
                                                _%lp-tl4300443072%_
                                                (cons _%hd4301343089%_
                                                      _%new-id4300543060%_)
                                                (cons _%hd4301043079%_
                                                      _%id4300643062%_))
                                               (_%g4298743020%_
                                                _%g4298843024%_))))
                                       (_%g4298743020%_ _%g4298843024%_))))
                               (_%g4298743020%_ _%g4298843024%_))))
                       (let ((_%new-id4300743095%_
                              (reverse _%new-id4300543060%_))
                             (_%id4300843098%_ (reverse _%id4300643062%_)))
                         ((lambda (_%L43101%_ _%L43103%_ _%L43104%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4312243125%_
                                                      _%g4312343128%_)
                                               (cons _%g4312243125%_
                                                     _%g4312343128%_))
                                             '()
                                             _%L43103%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4313043133%_
                                                      _%g4313143136%_)
                                               (cons _%g4313043133%_
                                                     _%g4313143136%_))
                                             '()
                                             _%L43101%_)))
                                (let* ((_%keytab43139%_ (make-hash-table))
                                       (_%found43142%_ (make-hash-table))
                                       (_%_43165%_
                                        (for-each
                                         (lambda (_%id43145%_ _%new-id43147%_)
                                           (hash-put!
                                            _%keytab43139%_
                                            (gx#core-identifier-key
                                             _%id43145%_)
                                            (gx#core-identifier-key
                                             _%new-id43147%_)))
                                         (foldr (lambda (_%g4314843151%_
                                                         _%g4314943154%_)
                                                  (cons _%g4314843151%_
                                                        _%g4314943154%_))
                                                '()
                                                _%L43103%_)
                                         (foldr (lambda (_%g4315643159%_
                                                         _%g4315743162%_)
                                                  (cons _%g4315643159%_
                                                        _%g4315743162%_))
                                                '()
                                                _%L43101%_)))
                                       (_%imports43168%_
                                        (gx#core-expand-import-source
                                         _%L43104%_))
                                       (_%fold-e43196%_
                                        (letrec ((_%fold-e43171%_
                                                  (lambda (_%in43174%_
                                                           _%r43176%_)
                                                    (if (gx#module-import?
                                                         _%in43174%_)
                                                        (let* ((_%name43180%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43174%_))
                       (_%$e43183%_ (hash-get _%keytab43139%_ _%name43180%_)))
                  (if _%$e43183%_
                      ((lambda (_%rename43187%_)
                         (hash-put! _%found43142%_ _%name43180%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43174%_
                                _%rename43187%_)
                               _%r43176%_))
                       _%$e43183%_)
                      (cons _%in43174%_ _%r43176%_)))
                (if (gx#import-set? _%in43174%_)
                    (foldl _%fold-e43171%_
                           _%r43176%_
                           (gx#import-set-imports _%in43174%_))
                    (cons _%in43174%_ _%r43176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43171%_))
                                       (_%new-imports43199%_
                                        (foldl _%fold-e43196%_
                                               '()
                                               _%imports43168%_)))
                                  (for-each
                                   (lambda (_%id43204%_)
                                     (if (hash-get
                                          _%found43142%_
                                          (gx#core-identifier-key _%id43204%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx42984%_
                                          _%id43204%_)))
                                   (foldr (lambda (_%g4320643209%_
                                                   _%g4320743212%_)
                                            (cons _%g4320643209%_
                                                  _%g4320743212%_))
                                          '()
                                          _%L43103%_))
                                  (cons 'begin: _%new-imports43199%_))
                                (_%g4298743020%_ _%g4298843024%_)))
                          _%new-id4300743095%_
                          _%id4300843098%_
                          _%hd4299643041%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4300143053%_
                                                  _%target4299843047%_
                                                  '()
                                                  '()))
                                               (_%g4298743020%_
                                                _%g4298843024%_)))))
                                     (_%g4298743020%_ _%g4298843024%_))))
                             (_%g4298743020%_ _%g4298843024%_))))
                     (_%g4298743020%_ _%g4298843024%_)))))
         (_%g4298643215%_ _%stx42984%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43220%_)
       (let* ((_%g4322343241%_
               (lambda (_%g4322443237%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4322443237%_)))
              (_%g4322243326%_
               (lambda (_%g4322443245%_)
                 (if (gx#stx-pair? _%g4322443245%_)
                     (let ((_%e4322743248%_ (gx#syntax-e _%g4322443245%_)))
                       (let ((_%hd4322843252%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4322743248%_)))
                             (_%tl4322943255%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4322743248%_))))
                         (if (gx#stx-pair? _%tl4322943255%_)
                             (let ((_%e4323043258%_
                                    (gx#syntax-e _%tl4322943255%_)))
                               (let ((_%hd4323143262%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4323043258%_)))
                                     (_%tl4323243265%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4323043258%_))))
                                 (if (gx#stx-pair? _%tl4323243265%_)
                                     (let ((_%e4323343268%_
                                            (gx#syntax-e _%tl4323243265%_)))
                                       (let ((_%hd4323443272%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4323343268%_)))
                                             (_%tl4323543275%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4323343268%_))))
                                         (if (gx#stx-null? _%tl4323543275%_)
                                             ((lambda (_%L43278%_ _%L43280%_)
                                                (if (gx#identifier? _%L43278%_)
                                                    (let* ((_%pre43296%_
                                                            (gx#stx-e
                                                             _%L43278%_))
                                                           (_%imports43299%_
                                                            (gx#core-expand-import-source
                                                             _%L43280%_))
                                                           (_%rename-e43305%_
                                                            (lambda (_%name43302%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43302%_
                                                               _%pre43296%_)))
                                                           (_%fold-e43321%_
                                                            (letrec ((_%fold-e43308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43311%_ _%r43313%_)
                                (if (gx#module-import? _%in43311%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43311%_
                                           (_%rename-e43305%_
                                            (gx#module-import-name
                                             _%in43311%_)))
                                          _%r43313%_)
                                    (if (gx#import-set? _%in43311%_)
                                        (foldl _%fold-e43308%_
                                               _%r43313%_
                                               (gx#import-set-imports
                                                _%in43311%_))
                                        (cons _%in43311%_ _%r43313%_))))))
                      _%fold-e43308%_)))
              (cons 'begin: (foldl _%fold-e43321%_ '() _%imports43299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4322343241%_
                                                     _%g4322443245%_)))
                                              _%hd4323443272%_
                                              _%hd4323143262%_)
                                             (_%g4322343241%_
                                              _%g4322443245%_))))
                                     (_%g4322343241%_ _%g4322443245%_))))
                             (_%g4322343241%_ _%g4322443245%_))))
                     (_%g4322343241%_ _%g4322443245%_)))))
         (_%g4322243326%_ _%stx43220%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43330%_)
       (letrec ((_%flatten43333%_
                 (lambda (_%list-of-lists43588%_)
                   (foldr (lambda (_%v43591%_ _%acc43593%_)
                            (if (null? _%v43591%_)
                                _%acc43593%_
                                (if (pair? _%v43591%_)
                                    (append (_%flatten43333%_ _%v43591%_)
                                            _%acc43593%_)
                                    (cons _%v43591%_ _%acc43593%_))))
                          '()
                          _%list-of-lists43588%_)))
                (_%expand-path43335%_
                 (lambda (_%top43456%_ _%mod43458%_)
                   (let* ((_%__stx4456444565%_ _%mod43458%_)
                          (_%g4346143483%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4456444565%_))))
                     (let ((_%__kont4456744568%_
                            (lambda (_%L43551%_ _%L43553%_)
                              (map (lambda (_%mod43568%_)
                                     (gx#stx-identifier
                                      _%top43456%_
                                      _%top43456%_
                                      '"/"
                                      _%mod43568%_))
                                   (_%flatten43333%_
                                    (map (lambda (_%g4357043572%_)
                                           (_%expand-path43335%_
                                            _%L43553%_
                                            _%g4357043572%_))
                                         (foldr (lambda (_%g4357543578%_
                                                         _%g4357643581%_)
                                                  (cons _%g4357543578%_
                                                        _%g4357643581%_))
                                                '()
                                                _%L43551%_))))))
                           (_%__kont4457144572%_
                            (lambda (_%L43490%_)
                              (gx#stx-identifier
                               _%top43456%_
                               _%top43456%_
                               '"/"
                               _%L43490%_))))
                       (let* ((_%g4346043504%_
                               (lambda ()
                                 (let ((_%L43490%_ _%__stx4456444565%_))
                                   (if (or (gx#identifier? _%L43490%_)
                                           (gx#stx-fixnum? _%L43490%_))
                                       (_%__kont4457144572%_ _%L43490%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4346143483%_))))))
                              (_%__match4458744588%_
                               (lambda (_%e4346543511%_
                                        _%hd4346643515%_
                                        _%tl4346743518%_
                                        _%__splice4456944570%_
                                        _%target4346843521%_
                                        _%tl4347043524%_)
                                 (letrec ((_%loop4347143527%_
                                           (lambda (_%hd4346943531%_
                                                    _%mod4347543534%_)
                                             (if (gx#stx-pair?
                                                  _%hd4346943531%_)
                                                 (let ((_%e4347243537%_
                                                        (gx#syntax-e
                                                         _%hd4346943531%_)))
                                                   (let ((_%lp-tl4347443544%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4347243537%_)))
                                                         (_%lp-hd4347343541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4347243537%_))))
                                                     (_%loop4347143527%_
                                                      _%lp-tl4347443544%_
                                                      (cons _%lp-hd4347343541%_
                                                            _%mod4347543534%_))))
                                                 (let ((_%mod4347643547%_
                                                        (reverse _%mod4347543534%_)))
                                                   (_%__kont4456744568%_
                                                    _%mod4347643547%_
                                                    _%hd4346643515%_))))))
                                   (_%loop4347143527%_
                                    _%target4346843521%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4456444565%_)
                             (let ((_%e4346543511%_
                                    (gx#syntax-e _%__stx4456444565%_)))
                               (let ((_%tl4346743518%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4346543511%_)))
                                     (_%hd4346643515%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4346543511%_))))
                                 (if (gx#stx-pair/null? _%tl4346743518%_)
                                     (let ((_%__splice4456944570%_
                                            (gx#syntax-split-splice
                                             _%tl4346743518%_
                                             '0)))
                                       (let ((_%tl4347043524%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4456944570%_
                                                 '1)))
                                             (_%target4346843521%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4456944570%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4347043524%_)
                                             (_%__match4458744588%_
                                              _%e4346543511%_
                                              _%hd4346643515%_
                                              _%tl4346743518%_
                                              _%__splice4456944570%_
                                              _%target4346843521%_
                                              _%tl4347043524%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4346043504%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4346043504%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4346043504%_)))))))))
         (let* ((_%g4333743361%_
                 (lambda (_%g4333843357%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4333843357%_)))
                (_%g4333643452%_
                 (lambda (_%g4333843365%_)
                   (if (gx#stx-pair? _%g4333843365%_)
                       (let ((_%e4334143368%_ (gx#syntax-e _%g4333843365%_)))
                         (let ((_%hd4334243372%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4334143368%_)))
                               (_%tl4334343375%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4334143368%_))))
                           (if (gx#stx-pair? _%tl4334343375%_)
                               (let ((_%e4334443378%_
                                      (gx#syntax-e _%tl4334343375%_)))
                                 (let ((_%hd4334543382%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4334443378%_)))
                                       (_%tl4334643385%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4334443378%_))))
                                   (if (gx#stx-pair/null? _%tl4334643385%_)
                                       (let ((_g44666_
                                              (gx#syntax-split-splice
                                               _%tl4334643385%_
                                               '0)))
                                         (begin
                                           (let ((_g44667_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44666_)
                                                        (##vector-length
                                                         _g44666_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44667_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44667_)))
                                           (let ((_%target4334743388%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44666_ 0)))
                                                 (_%tl4334943391%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44666_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4334943391%_)
                                                 (letrec ((_%loop4335043394%_
                                                           (lambda (_%hd4334843398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4335443401%_)
                     (if (gx#stx-pair? _%hd4334843398%_)
                         (let ((_%e4335143404%_
                                (gx#syntax-e _%hd4334843398%_)))
                           (let ((_%lp-hd4335243408%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4335143404%_)))
                                 (_%lp-tl4335343411%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4335143404%_))))
                             (_%loop4335043394%_
                              _%lp-tl4335343411%_
                              (cons _%lp-hd4335243408%_ _%mod4335443401%_))))
                         (let ((_%mod4335543414%_ (reverse _%mod4335443401%_)))
                           ((lambda (_%L43418%_ _%L43420%_)
                              (cons 'begin:
                                    (_%flatten43333%_
                                     (map (lambda (_%g4343843440%_)
                                            (_%expand-path43335%_
                                             _%L43420%_
                                             _%g4343843440%_))
                                          (foldr (lambda (_%g4344343446%_
                                                          _%g4344443449%_)
                                                   (cons _%g4344343446%_
                                                         _%g4344443449%_))
                                                 '()
                                                 _%L43418%_)))))
                            _%mod4335543414%_
                            _%hd4334543382%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4335043394%_
                                                    _%target4334743388%_
                                                    '()))
                                                 (_%g4333743361%_
                                                  _%g4333843365%_)))))
                                       (_%g4333743361%_ _%g4333843365%_))))
                               (_%g4333743361%_ _%g4333843365%_))))
                       (_%g4333743361%_ _%g4333843365%_)))))
           (_%g4333643452%_ _%stx43330%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43603%_)
       (let* ((_%g4360643630%_
               (lambda (_%g4360743626%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4360743626%_)))
              (_%g4360543758%_
               (lambda (_%g4360743634%_)
                 (if (gx#stx-pair? _%g4360743634%_)
                     (let ((_%e4361043637%_ (gx#syntax-e _%g4360743634%_)))
                       (let ((_%hd4361143641%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4361043637%_)))
                             (_%tl4361243644%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4361043637%_))))
                         (if (gx#stx-pair? _%tl4361243644%_)
                             (let ((_%e4361343647%_
                                    (gx#syntax-e _%tl4361243644%_)))
                               (let ((_%hd4361443651%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4361343647%_)))
                                     (_%tl4361543654%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4361343647%_))))
                                 (if (gx#stx-pair/null? _%tl4361543654%_)
                                     (let ((_g44668_
                                            (gx#syntax-split-splice
                                             _%tl4361543654%_
                                             '0)))
                                       (begin
                                         (let ((_g44669_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44668_)
                                                      (##vector-length
                                                       _g44668_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44669_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44669_)))
                                         (let ((_%target4361643657%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44668_ 0)))
                                               (_%tl4361843660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44668_ 1))))
                                           (if (gx#stx-null? _%tl4361843660%_)
                                               (letrec ((_%loop4361943663%_
                                                         (lambda (_%hd4361743667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4362343670%_)
                   (if (gx#stx-pair? _%hd4361743667%_)
                       (let ((_%e4362043673%_ (gx#syntax-e _%hd4361743667%_)))
                         (let ((_%lp-hd4362143677%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4362043673%_)))
                               (_%lp-tl4362243680%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4362043673%_))))
                           (_%loop4361943663%_
                            _%lp-tl4362243680%_
                            (cons _%lp-hd4362143677%_ _%id4362343670%_))))
                       (let ((_%id4362443683%_ (reverse _%id4362343670%_)))
                         ((lambda (_%L43687%_ _%L43689%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4370643709%_
                                                 _%g4370743712%_)
                                          (cons _%g4370643709%_
                                                _%g4370743712%_))
                                        '()
                                        _%L43687%_))
                                (let* ((_%keys43723%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4371443717%_
                                                         _%g4371543720%_)
                                                  (cons _%g4371443717%_
                                                        _%g4371543720%_))
                                                '()
                                                _%L43687%_)))
                                       (_%keytab43734%_
                                        (let ((_%ht43726%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4372843730%_)
                                             (hash-put!
                                              _%ht43726%_
                                              _%g4372843730%_
                                              '#t))
                                           _%keys43723%_)
                                          _%ht43726%_))
                                       (_%exports43737%_
                                        (gx#core-expand-export-source
                                         _%L43689%_))
                                       (_%fold-e43753%_
                                        (letrec ((_%fold-e43740%_
                                                  (lambda (_%out43743%_
                                                           _%r43745%_)
                                                    (if (gx#module-export?
                                                         _%out43743%_)
                                                        (if (hash-get
                                                             _%keytab43734%_
                                                             (gx#module-export-name
                                                              _%out43743%_))
                                                            _%r43745%_
                                                            (cons _%out43743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43745%_))
                (if (gx#export-set? _%out43743%_)
                    (foldl _%fold-e43740%_
                           _%r43745%_
                           (gx#export-set-exports _%out43743%_))
                    _%r43745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43740%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43753%_
                                               '()
                                               _%exports43737%_)))
                                (_%g4360643630%_ _%g4360743634%_)))
                          _%id4362443683%_
                          _%hd4361443651%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4361943663%_
                                                  _%target4361643657%_
                                                  '()))
                                               (_%g4360643630%_
                                                _%g4360743634%_)))))
                                     (_%g4360643630%_ _%g4360743634%_))))
                             (_%g4360643630%_ _%g4360743634%_))))
                     (_%g4360643630%_ _%g4360743634%_)))))
         (_%g4360543758%_ _%stx43603%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43763%_ _%rename43765%_)
      (gx#make-module-export
       (gx#module-export-context _%out43763%_)
       (gx#module-export-key _%out43763%_)
       (gx#module-export-phi _%out43763%_)
       _%rename43765%_
       (gx#module-export-weak? _%out43763%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43767%_)
       (let* ((_%g4377043803%_
               (lambda (_%g4377143799%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4377143799%_)))
              (_%g4376943998%_
               (lambda (_%g4377143807%_)
                 (if (gx#stx-pair? _%g4377143807%_)
                     (let ((_%e4377543810%_ (gx#syntax-e _%g4377143807%_)))
                       (let ((_%hd4377643814%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4377543810%_)))
                             (_%tl4377743817%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4377543810%_))))
                         (if (gx#stx-pair? _%tl4377743817%_)
                             (let ((_%e4377843820%_
                                    (gx#syntax-e _%tl4377743817%_)))
                               (let ((_%hd4377943824%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4377843820%_)))
                                     (_%tl4378043827%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4377843820%_))))
                                 (if (gx#stx-pair/null? _%tl4378043827%_)
                                     (let ((_g44670_
                                            (gx#syntax-split-splice
                                             _%tl4378043827%_
                                             '0)))
                                       (begin
                                         (let ((_g44671_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44670_)
                                                      (##vector-length
                                                       _g44670_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44671_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44671_)))
                                         (let ((_%target4378143830%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44670_ 0)))
                                               (_%tl4378343833%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44670_ 1))))
                                           (if (gx#stx-null? _%tl4378343833%_)
                                               (letrec ((_%loop4378443836%_
                                                         (lambda (_%hd4378243840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4378843843%_
                          _%id4378943845%_)
                   (if (gx#stx-pair? _%hd4378243840%_)
                       (let ((_%e4378543848%_ (gx#syntax-e _%hd4378243840%_)))
                         (let ((_%lp-hd4378643852%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4378543848%_)))
                               (_%lp-tl4378743855%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4378543848%_))))
                           (if (gx#stx-pair? _%lp-hd4378643852%_)
                               (let ((_%e4379243858%_
                                      (gx#syntax-e _%lp-hd4378643852%_)))
                                 (let ((_%hd4379343862%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4379243858%_)))
                                       (_%tl4379443865%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4379243858%_))))
                                   (if (gx#stx-pair? _%tl4379443865%_)
                                       (let ((_%e4379543868%_
                                              (gx#syntax-e _%tl4379443865%_)))
                                         (let ((_%hd4379643872%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4379543868%_)))
                                               (_%tl4379743875%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4379543868%_))))
                                           (if (gx#stx-null? _%tl4379743875%_)
                                               (_%loop4378443836%_
                                                _%lp-tl4378743855%_
                                                (cons _%hd4379643872%_
                                                      _%new-id4378843843%_)
                                                (cons _%hd4379343862%_
                                                      _%id4378943845%_))
                                               (_%g4377043803%_
                                                _%g4377143807%_))))
                                       (_%g4377043803%_ _%g4377143807%_))))
                               (_%g4377043803%_ _%g4377143807%_))))
                       (let ((_%new-id4379043878%_
                              (reverse _%new-id4378843843%_))
                             (_%id4379143881%_ (reverse _%id4378943845%_)))
                         ((lambda (_%L43884%_ _%L43886%_ _%L43887%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4390543908%_
                                                      _%g4390643911%_)
                                               (cons _%g4390543908%_
                                                     _%g4390643911%_))
                                             '()
                                             _%L43886%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4391343916%_
                                                      _%g4391443919%_)
                                               (cons _%g4391343916%_
                                                     _%g4391443919%_))
                                             '()
                                             _%L43884%_)))
                                (let* ((_%keytab43922%_ (make-hash-table))
                                       (_%found43925%_ (make-hash-table))
                                       (_%_43948%_
                                        (for-each
                                         (lambda (_%id43928%_ _%new-id43930%_)
                                           (hash-put!
                                            _%keytab43922%_
                                            (gx#core-identifier-key
                                             _%id43928%_)
                                            (gx#core-identifier-key
                                             _%new-id43930%_)))
                                         (foldr (lambda (_%g4393143934%_
                                                         _%g4393243937%_)
                                                  (cons _%g4393143934%_
                                                        _%g4393243937%_))
                                                '()
                                                _%L43886%_)
                                         (foldr (lambda (_%g4393943942%_
                                                         _%g4394043945%_)
                                                  (cons _%g4393943942%_
                                                        _%g4394043945%_))
                                                '()
                                                _%L43884%_)))
                                       (_%exports43951%_
                                        (gx#core-expand-export-source
                                         _%L43887%_))
                                       (_%fold-e43979%_
                                        (letrec ((_%fold-e43954%_
                                                  (lambda (_%out43957%_
                                                           _%r43959%_)
                                                    (if (gx#module-export?
                                                         _%out43957%_)
                                                        (let* ((_%name43963%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43957%_))
                       (_%$e43966%_ (hash-get _%keytab43922%_ _%name43963%_)))
                  (if _%$e43966%_
                      ((lambda (_%rename43970%_)
                         (hash-put! _%found43925%_ _%name43963%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43957%_
                                _%rename43970%_)
                               _%r43959%_))
                       _%$e43966%_)
                      (cons _%out43957%_ _%r43959%_)))
                (if (gx#export-set? _%out43957%_)
                    (foldl _%fold-e43954%_
                           _%r43959%_
                           (gx#export-set-exports _%out43957%_))
                    (cons _%out43957%_ _%r43959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43954%_))
                                       (_%new-exports43982%_
                                        (foldl _%fold-e43979%_
                                               '()
                                               _%exports43951%_)))
                                  (for-each
                                   (lambda (_%id43987%_)
                                     (if (hash-get
                                          _%found43925%_
                                          (gx#core-identifier-key _%id43987%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43767%_
                                          _%id43987%_)))
                                   (foldr (lambda (_%g4398943992%_
                                                   _%g4399043995%_)
                                            (cons _%g4398943992%_
                                                  _%g4399043995%_))
                                          '()
                                          _%L43886%_))
                                  (cons 'begin: _%new-exports43982%_))
                                (_%g4377043803%_ _%g4377143807%_)))
                          _%new-id4379043878%_
                          _%id4379143881%_
                          _%hd4377943824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4378443836%_
                                                  _%target4378143830%_
                                                  '()
                                                  '()))
                                               (_%g4377043803%_
                                                _%g4377143807%_)))))
                                     (_%g4377043803%_ _%g4377143807%_))))
                             (_%g4377043803%_ _%g4377143807%_))))
                     (_%g4377043803%_ _%g4377143807%_)))))
         (_%g4376943998%_ _%stx43767%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx44003%_)
       (let* ((_%g4400644024%_
               (lambda (_%g4400744020%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4400744020%_)))
              (_%g4400544109%_
               (lambda (_%g4400744028%_)
                 (if (gx#stx-pair? _%g4400744028%_)
                     (let ((_%e4401044031%_ (gx#syntax-e _%g4400744028%_)))
                       (let ((_%hd4401144035%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4401044031%_)))
                             (_%tl4401244038%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4401044031%_))))
                         (if (gx#stx-pair? _%tl4401244038%_)
                             (let ((_%e4401344041%_
                                    (gx#syntax-e _%tl4401244038%_)))
                               (let ((_%hd4401444045%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4401344041%_)))
                                     (_%tl4401544048%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4401344041%_))))
                                 (if (gx#stx-pair? _%tl4401544048%_)
                                     (let ((_%e4401644051%_
                                            (gx#syntax-e _%tl4401544048%_)))
                                       (let ((_%hd4401744055%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4401644051%_)))
                                             (_%tl4401844058%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4401644051%_))))
                                         (if (gx#stx-null? _%tl4401844058%_)
                                             ((lambda (_%L44061%_ _%L44063%_)
                                                (if (gx#identifier? _%L44061%_)
                                                    (let* ((_%pre44079%_
                                                            (gx#stx-e
                                                             _%L44061%_))
                                                           (_%exports44082%_
                                                            (gx#core-expand-export-source
                                                             _%L44063%_))
                                                           (_%rename-e44088%_
                                                            (lambda (_%name44085%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name44085%_
                                                               _%pre44079%_)))
                                                           (_%fold-e44104%_
                                                            (letrec ((_%fold-e44091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44094%_ _%r44096%_)
                                (if (gx#module-export? _%out44094%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44094%_
                                           (_%rename-e44088%_
                                            (gx#module-export-name
                                             _%out44094%_)))
                                          _%r44096%_)
                                    (if (gx#export-set? _%out44094%_)
                                        (foldl _%fold-e44091%_
                                               _%r44096%_
                                               (gx#export-set-exports
                                                _%out44094%_))
                                        (cons _%out44094%_ _%r44096%_))))))
                      _%fold-e44091%_)))
              (cons 'begin: (foldl _%fold-e44104%_ '() _%exports44082%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4400644024%_
                                                     _%g4400744028%_)))
                                              _%hd4401744055%_
                                              _%hd4401444045%_)
                                             (_%g4400644024%_
                                              _%g4400744028%_))))
                                     (_%g4400644024%_ _%g4400744028%_))))
                             (_%g4400644024%_ _%g4400744028%_))))
                     (_%g4400644024%_ _%g4400744028%_)))))
         (_%g4400544109%_ _%stx44003%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44113%_)
       (letrec ((_%identifiers44116%_
                 (lambda (_%id44348%_ _%unchecked?44350%_)
                   (let ((_%info44352%_
                          (gx#syntax-local-value _%id44348%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44352%_))
                         (cons _%id44348%_
                               (cons (let ((__obj44649 _%info44352%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44649
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44649
                                              '12
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj44649
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44650
                                                         _%info44352%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44650
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44650
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj44650
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44651 _%info44352%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44651
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44651
                                                 '18
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44651
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44652 _%info44352%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44652
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44652
                                                 '17
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44652
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44653 _%info44352%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44653
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44653
                                      '16
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj44653
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44654 _%info44352%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44654
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44654
                               '15
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj44654
                             'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44355%_
                                                   (let ((__obj44655
                                                          _%info44352%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44655
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44655
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj44655
                                                          'constructor)))))
                                              (if _%ctor44355%_
                                                  (cons _%ctor44355%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44113%_
                          _%id44348%_))))))
         (let* ((_%__stx4459044591%_ _%stx44113%_)
                (_%g4412044161%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4459044591%_))))
           (let ((_%__kont4459344594%_
                  (lambda (_%L44309%_ _%L44311%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4433044332%_)
                              (_%identifiers44116%_
                               _%g4433044332%_
                               (gx#stx-e _%L44311%_)))
                            (foldr (lambda (_%g4433544338%_ _%g4433644341%_)
                                     (cons _%g4433544338%_ _%g4433644341%_))
                                   '()
                                   _%L44309%_))))))
                 (_%__kont4459744598%_
                  (lambda (_%L44208%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4422444226%_)
                              (_%identifiers44116%_ _%g4422444226%_ '#f))
                            (foldr (lambda (_%g4422944232%_ _%g4423044235%_)
                                     (cons _%g4422944232%_ _%g4423044235%_))
                                   '()
                                   _%L44208%_)))))))
             (let* ((_%__match4464744648%_
                     (lambda (_%e4414444168%_
                              _%hd4414544172%_
                              _%tl4414644175%_
                              _%__splice4459944600%_
                              _%target4414744178%_
                              _%tl4414944181%_)
                       (letrec ((_%loop4415044184%_
                                 (lambda (_%hd4414844188%_ _%id4415444191%_)
                                   (if (gx#stx-pair? _%hd4414844188%_)
                                       (let ((_%e4415144194%_
                                              (gx#syntax-e _%hd4414844188%_)))
                                         (let ((_%lp-tl4415344201%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4415144194%_)))
                                               (_%lp-hd4415244198%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4415144194%_))))
                                           (_%loop4415044184%_
                                            _%lp-tl4415344201%_
                                            (cons _%lp-hd4415244198%_
                                                  _%id4415444191%_))))
                                       (let ((_%id4415544204%_
                                              (reverse _%id4415444191%_)))
                                         (_%__kont4459744598%_
                                          _%id4415544204%_))))))
                         (_%loop4415044184%_ _%target4414744178%_ '()))))
                    (_%__match4463344634%_
                     (lambda (_%e4412444245%_
                              _%hd4412544249%_
                              _%tl4412644252%_
                              _%e4412744255%_
                              _%hd4412844259%_
                              _%tl4412944262%_
                              _%e4413044265%_
                              _%e4413144269%_
                              _%hd4413244273%_
                              _%tl4413344276%_
                              _%__splice4459544596%_
                              _%target4413444279%_
                              _%tl4413644282%_)
                       (letrec ((_%loop4413744285%_
                                 (lambda (_%hd4413544289%_ _%id4414144292%_)
                                   (if (gx#stx-pair? _%hd4413544289%_)
                                       (let ((_%e4413844295%_
                                              (gx#syntax-e _%hd4413544289%_)))
                                         (let ((_%lp-tl4414044302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4413844295%_)))
                                               (_%lp-hd4413944299%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4413844295%_))))
                                           (_%loop4413744285%_
                                            _%lp-tl4414044302%_
                                            (cons _%lp-hd4413944299%_
                                                  _%id4414144292%_))))
                                       (let ((_%id4414244305%_
                                              (reverse _%id4414144292%_)))
                                         (_%__kont4459344594%_
                                          _%id4414244305%_
                                          _%hd4413244273%_))))))
                         (_%loop4413744285%_ _%target4413444279%_ '())))))
               (if (gx#stx-pair? _%__stx4459044591%_)
                   (let ((_%e4412444245%_ (gx#syntax-e _%__stx4459044591%_)))
                     (let ((_%tl4412644252%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4412444245%_)))
                           (_%hd4412544249%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4412444245%_))))
                       (if (gx#stx-pair? _%tl4412644252%_)
                           (let ((_%e4412744255%_
                                  (gx#syntax-e _%tl4412644252%_)))
                             (let ((_%tl4412944262%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4412744255%_)))
                                   (_%hd4412844259%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4412744255%_))))
                               (if (gx#stx-datum? _%hd4412844259%_)
                                   (let ((_%e4413044265%_
                                          (gx#stx-e _%hd4412844259%_)))
                                     (if (equal? _%e4413044265%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4412944262%_)
                                             (let ((_%e4413144269%_
                                                    (gx#syntax-e
                                                     _%tl4412944262%_)))
                                               (let ((_%tl4413344276%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4413144269%_)))
                                                     (_%hd4413244273%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4413144269%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4413344276%_)
                                                     (let ((_%__splice4459544596%_
                                                            (gx#syntax-split-splice
                                                             _%tl4413344276%_
                                                             '0)))
                                                       (let ((_%tl4413644282%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4459544596%_ '1)))
                     (_%target4413444279%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4459544596%_ '0))))
                 (if (gx#stx-null? _%tl4413644282%_)
                     (_%__match4463344634%_
                      _%e4412444245%_
                      _%hd4412544249%_
                      _%tl4412644252%_
                      _%e4412744255%_
                      _%hd4412844259%_
                      _%tl4412944262%_
                      _%e4413044265%_
                      _%e4413144269%_
                      _%hd4413244273%_
                      _%tl4413344276%_
                      _%__splice4459544596%_
                      _%target4413444279%_
                      _%tl4413644282%_)
                     (if (gx#stx-pair/null? _%tl4412644252%_)
                         (let ((_%__splice4459944600%_
                                (gx#syntax-split-splice _%tl4412644252%_ '0)))
                           (let ((_%tl4414944181%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4459944600%_ '1)))
                                 (_%target4414744178%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4459944600%_ '0))))
                             (if (gx#stx-null? _%tl4414944181%_)
                                 (_%__match4464744648%_
                                  _%e4412444245%_
                                  _%hd4412544249%_
                                  _%tl4412644252%_
                                  _%__splice4459944600%_
                                  _%target4414744178%_
                                  _%tl4414944181%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4412044161%_)))))
                         (let () (declare (not safe)) (_%g4412044161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4412644252%_)
                                                         (let ((_%__splice4459944600%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4412644252%_
                         '0)))
                   (let ((_%tl4414944181%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4459944600%_ '1)))
                         (_%target4414744178%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4459944600%_ '0))))
                     (if (gx#stx-null? _%tl4414944181%_)
                         (_%__match4464744648%_
                          _%e4412444245%_
                          _%hd4412544249%_
                          _%tl4412644252%_
                          _%__splice4459944600%_
                          _%target4414744178%_
                          _%tl4414944181%_)
                         (let () (declare (not safe)) (_%g4412044161%_)))))
                 (let () (declare (not safe)) (_%g4412044161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4412644252%_)
                                                 (let ((_%__splice4459944600%_
                                                        (gx#syntax-split-splice
                                                         _%tl4412644252%_
                                                         '0)))
                                                   (let ((_%tl4414944181%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4459944600%_
                                                             '1)))
                                                         (_%target4414744178%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4459944600%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4414944181%_)
                                                         (_%__match4464744648%_
                                                          _%e4412444245%_
                                                          _%hd4412544249%_
                                                          _%tl4412644252%_
                                                          _%__splice4459944600%_
                                                          _%target4414744178%_
                                                          _%tl4414944181%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4412044161%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4412044161%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4412644252%_)
                                             (let ((_%__splice4459944600%_
                                                    (gx#syntax-split-splice
                                                     _%tl4412644252%_
                                                     '0)))
                                               (let ((_%tl4414944181%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4459944600%_
                                                         '1)))
                                                     (_%target4414744178%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4459944600%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4414944181%_)
                                                     (_%__match4464744648%_
                                                      _%e4412444245%_
                                                      _%hd4412544249%_
                                                      _%tl4412644252%_
                                                      _%__splice4459944600%_
                                                      _%target4414744178%_
                                                      _%tl4414944181%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4412044161%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4412044161%_)))))
                                   (if (gx#stx-pair/null? _%tl4412644252%_)
                                       (let ((_%__splice4459944600%_
                                              (gx#syntax-split-splice
                                               _%tl4412644252%_
                                               '0)))
                                         (let ((_%tl4414944181%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4459944600%_
                                                   '1)))
                                               (_%target4414744178%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4459944600%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4414944181%_)
                                               (_%__match4464744648%_
                                                _%e4412444245%_
                                                _%hd4412544249%_
                                                _%tl4412644252%_
                                                _%__splice4459944600%_
                                                _%target4414744178%_
                                                _%tl4414944181%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4412044161%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4412044161%_))))))
                           (if (gx#stx-pair/null? _%tl4412644252%_)
                               (let ((_%__splice4459944600%_
                                      (gx#syntax-split-splice
                                       _%tl4412644252%_
                                       '0)))
                                 (let ((_%tl4414944181%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4459944600%_
                                           '1)))
                                       (_%target4414744178%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4459944600%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4414944181%_)
                                       (_%__match4464744648%_
                                        _%e4412444245%_
                                        _%hd4412544249%_
                                        _%tl4412644252%_
                                        _%__splice4459944600%_
                                        _%target4414744178%_
                                        _%tl4414944181%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4412044161%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4412044161%_))))))
                   (let () (declare (not safe)) (_%g4412044161%_)))))))))))
