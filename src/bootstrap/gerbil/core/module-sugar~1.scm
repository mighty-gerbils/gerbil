(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41719%_)
      (let* ((_%__stx4437344374%_ _%$stx41719%_)
             (_%g4172441743%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4437344374%_))))
        (let ((_%__kont4437644377%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4437844379%_
               (lambda (_%L41770%_ _%L41772%_ _%L41773%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41772%_
                                   (cons (cons _%L41773%_ _%L41770%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4437344374%_)
              (let ((_%e4172641795%_ (gx#syntax-e _%__stx4437344374%_)))
                (let ((_%tl4172841802%_
                       (let () (declare (not safe)) (##cdr _%e4172641795%_)))
                      (_%hd4172741799%_
                       (let () (declare (not safe)) (##car _%e4172641795%_))))
                  (if (gx#stx-null? _%tl4172841802%_)
                      (_%__kont4437644377%_)
                      (if (gx#stx-pair? _%tl4172841802%_)
                          (let ((_%e4173541760%_
                                 (gx#syntax-e _%tl4172841802%_)))
                            (let ((_%tl4173741767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4173541760%_)))
                                  (_%hd4173641764%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4173541760%_))))
                              (_%__kont4437844379%_
                               _%tl4173741767%_
                               _%hd4173641764%_
                               _%hd4172741799%_)))
                          (let () (declare (not safe)) (_%g4172441743%_))))))
              (let () (declare (not safe)) (_%g4172441743%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41813%_)
      (let* ((_%__stx4440344404%_ _%$stx41813%_)
             (_%g4181841858%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4440344404%_))))
        (let ((_%__kont4440644407%_
               (lambda (_%L41996%_ _%L41998%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L41998%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L41996%_ '()))
                                   '())))))
              (_%__kont4440844409%_
               (lambda (_%L41925%_ _%L41927%_ _%L41928%_ _%L41929%_)
                 (cons _%L41929%_
                       (cons _%L41928%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41927%_
                                               (foldr (lambda (_%g4195041953%_
                                                               _%g4195141956%_)
                                                        (cons _%g4195041953%_
                                                              _%g4195141956%_))
                                                      '()
                                                      _%L41925%_)))
                                   '()))))))
          (let* ((_%__match4445844459%_
                  (lambda (_%e4183541865%_
                           _%hd4183641869%_
                           _%tl4183741872%_
                           _%e4183841875%_
                           _%hd4183941879%_
                           _%tl4184041882%_
                           _%e4184141885%_
                           _%hd4184241889%_
                           _%tl4184341892%_
                           _%__splice4441044411%_
                           _%target4184441895%_
                           _%tl4184641898%_)
                    (letrec ((_%loop4184741901%_
                              (lambda (_%hd4184541905%_ _%body4185141908%_)
                                (if (gx#stx-pair? _%hd4184541905%_)
                                    (let ((_%e4184841911%_
                                           (gx#syntax-e _%hd4184541905%_)))
                                      (let ((_%lp-tl4185041918%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4184841911%_)))
                                            (_%lp-hd4184941915%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4184841911%_))))
                                        (_%loop4184741901%_
                                         _%lp-tl4185041918%_
                                         (cons _%lp-hd4184941915%_
                                               _%body4185141908%_))))
                                    (let ((_%body4185241921%_
                                           (reverse _%body4185141908%_)))
                                      (let ((_%L41925%_ _%body4185241921%_)
                                            (_%L41927%_ _%tl4184341892%_)
                                            (_%L41928%_ _%hd4184241889%_)
                                            (_%L41929%_ _%hd4183641869%_))
                                        (if (gx#identifier? _%L41928%_)
                                            (_%__kont4440844409%_
                                             _%L41925%_
                                             _%L41927%_
                                             _%L41928%_
                                             _%L41929%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4181841858%_)))))))))
                      (_%loop4184741901%_ _%target4184441895%_ '()))))
                 (_%__match4443244433%_
                  (lambda (_%e4182241966%_
                           _%hd4182341970%_
                           _%tl4182441973%_
                           _%e4182541976%_
                           _%hd4182641980%_
                           _%tl4182741983%_
                           _%e4182841986%_
                           _%hd4182941990%_
                           _%tl4183041993%_)
                    (let ((_%L41996%_ _%hd4182941990%_)
                          (_%L41998%_ _%hd4182641980%_))
                      (if (gx#identifier? _%L41998%_)
                          (_%__kont4440644407%_ _%L41996%_ _%L41998%_)
                          (if (gx#stx-pair? _%hd4182641980%_)
                              (let ((_%e4184141885%_
                                     (gx#syntax-e _%hd4182641980%_)))
                                (let ((_%tl4184341892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4184141885%_)))
                                      (_%hd4184241889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4184141885%_))))
                                  (if (gx#stx-pair/null? _%tl4182741983%_)
                                      (let ((_%__splice4441044411%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4182741983%_
                                              '0)))
                                        (let ((_%tl4184641898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4441044411%_
                                                  '1)))
                                              (_%target4184441895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4441044411%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4184641898%_)
                                              (_%__match4445844459%_
                                               _%e4182241966%_
                                               _%hd4182341970%_
                                               _%tl4182441973%_
                                               _%e4182541976%_
                                               _%hd4182641980%_
                                               _%tl4182741983%_
                                               _%e4184141885%_
                                               _%hd4184241889%_
                                               _%tl4184341892%_
                                               _%__splice4441044411%_
                                               _%target4184441895%_
                                               _%tl4184641898%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4181841858%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4181841858%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4181841858%_))))))))
            (if (gx#stx-pair? _%__stx4440344404%_)
                (let ((_%e4182241966%_ (gx#syntax-e _%__stx4440344404%_)))
                  (let ((_%tl4182441973%_
                         (let () (declare (not safe)) (##cdr _%e4182241966%_)))
                        (_%hd4182341970%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4182241966%_))))
                    (if (gx#stx-pair? _%tl4182441973%_)
                        (let ((_%e4182541976%_ (gx#syntax-e _%tl4182441973%_)))
                          (let ((_%tl4182741983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4182541976%_)))
                                (_%hd4182641980%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4182541976%_))))
                            (if (gx#stx-pair? _%tl4182741983%_)
                                (let ((_%e4182841986%_
                                       (gx#syntax-e _%tl4182741983%_)))
                                  (let ((_%tl4183041993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4182841986%_)))
                                        (_%hd4182941990%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4182841986%_))))
                                    (if (gx#stx-null? _%tl4183041993%_)
                                        (_%__match4443244433%_
                                         _%e4182241966%_
                                         _%hd4182341970%_
                                         _%tl4182441973%_
                                         _%e4182541976%_
                                         _%hd4182641980%_
                                         _%tl4182741983%_
                                         _%e4182841986%_
                                         _%hd4182941990%_
                                         _%tl4183041993%_)
                                        (if (gx#stx-pair? _%hd4182641980%_)
                                            (let ((_%e4184141885%_
                                                   (gx#syntax-e
                                                    _%hd4182641980%_)))
                                              (let ((_%tl4184341892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4184141885%_)))
                                                    (_%hd4184241889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4184141885%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4182741983%_)
                                                    (let ((_%__splice4441044411%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4182741983%_
                                                            '0)))
                                                      (let ((_%tl4184641898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4441044411%_ '1)))
                    (_%target4184441895%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4441044411%_ '0))))
                (if (gx#stx-null? _%tl4184641898%_)
                    (_%__match4445844459%_
                     _%e4182241966%_
                     _%hd4182341970%_
                     _%tl4182441973%_
                     _%e4182541976%_
                     _%hd4182641980%_
                     _%tl4182741983%_
                     _%e4184141885%_
                     _%hd4184241889%_
                     _%tl4184341892%_
                     _%__splice4441044411%_
                     _%target4184441895%_
                     _%tl4184641898%_)
                    (let () (declare (not safe)) (_%g4181841858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4181841858%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4181841858%_))))))
                                (if (gx#stx-pair? _%hd4182641980%_)
                                    (let ((_%e4184141885%_
                                           (gx#syntax-e _%hd4182641980%_)))
                                      (let ((_%tl4184341892%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4184141885%_)))
                                            (_%hd4184241889%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4184141885%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4182741983%_)
                                            (let ((_%__splice4441044411%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4182741983%_
                                                    '0)))
                                              (let ((_%tl4184641898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4441044411%_
                                                        '1)))
                                                    (_%target4184441895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4441044411%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4184641898%_)
                                                    (_%__match4445844459%_
                                                     _%e4182241966%_
                                                     _%hd4182341970%_
                                                     _%tl4182441973%_
                                                     _%e4182541976%_
                                                     _%hd4182641980%_
                                                     _%tl4182741983%_
                                                     _%e4184141885%_
                                                     _%hd4184241889%_
                                                     _%tl4184341892%_
                                                     _%__splice4441044411%_
                                                     _%target4184441895%_
                                                     _%tl4184641898%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4181841858%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4181841858%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4181841858%_))))))
                        (let () (declare (not safe)) (_%g4181841858%_)))))
                (let () (declare (not safe)) (_%g4181841858%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42018%_)
      (let* ((_%__stx4446144462%_ _%$stx42018%_)
             (_%g4202342063%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4446144462%_))))
        (let ((_%__kont4446444465%_
               (lambda (_%L42201%_ _%L42203%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42203%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42201%_ '()))
                                   '())))))
              (_%__kont4446644467%_
               (lambda (_%L42130%_ _%L42132%_ _%L42133%_ _%L42134%_)
                 (cons _%L42134%_
                       (cons _%L42133%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42132%_
                                               (foldr (lambda (_%g4215542158%_
                                                               _%g4215642161%_)
                                                        (cons _%g4215542158%_
                                                              _%g4215642161%_))
                                                      '()
                                                      _%L42130%_)))
                                   '()))))))
          (let* ((_%__match4451644517%_
                  (lambda (_%e4204042070%_
                           _%hd4204142074%_
                           _%tl4204242077%_
                           _%e4204342080%_
                           _%hd4204442084%_
                           _%tl4204542087%_
                           _%e4204642090%_
                           _%hd4204742094%_
                           _%tl4204842097%_
                           _%__splice4446844469%_
                           _%target4204942100%_
                           _%tl4205142103%_)
                    (letrec ((_%loop4205242106%_
                              (lambda (_%hd4205042110%_ _%body4205642113%_)
                                (if (gx#stx-pair? _%hd4205042110%_)
                                    (let ((_%e4205342116%_
                                           (gx#syntax-e _%hd4205042110%_)))
                                      (let ((_%lp-tl4205542123%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4205342116%_)))
                                            (_%lp-hd4205442120%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4205342116%_))))
                                        (_%loop4205242106%_
                                         _%lp-tl4205542123%_
                                         (cons _%lp-hd4205442120%_
                                               _%body4205642113%_))))
                                    (let ((_%body4205742126%_
                                           (reverse _%body4205642113%_)))
                                      (let ((_%L42130%_ _%body4205742126%_)
                                            (_%L42132%_ _%tl4204842097%_)
                                            (_%L42133%_ _%hd4204742094%_)
                                            (_%L42134%_ _%hd4204142074%_))
                                        (if (gx#identifier? _%L42133%_)
                                            (_%__kont4446644467%_
                                             _%L42130%_
                                             _%L42132%_
                                             _%L42133%_
                                             _%L42134%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4202342063%_)))))))))
                      (_%loop4205242106%_ _%target4204942100%_ '()))))
                 (_%__match4449044491%_
                  (lambda (_%e4202742171%_
                           _%hd4202842175%_
                           _%tl4202942178%_
                           _%e4203042181%_
                           _%hd4203142185%_
                           _%tl4203242188%_
                           _%e4203342191%_
                           _%hd4203442195%_
                           _%tl4203542198%_)
                    (let ((_%L42201%_ _%hd4203442195%_)
                          (_%L42203%_ _%hd4203142185%_))
                      (if (gx#identifier? _%L42203%_)
                          (_%__kont4446444465%_ _%L42201%_ _%L42203%_)
                          (if (gx#stx-pair? _%hd4203142185%_)
                              (let ((_%e4204642090%_
                                     (gx#syntax-e _%hd4203142185%_)))
                                (let ((_%tl4204842097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4204642090%_)))
                                      (_%hd4204742094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4204642090%_))))
                                  (if (gx#stx-pair/null? _%tl4203242188%_)
                                      (let ((_%__splice4446844469%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4203242188%_
                                              '0)))
                                        (let ((_%tl4205142103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4446844469%_
                                                  '1)))
                                              (_%target4204942100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4446844469%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4205142103%_)
                                              (_%__match4451644517%_
                                               _%e4202742171%_
                                               _%hd4202842175%_
                                               _%tl4202942178%_
                                               _%e4203042181%_
                                               _%hd4203142185%_
                                               _%tl4203242188%_
                                               _%e4204642090%_
                                               _%hd4204742094%_
                                               _%tl4204842097%_
                                               _%__splice4446844469%_
                                               _%target4204942100%_
                                               _%tl4205142103%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4202342063%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4202342063%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4202342063%_))))))))
            (if (gx#stx-pair? _%__stx4446144462%_)
                (let ((_%e4202742171%_ (gx#syntax-e _%__stx4446144462%_)))
                  (let ((_%tl4202942178%_
                         (let () (declare (not safe)) (##cdr _%e4202742171%_)))
                        (_%hd4202842175%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4202742171%_))))
                    (if (gx#stx-pair? _%tl4202942178%_)
                        (let ((_%e4203042181%_ (gx#syntax-e _%tl4202942178%_)))
                          (let ((_%tl4203242188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4203042181%_)))
                                (_%hd4203142185%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4203042181%_))))
                            (if (gx#stx-pair? _%tl4203242188%_)
                                (let ((_%e4203342191%_
                                       (gx#syntax-e _%tl4203242188%_)))
                                  (let ((_%tl4203542198%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4203342191%_)))
                                        (_%hd4203442195%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4203342191%_))))
                                    (if (gx#stx-null? _%tl4203542198%_)
                                        (_%__match4449044491%_
                                         _%e4202742171%_
                                         _%hd4202842175%_
                                         _%tl4202942178%_
                                         _%e4203042181%_
                                         _%hd4203142185%_
                                         _%tl4203242188%_
                                         _%e4203342191%_
                                         _%hd4203442195%_
                                         _%tl4203542198%_)
                                        (if (gx#stx-pair? _%hd4203142185%_)
                                            (let ((_%e4204642090%_
                                                   (gx#syntax-e
                                                    _%hd4203142185%_)))
                                              (let ((_%tl4204842097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4204642090%_)))
                                                    (_%hd4204742094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4204642090%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4203242188%_)
                                                    (let ((_%__splice4446844469%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4203242188%_
                                                            '0)))
                                                      (let ((_%tl4205142103%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4446844469%_ '1)))
                    (_%target4204942100%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4446844469%_ '0))))
                (if (gx#stx-null? _%tl4205142103%_)
                    (_%__match4451644517%_
                     _%e4202742171%_
                     _%hd4202842175%_
                     _%tl4202942178%_
                     _%e4203042181%_
                     _%hd4203142185%_
                     _%tl4203242188%_
                     _%e4204642090%_
                     _%hd4204742094%_
                     _%tl4204842097%_
                     _%__splice4446844469%_
                     _%target4204942100%_
                     _%tl4205142103%_)
                    (let () (declare (not safe)) (_%g4202342063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4202342063%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4202342063%_))))))
                                (if (gx#stx-pair? _%hd4203142185%_)
                                    (let ((_%e4204642090%_
                                           (gx#syntax-e _%hd4203142185%_)))
                                      (let ((_%tl4204842097%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4204642090%_)))
                                            (_%hd4204742094%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4204642090%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4203242188%_)
                                            (let ((_%__splice4446844469%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4203242188%_
                                                    '0)))
                                              (let ((_%tl4205142103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4446844469%_
                                                        '1)))
                                                    (_%target4204942100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4446844469%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4205142103%_)
                                                    (_%__match4451644517%_
                                                     _%e4202742171%_
                                                     _%hd4202842175%_
                                                     _%tl4202942178%_
                                                     _%e4203042181%_
                                                     _%hd4203142185%_
                                                     _%tl4203242188%_
                                                     _%e4204642090%_
                                                     _%hd4204742094%_
                                                     _%tl4204842097%_
                                                     _%__splice4446844469%_
                                                     _%target4204942100%_
                                                     _%tl4205142103%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4202342063%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4202342063%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4202342063%_))))))
                        (let () (declare (not safe)) (_%g4202342063%_)))))
                (let () (declare (not safe)) (_%g4202342063%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42223%_)
      (let* ((_%__stx4451944520%_ _%$stx42223%_)
             (_%g4222842268%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4451944520%_))))
        (let ((_%__kont4452244523%_
               (lambda (_%L42406%_ _%L42408%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42408%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42406%_ '()))
                                   '())))))
              (_%__kont4452444525%_
               (lambda (_%L42335%_ _%L42337%_ _%L42338%_ _%L42339%_)
                 (cons _%L42339%_
                       (cons _%L42338%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42337%_
                                               (foldr (lambda (_%g4236042363%_
                                                               _%g4236142366%_)
                                                        (cons _%g4236042363%_
                                                              _%g4236142366%_))
                                                      '()
                                                      _%L42335%_)))
                                   '()))))))
          (let* ((_%__match4457444575%_
                  (lambda (_%e4224542275%_
                           _%hd4224642279%_
                           _%tl4224742282%_
                           _%e4224842285%_
                           _%hd4224942289%_
                           _%tl4225042292%_
                           _%e4225142295%_
                           _%hd4225242299%_
                           _%tl4225342302%_
                           _%__splice4452644527%_
                           _%target4225442305%_
                           _%tl4225642308%_)
                    (letrec ((_%loop4225742311%_
                              (lambda (_%hd4225542315%_ _%body4226142318%_)
                                (if (gx#stx-pair? _%hd4225542315%_)
                                    (let ((_%e4225842321%_
                                           (gx#syntax-e _%hd4225542315%_)))
                                      (let ((_%lp-tl4226042328%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4225842321%_)))
                                            (_%lp-hd4225942325%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4225842321%_))))
                                        (_%loop4225742311%_
                                         _%lp-tl4226042328%_
                                         (cons _%lp-hd4225942325%_
                                               _%body4226142318%_))))
                                    (let ((_%body4226242331%_
                                           (reverse _%body4226142318%_)))
                                      (let ((_%L42335%_ _%body4226242331%_)
                                            (_%L42337%_ _%tl4225342302%_)
                                            (_%L42338%_ _%hd4225242299%_)
                                            (_%L42339%_ _%hd4224642279%_))
                                        (if (gx#identifier? _%L42338%_)
                                            (_%__kont4452444525%_
                                             _%L42335%_
                                             _%L42337%_
                                             _%L42338%_
                                             _%L42339%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4222842268%_)))))))))
                      (_%loop4225742311%_ _%target4225442305%_ '()))))
                 (_%__match4454844549%_
                  (lambda (_%e4223242376%_
                           _%hd4223342380%_
                           _%tl4223442383%_
                           _%e4223542386%_
                           _%hd4223642390%_
                           _%tl4223742393%_
                           _%e4223842396%_
                           _%hd4223942400%_
                           _%tl4224042403%_)
                    (let ((_%L42406%_ _%hd4223942400%_)
                          (_%L42408%_ _%hd4223642390%_))
                      (if (gx#identifier? _%L42408%_)
                          (_%__kont4452244523%_ _%L42406%_ _%L42408%_)
                          (if (gx#stx-pair? _%hd4223642390%_)
                              (let ((_%e4225142295%_
                                     (gx#syntax-e _%hd4223642390%_)))
                                (let ((_%tl4225342302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4225142295%_)))
                                      (_%hd4225242299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4225142295%_))))
                                  (if (gx#stx-pair/null? _%tl4223742393%_)
                                      (let ((_%__splice4452644527%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4223742393%_
                                              '0)))
                                        (let ((_%tl4225642308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4452644527%_
                                                  '1)))
                                              (_%target4225442305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4452644527%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4225642308%_)
                                              (_%__match4457444575%_
                                               _%e4223242376%_
                                               _%hd4223342380%_
                                               _%tl4223442383%_
                                               _%e4223542386%_
                                               _%hd4223642390%_
                                               _%tl4223742393%_
                                               _%e4225142295%_
                                               _%hd4225242299%_
                                               _%tl4225342302%_
                                               _%__splice4452644527%_
                                               _%target4225442305%_
                                               _%tl4225642308%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4222842268%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4222842268%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4222842268%_))))))))
            (if (gx#stx-pair? _%__stx4451944520%_)
                (let ((_%e4223242376%_ (gx#syntax-e _%__stx4451944520%_)))
                  (let ((_%tl4223442383%_
                         (let () (declare (not safe)) (##cdr _%e4223242376%_)))
                        (_%hd4223342380%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4223242376%_))))
                    (if (gx#stx-pair? _%tl4223442383%_)
                        (let ((_%e4223542386%_ (gx#syntax-e _%tl4223442383%_)))
                          (let ((_%tl4223742393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4223542386%_)))
                                (_%hd4223642390%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4223542386%_))))
                            (if (gx#stx-pair? _%tl4223742393%_)
                                (let ((_%e4223842396%_
                                       (gx#syntax-e _%tl4223742393%_)))
                                  (let ((_%tl4224042403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4223842396%_)))
                                        (_%hd4223942400%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4223842396%_))))
                                    (if (gx#stx-null? _%tl4224042403%_)
                                        (_%__match4454844549%_
                                         _%e4223242376%_
                                         _%hd4223342380%_
                                         _%tl4223442383%_
                                         _%e4223542386%_
                                         _%hd4223642390%_
                                         _%tl4223742393%_
                                         _%e4223842396%_
                                         _%hd4223942400%_
                                         _%tl4224042403%_)
                                        (if (gx#stx-pair? _%hd4223642390%_)
                                            (let ((_%e4225142295%_
                                                   (gx#syntax-e
                                                    _%hd4223642390%_)))
                                              (let ((_%tl4225342302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4225142295%_)))
                                                    (_%hd4225242299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4225142295%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4223742393%_)
                                                    (let ((_%__splice4452644527%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4223742393%_
                                                            '0)))
                                                      (let ((_%tl4225642308%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4452644527%_ '1)))
                    (_%target4225442305%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4452644527%_ '0))))
                (if (gx#stx-null? _%tl4225642308%_)
                    (_%__match4457444575%_
                     _%e4223242376%_
                     _%hd4223342380%_
                     _%tl4223442383%_
                     _%e4223542386%_
                     _%hd4223642390%_
                     _%tl4223742393%_
                     _%e4225142295%_
                     _%hd4225242299%_
                     _%tl4225342302%_
                     _%__splice4452644527%_
                     _%target4225442305%_
                     _%tl4225642308%_)
                    (let () (declare (not safe)) (_%g4222842268%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4222842268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4222842268%_))))))
                                (if (gx#stx-pair? _%hd4223642390%_)
                                    (let ((_%e4225142295%_
                                           (gx#syntax-e _%hd4223642390%_)))
                                      (let ((_%tl4225342302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4225142295%_)))
                                            (_%hd4225242299%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4225142295%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4223742393%_)
                                            (let ((_%__splice4452644527%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4223742393%_
                                                    '0)))
                                              (let ((_%tl4225642308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4452644527%_
                                                        '1)))
                                                    (_%target4225442305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4452644527%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4225642308%_)
                                                    (_%__match4457444575%_
                                                     _%e4223242376%_
                                                     _%hd4223342380%_
                                                     _%tl4223442383%_
                                                     _%e4223542386%_
                                                     _%hd4223642390%_
                                                     _%tl4223742393%_
                                                     _%e4225142295%_
                                                     _%hd4225242299%_
                                                     _%tl4225342302%_
                                                     _%__splice4452644527%_
                                                     _%target4225442305%_
                                                     _%tl4225642308%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4222842268%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4222842268%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4222842268%_))))))
                        (let () (declare (not safe)) (_%g4222842268%_)))))
                (let () (declare (not safe)) (_%g4222842268%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42428%_)
       (let* ((_%g4243142451%_
               (lambda (_%g4243242447%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4243242447%_)))
              (_%g4243042522%_
               (lambda (_%g4243242455%_)
                 (if (gx#stx-pair? _%g4243242455%_)
                     (let ((_%e4243442458%_ (gx#syntax-e _%g4243242455%_)))
                       (let ((_%hd4243542462%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4243442458%_)))
                             (_%tl4243642465%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4243442458%_))))
                         (if (gx#stx-pair/null? _%tl4243642465%_)
                             (let ((_g44669_
                                    (gx#syntax-split-splice
                                     _%tl4243642465%_
                                     '0)))
                               (begin
                                 (let ((_g44670_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44669_)
                                              (##values-length _g44669_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44670_ 2)))
                                       (error "Context expects 2 values"
                                              _g44670_)))
                                 (let ((_%target4243742468%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44669_ 0)))
                                       (_%tl4243942471%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44669_ 1))))
                                   (if (gx#stx-null? _%tl4243942471%_)
                                       (letrec ((_%loop4244042474%_
                                                 (lambda (_%hd4243842478%_
                                                          _%body4244442481%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4243842478%_)
                                                       (let ((_%e4244142484%_
                                                              (gx#syntax-e
                                                               _%hd4243842478%_)))
                                                         (let ((_%lp-hd4244242488%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4244142484%_)))
                       (_%lp-tl4244342491%_
                        (let () (declare (not safe)) (##cdr _%e4244142484%_))))
                   (_%loop4244042474%_
                    _%lp-tl4244342491%_
                    (cons _%lp-hd4244242488%_ _%body4244442481%_))))
               (let ((_%body4244542494%_ (reverse _%body4244442481%_)))
                 ((lambda (_%L42498%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4251342516%_
                                                _%g4251442519%_)
                                         (cons _%g4251342516%_
                                               _%g4251442519%_))
                                       '()
                                       _%L42498%_))))
                  _%body4244542494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4244042474%_
                                          _%target4243742468%_
                                          '()))
                                       (_%g4243142451%_ _%g4243242455%_)))))
                             (_%g4243142451%_ _%g4243242455%_))))
                     (_%g4243142451%_ _%g4243242455%_)))))
         (_%g4243042522%_ _%stx42428%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42527%_)
       (let* ((_%g4253042550%_
               (lambda (_%g4253142546%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4253142546%_)))
              (_%g4252942621%_
               (lambda (_%g4253142554%_)
                 (if (gx#stx-pair? _%g4253142554%_)
                     (let ((_%e4253342557%_ (gx#syntax-e _%g4253142554%_)))
                       (let ((_%hd4253442561%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4253342557%_)))
                             (_%tl4253542564%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4253342557%_))))
                         (if (gx#stx-pair/null? _%tl4253542564%_)
                             (let ((_g44671_
                                    (gx#syntax-split-splice
                                     _%tl4253542564%_
                                     '0)))
                               (begin
                                 (let ((_g44672_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44671_)
                                              (##values-length _g44671_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44672_ 2)))
                                       (error "Context expects 2 values"
                                              _g44672_)))
                                 (let ((_%target4253642567%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44671_ 0)))
                                       (_%tl4253842570%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44671_ 1))))
                                   (if (gx#stx-null? _%tl4253842570%_)
                                       (letrec ((_%loop4253942573%_
                                                 (lambda (_%hd4253742577%_
                                                          _%body4254342580%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4253742577%_)
                                                       (let ((_%e4254042583%_
                                                              (gx#syntax-e
                                                               _%hd4253742577%_)))
                                                         (let ((_%lp-hd4254142587%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4254042583%_)))
                       (_%lp-tl4254242590%_
                        (let () (declare (not safe)) (##cdr _%e4254042583%_))))
                   (_%loop4253942573%_
                    _%lp-tl4254242590%_
                    (cons _%lp-hd4254142587%_ _%body4254342580%_))))
               (let ((_%body4254442593%_ (reverse _%body4254342580%_)))
                 ((lambda (_%L42597%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4261242615%_
                                                _%g4261342618%_)
                                         (cons _%g4261242615%_
                                               _%g4261342618%_))
                                       '()
                                       _%L42597%_))))
                  _%body4254442593%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4253942573%_
                                          _%target4253642567%_
                                          '()))
                                       (_%g4253042550%_ _%g4253142554%_)))))
                             (_%g4253042550%_ _%g4253142554%_))))
                     (_%g4253042550%_ _%g4253142554%_)))))
         (_%g4252942621%_ _%stx42527%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42626%_)
       (let* ((_%g4262942653%_
               (lambda (_%g4263042649%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4263042649%_)))
              (_%g4262842781%_
               (lambda (_%g4263042657%_)
                 (if (gx#stx-pair? _%g4263042657%_)
                     (let ((_%e4263342660%_ (gx#syntax-e _%g4263042657%_)))
                       (let ((_%hd4263442664%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4263342660%_)))
                             (_%tl4263542667%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4263342660%_))))
                         (if (gx#stx-pair? _%tl4263542667%_)
                             (let ((_%e4263642670%_
                                    (gx#syntax-e _%tl4263542667%_)))
                               (let ((_%hd4263742674%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4263642670%_)))
                                     (_%tl4263842677%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4263642670%_))))
                                 (if (gx#stx-pair/null? _%tl4263842677%_)
                                     (let ((_g44673_
                                            (gx#syntax-split-splice
                                             _%tl4263842677%_
                                             '0)))
                                       (begin
                                         (let ((_g44674_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44673_)
                                                      (##values-length
                                                       _g44673_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44674_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44674_)))
                                         (let ((_%target4263942680%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44673_ 0)))
                                               (_%tl4264142683%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44673_ 1))))
                                           (if (gx#stx-null? _%tl4264142683%_)
                                               (letrec ((_%loop4264242686%_
                                                         (lambda (_%hd4264042690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4264642693%_)
                   (if (gx#stx-pair? _%hd4264042690%_)
                       (let ((_%e4264342696%_ (gx#syntax-e _%hd4264042690%_)))
                         (let ((_%lp-hd4264442700%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4264342696%_)))
                               (_%lp-tl4264542703%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4264342696%_))))
                           (_%loop4264242686%_
                            _%lp-tl4264542703%_
                            (cons _%lp-hd4264442700%_ _%id4264642693%_))))
                       (let ((_%id4264742706%_ (reverse _%id4264642693%_)))
                         ((lambda (_%L42710%_ _%L42712%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4272942732%_
                                                 _%g4273042735%_)
                                          (cons _%g4272942732%_
                                                _%g4273042735%_))
                                        '()
                                        _%L42710%_))
                                (let* ((_%keys42746%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4273742740%_
                                                         _%g4273842743%_)
                                                  (cons _%g4273742740%_
                                                        _%g4273842743%_))
                                                '()
                                                _%L42710%_)))
                                       (_%keytab42757%_
                                        (let ((_%ht42749%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4275142753%_)
                                             (hash-put!
                                              _%ht42749%_
                                              _%g4275142753%_
                                              '#t))
                                           _%keys42746%_)
                                          _%ht42749%_))
                                       (_%imports42760%_
                                        (gx#core-expand-import-source
                                         _%L42712%_))
                                       (_%fold-e42776%_
                                        (letrec ((_%fold-e42763%_
                                                  (lambda (_%in42766%_
                                                           _%r42768%_)
                                                    (if (gx#module-import?
                                                         _%in42766%_)
                                                        (if (hash-get
                                                             _%keytab42757%_
                                                             (gx#module-import-name
                                                              _%in42766%_))
                                                            (cons _%in42766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42768%_)
                    _%r42768%_)
                (if (gx#import-set? _%in42766%_)
                    (foldl _%fold-e42763%_
                           _%r42768%_
                           (gx#import-set-imports _%in42766%_))
                    _%r42768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42763%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42776%_
                                               '()
                                               _%imports42760%_)))
                                (_%g4262942653%_ _%g4263042657%_)))
                          _%id4264742706%_
                          _%hd4263742674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4264242686%_
                                                  _%target4263942680%_
                                                  '()))
                                               (_%g4262942653%_
                                                _%g4263042657%_)))))
                                     (_%g4262942653%_ _%g4263042657%_))))
                             (_%g4262942653%_ _%g4263042657%_))))
                     (_%g4262942653%_ _%g4263042657%_)))))
         (_%g4262842781%_ _%stx42626%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42786%_)
       (let* ((_%g4278942813%_
               (lambda (_%g4279042809%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4279042809%_)))
              (_%g4278842941%_
               (lambda (_%g4279042817%_)
                 (if (gx#stx-pair? _%g4279042817%_)
                     (let ((_%e4279342820%_ (gx#syntax-e _%g4279042817%_)))
                       (let ((_%hd4279442824%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4279342820%_)))
                             (_%tl4279542827%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4279342820%_))))
                         (if (gx#stx-pair? _%tl4279542827%_)
                             (let ((_%e4279642830%_
                                    (gx#syntax-e _%tl4279542827%_)))
                               (let ((_%hd4279742834%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4279642830%_)))
                                     (_%tl4279842837%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4279642830%_))))
                                 (if (gx#stx-pair/null? _%tl4279842837%_)
                                     (let ((_g44675_
                                            (gx#syntax-split-splice
                                             _%tl4279842837%_
                                             '0)))
                                       (begin
                                         (let ((_g44676_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44675_)
                                                      (##values-length
                                                       _g44675_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44676_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44676_)))
                                         (let ((_%target4279942840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44675_ 0)))
                                               (_%tl4280142843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44675_ 1))))
                                           (if (gx#stx-null? _%tl4280142843%_)
                                               (letrec ((_%loop4280242846%_
                                                         (lambda (_%hd4280042850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4280642853%_)
                   (if (gx#stx-pair? _%hd4280042850%_)
                       (let ((_%e4280342856%_ (gx#syntax-e _%hd4280042850%_)))
                         (let ((_%lp-hd4280442860%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4280342856%_)))
                               (_%lp-tl4280542863%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4280342856%_))))
                           (_%loop4280242846%_
                            _%lp-tl4280542863%_
                            (cons _%lp-hd4280442860%_ _%id4280642853%_))))
                       (let ((_%id4280742866%_ (reverse _%id4280642853%_)))
                         ((lambda (_%L42870%_ _%L42872%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4288942892%_
                                                 _%g4289042895%_)
                                          (cons _%g4288942892%_
                                                _%g4289042895%_))
                                        '()
                                        _%L42870%_))
                                (let* ((_%keys42906%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4289742900%_
                                                         _%g4289842903%_)
                                                  (cons _%g4289742900%_
                                                        _%g4289842903%_))
                                                '()
                                                _%L42870%_)))
                                       (_%keytab42917%_
                                        (let ((_%ht42909%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4291142913%_)
                                             (hash-put!
                                              _%ht42909%_
                                              _%g4291142913%_
                                              '#t))
                                           _%keys42906%_)
                                          _%ht42909%_))
                                       (_%imports42920%_
                                        (gx#core-expand-import-source
                                         _%L42872%_))
                                       (_%fold-e42936%_
                                        (letrec ((_%fold-e42923%_
                                                  (lambda (_%in42926%_
                                                           _%r42928%_)
                                                    (if (gx#module-import?
                                                         _%in42926%_)
                                                        (if (hash-get
                                                             _%keytab42917%_
                                                             (gx#module-import-name
                                                              _%in42926%_))
                                                            _%r42928%_
                                                            (cons _%in42926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42928%_))
                (if (gx#import-set? _%in42926%_)
                    (foldl _%fold-e42923%_
                           _%r42928%_
                           (gx#import-set-imports _%in42926%_))
                    (cons _%in42926%_ _%r42928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42923%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42936%_
                                               '()
                                               _%imports42920%_)))
                                (_%g4278942813%_ _%g4279042817%_)))
                          _%id4280742866%_
                          _%hd4279742834%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4280242846%_
                                                  _%target4279942840%_
                                                  '()))
                                               (_%g4278942813%_
                                                _%g4279042817%_)))))
                                     (_%g4278942813%_ _%g4279042817%_))))
                             (_%g4278942813%_ _%g4279042817%_))))
                     (_%g4278942813%_ _%g4279042817%_)))))
         (_%g4278842941%_ _%stx42786%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in42993%_ _%rename42995%_)
      (gx#make-module-import
       (gx#module-import-source _%in42993%_)
       _%rename42995%_
       (gx#module-import-phi _%in42993%_)
       (gx#module-import-weak? _%in42993%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42946%_ _%pre42948%_)
      (let* ((_%name4294942957%_ _%name42946%_)
             (_%else4295142969%_
              (lambda () (make-symbol _%pre42948%_ _%name42946%_)))
             (_%K4295342977%_
              (lambda (_%mark42973%_ _%id42975%_)
                (cons (make-symbol _%pre42948%_ _%id42975%_) _%mark42973%_))))
        (if (pair? _%name4294942957%_)
            (let ((_%hd4295442981%_
                   (let () (declare (not safe)) (##car _%name4294942957%_)))
                  (_%tl4295542984%_
                   (let () (declare (not safe)) (##cdr _%name4294942957%_))))
              (let* ((_%id42987%_ _%hd4295442981%_)
                     (_%mark42990%_ _%tl4295542984%_))
                (_%K4295342977%_ _%mark42990%_ _%id42987%_)))
            (_%else4295142969%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx42997%_)
       (let* ((_%g4300043033%_
               (lambda (_%g4300143029%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4300143029%_)))
              (_%g4299943228%_
               (lambda (_%g4300143037%_)
                 (if (gx#stx-pair? _%g4300143037%_)
                     (let ((_%e4300543040%_ (gx#syntax-e _%g4300143037%_)))
                       (let ((_%hd4300643044%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4300543040%_)))
                             (_%tl4300743047%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4300543040%_))))
                         (if (gx#stx-pair? _%tl4300743047%_)
                             (let ((_%e4300843050%_
                                    (gx#syntax-e _%tl4300743047%_)))
                               (let ((_%hd4300943054%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4300843050%_)))
                                     (_%tl4301043057%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4300843050%_))))
                                 (if (gx#stx-pair/null? _%tl4301043057%_)
                                     (let ((_g44677_
                                            (gx#syntax-split-splice
                                             _%tl4301043057%_
                                             '0)))
                                       (begin
                                         (let ((_g44678_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44677_)
                                                      (##values-length
                                                       _g44677_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44678_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44678_)))
                                         (let ((_%target4301143060%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44677_ 0)))
                                               (_%tl4301343063%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44677_ 1))))
                                           (if (gx#stx-null? _%tl4301343063%_)
                                               (letrec ((_%loop4301443066%_
                                                         (lambda (_%hd4301243070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4301843073%_
                          _%id4301943075%_)
                   (if (gx#stx-pair? _%hd4301243070%_)
                       (let ((_%e4301543078%_ (gx#syntax-e _%hd4301243070%_)))
                         (let ((_%lp-hd4301643082%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4301543078%_)))
                               (_%lp-tl4301743085%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4301543078%_))))
                           (if (gx#stx-pair? _%lp-hd4301643082%_)
                               (let ((_%e4302243088%_
                                      (gx#syntax-e _%lp-hd4301643082%_)))
                                 (let ((_%hd4302343092%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4302243088%_)))
                                       (_%tl4302443095%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4302243088%_))))
                                   (if (gx#stx-pair? _%tl4302443095%_)
                                       (let ((_%e4302543098%_
                                              (gx#syntax-e _%tl4302443095%_)))
                                         (let ((_%hd4302643102%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4302543098%_)))
                                               (_%tl4302743105%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4302543098%_))))
                                           (if (gx#stx-null? _%tl4302743105%_)
                                               (_%loop4301443066%_
                                                _%lp-tl4301743085%_
                                                (cons _%hd4302643102%_
                                                      _%new-id4301843073%_)
                                                (cons _%hd4302343092%_
                                                      _%id4301943075%_))
                                               (_%g4300043033%_
                                                _%g4300143037%_))))
                                       (_%g4300043033%_ _%g4300143037%_))))
                               (_%g4300043033%_ _%g4300143037%_))))
                       (let ((_%new-id4302043108%_
                              (reverse _%new-id4301843073%_))
                             (_%id4302143111%_ (reverse _%id4301943075%_)))
                         ((lambda (_%L43114%_ _%L43116%_ _%L43117%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4313543138%_
                                                      _%g4313643141%_)
                                               (cons _%g4313543138%_
                                                     _%g4313643141%_))
                                             '()
                                             _%L43116%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4314343146%_
                                                      _%g4314443149%_)
                                               (cons _%g4314343146%_
                                                     _%g4314443149%_))
                                             '()
                                             _%L43114%_)))
                                (let* ((_%keytab43152%_ (make-hash-table))
                                       (_%found43155%_ (make-hash-table))
                                       (_%_43178%_
                                        (for-each
                                         (lambda (_%id43158%_ _%new-id43160%_)
                                           (hash-put!
                                            _%keytab43152%_
                                            (gx#core-identifier-key
                                             _%id43158%_)
                                            (gx#core-identifier-key
                                             _%new-id43160%_)))
                                         (foldr (lambda (_%g4316143164%_
                                                         _%g4316243167%_)
                                                  (cons _%g4316143164%_
                                                        _%g4316243167%_))
                                                '()
                                                _%L43116%_)
                                         (foldr (lambda (_%g4316943172%_
                                                         _%g4317043175%_)
                                                  (cons _%g4316943172%_
                                                        _%g4317043175%_))
                                                '()
                                                _%L43114%_)))
                                       (_%imports43181%_
                                        (gx#core-expand-import-source
                                         _%L43117%_))
                                       (_%fold-e43209%_
                                        (letrec ((_%fold-e43184%_
                                                  (lambda (_%in43187%_
                                                           _%r43189%_)
                                                    (if (gx#module-import?
                                                         _%in43187%_)
                                                        (let* ((_%name43193%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43187%_))
                       (_%$e43196%_ (hash-get _%keytab43152%_ _%name43193%_)))
                  (if _%$e43196%_
                      ((lambda (_%rename43200%_)
                         (hash-put! _%found43155%_ _%name43193%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43187%_
                                _%rename43200%_)
                               _%r43189%_))
                       _%$e43196%_)
                      (cons _%in43187%_ _%r43189%_)))
                (if (gx#import-set? _%in43187%_)
                    (foldl _%fold-e43184%_
                           _%r43189%_
                           (gx#import-set-imports _%in43187%_))
                    (cons _%in43187%_ _%r43189%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43184%_))
                                       (_%new-imports43212%_
                                        (foldl _%fold-e43209%_
                                               '()
                                               _%imports43181%_)))
                                  (for-each
                                   (lambda (_%id43217%_)
                                     (if (hash-get
                                          _%found43155%_
                                          (gx#core-identifier-key _%id43217%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx42997%_
                                          _%id43217%_)))
                                   (foldr (lambda (_%g4321943222%_
                                                   _%g4322043225%_)
                                            (cons _%g4321943222%_
                                                  _%g4322043225%_))
                                          '()
                                          _%L43116%_))
                                  (cons 'begin: _%new-imports43212%_))
                                (_%g4300043033%_ _%g4300143037%_)))
                          _%new-id4302043108%_
                          _%id4302143111%_
                          _%hd4300943054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4301443066%_
                                                  _%target4301143060%_
                                                  '()
                                                  '()))
                                               (_%g4300043033%_
                                                _%g4300143037%_)))))
                                     (_%g4300043033%_ _%g4300143037%_))))
                             (_%g4300043033%_ _%g4300143037%_))))
                     (_%g4300043033%_ _%g4300143037%_)))))
         (_%g4299943228%_ _%stx42997%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43233%_)
       (let* ((_%g4323643254%_
               (lambda (_%g4323743250%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4323743250%_)))
              (_%g4323543339%_
               (lambda (_%g4323743258%_)
                 (if (gx#stx-pair? _%g4323743258%_)
                     (let ((_%e4324043261%_ (gx#syntax-e _%g4323743258%_)))
                       (let ((_%hd4324143265%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4324043261%_)))
                             (_%tl4324243268%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4324043261%_))))
                         (if (gx#stx-pair? _%tl4324243268%_)
                             (let ((_%e4324343271%_
                                    (gx#syntax-e _%tl4324243268%_)))
                               (let ((_%hd4324443275%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4324343271%_)))
                                     (_%tl4324543278%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4324343271%_))))
                                 (if (gx#stx-pair? _%tl4324543278%_)
                                     (let ((_%e4324643281%_
                                            (gx#syntax-e _%tl4324543278%_)))
                                       (let ((_%hd4324743285%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4324643281%_)))
                                             (_%tl4324843288%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4324643281%_))))
                                         (if (gx#stx-null? _%tl4324843288%_)
                                             ((lambda (_%L43291%_ _%L43293%_)
                                                (if (gx#identifier? _%L43291%_)
                                                    (let* ((_%pre43309%_
                                                            (gx#stx-e
                                                             _%L43291%_))
                                                           (_%imports43312%_
                                                            (gx#core-expand-import-source
                                                             _%L43293%_))
                                                           (_%rename-e43318%_
                                                            (lambda (_%name43315%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43315%_
                                                               _%pre43309%_)))
                                                           (_%fold-e43334%_
                                                            (letrec ((_%fold-e43321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43324%_ _%r43326%_)
                                (if (gx#module-import? _%in43324%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43324%_
                                           (_%rename-e43318%_
                                            (gx#module-import-name
                                             _%in43324%_)))
                                          _%r43326%_)
                                    (if (gx#import-set? _%in43324%_)
                                        (foldl _%fold-e43321%_
                                               _%r43326%_
                                               (gx#import-set-imports
                                                _%in43324%_))
                                        (cons _%in43324%_ _%r43326%_))))))
                      _%fold-e43321%_)))
              (cons 'begin: (foldl _%fold-e43334%_ '() _%imports43312%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4323643254%_
                                                     _%g4323743258%_)))
                                              _%hd4324743285%_
                                              _%hd4324443275%_)
                                             (_%g4323643254%_
                                              _%g4323743258%_))))
                                     (_%g4323643254%_ _%g4323743258%_))))
                             (_%g4323643254%_ _%g4323743258%_))))
                     (_%g4323643254%_ _%g4323743258%_)))))
         (_%g4323543339%_ _%stx43233%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43343%_)
       (letrec ((_%flatten43346%_
                 (lambda (_%list-of-lists43601%_)
                   (foldr (lambda (_%v43604%_ _%acc43606%_)
                            (if (null? _%v43604%_)
                                _%acc43606%_
                                (if (pair? _%v43604%_)
                                    (append (_%flatten43346%_ _%v43604%_)
                                            _%acc43606%_)
                                    (cons _%v43604%_ _%acc43606%_))))
                          '()
                          _%list-of-lists43601%_)))
                (_%expand-path43348%_
                 (lambda (_%top43469%_ _%mod43471%_)
                   (let* ((_%__stx4457744578%_ _%mod43471%_)
                          (_%g4347443496%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4457744578%_))))
                     (let ((_%__kont4458044581%_
                            (lambda (_%L43564%_ _%L43566%_)
                              (map (lambda (_%mod43581%_)
                                     (gx#stx-identifier
                                      _%top43469%_
                                      _%top43469%_
                                      '"/"
                                      _%mod43581%_))
                                   (_%flatten43346%_
                                    (map (lambda (_%g4358343585%_)
                                           (_%expand-path43348%_
                                            _%L43566%_
                                            _%g4358343585%_))
                                         (foldr (lambda (_%g4358843591%_
                                                         _%g4358943594%_)
                                                  (cons _%g4358843591%_
                                                        _%g4358943594%_))
                                                '()
                                                _%L43564%_))))))
                           (_%__kont4458444585%_
                            (lambda (_%L43503%_)
                              (gx#stx-identifier
                               _%top43469%_
                               _%top43469%_
                               '"/"
                               _%L43503%_))))
                       (let* ((_%g4347343517%_
                               (lambda ()
                                 (let ((_%L43503%_ _%__stx4457744578%_))
                                   (if (or (gx#identifier? _%L43503%_)
                                           (gx#stx-fixnum? _%L43503%_))
                                       (_%__kont4458444585%_ _%L43503%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4347443496%_))))))
                              (_%__match4460044601%_
                               (lambda (_%e4347843524%_
                                        _%hd4347943528%_
                                        _%tl4348043531%_
                                        _%__splice4458244583%_
                                        _%target4348143534%_
                                        _%tl4348343537%_)
                                 (letrec ((_%loop4348443540%_
                                           (lambda (_%hd4348243544%_
                                                    _%mod4348843547%_)
                                             (if (gx#stx-pair?
                                                  _%hd4348243544%_)
                                                 (let ((_%e4348543550%_
                                                        (gx#syntax-e
                                                         _%hd4348243544%_)))
                                                   (let ((_%lp-tl4348743557%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4348543550%_)))
                                                         (_%lp-hd4348643554%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4348543550%_))))
                                                     (_%loop4348443540%_
                                                      _%lp-tl4348743557%_
                                                      (cons _%lp-hd4348643554%_
                                                            _%mod4348843547%_))))
                                                 (let ((_%mod4348943560%_
                                                        (reverse _%mod4348843547%_)))
                                                   (_%__kont4458044581%_
                                                    _%mod4348943560%_
                                                    _%hd4347943528%_))))))
                                   (_%loop4348443540%_
                                    _%target4348143534%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4457744578%_)
                             (let ((_%e4347843524%_
                                    (gx#syntax-e _%__stx4457744578%_)))
                               (let ((_%tl4348043531%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4347843524%_)))
                                     (_%hd4347943528%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4347843524%_))))
                                 (if (gx#stx-pair/null? _%tl4348043531%_)
                                     (let ((_%__splice4458244583%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4348043531%_
                                             '0)))
                                       (let ((_%tl4348343537%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4458244583%_
                                                 '1)))
                                             (_%target4348143534%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4458244583%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4348343537%_)
                                             (_%__match4460044601%_
                                              _%e4347843524%_
                                              _%hd4347943528%_
                                              _%tl4348043531%_
                                              _%__splice4458244583%_
                                              _%target4348143534%_
                                              _%tl4348343537%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4347343517%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4347343517%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4347343517%_)))))))))
         (let* ((_%g4335043374%_
                 (lambda (_%g4335143370%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4335143370%_)))
                (_%g4334943465%_
                 (lambda (_%g4335143378%_)
                   (if (gx#stx-pair? _%g4335143378%_)
                       (let ((_%e4335443381%_ (gx#syntax-e _%g4335143378%_)))
                         (let ((_%hd4335543385%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4335443381%_)))
                               (_%tl4335643388%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4335443381%_))))
                           (if (gx#stx-pair? _%tl4335643388%_)
                               (let ((_%e4335743391%_
                                      (gx#syntax-e _%tl4335643388%_)))
                                 (let ((_%hd4335843395%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4335743391%_)))
                                       (_%tl4335943398%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4335743391%_))))
                                   (if (gx#stx-pair/null? _%tl4335943398%_)
                                       (let ((_g44679_
                                              (gx#syntax-split-splice
                                               _%tl4335943398%_
                                               '0)))
                                         (begin
                                           (let ((_g44680_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44679_)
                                                        (##values-length
                                                         _g44679_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44680_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44680_)))
                                           (let ((_%target4336043401%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g44679_ 0)))
                                                 (_%tl4336243404%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g44679_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4336243404%_)
                                                 (letrec ((_%loop4336343407%_
                                                           (lambda (_%hd4336143411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4336743414%_)
                     (if (gx#stx-pair? _%hd4336143411%_)
                         (let ((_%e4336443417%_
                                (gx#syntax-e _%hd4336143411%_)))
                           (let ((_%lp-hd4336543421%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4336443417%_)))
                                 (_%lp-tl4336643424%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4336443417%_))))
                             (_%loop4336343407%_
                              _%lp-tl4336643424%_
                              (cons _%lp-hd4336543421%_ _%mod4336743414%_))))
                         (let ((_%mod4336843427%_ (reverse _%mod4336743414%_)))
                           ((lambda (_%L43431%_ _%L43433%_)
                              (cons 'begin:
                                    (_%flatten43346%_
                                     (map (lambda (_%g4345143453%_)
                                            (_%expand-path43348%_
                                             _%L43433%_
                                             _%g4345143453%_))
                                          (foldr (lambda (_%g4345643459%_
                                                          _%g4345743462%_)
                                                   (cons _%g4345643459%_
                                                         _%g4345743462%_))
                                                 '()
                                                 _%L43431%_)))))
                            _%mod4336843427%_
                            _%hd4335843395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4336343407%_
                                                    _%target4336043401%_
                                                    '()))
                                                 (_%g4335043374%_
                                                  _%g4335143378%_)))))
                                       (_%g4335043374%_ _%g4335143378%_))))
                               (_%g4335043374%_ _%g4335143378%_))))
                       (_%g4335043374%_ _%g4335143378%_)))))
           (_%g4334943465%_ _%stx43343%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43616%_)
       (let* ((_%g4361943643%_
               (lambda (_%g4362043639%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4362043639%_)))
              (_%g4361843771%_
               (lambda (_%g4362043647%_)
                 (if (gx#stx-pair? _%g4362043647%_)
                     (let ((_%e4362343650%_ (gx#syntax-e _%g4362043647%_)))
                       (let ((_%hd4362443654%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4362343650%_)))
                             (_%tl4362543657%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4362343650%_))))
                         (if (gx#stx-pair? _%tl4362543657%_)
                             (let ((_%e4362643660%_
                                    (gx#syntax-e _%tl4362543657%_)))
                               (let ((_%hd4362743664%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4362643660%_)))
                                     (_%tl4362843667%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4362643660%_))))
                                 (if (gx#stx-pair/null? _%tl4362843667%_)
                                     (let ((_g44681_
                                            (gx#syntax-split-splice
                                             _%tl4362843667%_
                                             '0)))
                                       (begin
                                         (let ((_g44682_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44681_)
                                                      (##values-length
                                                       _g44681_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44682_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44682_)))
                                         (let ((_%target4362943670%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44681_ 0)))
                                               (_%tl4363143673%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44681_ 1))))
                                           (if (gx#stx-null? _%tl4363143673%_)
                                               (letrec ((_%loop4363243676%_
                                                         (lambda (_%hd4363043680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4363643683%_)
                   (if (gx#stx-pair? _%hd4363043680%_)
                       (let ((_%e4363343686%_ (gx#syntax-e _%hd4363043680%_)))
                         (let ((_%lp-hd4363443690%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4363343686%_)))
                               (_%lp-tl4363543693%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4363343686%_))))
                           (_%loop4363243676%_
                            _%lp-tl4363543693%_
                            (cons _%lp-hd4363443690%_ _%id4363643683%_))))
                       (let ((_%id4363743696%_ (reverse _%id4363643683%_)))
                         ((lambda (_%L43700%_ _%L43702%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4371943722%_
                                                 _%g4372043725%_)
                                          (cons _%g4371943722%_
                                                _%g4372043725%_))
                                        '()
                                        _%L43700%_))
                                (let* ((_%keys43736%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4372743730%_
                                                         _%g4372843733%_)
                                                  (cons _%g4372743730%_
                                                        _%g4372843733%_))
                                                '()
                                                _%L43700%_)))
                                       (_%keytab43747%_
                                        (let ((_%ht43739%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4374143743%_)
                                             (hash-put!
                                              _%ht43739%_
                                              _%g4374143743%_
                                              '#t))
                                           _%keys43736%_)
                                          _%ht43739%_))
                                       (_%exports43750%_
                                        (gx#core-expand-export-source
                                         _%L43702%_))
                                       (_%fold-e43766%_
                                        (letrec ((_%fold-e43753%_
                                                  (lambda (_%out43756%_
                                                           _%r43758%_)
                                                    (if (gx#module-export?
                                                         _%out43756%_)
                                                        (if (hash-get
                                                             _%keytab43747%_
                                                             (gx#module-export-name
                                                              _%out43756%_))
                                                            _%r43758%_
                                                            (cons _%out43756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43758%_))
                (if (gx#export-set? _%out43756%_)
                    (foldl _%fold-e43753%_
                           _%r43758%_
                           (gx#export-set-exports _%out43756%_))
                    _%r43758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43753%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43766%_
                                               '()
                                               _%exports43750%_)))
                                (_%g4361943643%_ _%g4362043647%_)))
                          _%id4363743696%_
                          _%hd4362743664%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4363243676%_
                                                  _%target4362943670%_
                                                  '()))
                                               (_%g4361943643%_
                                                _%g4362043647%_)))))
                                     (_%g4361943643%_ _%g4362043647%_))))
                             (_%g4361943643%_ _%g4362043647%_))))
                     (_%g4361943643%_ _%g4362043647%_)))))
         (_%g4361843771%_ _%stx43616%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43776%_ _%rename43778%_)
      (gx#make-module-export
       (gx#module-export-context _%out43776%_)
       (gx#module-export-key _%out43776%_)
       (gx#module-export-phi _%out43776%_)
       _%rename43778%_
       (gx#module-export-weak? _%out43776%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43780%_)
       (let* ((_%g4378343816%_
               (lambda (_%g4378443812%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4378443812%_)))
              (_%g4378244011%_
               (lambda (_%g4378443820%_)
                 (if (gx#stx-pair? _%g4378443820%_)
                     (let ((_%e4378843823%_ (gx#syntax-e _%g4378443820%_)))
                       (let ((_%hd4378943827%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4378843823%_)))
                             (_%tl4379043830%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4378843823%_))))
                         (if (gx#stx-pair? _%tl4379043830%_)
                             (let ((_%e4379143833%_
                                    (gx#syntax-e _%tl4379043830%_)))
                               (let ((_%hd4379243837%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4379143833%_)))
                                     (_%tl4379343840%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4379143833%_))))
                                 (if (gx#stx-pair/null? _%tl4379343840%_)
                                     (let ((_g44683_
                                            (gx#syntax-split-splice
                                             _%tl4379343840%_
                                             '0)))
                                       (begin
                                         (let ((_g44684_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44683_)
                                                      (##values-length
                                                       _g44683_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44684_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44684_)))
                                         (let ((_%target4379443843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44683_ 0)))
                                               (_%tl4379643846%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44683_ 1))))
                                           (if (gx#stx-null? _%tl4379643846%_)
                                               (letrec ((_%loop4379743849%_
                                                         (lambda (_%hd4379543853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4380143856%_
                          _%id4380243858%_)
                   (if (gx#stx-pair? _%hd4379543853%_)
                       (let ((_%e4379843861%_ (gx#syntax-e _%hd4379543853%_)))
                         (let ((_%lp-hd4379943865%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4379843861%_)))
                               (_%lp-tl4380043868%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4379843861%_))))
                           (if (gx#stx-pair? _%lp-hd4379943865%_)
                               (let ((_%e4380543871%_
                                      (gx#syntax-e _%lp-hd4379943865%_)))
                                 (let ((_%hd4380643875%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4380543871%_)))
                                       (_%tl4380743878%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4380543871%_))))
                                   (if (gx#stx-pair? _%tl4380743878%_)
                                       (let ((_%e4380843881%_
                                              (gx#syntax-e _%tl4380743878%_)))
                                         (let ((_%hd4380943885%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4380843881%_)))
                                               (_%tl4381043888%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4380843881%_))))
                                           (if (gx#stx-null? _%tl4381043888%_)
                                               (_%loop4379743849%_
                                                _%lp-tl4380043868%_
                                                (cons _%hd4380943885%_
                                                      _%new-id4380143856%_)
                                                (cons _%hd4380643875%_
                                                      _%id4380243858%_))
                                               (_%g4378343816%_
                                                _%g4378443820%_))))
                                       (_%g4378343816%_ _%g4378443820%_))))
                               (_%g4378343816%_ _%g4378443820%_))))
                       (let ((_%new-id4380343891%_
                              (reverse _%new-id4380143856%_))
                             (_%id4380443894%_ (reverse _%id4380243858%_)))
                         ((lambda (_%L43897%_ _%L43899%_ _%L43900%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4391843921%_
                                                      _%g4391943924%_)
                                               (cons _%g4391843921%_
                                                     _%g4391943924%_))
                                             '()
                                             _%L43899%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4392643929%_
                                                      _%g4392743932%_)
                                               (cons _%g4392643929%_
                                                     _%g4392743932%_))
                                             '()
                                             _%L43897%_)))
                                (let* ((_%keytab43935%_ (make-hash-table))
                                       (_%found43938%_ (make-hash-table))
                                       (_%_43961%_
                                        (for-each
                                         (lambda (_%id43941%_ _%new-id43943%_)
                                           (hash-put!
                                            _%keytab43935%_
                                            (gx#core-identifier-key
                                             _%id43941%_)
                                            (gx#core-identifier-key
                                             _%new-id43943%_)))
                                         (foldr (lambda (_%g4394443947%_
                                                         _%g4394543950%_)
                                                  (cons _%g4394443947%_
                                                        _%g4394543950%_))
                                                '()
                                                _%L43899%_)
                                         (foldr (lambda (_%g4395243955%_
                                                         _%g4395343958%_)
                                                  (cons _%g4395243955%_
                                                        _%g4395343958%_))
                                                '()
                                                _%L43897%_)))
                                       (_%exports43964%_
                                        (gx#core-expand-export-source
                                         _%L43900%_))
                                       (_%fold-e43992%_
                                        (letrec ((_%fold-e43967%_
                                                  (lambda (_%out43970%_
                                                           _%r43972%_)
                                                    (if (gx#module-export?
                                                         _%out43970%_)
                                                        (let* ((_%name43976%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43970%_))
                       (_%$e43979%_ (hash-get _%keytab43935%_ _%name43976%_)))
                  (if _%$e43979%_
                      ((lambda (_%rename43983%_)
                         (hash-put! _%found43938%_ _%name43976%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43970%_
                                _%rename43983%_)
                               _%r43972%_))
                       _%$e43979%_)
                      (cons _%out43970%_ _%r43972%_)))
                (if (gx#export-set? _%out43970%_)
                    (foldl _%fold-e43967%_
                           _%r43972%_
                           (gx#export-set-exports _%out43970%_))
                    (cons _%out43970%_ _%r43972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43967%_))
                                       (_%new-exports43995%_
                                        (foldl _%fold-e43992%_
                                               '()
                                               _%exports43964%_)))
                                  (for-each
                                   (lambda (_%id44000%_)
                                     (if (hash-get
                                          _%found43938%_
                                          (gx#core-identifier-key _%id44000%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43780%_
                                          _%id44000%_)))
                                   (foldr (lambda (_%g4400244005%_
                                                   _%g4400344008%_)
                                            (cons _%g4400244005%_
                                                  _%g4400344008%_))
                                          '()
                                          _%L43899%_))
                                  (cons 'begin: _%new-exports43995%_))
                                (_%g4378343816%_ _%g4378443820%_)))
                          _%new-id4380343891%_
                          _%id4380443894%_
                          _%hd4379243837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4379743849%_
                                                  _%target4379443843%_
                                                  '()
                                                  '()))
                                               (_%g4378343816%_
                                                _%g4378443820%_)))))
                                     (_%g4378343816%_ _%g4378443820%_))))
                             (_%g4378343816%_ _%g4378443820%_))))
                     (_%g4378343816%_ _%g4378443820%_)))))
         (_%g4378244011%_ _%stx43780%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx44016%_)
       (let* ((_%g4401944037%_
               (lambda (_%g4402044033%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4402044033%_)))
              (_%g4401844122%_
               (lambda (_%g4402044041%_)
                 (if (gx#stx-pair? _%g4402044041%_)
                     (let ((_%e4402344044%_ (gx#syntax-e _%g4402044041%_)))
                       (let ((_%hd4402444048%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4402344044%_)))
                             (_%tl4402544051%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4402344044%_))))
                         (if (gx#stx-pair? _%tl4402544051%_)
                             (let ((_%e4402644054%_
                                    (gx#syntax-e _%tl4402544051%_)))
                               (let ((_%hd4402744058%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4402644054%_)))
                                     (_%tl4402844061%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4402644054%_))))
                                 (if (gx#stx-pair? _%tl4402844061%_)
                                     (let ((_%e4402944064%_
                                            (gx#syntax-e _%tl4402844061%_)))
                                       (let ((_%hd4403044068%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4402944064%_)))
                                             (_%tl4403144071%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4402944064%_))))
                                         (if (gx#stx-null? _%tl4403144071%_)
                                             ((lambda (_%L44074%_ _%L44076%_)
                                                (if (gx#identifier? _%L44074%_)
                                                    (let* ((_%pre44092%_
                                                            (gx#stx-e
                                                             _%L44074%_))
                                                           (_%exports44095%_
                                                            (gx#core-expand-export-source
                                                             _%L44076%_))
                                                           (_%rename-e44101%_
                                                            (lambda (_%name44098%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name44098%_
                                                               _%pre44092%_)))
                                                           (_%fold-e44117%_
                                                            (letrec ((_%fold-e44104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44107%_ _%r44109%_)
                                (if (gx#module-export? _%out44107%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44107%_
                                           (_%rename-e44101%_
                                            (gx#module-export-name
                                             _%out44107%_)))
                                          _%r44109%_)
                                    (if (gx#export-set? _%out44107%_)
                                        (foldl _%fold-e44104%_
                                               _%r44109%_
                                               (gx#export-set-exports
                                                _%out44107%_))
                                        (cons _%out44107%_ _%r44109%_))))))
                      _%fold-e44104%_)))
              (cons 'begin: (foldl _%fold-e44117%_ '() _%exports44095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4401944037%_
                                                     _%g4402044041%_)))
                                              _%hd4403044068%_
                                              _%hd4402744058%_)
                                             (_%g4401944037%_
                                              _%g4402044041%_))))
                                     (_%g4401944037%_ _%g4402044041%_))))
                             (_%g4401944037%_ _%g4402044041%_))))
                     (_%g4401944037%_ _%g4402044041%_)))))
         (_%g4401844122%_ _%stx44016%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44126%_)
       (letrec ((_%identifiers44129%_
                 (lambda (_%id44361%_ _%unchecked?44363%_)
                   (let ((_%info44365%_
                          (gx#syntax-local-value _%id44361%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44365%_))
                         (cons _%id44361%_
                               (cons (let ((__obj44662 _%info44365%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44662
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44662
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj44662
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44663
                                                         _%info44365%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44663
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44663
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj44663
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44664 _%info44365%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44664
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44664
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44664
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44665 _%info44365%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44665
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44665
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44665
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44666 _%info44365%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44666
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44666
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj44666
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44667 _%info44365%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44667
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44667
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj44667 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44368%_
                                                   (let ((__obj44668
                                                          _%info44365%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44668
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44668
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj44668
                                                          'constructor)))))
                                              (if _%ctor44368%_
                                                  (cons _%ctor44368%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44126%_
                          _%id44361%_))))))
         (let* ((_%__stx4460344604%_ _%stx44126%_)
                (_%g4413344174%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4460344604%_))))
           (let ((_%__kont4460644607%_
                  (lambda (_%L44322%_ _%L44324%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4434344345%_)
                              (_%identifiers44129%_
                               _%g4434344345%_
                               (gx#stx-e _%L44324%_)))
                            (foldr (lambda (_%g4434844351%_ _%g4434944354%_)
                                     (cons _%g4434844351%_ _%g4434944354%_))
                                   '()
                                   _%L44322%_))))))
                 (_%__kont4461044611%_
                  (lambda (_%L44221%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4423744239%_)
                              (_%identifiers44129%_ _%g4423744239%_ '#f))
                            (foldr (lambda (_%g4424244245%_ _%g4424344248%_)
                                     (cons _%g4424244245%_ _%g4424344248%_))
                                   '()
                                   _%L44221%_)))))))
             (let* ((_%__match4466044661%_
                     (lambda (_%e4415744181%_
                              _%hd4415844185%_
                              _%tl4415944188%_
                              _%__splice4461244613%_
                              _%target4416044191%_
                              _%tl4416244194%_)
                       (letrec ((_%loop4416344197%_
                                 (lambda (_%hd4416144201%_ _%id4416744204%_)
                                   (if (gx#stx-pair? _%hd4416144201%_)
                                       (let ((_%e4416444207%_
                                              (gx#syntax-e _%hd4416144201%_)))
                                         (let ((_%lp-tl4416644214%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4416444207%_)))
                                               (_%lp-hd4416544211%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4416444207%_))))
                                           (_%loop4416344197%_
                                            _%lp-tl4416644214%_
                                            (cons _%lp-hd4416544211%_
                                                  _%id4416744204%_))))
                                       (let ((_%id4416844217%_
                                              (reverse _%id4416744204%_)))
                                         (_%__kont4461044611%_
                                          _%id4416844217%_))))))
                         (_%loop4416344197%_ _%target4416044191%_ '()))))
                    (_%__match4464644647%_
                     (lambda (_%e4413744258%_
                              _%hd4413844262%_
                              _%tl4413944265%_
                              _%e4414044268%_
                              _%hd4414144272%_
                              _%tl4414244275%_
                              _%e4414344278%_
                              _%e4414444282%_
                              _%hd4414544286%_
                              _%tl4414644289%_
                              _%__splice4460844609%_
                              _%target4414744292%_
                              _%tl4414944295%_)
                       (letrec ((_%loop4415044298%_
                                 (lambda (_%hd4414844302%_ _%id4415444305%_)
                                   (if (gx#stx-pair? _%hd4414844302%_)
                                       (let ((_%e4415144308%_
                                              (gx#syntax-e _%hd4414844302%_)))
                                         (let ((_%lp-tl4415344315%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4415144308%_)))
                                               (_%lp-hd4415244312%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4415144308%_))))
                                           (_%loop4415044298%_
                                            _%lp-tl4415344315%_
                                            (cons _%lp-hd4415244312%_
                                                  _%id4415444305%_))))
                                       (let ((_%id4415544318%_
                                              (reverse _%id4415444305%_)))
                                         (_%__kont4460644607%_
                                          _%id4415544318%_
                                          _%hd4414544286%_))))))
                         (_%loop4415044298%_ _%target4414744292%_ '())))))
               (if (gx#stx-pair? _%__stx4460344604%_)
                   (let ((_%e4413744258%_ (gx#syntax-e _%__stx4460344604%_)))
                     (let ((_%tl4413944265%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4413744258%_)))
                           (_%hd4413844262%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4413744258%_))))
                       (if (gx#stx-pair? _%tl4413944265%_)
                           (let ((_%e4414044268%_
                                  (gx#syntax-e _%tl4413944265%_)))
                             (let ((_%tl4414244275%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4414044268%_)))
                                   (_%hd4414144272%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4414044268%_))))
                               (if (gx#stx-datum? _%hd4414144272%_)
                                   (let ((_%e4414344278%_
                                          (gx#stx-e _%hd4414144272%_)))
                                     (if (equal? _%e4414344278%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4414244275%_)
                                             (let ((_%e4414444282%_
                                                    (gx#syntax-e
                                                     _%tl4414244275%_)))
                                               (let ((_%tl4414644289%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4414444282%_)))
                                                     (_%hd4414544286%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4414444282%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4414644289%_)
                                                     (let ((_%__splice4460844609%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4414644289%_
                                                             '0)))
                                                       (let ((_%tl4414944295%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4460844609%_ '1)))
                     (_%target4414744292%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4460844609%_ '0))))
                 (if (gx#stx-null? _%tl4414944295%_)
                     (_%__match4464644647%_
                      _%e4413744258%_
                      _%hd4413844262%_
                      _%tl4413944265%_
                      _%e4414044268%_
                      _%hd4414144272%_
                      _%tl4414244275%_
                      _%e4414344278%_
                      _%e4414444282%_
                      _%hd4414544286%_
                      _%tl4414644289%_
                      _%__splice4460844609%_
                      _%target4414744292%_
                      _%tl4414944295%_)
                     (if (gx#stx-pair/null? _%tl4413944265%_)
                         (let ((_%__splice4461244613%_
                                (gx#syntax-split-splice->vector
                                 _%tl4413944265%_
                                 '0)))
                           (let ((_%tl4416244194%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4461244613%_ '1)))
                                 (_%target4416044191%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4461244613%_ '0))))
                             (if (gx#stx-null? _%tl4416244194%_)
                                 (_%__match4466044661%_
                                  _%e4413744258%_
                                  _%hd4413844262%_
                                  _%tl4413944265%_
                                  _%__splice4461244613%_
                                  _%target4416044191%_
                                  _%tl4416244194%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4413344174%_)))))
                         (let () (declare (not safe)) (_%g4413344174%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4413944265%_)
                                                         (let ((_%__splice4461244613%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4413944265%_
                         '0)))
                   (let ((_%tl4416244194%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4461244613%_ '1)))
                         (_%target4416044191%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4461244613%_ '0))))
                     (if (gx#stx-null? _%tl4416244194%_)
                         (_%__match4466044661%_
                          _%e4413744258%_
                          _%hd4413844262%_
                          _%tl4413944265%_
                          _%__splice4461244613%_
                          _%target4416044191%_
                          _%tl4416244194%_)
                         (let () (declare (not safe)) (_%g4413344174%_)))))
                 (let () (declare (not safe)) (_%g4413344174%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4413944265%_)
                                                 (let ((_%__splice4461244613%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4413944265%_
                                                         '0)))
                                                   (let ((_%tl4416244194%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4461244613%_
                                                             '1)))
                                                         (_%target4416044191%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4461244613%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4416244194%_)
                                                         (_%__match4466044661%_
                                                          _%e4413744258%_
                                                          _%hd4413844262%_
                                                          _%tl4413944265%_
                                                          _%__splice4461244613%_
                                                          _%target4416044191%_
                                                          _%tl4416244194%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4413344174%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4413344174%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4413944265%_)
                                             (let ((_%__splice4461244613%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4413944265%_
                                                     '0)))
                                               (let ((_%tl4416244194%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4461244613%_
                                                         '1)))
                                                     (_%target4416044191%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4461244613%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4416244194%_)
                                                     (_%__match4466044661%_
                                                      _%e4413744258%_
                                                      _%hd4413844262%_
                                                      _%tl4413944265%_
                                                      _%__splice4461244613%_
                                                      _%target4416044191%_
                                                      _%tl4416244194%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4413344174%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4413344174%_)))))
                                   (if (gx#stx-pair/null? _%tl4413944265%_)
                                       (let ((_%__splice4461244613%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4413944265%_
                                               '0)))
                                         (let ((_%tl4416244194%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4461244613%_
                                                   '1)))
                                               (_%target4416044191%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4461244613%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4416244194%_)
                                               (_%__match4466044661%_
                                                _%e4413744258%_
                                                _%hd4413844262%_
                                                _%tl4413944265%_
                                                _%__splice4461244613%_
                                                _%target4416044191%_
                                                _%tl4416244194%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4413344174%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4413344174%_))))))
                           (if (gx#stx-pair/null? _%tl4413944265%_)
                               (let ((_%__splice4461244613%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4413944265%_
                                       '0)))
                                 (let ((_%tl4416244194%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4461244613%_
                                           '1)))
                                       (_%target4416044191%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4461244613%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4416244194%_)
                                       (_%__match4466044661%_
                                        _%e4413744258%_
                                        _%hd4413844262%_
                                        _%tl4413944265%_
                                        _%__splice4461244613%_
                                        _%target4416044191%_
                                        _%tl4416244194%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4413344174%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4413344174%_))))))
                   (let () (declare (not safe)) (_%g4413344174%_)))))))))))
