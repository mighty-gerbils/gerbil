(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx46326%_)
      (let* ((_%__stx4911049111%_ _%$stx46326%_)
             (_%g4633146350%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4911049111%_))))
        (let ((_%__kont4911349114%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4911549116%_
               (lambda (_%g4633646377%_ _%g4633746379%_ _%g4633846380%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4633746379%_
                                   (cons (cons _%g4633846380%_ _%g4633646377%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4633746379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4911049111%_)
              (let ((_%e4633346402%_ (gx#syntax-e _%__stx4911049111%_)))
                (let ((_%tl4633546409%_
                       (let () (declare (not safe)) (##cdr _%e4633346402%_)))
                      (_%hd4633446406%_
                       (let () (declare (not safe)) (##car _%e4633346402%_))))
                  (if (gx#stx-null? _%tl4633546409%_)
                      (_%__kont4911349114%_)
                      (if (gx#stx-pair? _%tl4633546409%_)
                          (let ((_%e4634246367%_
                                 (gx#syntax-e _%tl4633546409%_)))
                            (let ((_%tl4634446374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4634246367%_)))
                                  (_%hd4634346371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4634246367%_))))
                              (_%__kont4911549116%_
                               _%tl4634446374%_
                               _%hd4634346371%_
                               _%hd4633446406%_)))
                          (let () (declare (not safe)) (_%g4633146350%_))))))
              (let () (declare (not safe)) (_%g4633146350%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46420%_)
      (let* ((_%__stx4914049141%_ _%$stx46420%_)
             (_%g4642546465%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4914049141%_))))
        (let ((_%__kont4914349144%_
               (lambda (_%g4642746601%_ _%g4642846603%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4642846603%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4642746601%_ '()))
                                   '())))))
              (_%__kont4914549146%_
               (lambda (_%g4643846530%_
                        _%g4643946532%_
                        _%g4644046533%_
                        _%g4644146534%_)
                 (cons _%g4644146534%_
                       (cons _%g4644046533%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4643946532%_
                                               (foldr (lambda (_%g4655546558%_
                                                               _%g4655646561%_)
                                                        (cons _%g4655546558%_
                                                              _%g4655646561%_))
                                                      '()
                                                      _%g4643846530%_)))
                                   '()))))))
          (let* ((_%__match4919549196%_
                  (lambda (_%e4644246472%_
                           _%hd4644346476%_
                           _%tl4644446479%_
                           _%e4644546482%_
                           _%hd4644646486%_
                           _%tl4644746489%_
                           _%e4644846492%_
                           _%hd4644946496%_
                           _%tl4645046499%_
                           _%__splice4914749148%_
                           _%target4645146502%_
                           _%tl4645346505%_)
                    (letrec ((_%loop4645446508%_
                              (lambda (_%hd4645246512%_ _%body4645846515%_)
                                (if (gx#stx-pair? _%hd4645246512%_)
                                    (let ((_%e4645546517%_
                                           (gx#syntax-e _%hd4645246512%_)))
                                      (let ((_%lp-tl4645746524%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4645546517%_)))
                                            (_%lp-hd4645646521%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4645546517%_))))
                                        (_%loop4645446508%_
                                         _%lp-tl4645746524%_
                                         (cons _%lp-hd4645646521%_
                                               _%body4645846515%_))))
                                    (let ((_%body4645946527%_
                                           (reverse _%body4645846515%_)))
                                      (let ((_%g4643846530%_
                                             _%body4645946527%_)
                                            (_%g4643946532%_ _%tl4645046499%_)
                                            (_%g4644046533%_ _%hd4644946496%_)
                                            (_%g4644146534%_ _%hd4644346476%_))
                                        (if (gx#identifier? _%g4644046533%_)
                                            (_%__kont4914549146%_
                                             _%g4643846530%_
                                             _%g4643946532%_
                                             _%g4644046533%_
                                             _%g4644146534%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4642546465%_)))))))))
                      (_%loop4645446508%_ _%target4645146502%_ '()))))
                 (_%__match4916949170%_
                  (lambda (_%e4642946571%_
                           _%hd4643046575%_
                           _%tl4643146578%_
                           _%e4643246581%_
                           _%hd4643346585%_
                           _%tl4643446588%_
                           _%e4643546591%_
                           _%hd4643646595%_
                           _%tl4643746598%_)
                    (let ((_%g4642746601%_ _%hd4643646595%_)
                          (_%g4642846603%_ _%hd4643346585%_))
                      (if (gx#identifier? _%g4642846603%_)
                          (_%__kont4914349144%_
                           _%g4642746601%_
                           _%g4642846603%_)
                          (if (gx#stx-pair? _%hd4643346585%_)
                              (let ((_%e4644846492%_
                                     (gx#syntax-e _%hd4643346585%_)))
                                (let ((_%tl4645046499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4644846492%_)))
                                      (_%hd4644946496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4644846492%_))))
                                  (if (gx#stx-pair/null? _%tl4643446588%_)
                                      (let ((_%__splice4914749148%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4643446588%_
                                              '0)))
                                        (let ((_%tl4645346505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4914749148%_
                                                  '1)))
                                              (_%target4645146502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4914749148%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4645346505%_)
                                              (_%__match4919549196%_
                                               _%e4642946571%_
                                               _%hd4643046575%_
                                               _%tl4643146578%_
                                               _%e4643246581%_
                                               _%hd4643346585%_
                                               _%tl4643446588%_
                                               _%e4644846492%_
                                               _%hd4644946496%_
                                               _%tl4645046499%_
                                               _%__splice4914749148%_
                                               _%target4645146502%_
                                               _%tl4645346505%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642546465%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642546465%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642546465%_))))))))
            (if (gx#stx-pair? _%__stx4914049141%_)
                (let ((_%e4642946571%_ (gx#syntax-e _%__stx4914049141%_)))
                  (let ((_%tl4643146578%_
                         (let () (declare (not safe)) (##cdr _%e4642946571%_)))
                        (_%hd4643046575%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4642946571%_))))
                    (if (gx#stx-pair? _%tl4643146578%_)
                        (let ((_%e4643246581%_ (gx#syntax-e _%tl4643146578%_)))
                          (let ((_%tl4643446588%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4643246581%_)))
                                (_%hd4643346585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4643246581%_))))
                            (if (gx#stx-pair? _%tl4643446588%_)
                                (let ((_%e4643546591%_
                                       (gx#syntax-e _%tl4643446588%_)))
                                  (let ((_%tl4643746598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4643546591%_)))
                                        (_%hd4643646595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4643546591%_))))
                                    (if (gx#stx-null? _%tl4643746598%_)
                                        (_%__match4916949170%_
                                         _%e4642946571%_
                                         _%hd4643046575%_
                                         _%tl4643146578%_
                                         _%e4643246581%_
                                         _%hd4643346585%_
                                         _%tl4643446588%_
                                         _%e4643546591%_
                                         _%hd4643646595%_
                                         _%tl4643746598%_)
                                        (if (gx#stx-pair? _%hd4643346585%_)
                                            (let ((_%e4644846492%_
                                                   (gx#syntax-e
                                                    _%hd4643346585%_)))
                                              (let ((_%tl4645046499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4644846492%_)))
                                                    (_%hd4644946496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4644846492%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4643446588%_)
                                                    (let ((_%__splice4914749148%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4643446588%_
                                                            '0)))
                                                      (let ((_%tl4645346505%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4914749148%_ '1)))
                    (_%target4645146502%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4914749148%_ '0))))
                (if (gx#stx-null? _%tl4645346505%_)
                    (_%__match4919549196%_
                     _%e4642946571%_
                     _%hd4643046575%_
                     _%tl4643146578%_
                     _%e4643246581%_
                     _%hd4643346585%_
                     _%tl4643446588%_
                     _%e4644846492%_
                     _%hd4644946496%_
                     _%tl4645046499%_
                     _%__splice4914749148%_
                     _%target4645146502%_
                     _%tl4645346505%_)
                    (let () (declare (not safe)) (_%g4642546465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4642546465%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4642546465%_))))))
                                (if (gx#stx-pair? _%hd4643346585%_)
                                    (let ((_%e4644846492%_
                                           (gx#syntax-e _%hd4643346585%_)))
                                      (let ((_%tl4645046499%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4644846492%_)))
                                            (_%hd4644946496%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4644846492%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4643446588%_)
                                            (let ((_%__splice4914749148%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4643446588%_
                                                    '0)))
                                              (let ((_%tl4645346505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4914749148%_
                                                        '1)))
                                                    (_%target4645146502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4914749148%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4645346505%_)
                                                    (_%__match4919549196%_
                                                     _%e4642946571%_
                                                     _%hd4643046575%_
                                                     _%tl4643146578%_
                                                     _%e4643246581%_
                                                     _%hd4643346585%_
                                                     _%tl4643446588%_
                                                     _%e4644846492%_
                                                     _%hd4644946496%_
                                                     _%tl4645046499%_
                                                     _%__splice4914749148%_
                                                     _%target4645146502%_
                                                     _%tl4645346505%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4642546465%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4642546465%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4642546465%_))))))
                        (let () (declare (not safe)) (_%g4642546465%_)))))
                (let () (declare (not safe)) (_%g4642546465%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46623%_)
      (let* ((_%__stx4919849199%_ _%$stx46623%_)
             (_%g4662846668%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4919849199%_))))
        (let ((_%__kont4920149202%_
               (lambda (_%g4663046804%_ _%g4663146806%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4663146806%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4663046804%_ '()))
                                   '())))))
              (_%__kont4920349204%_
               (lambda (_%g4664146733%_
                        _%g4664246735%_
                        _%g4664346736%_
                        _%g4664446737%_)
                 (cons _%g4664446737%_
                       (cons _%g4664346736%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4664246735%_
                                               (foldr (lambda (_%g4675846761%_
                                                               _%g4675946764%_)
                                                        (cons _%g4675846761%_
                                                              _%g4675946764%_))
                                                      '()
                                                      _%g4664146733%_)))
                                   '()))))))
          (let* ((_%__match4925349254%_
                  (lambda (_%e4664546675%_
                           _%hd4664646679%_
                           _%tl4664746682%_
                           _%e4664846685%_
                           _%hd4664946689%_
                           _%tl4665046692%_
                           _%e4665146695%_
                           _%hd4665246699%_
                           _%tl4665346702%_
                           _%__splice4920549206%_
                           _%target4665446705%_
                           _%tl4665646708%_)
                    (letrec ((_%loop4665746711%_
                              (lambda (_%hd4665546715%_ _%body4666146718%_)
                                (if (gx#stx-pair? _%hd4665546715%_)
                                    (let ((_%e4665846720%_
                                           (gx#syntax-e _%hd4665546715%_)))
                                      (let ((_%lp-tl4666046727%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4665846720%_)))
                                            (_%lp-hd4665946724%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4665846720%_))))
                                        (_%loop4665746711%_
                                         _%lp-tl4666046727%_
                                         (cons _%lp-hd4665946724%_
                                               _%body4666146718%_))))
                                    (let ((_%body4666246730%_
                                           (reverse _%body4666146718%_)))
                                      (let ((_%g4664146733%_
                                             _%body4666246730%_)
                                            (_%g4664246735%_ _%tl4665346702%_)
                                            (_%g4664346736%_ _%hd4665246699%_)
                                            (_%g4664446737%_ _%hd4664646679%_))
                                        (if (gx#identifier? _%g4664346736%_)
                                            (_%__kont4920349204%_
                                             _%g4664146733%_
                                             _%g4664246735%_
                                             _%g4664346736%_
                                             _%g4664446737%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4662846668%_)))))))))
                      (_%loop4665746711%_ _%target4665446705%_ '()))))
                 (_%__match4922749228%_
                  (lambda (_%e4663246774%_
                           _%hd4663346778%_
                           _%tl4663446781%_
                           _%e4663546784%_
                           _%hd4663646788%_
                           _%tl4663746791%_
                           _%e4663846794%_
                           _%hd4663946798%_
                           _%tl4664046801%_)
                    (let ((_%g4663046804%_ _%hd4663946798%_)
                          (_%g4663146806%_ _%hd4663646788%_))
                      (if (gx#identifier? _%g4663146806%_)
                          (_%__kont4920149202%_
                           _%g4663046804%_
                           _%g4663146806%_)
                          (if (gx#stx-pair? _%hd4663646788%_)
                              (let ((_%e4665146695%_
                                     (gx#syntax-e _%hd4663646788%_)))
                                (let ((_%tl4665346702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4665146695%_)))
                                      (_%hd4665246699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4665146695%_))))
                                  (if (gx#stx-pair/null? _%tl4663746791%_)
                                      (let ((_%__splice4920549206%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4663746791%_
                                              '0)))
                                        (let ((_%tl4665646708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4920549206%_
                                                  '1)))
                                              (_%target4665446705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4920549206%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4665646708%_)
                                              (_%__match4925349254%_
                                               _%e4663246774%_
                                               _%hd4663346778%_
                                               _%tl4663446781%_
                                               _%e4663546784%_
                                               _%hd4663646788%_
                                               _%tl4663746791%_
                                               _%e4665146695%_
                                               _%hd4665246699%_
                                               _%tl4665346702%_
                                               _%__splice4920549206%_
                                               _%target4665446705%_
                                               _%tl4665646708%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662846668%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662846668%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4662846668%_))))))))
            (if (gx#stx-pair? _%__stx4919849199%_)
                (let ((_%e4663246774%_ (gx#syntax-e _%__stx4919849199%_)))
                  (let ((_%tl4663446781%_
                         (let () (declare (not safe)) (##cdr _%e4663246774%_)))
                        (_%hd4663346778%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4663246774%_))))
                    (if (gx#stx-pair? _%tl4663446781%_)
                        (let ((_%e4663546784%_ (gx#syntax-e _%tl4663446781%_)))
                          (let ((_%tl4663746791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4663546784%_)))
                                (_%hd4663646788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4663546784%_))))
                            (if (gx#stx-pair? _%tl4663746791%_)
                                (let ((_%e4663846794%_
                                       (gx#syntax-e _%tl4663746791%_)))
                                  (let ((_%tl4664046801%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4663846794%_)))
                                        (_%hd4663946798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4663846794%_))))
                                    (if (gx#stx-null? _%tl4664046801%_)
                                        (_%__match4922749228%_
                                         _%e4663246774%_
                                         _%hd4663346778%_
                                         _%tl4663446781%_
                                         _%e4663546784%_
                                         _%hd4663646788%_
                                         _%tl4663746791%_
                                         _%e4663846794%_
                                         _%hd4663946798%_
                                         _%tl4664046801%_)
                                        (if (gx#stx-pair? _%hd4663646788%_)
                                            (let ((_%e4665146695%_
                                                   (gx#syntax-e
                                                    _%hd4663646788%_)))
                                              (let ((_%tl4665346702%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4665146695%_)))
                                                    (_%hd4665246699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4665146695%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4663746791%_)
                                                    (let ((_%__splice4920549206%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4663746791%_
                                                            '0)))
                                                      (let ((_%tl4665646708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4920549206%_ '1)))
                    (_%target4665446705%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4920549206%_ '0))))
                (if (gx#stx-null? _%tl4665646708%_)
                    (_%__match4925349254%_
                     _%e4663246774%_
                     _%hd4663346778%_
                     _%tl4663446781%_
                     _%e4663546784%_
                     _%hd4663646788%_
                     _%tl4663746791%_
                     _%e4665146695%_
                     _%hd4665246699%_
                     _%tl4665346702%_
                     _%__splice4920549206%_
                     _%target4665446705%_
                     _%tl4665646708%_)
                    (let () (declare (not safe)) (_%g4662846668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4662846668%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4662846668%_))))))
                                (if (gx#stx-pair? _%hd4663646788%_)
                                    (let ((_%e4665146695%_
                                           (gx#syntax-e _%hd4663646788%_)))
                                      (let ((_%tl4665346702%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4665146695%_)))
                                            (_%hd4665246699%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4665146695%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4663746791%_)
                                            (let ((_%__splice4920549206%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4663746791%_
                                                    '0)))
                                              (let ((_%tl4665646708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4920549206%_
                                                        '1)))
                                                    (_%target4665446705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4920549206%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4665646708%_)
                                                    (_%__match4925349254%_
                                                     _%e4663246774%_
                                                     _%hd4663346778%_
                                                     _%tl4663446781%_
                                                     _%e4663546784%_
                                                     _%hd4663646788%_
                                                     _%tl4663746791%_
                                                     _%e4665146695%_
                                                     _%hd4665246699%_
                                                     _%tl4665346702%_
                                                     _%__splice4920549206%_
                                                     _%target4665446705%_
                                                     _%tl4665646708%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4662846668%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4662846668%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4662846668%_))))))
                        (let () (declare (not safe)) (_%g4662846668%_)))))
                (let () (declare (not safe)) (_%g4662846668%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46826%_)
      (let* ((_%__stx4925649257%_ _%$stx46826%_)
             (_%g4683146871%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4925649257%_))))
        (let ((_%__kont4925949260%_
               (lambda (_%g4683347007%_ _%g4683447009%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4683447009%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4683347007%_ '()))
                                   '())))))
              (_%__kont4926149262%_
               (lambda (_%g4684446936%_
                        _%g4684546938%_
                        _%g4684646939%_
                        _%g4684746940%_)
                 (cons _%g4684746940%_
                       (cons _%g4684646939%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4684546938%_
                                               (foldr (lambda (_%g4696146964%_
                                                               _%g4696246967%_)
                                                        (cons _%g4696146964%_
                                                              _%g4696246967%_))
                                                      '()
                                                      _%g4684446936%_)))
                                   '()))))))
          (let* ((_%__match4931149312%_
                  (lambda (_%e4684846878%_
                           _%hd4684946882%_
                           _%tl4685046885%_
                           _%e4685146888%_
                           _%hd4685246892%_
                           _%tl4685346895%_
                           _%e4685446898%_
                           _%hd4685546902%_
                           _%tl4685646905%_
                           _%__splice4926349264%_
                           _%target4685746908%_
                           _%tl4685946911%_)
                    (letrec ((_%loop4686046914%_
                              (lambda (_%hd4685846918%_ _%body4686446921%_)
                                (if (gx#stx-pair? _%hd4685846918%_)
                                    (let ((_%e4686146923%_
                                           (gx#syntax-e _%hd4685846918%_)))
                                      (let ((_%lp-tl4686346930%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4686146923%_)))
                                            (_%lp-hd4686246927%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4686146923%_))))
                                        (_%loop4686046914%_
                                         _%lp-tl4686346930%_
                                         (cons _%lp-hd4686246927%_
                                               _%body4686446921%_))))
                                    (let ((_%body4686546933%_
                                           (reverse _%body4686446921%_)))
                                      (let ((_%g4684446936%_
                                             _%body4686546933%_)
                                            (_%g4684546938%_ _%tl4685646905%_)
                                            (_%g4684646939%_ _%hd4685546902%_)
                                            (_%g4684746940%_ _%hd4684946882%_))
                                        (if (gx#identifier? _%g4684646939%_)
                                            (_%__kont4926149262%_
                                             _%g4684446936%_
                                             _%g4684546938%_
                                             _%g4684646939%_
                                             _%g4684746940%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4683146871%_)))))))))
                      (_%loop4686046914%_ _%target4685746908%_ '()))))
                 (_%__match4928549286%_
                  (lambda (_%e4683546977%_
                           _%hd4683646981%_
                           _%tl4683746984%_
                           _%e4683846987%_
                           _%hd4683946991%_
                           _%tl4684046994%_
                           _%e4684146997%_
                           _%hd4684247001%_
                           _%tl4684347004%_)
                    (let ((_%g4683347007%_ _%hd4684247001%_)
                          (_%g4683447009%_ _%hd4683946991%_))
                      (if (gx#identifier? _%g4683447009%_)
                          (_%__kont4925949260%_
                           _%g4683347007%_
                           _%g4683447009%_)
                          (if (gx#stx-pair? _%hd4683946991%_)
                              (let ((_%e4685446898%_
                                     (gx#syntax-e _%hd4683946991%_)))
                                (let ((_%tl4685646905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4685446898%_)))
                                      (_%hd4685546902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4685446898%_))))
                                  (if (gx#stx-pair/null? _%tl4684046994%_)
                                      (let ((_%__splice4926349264%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4684046994%_
                                              '0)))
                                        (let ((_%tl4685946911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4926349264%_
                                                  '1)))
                                              (_%target4685746908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4926349264%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4685946911%_)
                                              (_%__match4931149312%_
                                               _%e4683546977%_
                                               _%hd4683646981%_
                                               _%tl4683746984%_
                                               _%e4683846987%_
                                               _%hd4683946991%_
                                               _%tl4684046994%_
                                               _%e4685446898%_
                                               _%hd4685546902%_
                                               _%tl4685646905%_
                                               _%__splice4926349264%_
                                               _%target4685746908%_
                                               _%tl4685946911%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4683146871%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4683146871%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4683146871%_))))))))
            (if (gx#stx-pair? _%__stx4925649257%_)
                (let ((_%e4683546977%_ (gx#syntax-e _%__stx4925649257%_)))
                  (let ((_%tl4683746984%_
                         (let () (declare (not safe)) (##cdr _%e4683546977%_)))
                        (_%hd4683646981%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4683546977%_))))
                    (if (gx#stx-pair? _%tl4683746984%_)
                        (let ((_%e4683846987%_ (gx#syntax-e _%tl4683746984%_)))
                          (let ((_%tl4684046994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4683846987%_)))
                                (_%hd4683946991%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4683846987%_))))
                            (if (gx#stx-pair? _%tl4684046994%_)
                                (let ((_%e4684146997%_
                                       (gx#syntax-e _%tl4684046994%_)))
                                  (let ((_%tl4684347004%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4684146997%_)))
                                        (_%hd4684247001%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4684146997%_))))
                                    (if (gx#stx-null? _%tl4684347004%_)
                                        (_%__match4928549286%_
                                         _%e4683546977%_
                                         _%hd4683646981%_
                                         _%tl4683746984%_
                                         _%e4683846987%_
                                         _%hd4683946991%_
                                         _%tl4684046994%_
                                         _%e4684146997%_
                                         _%hd4684247001%_
                                         _%tl4684347004%_)
                                        (if (gx#stx-pair? _%hd4683946991%_)
                                            (let ((_%e4685446898%_
                                                   (gx#syntax-e
                                                    _%hd4683946991%_)))
                                              (let ((_%tl4685646905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4685446898%_)))
                                                    (_%hd4685546902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4685446898%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4684046994%_)
                                                    (let ((_%__splice4926349264%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4684046994%_
                                                            '0)))
                                                      (let ((_%tl4685946911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4926349264%_ '1)))
                    (_%target4685746908%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4926349264%_ '0))))
                (if (gx#stx-null? _%tl4685946911%_)
                    (_%__match4931149312%_
                     _%e4683546977%_
                     _%hd4683646981%_
                     _%tl4683746984%_
                     _%e4683846987%_
                     _%hd4683946991%_
                     _%tl4684046994%_
                     _%e4685446898%_
                     _%hd4685546902%_
                     _%tl4685646905%_
                     _%__splice4926349264%_
                     _%target4685746908%_
                     _%tl4685946911%_)
                    (let () (declare (not safe)) (_%g4683146871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4683146871%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4683146871%_))))))
                                (if (gx#stx-pair? _%hd4683946991%_)
                                    (let ((_%e4685446898%_
                                           (gx#syntax-e _%hd4683946991%_)))
                                      (let ((_%tl4685646905%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4685446898%_)))
                                            (_%hd4685546902%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4685446898%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4684046994%_)
                                            (let ((_%__splice4926349264%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4684046994%_
                                                    '0)))
                                              (let ((_%tl4685946911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4926349264%_
                                                        '1)))
                                                    (_%target4685746908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4926349264%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4685946911%_)
                                                    (_%__match4931149312%_
                                                     _%e4683546977%_
                                                     _%hd4683646981%_
                                                     _%tl4683746984%_
                                                     _%e4683846987%_
                                                     _%hd4683946991%_
                                                     _%tl4684046994%_
                                                     _%e4685446898%_
                                                     _%hd4685546902%_
                                                     _%tl4685646905%_
                                                     _%__splice4926349264%_
                                                     _%target4685746908%_
                                                     _%tl4685946911%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4683146871%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4683146871%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4683146871%_))))))
                        (let () (declare (not safe)) (_%g4683146871%_)))))
                (let () (declare (not safe)) (_%g4683146871%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx47029%_)
       (let* ((_%g4703247052%_
               (lambda (_%g4703347048%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4703347048%_)))
              (_%g4703147121%_
               (lambda (_%g4703347056%_)
                 (if (gx#stx-pair? _%g4703347056%_)
                     (let ((_%e4703547059%_ (gx#syntax-e _%g4703347056%_)))
                       (let ((_%hd4703647063%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4703547059%_)))
                             (_%tl4703747066%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4703547059%_))))
                         (if (gx#stx-pair/null? _%tl4703747066%_)
                             (let ((_g49406_
                                    (gx#syntax-split-splice
                                     _%tl4703747066%_
                                     '0)))
                               (begin
                                 (let ((_g49407_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49406_)
                                              (##values-length _g49406_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49407_ 2)))
                                       (error "Context expects 2 values"
                                              _g49407_)))
                                 (let ((_%target4703847069%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49406_ 0)))
                                       (_%tl4704047072%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49406_ 1))))
                                   (if (gx#stx-null? _%tl4704047072%_)
                                       (letrec ((_%loop4704147075%_
                                                 (lambda (_%hd4703947079%_
                                                          _%body4704547082%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4703947079%_)
                                                       (let ((_%e4704247084%_
                                                              (gx#syntax-e
                                                               _%hd4703947079%_)))
                                                         (let ((_%lp-hd4704347088%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4704247084%_)))
                       (_%lp-tl4704447091%_
                        (let () (declare (not safe)) (##cdr _%e4704247084%_))))
                   (_%loop4704147075%_
                    _%lp-tl4704447091%_
                    (cons _%lp-hd4704347088%_ _%body4704547082%_))))
               (let ((_%body4704647094%_ (reverse _%body4704547082%_)))
                 ((lambda (_%g4703447097%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4711247115%_
                                                _%g4711347118%_)
                                         (cons _%g4711247115%_
                                               _%g4711347118%_))
                                       '()
                                       _%g4703447097%_))))
                  _%body4704647094%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4704147075%_
                                          _%target4703847069%_
                                          '()))
                                       (_%g4703247052%_ _%g4703347056%_)))))
                             (_%g4703247052%_ _%g4703347056%_))))
                     (_%g4703247052%_ _%g4703347056%_)))))
         (_%g4703147121%_ _%stx47029%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx47126%_)
       (let* ((_%g4712947149%_
               (lambda (_%g4713047145%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4713047145%_)))
              (_%g4712847218%_
               (lambda (_%g4713047153%_)
                 (if (gx#stx-pair? _%g4713047153%_)
                     (let ((_%e4713247156%_ (gx#syntax-e _%g4713047153%_)))
                       (let ((_%hd4713347160%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4713247156%_)))
                             (_%tl4713447163%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4713247156%_))))
                         (if (gx#stx-pair/null? _%tl4713447163%_)
                             (let ((_g49408_
                                    (gx#syntax-split-splice
                                     _%tl4713447163%_
                                     '0)))
                               (begin
                                 (let ((_g49409_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49408_)
                                              (##values-length _g49408_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49409_ 2)))
                                       (error "Context expects 2 values"
                                              _g49409_)))
                                 (let ((_%target4713547166%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49408_ 0)))
                                       (_%tl4713747169%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49408_ 1))))
                                   (if (gx#stx-null? _%tl4713747169%_)
                                       (letrec ((_%loop4713847172%_
                                                 (lambda (_%hd4713647176%_
                                                          _%body4714247179%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4713647176%_)
                                                       (let ((_%e4713947181%_
                                                              (gx#syntax-e
                                                               _%hd4713647176%_)))
                                                         (let ((_%lp-hd4714047185%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4713947181%_)))
                       (_%lp-tl4714147188%_
                        (let () (declare (not safe)) (##cdr _%e4713947181%_))))
                   (_%loop4713847172%_
                    _%lp-tl4714147188%_
                    (cons _%lp-hd4714047185%_ _%body4714247179%_))))
               (let ((_%body4714347191%_ (reverse _%body4714247179%_)))
                 ((lambda (_%g4713147194%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4720947212%_
                                                _%g4721047215%_)
                                         (cons _%g4720947212%_
                                               _%g4721047215%_))
                                       '()
                                       _%g4713147194%_))))
                  _%body4714347191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4713847172%_
                                          _%target4713547166%_
                                          '()))
                                       (_%g4712947149%_ _%g4713047153%_)))))
                             (_%g4712947149%_ _%g4713047153%_))))
                     (_%g4712947149%_ _%g4713047153%_)))))
         (_%g4712847218%_ _%stx47126%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx47223%_)
       (let* ((_%g4722647250%_
               (lambda (_%g4722747246%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4722747246%_)))
              (_%g4722547376%_
               (lambda (_%g4722747254%_)
                 (if (gx#stx-pair? _%g4722747254%_)
                     (let ((_%e4723047257%_ (gx#syntax-e _%g4722747254%_)))
                       (let ((_%hd4723147261%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4723047257%_)))
                             (_%tl4723247264%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4723047257%_))))
                         (if (gx#stx-pair? _%tl4723247264%_)
                             (let ((_%e4723347267%_
                                    (gx#syntax-e _%tl4723247264%_)))
                               (let ((_%hd4723447271%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4723347267%_)))
                                     (_%tl4723547274%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4723347267%_))))
                                 (if (gx#stx-pair/null? _%tl4723547274%_)
                                     (let ((_g49410_
                                            (gx#syntax-split-splice
                                             _%tl4723547274%_
                                             '0)))
                                       (begin
                                         (let ((_g49411_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49410_)
                                                      (##values-length
                                                       _g49410_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49411_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49411_)))
                                         (let ((_%target4723647277%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49410_ 0)))
                                               (_%tl4723847280%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49410_ 1))))
                                           (if (gx#stx-null? _%tl4723847280%_)
                                               (letrec ((_%loop4723947283%_
                                                         (lambda (_%hd4723747287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4724347290%_)
                   (if (gx#stx-pair? _%hd4723747287%_)
                       (let ((_%e4724047292%_ (gx#syntax-e _%hd4723747287%_)))
                         (let ((_%lp-hd4724147296%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4724047292%_)))
                               (_%lp-tl4724247299%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4724047292%_))))
                           (_%loop4723947283%_
                            _%lp-tl4724247299%_
                            (cons _%lp-hd4724147296%_ _%id4724347290%_))))
                       (let ((_%id4724447302%_ (reverse _%id4724347290%_)))
                         ((lambda (_%g4722847305%_ _%g4722947307%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4732447327%_
                                                 _%g4732547330%_)
                                          (cons _%g4732447327%_
                                                _%g4732547330%_))
                                        '()
                                        _%g4722847305%_))
                                (let* ((_%keys47341%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4733247335%_
                                                         _%g4733347338%_)
                                                  (cons _%g4733247335%_
                                                        _%g4733347338%_))
                                                '()
                                                _%g4722847305%_)))
                                       (_%keytab47352%_
                                        (let ((_%ht47344%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4734647348%_)
                                             (hash-put!
                                              _%ht47344%_
                                              _%g4734647348%_
                                              '#t))
                                           _%keys47341%_)
                                          _%ht47344%_))
                                       (_%imports47355%_
                                        (gx#core-expand-import-source
                                         _%g4722947307%_))
                                       (_%fold-e47371%_
                                        (letrec ((_%fold-e47358%_
                                                  (lambda (_%in47361%_
                                                           _%r47363%_)
                                                    (if (gx#module-import?
                                                         _%in47361%_)
                                                        (if (hash-get
                                                             _%keytab47352%_
                                                             (gx#module-import-name
                                                              _%in47361%_))
                                                            (cons _%in47361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47363%_)
                    _%r47363%_)
                (if (gx#import-set? _%in47361%_)
                    (foldl _%fold-e47358%_
                           _%r47363%_
                           (gx#import-set-imports _%in47361%_))
                    _%r47363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47358%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47371%_
                                               '()
                                               _%imports47355%_)))
                                (_%g4722647250%_ _%g4722747254%_)))
                          _%id4724447302%_
                          _%hd4723447271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4723947283%_
                                                  _%target4723647277%_
                                                  '()))
                                               (_%g4722647250%_
                                                _%g4722747254%_)))))
                                     (_%g4722647250%_ _%g4722747254%_))))
                             (_%g4722647250%_ _%g4722747254%_))))
                     (_%g4722647250%_ _%g4722747254%_)))))
         (_%g4722547376%_ _%stx47223%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47381%_)
       (let* ((_%g4738447408%_
               (lambda (_%g4738547404%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4738547404%_)))
              (_%g4738347534%_
               (lambda (_%g4738547412%_)
                 (if (gx#stx-pair? _%g4738547412%_)
                     (let ((_%e4738847415%_ (gx#syntax-e _%g4738547412%_)))
                       (let ((_%hd4738947419%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4738847415%_)))
                             (_%tl4739047422%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4738847415%_))))
                         (if (gx#stx-pair? _%tl4739047422%_)
                             (let ((_%e4739147425%_
                                    (gx#syntax-e _%tl4739047422%_)))
                               (let ((_%hd4739247429%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4739147425%_)))
                                     (_%tl4739347432%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4739147425%_))))
                                 (if (gx#stx-pair/null? _%tl4739347432%_)
                                     (let ((_g49412_
                                            (gx#syntax-split-splice
                                             _%tl4739347432%_
                                             '0)))
                                       (begin
                                         (let ((_g49413_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49412_)
                                                      (##values-length
                                                       _g49412_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49413_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49413_)))
                                         (let ((_%target4739447435%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49412_ 0)))
                                               (_%tl4739647438%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49412_ 1))))
                                           (if (gx#stx-null? _%tl4739647438%_)
                                               (letrec ((_%loop4739747441%_
                                                         (lambda (_%hd4739547445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4740147448%_)
                   (if (gx#stx-pair? _%hd4739547445%_)
                       (let ((_%e4739847450%_ (gx#syntax-e _%hd4739547445%_)))
                         (let ((_%lp-hd4739947454%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4739847450%_)))
                               (_%lp-tl4740047457%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4739847450%_))))
                           (_%loop4739747441%_
                            _%lp-tl4740047457%_
                            (cons _%lp-hd4739947454%_ _%id4740147448%_))))
                       (let ((_%id4740247460%_ (reverse _%id4740147448%_)))
                         ((lambda (_%g4738647463%_ _%g4738747465%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4748247485%_
                                                 _%g4748347488%_)
                                          (cons _%g4748247485%_
                                                _%g4748347488%_))
                                        '()
                                        _%g4738647463%_))
                                (let* ((_%keys47499%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4749047493%_
                                                         _%g4749147496%_)
                                                  (cons _%g4749047493%_
                                                        _%g4749147496%_))
                                                '()
                                                _%g4738647463%_)))
                                       (_%keytab47510%_
                                        (let ((_%ht47502%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4750447506%_)
                                             (hash-put!
                                              _%ht47502%_
                                              _%g4750447506%_
                                              '#t))
                                           _%keys47499%_)
                                          _%ht47502%_))
                                       (_%imports47513%_
                                        (gx#core-expand-import-source
                                         _%g4738747465%_))
                                       (_%fold-e47529%_
                                        (letrec ((_%fold-e47516%_
                                                  (lambda (_%in47519%_
                                                           _%r47521%_)
                                                    (if (gx#module-import?
                                                         _%in47519%_)
                                                        (if (hash-get
                                                             _%keytab47510%_
                                                             (gx#module-import-name
                                                              _%in47519%_))
                                                            _%r47521%_
                                                            (cons _%in47519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47521%_))
                (if (gx#import-set? _%in47519%_)
                    (foldl _%fold-e47516%_
                           _%r47521%_
                           (gx#import-set-imports _%in47519%_))
                    (cons _%in47519%_ _%r47521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47516%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47529%_
                                               '()
                                               _%imports47513%_)))
                                (_%g4738447408%_ _%g4738547412%_)))
                          _%id4740247460%_
                          _%hd4739247429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4739747441%_
                                                  _%target4739447435%_
                                                  '()))
                                               (_%g4738447408%_
                                                _%g4738547412%_)))))
                                     (_%g4738447408%_ _%g4738547412%_))))
                             (_%g4738447408%_ _%g4738547412%_))))
                     (_%g4738447408%_ _%g4738547412%_)))))
         (_%g4738347534%_ _%stx47381%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47586%_ _%rename47588%_)
      (gx#make-module-import
       (gx#module-import-source _%in47586%_)
       _%rename47588%_
       (gx#module-import-phi _%in47586%_)
       (gx#module-import-weak? _%in47586%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47539%_ _%pre47541%_)
      (let* ((_%name4754247550%_ _%name47539%_)
             (_%else4754447562%_
              (lambda () (make-symbol _%pre47541%_ _%name47539%_)))
             (_%K4754647570%_
              (lambda (_%mark47566%_ _%id47568%_)
                (cons (make-symbol _%pre47541%_ _%id47568%_) _%mark47566%_))))
        (if (pair? _%name4754247550%_)
            (let ((_%hd4754747574%_
                   (let () (declare (not safe)) (##car _%name4754247550%_)))
                  (_%tl4754847577%_
                   (let () (declare (not safe)) (##cdr _%name4754247550%_))))
              (let* ((_%id47580%_ _%hd4754747574%_)
                     (_%mark47583%_ _%tl4754847577%_))
                (_%K4754647570%_ _%mark47583%_ _%id47580%_)))
            (_%else4754447562%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47590%_)
       (let* ((_%g4759347626%_
               (lambda (_%g4759447622%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4759447622%_)))
              (_%g4759247817%_
               (lambda (_%g4759447630%_)
                 (if (gx#stx-pair? _%g4759447630%_)
                     (let ((_%e4759847633%_ (gx#syntax-e _%g4759447630%_)))
                       (let ((_%hd4759947637%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4759847633%_)))
                             (_%tl4760047640%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4759847633%_))))
                         (if (gx#stx-pair? _%tl4760047640%_)
                             (let ((_%e4760147643%_
                                    (gx#syntax-e _%tl4760047640%_)))
                               (let ((_%hd4760247647%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4760147643%_)))
                                     (_%tl4760347650%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4760147643%_))))
                                 (if (gx#stx-pair/null? _%tl4760347650%_)
                                     (let ((_g49414_
                                            (gx#syntax-split-splice
                                             _%tl4760347650%_
                                             '0)))
                                       (begin
                                         (let ((_g49415_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49414_)
                                                      (##values-length
                                                       _g49414_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49415_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49415_)))
                                         (let ((_%target4760447653%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49414_ 0)))
                                               (_%tl4760647656%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49414_ 1))))
                                           (if (gx#stx-null? _%tl4760647656%_)
                                               (letrec ((_%loop4760747659%_
                                                         (lambda (_%hd4760547663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4761147666%_
                          _%id4761247667%_)
                   (if (gx#stx-pair? _%hd4760547663%_)
                       (let ((_%e4760847669%_ (gx#syntax-e _%hd4760547663%_)))
                         (let ((_%lp-hd4760947673%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4760847669%_)))
                               (_%lp-tl4761047676%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4760847669%_))))
                           (if (gx#stx-pair? _%lp-hd4760947673%_)
                               (let ((_%e4761547679%_
                                      (gx#syntax-e _%lp-hd4760947673%_)))
                                 (let ((_%hd4761647683%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4761547679%_)))
                                       (_%tl4761747686%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4761547679%_))))
                                   (if (gx#stx-pair? _%tl4761747686%_)
                                       (let ((_%e4761847689%_
                                              (gx#syntax-e _%tl4761747686%_)))
                                         (let ((_%hd4761947693%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4761847689%_)))
                                               (_%tl4762047696%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4761847689%_))))
                                           (if (gx#stx-null? _%tl4762047696%_)
                                               (_%loop4760747659%_
                                                _%lp-tl4761047676%_
                                                (cons _%hd4761947693%_
                                                      _%new-id4761147666%_)
                                                (cons _%hd4761647683%_
                                                      _%id4761247667%_))
                                               (_%g4759347626%_
                                                _%g4759447630%_))))
                                       (_%g4759347626%_ _%g4759447630%_))))
                               (_%g4759347626%_ _%g4759447630%_))))
                       (let ((_%new-id4761347699%_
                              (reverse _%new-id4761147666%_))
                             (_%id4761447701%_ (reverse _%id4761247667%_)))
                         ((lambda (_%g4759547703%_
                                   _%g4759647705%_
                                   _%g4759747706%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4772447727%_
                                                      _%g4772547730%_)
                                               (cons _%g4772447727%_
                                                     _%g4772547730%_))
                                             '()
                                             _%g4759647705%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4773247735%_
                                                      _%g4773347738%_)
                                               (cons _%g4773247735%_
                                                     _%g4773347738%_))
                                             '()
                                             _%g4759547703%_)))
                                (let* ((_%keytab47741%_ (make-hash-table))
                                       (_%found47744%_ (make-hash-table))
                                       (_%_47767%_
                                        (for-each
                                         (lambda (_%id47747%_ _%new-id47749%_)
                                           (hash-put!
                                            _%keytab47741%_
                                            (gx#core-identifier-key
                                             _%id47747%_)
                                            (gx#core-identifier-key
                                             _%new-id47749%_)))
                                         (foldr (lambda (_%g4775047753%_
                                                         _%g4775147756%_)
                                                  (cons _%g4775047753%_
                                                        _%g4775147756%_))
                                                '()
                                                _%g4759647705%_)
                                         (foldr (lambda (_%g4775847761%_
                                                         _%g4775947764%_)
                                                  (cons _%g4775847761%_
                                                        _%g4775947764%_))
                                                '()
                                                _%g4759547703%_)))
                                       (_%imports47770%_
                                        (gx#core-expand-import-source
                                         _%g4759747706%_))
                                       (_%fold-e47798%_
                                        (letrec ((_%fold-e47773%_
                                                  (lambda (_%in47776%_
                                                           _%r47778%_)
                                                    (if (gx#module-import?
                                                         _%in47776%_)
                                                        (let* ((_%name47782%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47776%_))
                       (_%$e47785%_ (hash-get _%keytab47741%_ _%name47782%_)))
                  (if _%$e47785%_
                      ((lambda (_%rename47789%_)
                         (hash-put! _%found47744%_ _%name47782%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47776%_
                                _%rename47789%_)
                               _%r47778%_))
                       _%$e47785%_)
                      (cons _%in47776%_ _%r47778%_)))
                (if (gx#import-set? _%in47776%_)
                    (foldl _%fold-e47773%_
                           _%r47778%_
                           (gx#import-set-imports _%in47776%_))
                    (cons _%in47776%_ _%r47778%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47773%_))
                                       (_%new-imports47801%_
                                        (foldl _%fold-e47798%_
                                               '()
                                               _%imports47770%_)))
                                  (for-each
                                   (lambda (_%id47806%_)
                                     (if (hash-get
                                          _%found47744%_
                                          (gx#core-identifier-key _%id47806%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47590%_
                                          _%id47806%_)))
                                   (foldr (lambda (_%g4780847811%_
                                                   _%g4780947814%_)
                                            (cons _%g4780847811%_
                                                  _%g4780947814%_))
                                          '()
                                          _%g4759647705%_))
                                  (cons 'begin: _%new-imports47801%_))
                                (_%g4759347626%_ _%g4759447630%_)))
                          _%new-id4761347699%_
                          _%id4761447701%_
                          _%hd4760247647%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4760747659%_
                                                  _%target4760447653%_
                                                  '()
                                                  '()))
                                               (_%g4759347626%_
                                                _%g4759447630%_)))))
                                     (_%g4759347626%_ _%g4759447630%_))))
                             (_%g4759347626%_ _%g4759447630%_))))
                     (_%g4759347626%_ _%g4759447630%_)))))
         (_%g4759247817%_ _%stx47590%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47822%_)
       (let* ((_%g4782547843%_
               (lambda (_%g4782647839%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4782647839%_)))
              (_%g4782447928%_
               (lambda (_%g4782647847%_)
                 (if (gx#stx-pair? _%g4782647847%_)
                     (let ((_%e4782947850%_ (gx#syntax-e _%g4782647847%_)))
                       (let ((_%hd4783047854%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4782947850%_)))
                             (_%tl4783147857%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4782947850%_))))
                         (if (gx#stx-pair? _%tl4783147857%_)
                             (let ((_%e4783247860%_
                                    (gx#syntax-e _%tl4783147857%_)))
                               (let ((_%hd4783347864%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4783247860%_)))
                                     (_%tl4783447867%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4783247860%_))))
                                 (if (gx#stx-pair? _%tl4783447867%_)
                                     (let ((_%e4783547870%_
                                            (gx#syntax-e _%tl4783447867%_)))
                                       (let ((_%hd4783647874%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4783547870%_)))
                                             (_%tl4783747877%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4783547870%_))))
                                         (if (gx#stx-null? _%tl4783747877%_)
                                             ((lambda (_%g4782747880%_
                                                       _%g4782847882%_)
                                                (if (gx#identifier?
                                                     _%g4782747880%_)
                                                    (let* ((_%pre47898%_
                                                            (gx#stx-e
                                                             _%g4782747880%_))
                                                           (_%imports47901%_
                                                            (gx#core-expand-import-source
                                                             _%g4782847882%_))
                                                           (_%rename-e47907%_
                                                            (lambda (_%name47904%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47904%_
                                                               _%pre47898%_)))
                                                           (_%fold-e47923%_
                                                            (letrec ((_%fold-e47910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47913%_ _%r47915%_)
                                (if (gx#module-import? _%in47913%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47913%_
                                           (_%rename-e47907%_
                                            (gx#module-import-name
                                             _%in47913%_)))
                                          _%r47915%_)
                                    (if (gx#import-set? _%in47913%_)
                                        (foldl _%fold-e47910%_
                                               _%r47915%_
                                               (gx#import-set-imports
                                                _%in47913%_))
                                        (cons _%in47913%_ _%r47915%_))))))
                      _%fold-e47910%_)))
              (cons 'begin: (foldl _%fold-e47923%_ '() _%imports47901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4782547843%_
                                                     _%g4782647847%_)))
                                              _%hd4783647874%_
                                              _%hd4783347864%_)
                                             (_%g4782547843%_
                                              _%g4782647847%_))))
                                     (_%g4782547843%_ _%g4782647847%_))))
                             (_%g4782547843%_ _%g4782647847%_))))
                     (_%g4782547843%_ _%g4782647847%_)))))
         (_%g4782447928%_ _%stx47822%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47932%_)
       (letrec ((_%flatten47935%_
                 (lambda (_%list-of-lists48186%_)
                   (foldr (lambda (_%v48189%_ _%acc48191%_)
                            (if (null? _%v48189%_)
                                _%acc48191%_
                                (if (pair? _%v48189%_)
                                    (append (_%flatten47935%_ _%v48189%_)
                                            _%acc48191%_)
                                    (cons _%v48189%_ _%acc48191%_))))
                          '()
                          _%list-of-lists48186%_)))
                (_%expand-path47937%_
                 (lambda (_%top48056%_ _%mod48058%_)
                   (let* ((_%__stx4931449315%_ _%mod48058%_)
                          (_%g4806148083%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4931449315%_))))
                     (let ((_%__kont4931749318%_
                            (lambda (_%g4806348149%_ _%g4806448151%_)
                              (map (lambda (_%mod48166%_)
                                     (gx#stx-identifier
                                      _%top48056%_
                                      _%top48056%_
                                      '"/"
                                      _%mod48166%_))
                                   (_%flatten47935%_
                                    (map (lambda (_%g4816848170%_)
                                           (_%expand-path47937%_
                                            _%g4806448151%_
                                            _%g4816848170%_))
                                         (foldr (lambda (_%g4817348176%_
                                                         _%g4817448179%_)
                                                  (cons _%g4817348176%_
                                                        _%g4817448179%_))
                                                '()
                                                _%g4806348149%_))))))
                           (_%__kont4932149322%_
                            (lambda (_%g4807748090%_)
                              (gx#stx-identifier
                               _%top48056%_
                               _%top48056%_
                               '"/"
                               _%g4807748090%_))))
                       (let* ((_%g4806048104%_
                               (lambda ()
                                 (let ((_%g4807748090%_ _%__stx4931449315%_))
                                   (if (or (gx#identifier? _%g4807748090%_)
                                           (gx#stx-fixnum? _%g4807748090%_))
                                       (_%__kont4932149322%_ _%g4807748090%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4806148083%_))))))
                              (_%__match4933749338%_
                               (lambda (_%e4806548111%_
                                        _%hd4806648115%_
                                        _%tl4806748118%_
                                        _%__splice4931949320%_
                                        _%target4806848121%_
                                        _%tl4807048124%_)
                                 (letrec ((_%loop4807148127%_
                                           (lambda (_%hd4806948131%_
                                                    _%mod4807548134%_)
                                             (if (gx#stx-pair?
                                                  _%hd4806948131%_)
                                                 (let ((_%e4807248136%_
                                                        (gx#syntax-e
                                                         _%hd4806948131%_)))
                                                   (let ((_%lp-tl4807448143%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4807248136%_)))
                                                         (_%lp-hd4807348140%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4807248136%_))))
                                                     (_%loop4807148127%_
                                                      _%lp-tl4807448143%_
                                                      (cons _%lp-hd4807348140%_
                                                            _%mod4807548134%_))))
                                                 (let ((_%mod4807648146%_
                                                        (reverse _%mod4807548134%_)))
                                                   (_%__kont4931749318%_
                                                    _%mod4807648146%_
                                                    _%hd4806648115%_))))))
                                   (_%loop4807148127%_
                                    _%target4806848121%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4931449315%_)
                             (let ((_%e4806548111%_
                                    (gx#syntax-e _%__stx4931449315%_)))
                               (let ((_%tl4806748118%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4806548111%_)))
                                     (_%hd4806648115%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4806548111%_))))
                                 (if (gx#stx-pair/null? _%tl4806748118%_)
                                     (let ((_%__splice4931949320%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4806748118%_
                                             '0)))
                                       (let ((_%tl4807048124%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4931949320%_
                                                 '1)))
                                             (_%target4806848121%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4931949320%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4807048124%_)
                                             (_%__match4933749338%_
                                              _%e4806548111%_
                                              _%hd4806648115%_
                                              _%tl4806748118%_
                                              _%__splice4931949320%_
                                              _%target4806848121%_
                                              _%tl4807048124%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4806048104%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4806048104%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4806048104%_)))))))))
         (let* ((_%g4793947963%_
                 (lambda (_%g4794047959%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4794047959%_)))
                (_%g4793848052%_
                 (lambda (_%g4794047967%_)
                   (if (gx#stx-pair? _%g4794047967%_)
                       (let ((_%e4794347970%_ (gx#syntax-e _%g4794047967%_)))
                         (let ((_%hd4794447974%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4794347970%_)))
                               (_%tl4794547977%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4794347970%_))))
                           (if (gx#stx-pair? _%tl4794547977%_)
                               (let ((_%e4794647980%_
                                      (gx#syntax-e _%tl4794547977%_)))
                                 (let ((_%hd4794747984%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4794647980%_)))
                                       (_%tl4794847987%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4794647980%_))))
                                   (if (gx#stx-pair/null? _%tl4794847987%_)
                                       (let ((_g49416_
                                              (gx#syntax-split-splice
                                               _%tl4794847987%_
                                               '0)))
                                         (begin
                                           (let ((_g49417_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49416_)
                                                        (##values-length
                                                         _g49416_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49417_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49417_)))
                                           (let ((_%target4794947990%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49416_ 0)))
                                                 (_%tl4795147993%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49416_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4795147993%_)
                                                 (letrec ((_%loop4795247996%_
                                                           (lambda (_%hd4795048000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4795648003%_)
                     (if (gx#stx-pair? _%hd4795048000%_)
                         (let ((_%e4795348005%_
                                (gx#syntax-e _%hd4795048000%_)))
                           (let ((_%lp-hd4795448009%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4795348005%_)))
                                 (_%lp-tl4795548012%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4795348005%_))))
                             (_%loop4795247996%_
                              _%lp-tl4795548012%_
                              (cons _%lp-hd4795448009%_ _%mod4795648003%_))))
                         (let ((_%mod4795748015%_ (reverse _%mod4795648003%_)))
                           ((lambda (_%g4794148018%_ _%g4794248020%_)
                              (cons 'begin:
                                    (_%flatten47935%_
                                     (map (lambda (_%g4803848040%_)
                                            (_%expand-path47937%_
                                             _%g4794248020%_
                                             _%g4803848040%_))
                                          (foldr (lambda (_%g4804348046%_
                                                          _%g4804448049%_)
                                                   (cons _%g4804348046%_
                                                         _%g4804448049%_))
                                                 '()
                                                 _%g4794148018%_)))))
                            _%mod4795748015%_
                            _%hd4794747984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4795247996%_
                                                    _%target4794947990%_
                                                    '()))
                                                 (_%g4793947963%_
                                                  _%g4794047967%_)))))
                                       (_%g4793947963%_ _%g4794047967%_))))
                               (_%g4793947963%_ _%g4794047967%_))))
                       (_%g4793947963%_ _%g4794047967%_)))))
           (_%g4793848052%_ _%stx47932%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx48201%_)
       (let* ((_%g4820448228%_
               (lambda (_%g4820548224%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4820548224%_)))
              (_%g4820348354%_
               (lambda (_%g4820548232%_)
                 (if (gx#stx-pair? _%g4820548232%_)
                     (let ((_%e4820848235%_ (gx#syntax-e _%g4820548232%_)))
                       (let ((_%hd4820948239%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4820848235%_)))
                             (_%tl4821048242%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4820848235%_))))
                         (if (gx#stx-pair? _%tl4821048242%_)
                             (let ((_%e4821148245%_
                                    (gx#syntax-e _%tl4821048242%_)))
                               (let ((_%hd4821248249%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4821148245%_)))
                                     (_%tl4821348252%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4821148245%_))))
                                 (if (gx#stx-pair/null? _%tl4821348252%_)
                                     (let ((_g49418_
                                            (gx#syntax-split-splice
                                             _%tl4821348252%_
                                             '0)))
                                       (begin
                                         (let ((_g49419_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49418_)
                                                      (##values-length
                                                       _g49418_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49419_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49419_)))
                                         (let ((_%target4821448255%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49418_ 0)))
                                               (_%tl4821648258%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49418_ 1))))
                                           (if (gx#stx-null? _%tl4821648258%_)
                                               (letrec ((_%loop4821748261%_
                                                         (lambda (_%hd4821548265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4822148268%_)
                   (if (gx#stx-pair? _%hd4821548265%_)
                       (let ((_%e4821848270%_ (gx#syntax-e _%hd4821548265%_)))
                         (let ((_%lp-hd4821948274%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4821848270%_)))
                               (_%lp-tl4822048277%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4821848270%_))))
                           (_%loop4821748261%_
                            _%lp-tl4822048277%_
                            (cons _%lp-hd4821948274%_ _%id4822148268%_))))
                       (let ((_%id4822248280%_ (reverse _%id4822148268%_)))
                         ((lambda (_%g4820648283%_ _%g4820748285%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4830248305%_
                                                 _%g4830348308%_)
                                          (cons _%g4830248305%_
                                                _%g4830348308%_))
                                        '()
                                        _%g4820648283%_))
                                (let* ((_%keys48319%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4831048313%_
                                                         _%g4831148316%_)
                                                  (cons _%g4831048313%_
                                                        _%g4831148316%_))
                                                '()
                                                _%g4820648283%_)))
                                       (_%keytab48330%_
                                        (let ((_%ht48322%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4832448326%_)
                                             (hash-put!
                                              _%ht48322%_
                                              _%g4832448326%_
                                              '#t))
                                           _%keys48319%_)
                                          _%ht48322%_))
                                       (_%exports48333%_
                                        (gx#core-expand-export-source
                                         _%g4820748285%_))
                                       (_%fold-e48349%_
                                        (letrec ((_%fold-e48336%_
                                                  (lambda (_%out48339%_
                                                           _%r48341%_)
                                                    (if (gx#module-export?
                                                         _%out48339%_)
                                                        (if (hash-get
                                                             _%keytab48330%_
                                                             (gx#module-export-name
                                                              _%out48339%_))
                                                            _%r48341%_
                                                            (cons _%out48339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r48341%_))
                (if (gx#export-set? _%out48339%_)
                    (foldl _%fold-e48336%_
                           _%r48341%_
                           (gx#export-set-exports _%out48339%_))
                    _%r48341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48336%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e48349%_
                                               '()
                                               _%exports48333%_)))
                                (_%g4820448228%_ _%g4820548232%_)))
                          _%id4822248280%_
                          _%hd4821248249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4821748261%_
                                                  _%target4821448255%_
                                                  '()))
                                               (_%g4820448228%_
                                                _%g4820548232%_)))))
                                     (_%g4820448228%_ _%g4820548232%_))))
                             (_%g4820448228%_ _%g4820548232%_))))
                     (_%g4820448228%_ _%g4820548232%_)))))
         (_%g4820348354%_ _%stx48201%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx48359%_)
       (let* ((_%g4836248386%_
               (lambda (_%g4836348382%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4836348382%_)))
              (_%g4836148516%_
               (lambda (_%g4836348390%_)
                 (if (gx#stx-pair? _%g4836348390%_)
                     (let ((_%e4836648393%_ (gx#syntax-e _%g4836348390%_)))
                       (let ((_%hd4836748397%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4836648393%_)))
                             (_%tl4836848400%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4836648393%_))))
                         (if (gx#stx-pair? _%tl4836848400%_)
                             (let ((_%e4836948403%_
                                    (gx#syntax-e _%tl4836848400%_)))
                               (let ((_%hd4837048407%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4836948403%_)))
                                     (_%tl4837148410%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4836948403%_))))
                                 (if (gx#stx-pair/null? _%tl4837148410%_)
                                     (let ((_g49420_
                                            (gx#syntax-split-splice
                                             _%tl4837148410%_
                                             '0)))
                                       (begin
                                         (let ((_g49421_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49420_)
                                                      (##values-length
                                                       _g49420_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49421_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49421_)))
                                         (let ((_%target4837248413%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49420_ 0)))
                                               (_%tl4837448416%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49420_ 1))))
                                           (if (gx#stx-null? _%tl4837448416%_)
                                               (letrec ((_%loop4837548419%_
                                                         (lambda (_%hd4837348423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4837948426%_)
                   (if (gx#stx-pair? _%hd4837348423%_)
                       (let ((_%e4837648428%_ (gx#syntax-e _%hd4837348423%_)))
                         (let ((_%lp-hd4837748432%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4837648428%_)))
                               (_%lp-tl4837848435%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4837648428%_))))
                           (_%loop4837548419%_
                            _%lp-tl4837848435%_
                            (cons _%lp-hd4837748432%_
                                  _%filter-out4837948426%_))))
                       (let ((_%filter-out4838048438%_
                              (reverse _%filter-out4837948426%_)))
                         ((lambda (_%g4836448441%_ _%g4836548443%_)
                            (let ((_%filtered48461%_ (make-hash-table)))
                              (letrec ((_%fold-out48464%_
                                        (lambda (_%out48506%_ _%r48508%_)
                                          (if (gx#module-export? _%out48506%_)
                                              (cons _%out48506%_ _%r48508%_)
                                              (if (gx#export-set? _%out48506%_)
                                                  (foldl _%fold-out48464%_
                                                         _%r48508%_
                                                         (gx#export-set-exports
                                                          _%out48506%_))
                                                  _%r48508%_)))))
                                (for-each
                                 (lambda (_%src48467%_)
                                   (let* ((_%exports48473%_
                                           (if (gx#identifier? _%src48467%_)
                                               (let ((_%mod48470%_
                                                      (gx#syntax-local-value
                                                       _%src48467%_)))
                                                 (if (gx#module-context?
                                                      _%mod48470%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48467%_))
                                                 (gx#module-context-export
                                                  _%mod48470%_))
                                               (gx#core-expand-export-source
                                                _%src48467%_)))
                                          (_%exports48476%_
                                           (foldl _%fold-out48464%_
                                                  '()
                                                  _%exports48473%_)))
                                     (for-each
                                      (lambda (_%out48481%_)
                                        (hash-put!
                                         _%filtered48461%_
                                         (gx#module-export-name _%out48481%_)
                                         '#t))
                                      _%exports48476%_)))
                                 (foldr (lambda (_%g4848348486%_
                                                 _%g4848448489%_)
                                          (cons _%g4848348486%_
                                                _%g4848448489%_))
                                        '()
                                        _%g4836448441%_))
                                (let* ((_%exports48492%_
                                        (gx#core-expand-export-source
                                         _%g4836548443%_))
                                       (_%exports48495%_
                                        (foldl _%fold-out48464%_
                                               '()
                                               _%exports48492%_))
                                       (_%exports48501%_
                                        (filter (lambda (_%out48498%_)
                                                  (not (hash-get
                                                        _%filtered48461%_
                                                        (gx#module-export-name
                                                         _%out48498%_))))
                                                _%exports48495%_)))
                                  (cons 'begin: _%exports48501%_)))))
                          _%filter-out4838048438%_
                          _%hd4837048407%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4837548419%_
                                                  _%target4837248413%_
                                                  '()))
                                               (_%g4836248386%_
                                                _%g4836348390%_)))))
                                     (_%g4836248386%_ _%g4836348390%_))))
                             (_%g4836248386%_ _%g4836348390%_))))
                     (_%g4836248386%_ _%g4836348390%_)))))
         (_%g4836148516%_ _%stx48359%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48521%_ _%rename48523%_)
      (gx#make-module-export
       (gx#module-export-context _%out48521%_)
       (gx#module-export-key _%out48521%_)
       (gx#module-export-phi _%out48521%_)
       _%rename48523%_
       (gx#module-export-weak? _%out48521%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48525%_)
       (let* ((_%g4852848561%_
               (lambda (_%g4852948557%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4852948557%_)))
              (_%g4852748752%_
               (lambda (_%g4852948565%_)
                 (if (gx#stx-pair? _%g4852948565%_)
                     (let ((_%e4853348568%_ (gx#syntax-e _%g4852948565%_)))
                       (let ((_%hd4853448572%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4853348568%_)))
                             (_%tl4853548575%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4853348568%_))))
                         (if (gx#stx-pair? _%tl4853548575%_)
                             (let ((_%e4853648578%_
                                    (gx#syntax-e _%tl4853548575%_)))
                               (let ((_%hd4853748582%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4853648578%_)))
                                     (_%tl4853848585%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4853648578%_))))
                                 (if (gx#stx-pair/null? _%tl4853848585%_)
                                     (let ((_g49422_
                                            (gx#syntax-split-splice
                                             _%tl4853848585%_
                                             '0)))
                                       (begin
                                         (let ((_g49423_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49422_)
                                                      (##values-length
                                                       _g49422_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49423_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49423_)))
                                         (let ((_%target4853948588%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49422_ 0)))
                                               (_%tl4854148591%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49422_ 1))))
                                           (if (gx#stx-null? _%tl4854148591%_)
                                               (letrec ((_%loop4854248594%_
                                                         (lambda (_%hd4854048598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4854648601%_
                          _%id4854748602%_)
                   (if (gx#stx-pair? _%hd4854048598%_)
                       (let ((_%e4854348604%_ (gx#syntax-e _%hd4854048598%_)))
                         (let ((_%lp-hd4854448608%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4854348604%_)))
                               (_%lp-tl4854548611%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4854348604%_))))
                           (if (gx#stx-pair? _%lp-hd4854448608%_)
                               (let ((_%e4855048614%_
                                      (gx#syntax-e _%lp-hd4854448608%_)))
                                 (let ((_%hd4855148618%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4855048614%_)))
                                       (_%tl4855248621%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4855048614%_))))
                                   (if (gx#stx-pair? _%tl4855248621%_)
                                       (let ((_%e4855348624%_
                                              (gx#syntax-e _%tl4855248621%_)))
                                         (let ((_%hd4855448628%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4855348624%_)))
                                               (_%tl4855548631%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4855348624%_))))
                                           (if (gx#stx-null? _%tl4855548631%_)
                                               (_%loop4854248594%_
                                                _%lp-tl4854548611%_
                                                (cons _%hd4855448628%_
                                                      _%new-id4854648601%_)
                                                (cons _%hd4855148618%_
                                                      _%id4854748602%_))
                                               (_%g4852848561%_
                                                _%g4852948565%_))))
                                       (_%g4852848561%_ _%g4852948565%_))))
                               (_%g4852848561%_ _%g4852948565%_))))
                       (let ((_%new-id4854848634%_
                              (reverse _%new-id4854648601%_))
                             (_%id4854948636%_ (reverse _%id4854748602%_)))
                         ((lambda (_%g4853048638%_
                                   _%g4853148640%_
                                   _%g4853248641%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4865948662%_
                                                      _%g4866048665%_)
                                               (cons _%g4865948662%_
                                                     _%g4866048665%_))
                                             '()
                                             _%g4853148640%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4866748670%_
                                                      _%g4866848673%_)
                                               (cons _%g4866748670%_
                                                     _%g4866848673%_))
                                             '()
                                             _%g4853048638%_)))
                                (let* ((_%keytab48676%_ (make-hash-table))
                                       (_%found48679%_ (make-hash-table))
                                       (_%_48702%_
                                        (for-each
                                         (lambda (_%id48682%_ _%new-id48684%_)
                                           (hash-put!
                                            _%keytab48676%_
                                            (gx#core-identifier-key
                                             _%id48682%_)
                                            (gx#core-identifier-key
                                             _%new-id48684%_)))
                                         (foldr (lambda (_%g4868548688%_
                                                         _%g4868648691%_)
                                                  (cons _%g4868548688%_
                                                        _%g4868648691%_))
                                                '()
                                                _%g4853148640%_)
                                         (foldr (lambda (_%g4869348696%_
                                                         _%g4869448699%_)
                                                  (cons _%g4869348696%_
                                                        _%g4869448699%_))
                                                '()
                                                _%g4853048638%_)))
                                       (_%exports48705%_
                                        (gx#core-expand-export-source
                                         _%g4853248641%_))
                                       (_%fold-e48733%_
                                        (letrec ((_%fold-e48708%_
                                                  (lambda (_%out48711%_
                                                           _%r48713%_)
                                                    (if (gx#module-export?
                                                         _%out48711%_)
                                                        (let* ((_%name48717%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48711%_))
                       (_%$e48720%_ (hash-get _%keytab48676%_ _%name48717%_)))
                  (if _%$e48720%_
                      ((lambda (_%rename48724%_)
                         (hash-put! _%found48679%_ _%name48717%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48711%_
                                _%rename48724%_)
                               _%r48713%_))
                       _%$e48720%_)
                      (cons _%out48711%_ _%r48713%_)))
                (if (gx#export-set? _%out48711%_)
                    (foldl _%fold-e48708%_
                           _%r48713%_
                           (gx#export-set-exports _%out48711%_))
                    (cons _%out48711%_ _%r48713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48708%_))
                                       (_%new-exports48736%_
                                        (foldl _%fold-e48733%_
                                               '()
                                               _%exports48705%_)))
                                  (for-each
                                   (lambda (_%id48741%_)
                                     (if (hash-get
                                          _%found48679%_
                                          (gx#core-identifier-key _%id48741%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48525%_
                                          _%id48741%_)))
                                   (foldr (lambda (_%g4874348746%_
                                                   _%g4874448749%_)
                                            (cons _%g4874348746%_
                                                  _%g4874448749%_))
                                          '()
                                          _%g4853148640%_))
                                  (cons 'begin: _%new-exports48736%_))
                                (_%g4852848561%_ _%g4852948565%_)))
                          _%new-id4854848634%_
                          _%id4854948636%_
                          _%hd4853748582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4854248594%_
                                                  _%target4853948588%_
                                                  '()
                                                  '()))
                                               (_%g4852848561%_
                                                _%g4852948565%_)))))
                                     (_%g4852848561%_ _%g4852948565%_))))
                             (_%g4852848561%_ _%g4852948565%_))))
                     (_%g4852848561%_ _%g4852948565%_)))))
         (_%g4852748752%_ _%stx48525%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48757%_)
       (let* ((_%g4876048778%_
               (lambda (_%g4876148774%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4876148774%_)))
              (_%g4875948863%_
               (lambda (_%g4876148782%_)
                 (if (gx#stx-pair? _%g4876148782%_)
                     (let ((_%e4876448785%_ (gx#syntax-e _%g4876148782%_)))
                       (let ((_%hd4876548789%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4876448785%_)))
                             (_%tl4876648792%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4876448785%_))))
                         (if (gx#stx-pair? _%tl4876648792%_)
                             (let ((_%e4876748795%_
                                    (gx#syntax-e _%tl4876648792%_)))
                               (let ((_%hd4876848799%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4876748795%_)))
                                     (_%tl4876948802%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4876748795%_))))
                                 (if (gx#stx-pair? _%tl4876948802%_)
                                     (let ((_%e4877048805%_
                                            (gx#syntax-e _%tl4876948802%_)))
                                       (let ((_%hd4877148809%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4877048805%_)))
                                             (_%tl4877248812%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4877048805%_))))
                                         (if (gx#stx-null? _%tl4877248812%_)
                                             ((lambda (_%g4876248815%_
                                                       _%g4876348817%_)
                                                (if (gx#identifier?
                                                     _%g4876248815%_)
                                                    (let* ((_%pre48833%_
                                                            (gx#stx-e
                                                             _%g4876248815%_))
                                                           (_%exports48836%_
                                                            (gx#core-expand-export-source
                                                             _%g4876348817%_))
                                                           (_%rename-e48842%_
                                                            (lambda (_%name48839%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48839%_
                                                               _%pre48833%_)))
                                                           (_%fold-e48858%_
                                                            (letrec ((_%fold-e48845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48848%_ _%r48850%_)
                                (if (gx#module-export? _%out48848%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48848%_
                                           (_%rename-e48842%_
                                            (gx#module-export-name
                                             _%out48848%_)))
                                          _%r48850%_)
                                    (if (gx#export-set? _%out48848%_)
                                        (foldl _%fold-e48845%_
                                               _%r48850%_
                                               (gx#export-set-exports
                                                _%out48848%_))
                                        (cons _%out48848%_ _%r48850%_))))))
                      _%fold-e48845%_)))
              (cons 'begin: (foldl _%fold-e48858%_ '() _%exports48836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4876048778%_
                                                     _%g4876148782%_)))
                                              _%hd4877148809%_
                                              _%hd4876848799%_)
                                             (_%g4876048778%_
                                              _%g4876148782%_))))
                                     (_%g4876048778%_ _%g4876148782%_))))
                             (_%g4876048778%_ _%g4876148782%_))))
                     (_%g4876048778%_ _%g4876148782%_)))))
         (_%g4875948863%_ _%stx48757%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48867%_)
       (letrec ((_%identifiers48870%_
                 (lambda (_%id49098%_ _%unchecked?49100%_)
                   (let ((_%info49102%_
                          (gx#syntax-local-value _%id49098%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info49102%_))
                         (cons _%id49098%_
                               (cons (let ((__obj49399 _%info49102%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49399
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49399
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49399
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49400
                                                         _%info49102%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49400
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49400
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49400
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?49100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49401 _%info49102%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49401
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49401
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49401
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49402 _%info49102%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49402
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49402
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49402
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49403 _%info49102%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49403
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49403
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49403
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49404 _%info49102%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49404
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49404
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49404 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor49105%_
                                                   (let ((__obj49405
                                                          _%info49102%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49405
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49405
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49405
                                                          'constructor)))))
                                              (if _%ctor49105%_
                                                  (cons _%ctor49105%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48867%_
                          _%id49098%_))))))
         (let* ((_%__stx4934049341%_ _%stx48867%_)
                (_%g4887448915%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4934049341%_))))
           (let ((_%__kont4934349344%_
                  (lambda (_%g4887649059%_ _%g4887749061%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4908049082%_)
                              (_%identifiers48870%_
                               _%g4908049082%_
                               (gx#stx-e _%g4887749061%_)))
                            (foldr (lambda (_%g4908549088%_ _%g4908649091%_)
                                     (cons _%g4908549088%_ _%g4908649091%_))
                                   '()
                                   _%g4887649059%_))))))
                 (_%__kont4934749348%_
                  (lambda (_%g4889748960%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4897648978%_)
                              (_%identifiers48870%_ _%g4897648978%_ '#f))
                            (foldr (lambda (_%g4898148984%_ _%g4898248987%_)
                                     (cons _%g4898148984%_ _%g4898248987%_))
                                   '()
                                   _%g4889748960%_)))))))
             (let* ((_%__match4939749398%_
                     (lambda (_%e4889848922%_
                              _%hd4889948926%_
                              _%tl4890048929%_
                              _%__splice4934949350%_
                              _%target4890148932%_
                              _%tl4890348935%_)
                       (letrec ((_%loop4890448938%_
                                 (lambda (_%hd4890248942%_ _%id4890848945%_)
                                   (if (gx#stx-pair? _%hd4890248942%_)
                                       (let ((_%e4890548947%_
                                              (gx#syntax-e _%hd4890248942%_)))
                                         (let ((_%lp-tl4890748954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4890548947%_)))
                                               (_%lp-hd4890648951%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4890548947%_))))
                                           (_%loop4890448938%_
                                            _%lp-tl4890748954%_
                                            (cons _%lp-hd4890648951%_
                                                  _%id4890848945%_))))
                                       (let ((_%id4890948957%_
                                              (reverse _%id4890848945%_)))
                                         (_%__kont4934749348%_
                                          _%id4890948957%_))))))
                         (_%loop4890448938%_ _%target4890148932%_ '()))))
                    (_%__match4938349384%_
                     (lambda (_%e4887848997%_
                              _%hd4887949001%_
                              _%tl4888049004%_
                              _%e4888149007%_
                              _%hd4888249011%_
                              _%tl4888349014%_
                              _%e4888449017%_
                              _%e4888549021%_
                              _%hd4888649025%_
                              _%tl4888749028%_
                              _%__splice4934549346%_
                              _%target4888849031%_
                              _%tl4889049034%_)
                       (letrec ((_%loop4889149037%_
                                 (lambda (_%hd4888949041%_ _%id4889549044%_)
                                   (if (gx#stx-pair? _%hd4888949041%_)
                                       (let ((_%e4889249046%_
                                              (gx#syntax-e _%hd4888949041%_)))
                                         (let ((_%lp-tl4889449053%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4889249046%_)))
                                               (_%lp-hd4889349050%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4889249046%_))))
                                           (_%loop4889149037%_
                                            _%lp-tl4889449053%_
                                            (cons _%lp-hd4889349050%_
                                                  _%id4889549044%_))))
                                       (let ((_%id4889649056%_
                                              (reverse _%id4889549044%_)))
                                         (_%__kont4934349344%_
                                          _%id4889649056%_
                                          _%hd4888649025%_))))))
                         (_%loop4889149037%_ _%target4888849031%_ '())))))
               (if (gx#stx-pair? _%__stx4934049341%_)
                   (let ((_%e4887848997%_ (gx#syntax-e _%__stx4934049341%_)))
                     (let ((_%tl4888049004%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4887848997%_)))
                           (_%hd4887949001%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4887848997%_))))
                       (if (gx#stx-pair? _%tl4888049004%_)
                           (let ((_%e4888149007%_
                                  (gx#syntax-e _%tl4888049004%_)))
                             (let ((_%tl4888349014%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4888149007%_)))
                                   (_%hd4888249011%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4888149007%_))))
                               (if (gx#stx-datum? _%hd4888249011%_)
                                   (let ((_%e4888449017%_
                                          (gx#stx-e _%hd4888249011%_)))
                                     (if (equal? _%e4888449017%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4888349014%_)
                                             (let ((_%e4888549021%_
                                                    (gx#syntax-e
                                                     _%tl4888349014%_)))
                                               (let ((_%tl4888749028%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4888549021%_)))
                                                     (_%hd4888649025%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4888549021%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4888749028%_)
                                                     (let ((_%__splice4934549346%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4888749028%_
                                                             '0)))
                                                       (let ((_%tl4889049034%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4934549346%_ '1)))
                     (_%target4888849031%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4934549346%_ '0))))
                 (if (gx#stx-null? _%tl4889049034%_)
                     (_%__match4938349384%_
                      _%e4887848997%_
                      _%hd4887949001%_
                      _%tl4888049004%_
                      _%e4888149007%_
                      _%hd4888249011%_
                      _%tl4888349014%_
                      _%e4888449017%_
                      _%e4888549021%_
                      _%hd4888649025%_
                      _%tl4888749028%_
                      _%__splice4934549346%_
                      _%target4888849031%_
                      _%tl4889049034%_)
                     (if (gx#stx-pair/null? _%tl4888049004%_)
                         (let ((_%__splice4934949350%_
                                (gx#syntax-split-splice->vector
                                 _%tl4888049004%_
                                 '0)))
                           (let ((_%tl4890348935%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4934949350%_ '1)))
                                 (_%target4890148932%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4934949350%_ '0))))
                             (if (gx#stx-null? _%tl4890348935%_)
                                 (_%__match4939749398%_
                                  _%e4887848997%_
                                  _%hd4887949001%_
                                  _%tl4888049004%_
                                  _%__splice4934949350%_
                                  _%target4890148932%_
                                  _%tl4890348935%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4887448915%_)))))
                         (let () (declare (not safe)) (_%g4887448915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4888049004%_)
                                                         (let ((_%__splice4934949350%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4888049004%_
                         '0)))
                   (let ((_%tl4890348935%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4934949350%_ '1)))
                         (_%target4890148932%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4934949350%_ '0))))
                     (if (gx#stx-null? _%tl4890348935%_)
                         (_%__match4939749398%_
                          _%e4887848997%_
                          _%hd4887949001%_
                          _%tl4888049004%_
                          _%__splice4934949350%_
                          _%target4890148932%_
                          _%tl4890348935%_)
                         (let () (declare (not safe)) (_%g4887448915%_)))))
                 (let () (declare (not safe)) (_%g4887448915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4888049004%_)
                                                 (let ((_%__splice4934949350%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4888049004%_
                                                         '0)))
                                                   (let ((_%tl4890348935%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4934949350%_
                                                             '1)))
                                                         (_%target4890148932%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4934949350%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4890348935%_)
                                                         (_%__match4939749398%_
                                                          _%e4887848997%_
                                                          _%hd4887949001%_
                                                          _%tl4888049004%_
                                                          _%__splice4934949350%_
                                                          _%target4890148932%_
                                                          _%tl4890348935%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4887448915%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4887448915%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4888049004%_)
                                             (let ((_%__splice4934949350%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4888049004%_
                                                     '0)))
                                               (let ((_%tl4890348935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4934949350%_
                                                         '1)))
                                                     (_%target4890148932%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4934949350%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4890348935%_)
                                                     (_%__match4939749398%_
                                                      _%e4887848997%_
                                                      _%hd4887949001%_
                                                      _%tl4888049004%_
                                                      _%__splice4934949350%_
                                                      _%target4890148932%_
                                                      _%tl4890348935%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4887448915%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4887448915%_)))))
                                   (if (gx#stx-pair/null? _%tl4888049004%_)
                                       (let ((_%__splice4934949350%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4888049004%_
                                               '0)))
                                         (let ((_%tl4890348935%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4934949350%_
                                                   '1)))
                                               (_%target4890148932%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4934949350%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4890348935%_)
                                               (_%__match4939749398%_
                                                _%e4887848997%_
                                                _%hd4887949001%_
                                                _%tl4888049004%_
                                                _%__splice4934949350%_
                                                _%target4890148932%_
                                                _%tl4890348935%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4887448915%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4887448915%_))))))
                           (if (gx#stx-pair/null? _%tl4888049004%_)
                               (let ((_%__splice4934949350%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4888049004%_
                                       '0)))
                                 (let ((_%tl4890348935%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4934949350%_
                                           '1)))
                                       (_%target4890148932%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4934949350%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4890348935%_)
                                       (_%__match4939749398%_
                                        _%e4887848997%_
                                        _%hd4887949001%_
                                        _%tl4888049004%_
                                        _%__splice4934949350%_
                                        _%target4890148932%_
                                        _%tl4890348935%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4887448915%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4887448915%_))))))
                   (let () (declare (not safe)) (_%g4887448915%_)))))))))))
