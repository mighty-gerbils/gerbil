(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41738%_)
      (let* ((_%__stx4439244393%_ _%$stx41738%_)
             (_%g4174341762%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4439244393%_))))
        (let ((_%__kont4439544396%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4439744398%_
               (lambda (_%L41789%_ _%L41791%_ _%L41792%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41791%_
                                   (cons (cons _%L41792%_ _%L41789%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4439244393%_)
              (let ((_%e4174541814%_ (gx#syntax-e _%__stx4439244393%_)))
                (let ((_%tl4174741821%_
                       (let () (declare (not safe)) (##cdr _%e4174541814%_)))
                      (_%hd4174641818%_
                       (let () (declare (not safe)) (##car _%e4174541814%_))))
                  (if (gx#stx-null? _%tl4174741821%_)
                      (_%__kont4439544396%_)
                      (if (gx#stx-pair? _%tl4174741821%_)
                          (let ((_%e4175441779%_
                                 (gx#syntax-e _%tl4174741821%_)))
                            (let ((_%tl4175641786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4175441779%_)))
                                  (_%hd4175541783%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4175441779%_))))
                              (_%__kont4439744398%_
                               _%tl4175641786%_
                               _%hd4175541783%_
                               _%hd4174641818%_)))
                          (let () (declare (not safe)) (_%g4174341762%_))))))
              (let () (declare (not safe)) (_%g4174341762%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41832%_)
      (let* ((_%__stx4442244423%_ _%$stx41832%_)
             (_%g4183741877%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4442244423%_))))
        (let ((_%__kont4442544426%_
               (lambda (_%L42015%_ _%L42017%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42017%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L42015%_ '()))
                                   '())))))
              (_%__kont4442744428%_
               (lambda (_%L41944%_ _%L41946%_ _%L41947%_ _%L41948%_)
                 (cons _%L41948%_
                       (cons _%L41947%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41946%_
                                               (foldr (lambda (_%g4196941972%_
                                                               _%g4197041975%_)
                                                        (cons _%g4196941972%_
                                                              _%g4197041975%_))
                                                      '()
                                                      _%L41944%_)))
                                   '()))))))
          (let* ((_%__match4447744478%_
                  (lambda (_%e4185441884%_
                           _%hd4185541888%_
                           _%tl4185641891%_
                           _%e4185741894%_
                           _%hd4185841898%_
                           _%tl4185941901%_
                           _%e4186041904%_
                           _%hd4186141908%_
                           _%tl4186241911%_
                           _%__splice4442944430%_
                           _%target4186341914%_
                           _%tl4186541917%_)
                    (letrec ((_%loop4186641920%_
                              (lambda (_%hd4186441924%_ _%body4187041927%_)
                                (if (gx#stx-pair? _%hd4186441924%_)
                                    (let ((_%e4186741930%_
                                           (gx#syntax-e _%hd4186441924%_)))
                                      (let ((_%lp-tl4186941937%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4186741930%_)))
                                            (_%lp-hd4186841934%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4186741930%_))))
                                        (_%loop4186641920%_
                                         _%lp-tl4186941937%_
                                         (cons _%lp-hd4186841934%_
                                               _%body4187041927%_))))
                                    (let ((_%body4187141940%_
                                           (reverse _%body4187041927%_)))
                                      (let ((_%L41944%_ _%body4187141940%_)
                                            (_%L41946%_ _%tl4186241911%_)
                                            (_%L41947%_ _%hd4186141908%_)
                                            (_%L41948%_ _%hd4185541888%_))
                                        (if (gx#identifier? _%L41947%_)
                                            (_%__kont4442744428%_
                                             _%L41944%_
                                             _%L41946%_
                                             _%L41947%_
                                             _%L41948%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4183741877%_)))))))))
                      (_%loop4186641920%_ _%target4186341914%_ '()))))
                 (_%__match4445144452%_
                  (lambda (_%e4184141985%_
                           _%hd4184241989%_
                           _%tl4184341992%_
                           _%e4184441995%_
                           _%hd4184541999%_
                           _%tl4184642002%_
                           _%e4184742005%_
                           _%hd4184842009%_
                           _%tl4184942012%_)
                    (let ((_%L42015%_ _%hd4184842009%_)
                          (_%L42017%_ _%hd4184541999%_))
                      (if (gx#identifier? _%L42017%_)
                          (_%__kont4442544426%_ _%L42015%_ _%L42017%_)
                          (if (gx#stx-pair? _%hd4184541999%_)
                              (let ((_%e4186041904%_
                                     (gx#syntax-e _%hd4184541999%_)))
                                (let ((_%tl4186241911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4186041904%_)))
                                      (_%hd4186141908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4186041904%_))))
                                  (if (gx#stx-pair/null? _%tl4184642002%_)
                                      (let ((_%__splice4442944430%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4184642002%_
                                              '0)))
                                        (let ((_%tl4186541917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4442944430%_
                                                  '1)))
                                              (_%target4186341914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4442944430%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4186541917%_)
                                              (_%__match4447744478%_
                                               _%e4184141985%_
                                               _%hd4184241989%_
                                               _%tl4184341992%_
                                               _%e4184441995%_
                                               _%hd4184541999%_
                                               _%tl4184642002%_
                                               _%e4186041904%_
                                               _%hd4186141908%_
                                               _%tl4186241911%_
                                               _%__splice4442944430%_
                                               _%target4186341914%_
                                               _%tl4186541917%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4183741877%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4183741877%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4183741877%_))))))))
            (if (gx#stx-pair? _%__stx4442244423%_)
                (let ((_%e4184141985%_ (gx#syntax-e _%__stx4442244423%_)))
                  (let ((_%tl4184341992%_
                         (let () (declare (not safe)) (##cdr _%e4184141985%_)))
                        (_%hd4184241989%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4184141985%_))))
                    (if (gx#stx-pair? _%tl4184341992%_)
                        (let ((_%e4184441995%_ (gx#syntax-e _%tl4184341992%_)))
                          (let ((_%tl4184642002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4184441995%_)))
                                (_%hd4184541999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4184441995%_))))
                            (if (gx#stx-pair? _%tl4184642002%_)
                                (let ((_%e4184742005%_
                                       (gx#syntax-e _%tl4184642002%_)))
                                  (let ((_%tl4184942012%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4184742005%_)))
                                        (_%hd4184842009%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4184742005%_))))
                                    (if (gx#stx-null? _%tl4184942012%_)
                                        (_%__match4445144452%_
                                         _%e4184141985%_
                                         _%hd4184241989%_
                                         _%tl4184341992%_
                                         _%e4184441995%_
                                         _%hd4184541999%_
                                         _%tl4184642002%_
                                         _%e4184742005%_
                                         _%hd4184842009%_
                                         _%tl4184942012%_)
                                        (if (gx#stx-pair? _%hd4184541999%_)
                                            (let ((_%e4186041904%_
                                                   (gx#syntax-e
                                                    _%hd4184541999%_)))
                                              (let ((_%tl4186241911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4186041904%_)))
                                                    (_%hd4186141908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4186041904%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4184642002%_)
                                                    (let ((_%__splice4442944430%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4184642002%_
                                                            '0)))
                                                      (let ((_%tl4186541917%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4442944430%_ '1)))
                    (_%target4186341914%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4442944430%_ '0))))
                (if (gx#stx-null? _%tl4186541917%_)
                    (_%__match4447744478%_
                     _%e4184141985%_
                     _%hd4184241989%_
                     _%tl4184341992%_
                     _%e4184441995%_
                     _%hd4184541999%_
                     _%tl4184642002%_
                     _%e4186041904%_
                     _%hd4186141908%_
                     _%tl4186241911%_
                     _%__splice4442944430%_
                     _%target4186341914%_
                     _%tl4186541917%_)
                    (let () (declare (not safe)) (_%g4183741877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4183741877%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4183741877%_))))))
                                (if (gx#stx-pair? _%hd4184541999%_)
                                    (let ((_%e4186041904%_
                                           (gx#syntax-e _%hd4184541999%_)))
                                      (let ((_%tl4186241911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4186041904%_)))
                                            (_%hd4186141908%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4186041904%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4184642002%_)
                                            (let ((_%__splice4442944430%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4184642002%_
                                                    '0)))
                                              (let ((_%tl4186541917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4442944430%_
                                                        '1)))
                                                    (_%target4186341914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4442944430%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4186541917%_)
                                                    (_%__match4447744478%_
                                                     _%e4184141985%_
                                                     _%hd4184241989%_
                                                     _%tl4184341992%_
                                                     _%e4184441995%_
                                                     _%hd4184541999%_
                                                     _%tl4184642002%_
                                                     _%e4186041904%_
                                                     _%hd4186141908%_
                                                     _%tl4186241911%_
                                                     _%__splice4442944430%_
                                                     _%target4186341914%_
                                                     _%tl4186541917%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4183741877%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4183741877%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4183741877%_))))))
                        (let () (declare (not safe)) (_%g4183741877%_)))))
                (let () (declare (not safe)) (_%g4183741877%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42037%_)
      (let* ((_%__stx4448044481%_ _%$stx42037%_)
             (_%g4204242082%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4448044481%_))))
        (let ((_%__kont4448344484%_
               (lambda (_%L42220%_ _%L42222%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42222%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42220%_ '()))
                                   '())))))
              (_%__kont4448544486%_
               (lambda (_%L42149%_ _%L42151%_ _%L42152%_ _%L42153%_)
                 (cons _%L42153%_
                       (cons _%L42152%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42151%_
                                               (foldr (lambda (_%g4217442177%_
                                                               _%g4217542180%_)
                                                        (cons _%g4217442177%_
                                                              _%g4217542180%_))
                                                      '()
                                                      _%L42149%_)))
                                   '()))))))
          (let* ((_%__match4453544536%_
                  (lambda (_%e4205942089%_
                           _%hd4206042093%_
                           _%tl4206142096%_
                           _%e4206242099%_
                           _%hd4206342103%_
                           _%tl4206442106%_
                           _%e4206542109%_
                           _%hd4206642113%_
                           _%tl4206742116%_
                           _%__splice4448744488%_
                           _%target4206842119%_
                           _%tl4207042122%_)
                    (letrec ((_%loop4207142125%_
                              (lambda (_%hd4206942129%_ _%body4207542132%_)
                                (if (gx#stx-pair? _%hd4206942129%_)
                                    (let ((_%e4207242135%_
                                           (gx#syntax-e _%hd4206942129%_)))
                                      (let ((_%lp-tl4207442142%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4207242135%_)))
                                            (_%lp-hd4207342139%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4207242135%_))))
                                        (_%loop4207142125%_
                                         _%lp-tl4207442142%_
                                         (cons _%lp-hd4207342139%_
                                               _%body4207542132%_))))
                                    (let ((_%body4207642145%_
                                           (reverse _%body4207542132%_)))
                                      (let ((_%L42149%_ _%body4207642145%_)
                                            (_%L42151%_ _%tl4206742116%_)
                                            (_%L42152%_ _%hd4206642113%_)
                                            (_%L42153%_ _%hd4206042093%_))
                                        (if (gx#identifier? _%L42152%_)
                                            (_%__kont4448544486%_
                                             _%L42149%_
                                             _%L42151%_
                                             _%L42152%_
                                             _%L42153%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4204242082%_)))))))))
                      (_%loop4207142125%_ _%target4206842119%_ '()))))
                 (_%__match4450944510%_
                  (lambda (_%e4204642190%_
                           _%hd4204742194%_
                           _%tl4204842197%_
                           _%e4204942200%_
                           _%hd4205042204%_
                           _%tl4205142207%_
                           _%e4205242210%_
                           _%hd4205342214%_
                           _%tl4205442217%_)
                    (let ((_%L42220%_ _%hd4205342214%_)
                          (_%L42222%_ _%hd4205042204%_))
                      (if (gx#identifier? _%L42222%_)
                          (_%__kont4448344484%_ _%L42220%_ _%L42222%_)
                          (if (gx#stx-pair? _%hd4205042204%_)
                              (let ((_%e4206542109%_
                                     (gx#syntax-e _%hd4205042204%_)))
                                (let ((_%tl4206742116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4206542109%_)))
                                      (_%hd4206642113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4206542109%_))))
                                  (if (gx#stx-pair/null? _%tl4205142207%_)
                                      (let ((_%__splice4448744488%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4205142207%_
                                              '0)))
                                        (let ((_%tl4207042122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4448744488%_
                                                  '1)))
                                              (_%target4206842119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4448744488%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4207042122%_)
                                              (_%__match4453544536%_
                                               _%e4204642190%_
                                               _%hd4204742194%_
                                               _%tl4204842197%_
                                               _%e4204942200%_
                                               _%hd4205042204%_
                                               _%tl4205142207%_
                                               _%e4206542109%_
                                               _%hd4206642113%_
                                               _%tl4206742116%_
                                               _%__splice4448744488%_
                                               _%target4206842119%_
                                               _%tl4207042122%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4204242082%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4204242082%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4204242082%_))))))))
            (if (gx#stx-pair? _%__stx4448044481%_)
                (let ((_%e4204642190%_ (gx#syntax-e _%__stx4448044481%_)))
                  (let ((_%tl4204842197%_
                         (let () (declare (not safe)) (##cdr _%e4204642190%_)))
                        (_%hd4204742194%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4204642190%_))))
                    (if (gx#stx-pair? _%tl4204842197%_)
                        (let ((_%e4204942200%_ (gx#syntax-e _%tl4204842197%_)))
                          (let ((_%tl4205142207%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4204942200%_)))
                                (_%hd4205042204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4204942200%_))))
                            (if (gx#stx-pair? _%tl4205142207%_)
                                (let ((_%e4205242210%_
                                       (gx#syntax-e _%tl4205142207%_)))
                                  (let ((_%tl4205442217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4205242210%_)))
                                        (_%hd4205342214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4205242210%_))))
                                    (if (gx#stx-null? _%tl4205442217%_)
                                        (_%__match4450944510%_
                                         _%e4204642190%_
                                         _%hd4204742194%_
                                         _%tl4204842197%_
                                         _%e4204942200%_
                                         _%hd4205042204%_
                                         _%tl4205142207%_
                                         _%e4205242210%_
                                         _%hd4205342214%_
                                         _%tl4205442217%_)
                                        (if (gx#stx-pair? _%hd4205042204%_)
                                            (let ((_%e4206542109%_
                                                   (gx#syntax-e
                                                    _%hd4205042204%_)))
                                              (let ((_%tl4206742116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4206542109%_)))
                                                    (_%hd4206642113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4206542109%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4205142207%_)
                                                    (let ((_%__splice4448744488%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4205142207%_
                                                            '0)))
                                                      (let ((_%tl4207042122%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4448744488%_ '1)))
                    (_%target4206842119%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4448744488%_ '0))))
                (if (gx#stx-null? _%tl4207042122%_)
                    (_%__match4453544536%_
                     _%e4204642190%_
                     _%hd4204742194%_
                     _%tl4204842197%_
                     _%e4204942200%_
                     _%hd4205042204%_
                     _%tl4205142207%_
                     _%e4206542109%_
                     _%hd4206642113%_
                     _%tl4206742116%_
                     _%__splice4448744488%_
                     _%target4206842119%_
                     _%tl4207042122%_)
                    (let () (declare (not safe)) (_%g4204242082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4204242082%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4204242082%_))))))
                                (if (gx#stx-pair? _%hd4205042204%_)
                                    (let ((_%e4206542109%_
                                           (gx#syntax-e _%hd4205042204%_)))
                                      (let ((_%tl4206742116%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4206542109%_)))
                                            (_%hd4206642113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4206542109%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4205142207%_)
                                            (let ((_%__splice4448744488%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4205142207%_
                                                    '0)))
                                              (let ((_%tl4207042122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4448744488%_
                                                        '1)))
                                                    (_%target4206842119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4448744488%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4207042122%_)
                                                    (_%__match4453544536%_
                                                     _%e4204642190%_
                                                     _%hd4204742194%_
                                                     _%tl4204842197%_
                                                     _%e4204942200%_
                                                     _%hd4205042204%_
                                                     _%tl4205142207%_
                                                     _%e4206542109%_
                                                     _%hd4206642113%_
                                                     _%tl4206742116%_
                                                     _%__splice4448744488%_
                                                     _%target4206842119%_
                                                     _%tl4207042122%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4204242082%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4204242082%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4204242082%_))))))
                        (let () (declare (not safe)) (_%g4204242082%_)))))
                (let () (declare (not safe)) (_%g4204242082%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42242%_)
      (let* ((_%__stx4453844539%_ _%$stx42242%_)
             (_%g4224742287%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4453844539%_))))
        (let ((_%__kont4454144542%_
               (lambda (_%L42425%_ _%L42427%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42427%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42425%_ '()))
                                   '())))))
              (_%__kont4454344544%_
               (lambda (_%L42354%_ _%L42356%_ _%L42357%_ _%L42358%_)
                 (cons _%L42358%_
                       (cons _%L42357%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42356%_
                                               (foldr (lambda (_%g4237942382%_
                                                               _%g4238042385%_)
                                                        (cons _%g4237942382%_
                                                              _%g4238042385%_))
                                                      '()
                                                      _%L42354%_)))
                                   '()))))))
          (let* ((_%__match4459344594%_
                  (lambda (_%e4226442294%_
                           _%hd4226542298%_
                           _%tl4226642301%_
                           _%e4226742304%_
                           _%hd4226842308%_
                           _%tl4226942311%_
                           _%e4227042314%_
                           _%hd4227142318%_
                           _%tl4227242321%_
                           _%__splice4454544546%_
                           _%target4227342324%_
                           _%tl4227542327%_)
                    (letrec ((_%loop4227642330%_
                              (lambda (_%hd4227442334%_ _%body4228042337%_)
                                (if (gx#stx-pair? _%hd4227442334%_)
                                    (let ((_%e4227742340%_
                                           (gx#syntax-e _%hd4227442334%_)))
                                      (let ((_%lp-tl4227942347%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4227742340%_)))
                                            (_%lp-hd4227842344%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4227742340%_))))
                                        (_%loop4227642330%_
                                         _%lp-tl4227942347%_
                                         (cons _%lp-hd4227842344%_
                                               _%body4228042337%_))))
                                    (let ((_%body4228142350%_
                                           (reverse _%body4228042337%_)))
                                      (let ((_%L42354%_ _%body4228142350%_)
                                            (_%L42356%_ _%tl4227242321%_)
                                            (_%L42357%_ _%hd4227142318%_)
                                            (_%L42358%_ _%hd4226542298%_))
                                        (if (gx#identifier? _%L42357%_)
                                            (_%__kont4454344544%_
                                             _%L42354%_
                                             _%L42356%_
                                             _%L42357%_
                                             _%L42358%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4224742287%_)))))))))
                      (_%loop4227642330%_ _%target4227342324%_ '()))))
                 (_%__match4456744568%_
                  (lambda (_%e4225142395%_
                           _%hd4225242399%_
                           _%tl4225342402%_
                           _%e4225442405%_
                           _%hd4225542409%_
                           _%tl4225642412%_
                           _%e4225742415%_
                           _%hd4225842419%_
                           _%tl4225942422%_)
                    (let ((_%L42425%_ _%hd4225842419%_)
                          (_%L42427%_ _%hd4225542409%_))
                      (if (gx#identifier? _%L42427%_)
                          (_%__kont4454144542%_ _%L42425%_ _%L42427%_)
                          (if (gx#stx-pair? _%hd4225542409%_)
                              (let ((_%e4227042314%_
                                     (gx#syntax-e _%hd4225542409%_)))
                                (let ((_%tl4227242321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4227042314%_)))
                                      (_%hd4227142318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4227042314%_))))
                                  (if (gx#stx-pair/null? _%tl4225642412%_)
                                      (let ((_%__splice4454544546%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4225642412%_
                                              '0)))
                                        (let ((_%tl4227542327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4454544546%_
                                                  '1)))
                                              (_%target4227342324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4454544546%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4227542327%_)
                                              (_%__match4459344594%_
                                               _%e4225142395%_
                                               _%hd4225242399%_
                                               _%tl4225342402%_
                                               _%e4225442405%_
                                               _%hd4225542409%_
                                               _%tl4225642412%_
                                               _%e4227042314%_
                                               _%hd4227142318%_
                                               _%tl4227242321%_
                                               _%__splice4454544546%_
                                               _%target4227342324%_
                                               _%tl4227542327%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4224742287%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4224742287%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4224742287%_))))))))
            (if (gx#stx-pair? _%__stx4453844539%_)
                (let ((_%e4225142395%_ (gx#syntax-e _%__stx4453844539%_)))
                  (let ((_%tl4225342402%_
                         (let () (declare (not safe)) (##cdr _%e4225142395%_)))
                        (_%hd4225242399%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4225142395%_))))
                    (if (gx#stx-pair? _%tl4225342402%_)
                        (let ((_%e4225442405%_ (gx#syntax-e _%tl4225342402%_)))
                          (let ((_%tl4225642412%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4225442405%_)))
                                (_%hd4225542409%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4225442405%_))))
                            (if (gx#stx-pair? _%tl4225642412%_)
                                (let ((_%e4225742415%_
                                       (gx#syntax-e _%tl4225642412%_)))
                                  (let ((_%tl4225942422%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4225742415%_)))
                                        (_%hd4225842419%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4225742415%_))))
                                    (if (gx#stx-null? _%tl4225942422%_)
                                        (_%__match4456744568%_
                                         _%e4225142395%_
                                         _%hd4225242399%_
                                         _%tl4225342402%_
                                         _%e4225442405%_
                                         _%hd4225542409%_
                                         _%tl4225642412%_
                                         _%e4225742415%_
                                         _%hd4225842419%_
                                         _%tl4225942422%_)
                                        (if (gx#stx-pair? _%hd4225542409%_)
                                            (let ((_%e4227042314%_
                                                   (gx#syntax-e
                                                    _%hd4225542409%_)))
                                              (let ((_%tl4227242321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4227042314%_)))
                                                    (_%hd4227142318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4227042314%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4225642412%_)
                                                    (let ((_%__splice4454544546%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4225642412%_
                                                            '0)))
                                                      (let ((_%tl4227542327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4454544546%_ '1)))
                    (_%target4227342324%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4454544546%_ '0))))
                (if (gx#stx-null? _%tl4227542327%_)
                    (_%__match4459344594%_
                     _%e4225142395%_
                     _%hd4225242399%_
                     _%tl4225342402%_
                     _%e4225442405%_
                     _%hd4225542409%_
                     _%tl4225642412%_
                     _%e4227042314%_
                     _%hd4227142318%_
                     _%tl4227242321%_
                     _%__splice4454544546%_
                     _%target4227342324%_
                     _%tl4227542327%_)
                    (let () (declare (not safe)) (_%g4224742287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4224742287%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4224742287%_))))))
                                (if (gx#stx-pair? _%hd4225542409%_)
                                    (let ((_%e4227042314%_
                                           (gx#syntax-e _%hd4225542409%_)))
                                      (let ((_%tl4227242321%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4227042314%_)))
                                            (_%hd4227142318%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4227042314%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4225642412%_)
                                            (let ((_%__splice4454544546%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4225642412%_
                                                    '0)))
                                              (let ((_%tl4227542327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4454544546%_
                                                        '1)))
                                                    (_%target4227342324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4454544546%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4227542327%_)
                                                    (_%__match4459344594%_
                                                     _%e4225142395%_
                                                     _%hd4225242399%_
                                                     _%tl4225342402%_
                                                     _%e4225442405%_
                                                     _%hd4225542409%_
                                                     _%tl4225642412%_
                                                     _%e4227042314%_
                                                     _%hd4227142318%_
                                                     _%tl4227242321%_
                                                     _%__splice4454544546%_
                                                     _%target4227342324%_
                                                     _%tl4227542327%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4224742287%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4224742287%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4224742287%_))))))
                        (let () (declare (not safe)) (_%g4224742287%_)))))
                (let () (declare (not safe)) (_%g4224742287%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42447%_)
       (let* ((_%g4245042470%_
               (lambda (_%g4245142466%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4245142466%_)))
              (_%g4244942541%_
               (lambda (_%g4245142474%_)
                 (if (gx#stx-pair? _%g4245142474%_)
                     (let ((_%e4245342477%_ (gx#syntax-e _%g4245142474%_)))
                       (let ((_%hd4245442481%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4245342477%_)))
                             (_%tl4245542484%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4245342477%_))))
                         (if (gx#stx-pair/null? _%tl4245542484%_)
                             (let ((_g44688_
                                    (gx#syntax-split-splice
                                     _%tl4245542484%_
                                     '0)))
                               (begin
                                 (let ((_g44689_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44688_)
                                              (##values-length _g44688_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44689_ 2)))
                                       (error "Context expects 2 values"
                                              _g44689_)))
                                 (let ((_%target4245642487%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44688_ 0)))
                                       (_%tl4245842490%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44688_ 1))))
                                   (if (gx#stx-null? _%tl4245842490%_)
                                       (letrec ((_%loop4245942493%_
                                                 (lambda (_%hd4245742497%_
                                                          _%body4246342500%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4245742497%_)
                                                       (let ((_%e4246042503%_
                                                              (gx#syntax-e
                                                               _%hd4245742497%_)))
                                                         (let ((_%lp-hd4246142507%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4246042503%_)))
                       (_%lp-tl4246242510%_
                        (let () (declare (not safe)) (##cdr _%e4246042503%_))))
                   (_%loop4245942493%_
                    _%lp-tl4246242510%_
                    (cons _%lp-hd4246142507%_ _%body4246342500%_))))
               (let ((_%body4246442513%_ (reverse _%body4246342500%_)))
                 ((lambda (_%L42517%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4253242535%_
                                                _%g4253342538%_)
                                         (cons _%g4253242535%_
                                               _%g4253342538%_))
                                       '()
                                       _%L42517%_))))
                  _%body4246442513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4245942493%_
                                          _%target4245642487%_
                                          '()))
                                       (_%g4245042470%_ _%g4245142474%_)))))
                             (_%g4245042470%_ _%g4245142474%_))))
                     (_%g4245042470%_ _%g4245142474%_)))))
         (_%g4244942541%_ _%stx42447%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42546%_)
       (let* ((_%g4254942569%_
               (lambda (_%g4255042565%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4255042565%_)))
              (_%g4254842640%_
               (lambda (_%g4255042573%_)
                 (if (gx#stx-pair? _%g4255042573%_)
                     (let ((_%e4255242576%_ (gx#syntax-e _%g4255042573%_)))
                       (let ((_%hd4255342580%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4255242576%_)))
                             (_%tl4255442583%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4255242576%_))))
                         (if (gx#stx-pair/null? _%tl4255442583%_)
                             (let ((_g44690_
                                    (gx#syntax-split-splice
                                     _%tl4255442583%_
                                     '0)))
                               (begin
                                 (let ((_g44691_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44690_)
                                              (##values-length _g44690_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44691_ 2)))
                                       (error "Context expects 2 values"
                                              _g44691_)))
                                 (let ((_%target4255542586%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44690_ 0)))
                                       (_%tl4255742589%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g44690_ 1))))
                                   (if (gx#stx-null? _%tl4255742589%_)
                                       (letrec ((_%loop4255842592%_
                                                 (lambda (_%hd4255642596%_
                                                          _%body4256242599%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4255642596%_)
                                                       (let ((_%e4255942602%_
                                                              (gx#syntax-e
                                                               _%hd4255642596%_)))
                                                         (let ((_%lp-hd4256042606%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4255942602%_)))
                       (_%lp-tl4256142609%_
                        (let () (declare (not safe)) (##cdr _%e4255942602%_))))
                   (_%loop4255842592%_
                    _%lp-tl4256142609%_
                    (cons _%lp-hd4256042606%_ _%body4256242599%_))))
               (let ((_%body4256342612%_ (reverse _%body4256242599%_)))
                 ((lambda (_%L42616%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4263142634%_
                                                _%g4263242637%_)
                                         (cons _%g4263142634%_
                                               _%g4263242637%_))
                                       '()
                                       _%L42616%_))))
                  _%body4256342612%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4255842592%_
                                          _%target4255542586%_
                                          '()))
                                       (_%g4254942569%_ _%g4255042573%_)))))
                             (_%g4254942569%_ _%g4255042573%_))))
                     (_%g4254942569%_ _%g4255042573%_)))))
         (_%g4254842640%_ _%stx42546%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42645%_)
       (let* ((_%g4264842672%_
               (lambda (_%g4264942668%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4264942668%_)))
              (_%g4264742800%_
               (lambda (_%g4264942676%_)
                 (if (gx#stx-pair? _%g4264942676%_)
                     (let ((_%e4265242679%_ (gx#syntax-e _%g4264942676%_)))
                       (let ((_%hd4265342683%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4265242679%_)))
                             (_%tl4265442686%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4265242679%_))))
                         (if (gx#stx-pair? _%tl4265442686%_)
                             (let ((_%e4265542689%_
                                    (gx#syntax-e _%tl4265442686%_)))
                               (let ((_%hd4265642693%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4265542689%_)))
                                     (_%tl4265742696%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4265542689%_))))
                                 (if (gx#stx-pair/null? _%tl4265742696%_)
                                     (let ((_g44692_
                                            (gx#syntax-split-splice
                                             _%tl4265742696%_
                                             '0)))
                                       (begin
                                         (let ((_g44693_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44692_)
                                                      (##values-length
                                                       _g44692_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44693_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44693_)))
                                         (let ((_%target4265842699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44692_ 0)))
                                               (_%tl4266042702%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44692_ 1))))
                                           (if (gx#stx-null? _%tl4266042702%_)
                                               (letrec ((_%loop4266142705%_
                                                         (lambda (_%hd4265942709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4266542712%_)
                   (if (gx#stx-pair? _%hd4265942709%_)
                       (let ((_%e4266242715%_ (gx#syntax-e _%hd4265942709%_)))
                         (let ((_%lp-hd4266342719%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4266242715%_)))
                               (_%lp-tl4266442722%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4266242715%_))))
                           (_%loop4266142705%_
                            _%lp-tl4266442722%_
                            (cons _%lp-hd4266342719%_ _%id4266542712%_))))
                       (let ((_%id4266642725%_ (reverse _%id4266542712%_)))
                         ((lambda (_%L42729%_ _%L42731%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4274842751%_
                                                 _%g4274942754%_)
                                          (cons _%g4274842751%_
                                                _%g4274942754%_))
                                        '()
                                        _%L42729%_))
                                (let* ((_%keys42765%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4275642759%_
                                                         _%g4275742762%_)
                                                  (cons _%g4275642759%_
                                                        _%g4275742762%_))
                                                '()
                                                _%L42729%_)))
                                       (_%keytab42776%_
                                        (let ((_%ht42768%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4277042772%_)
                                             (hash-put!
                                              _%ht42768%_
                                              _%g4277042772%_
                                              '#t))
                                           _%keys42765%_)
                                          _%ht42768%_))
                                       (_%imports42779%_
                                        (gx#core-expand-import-source
                                         _%L42731%_))
                                       (_%fold-e42795%_
                                        (letrec ((_%fold-e42782%_
                                                  (lambda (_%in42785%_
                                                           _%r42787%_)
                                                    (if (gx#module-import?
                                                         _%in42785%_)
                                                        (if (hash-get
                                                             _%keytab42776%_
                                                             (gx#module-import-name
                                                              _%in42785%_))
                                                            (cons _%in42785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42787%_)
                    _%r42787%_)
                (if (gx#import-set? _%in42785%_)
                    (foldl _%fold-e42782%_
                           _%r42787%_
                           (gx#import-set-imports _%in42785%_))
                    _%r42787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42782%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42795%_
                                               '()
                                               _%imports42779%_)))
                                (_%g4264842672%_ _%g4264942676%_)))
                          _%id4266642725%_
                          _%hd4265642693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4266142705%_
                                                  _%target4265842699%_
                                                  '()))
                                               (_%g4264842672%_
                                                _%g4264942676%_)))))
                                     (_%g4264842672%_ _%g4264942676%_))))
                             (_%g4264842672%_ _%g4264942676%_))))
                     (_%g4264842672%_ _%g4264942676%_)))))
         (_%g4264742800%_ _%stx42645%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42805%_)
       (let* ((_%g4280842832%_
               (lambda (_%g4280942828%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4280942828%_)))
              (_%g4280742960%_
               (lambda (_%g4280942836%_)
                 (if (gx#stx-pair? _%g4280942836%_)
                     (let ((_%e4281242839%_ (gx#syntax-e _%g4280942836%_)))
                       (let ((_%hd4281342843%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4281242839%_)))
                             (_%tl4281442846%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4281242839%_))))
                         (if (gx#stx-pair? _%tl4281442846%_)
                             (let ((_%e4281542849%_
                                    (gx#syntax-e _%tl4281442846%_)))
                               (let ((_%hd4281642853%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4281542849%_)))
                                     (_%tl4281742856%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4281542849%_))))
                                 (if (gx#stx-pair/null? _%tl4281742856%_)
                                     (let ((_g44694_
                                            (gx#syntax-split-splice
                                             _%tl4281742856%_
                                             '0)))
                                       (begin
                                         (let ((_g44695_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44694_)
                                                      (##values-length
                                                       _g44694_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44695_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44695_)))
                                         (let ((_%target4281842859%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44694_ 0)))
                                               (_%tl4282042862%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44694_ 1))))
                                           (if (gx#stx-null? _%tl4282042862%_)
                                               (letrec ((_%loop4282142865%_
                                                         (lambda (_%hd4281942869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4282542872%_)
                   (if (gx#stx-pair? _%hd4281942869%_)
                       (let ((_%e4282242875%_ (gx#syntax-e _%hd4281942869%_)))
                         (let ((_%lp-hd4282342879%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4282242875%_)))
                               (_%lp-tl4282442882%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4282242875%_))))
                           (_%loop4282142865%_
                            _%lp-tl4282442882%_
                            (cons _%lp-hd4282342879%_ _%id4282542872%_))))
                       (let ((_%id4282642885%_ (reverse _%id4282542872%_)))
                         ((lambda (_%L42889%_ _%L42891%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4290842911%_
                                                 _%g4290942914%_)
                                          (cons _%g4290842911%_
                                                _%g4290942914%_))
                                        '()
                                        _%L42889%_))
                                (let* ((_%keys42925%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4291642919%_
                                                         _%g4291742922%_)
                                                  (cons _%g4291642919%_
                                                        _%g4291742922%_))
                                                '()
                                                _%L42889%_)))
                                       (_%keytab42936%_
                                        (let ((_%ht42928%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4293042932%_)
                                             (hash-put!
                                              _%ht42928%_
                                              _%g4293042932%_
                                              '#t))
                                           _%keys42925%_)
                                          _%ht42928%_))
                                       (_%imports42939%_
                                        (gx#core-expand-import-source
                                         _%L42891%_))
                                       (_%fold-e42955%_
                                        (letrec ((_%fold-e42942%_
                                                  (lambda (_%in42945%_
                                                           _%r42947%_)
                                                    (if (gx#module-import?
                                                         _%in42945%_)
                                                        (if (hash-get
                                                             _%keytab42936%_
                                                             (gx#module-import-name
                                                              _%in42945%_))
                                                            _%r42947%_
                                                            (cons _%in42945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42947%_))
                (if (gx#import-set? _%in42945%_)
                    (foldl _%fold-e42942%_
                           _%r42947%_
                           (gx#import-set-imports _%in42945%_))
                    (cons _%in42945%_ _%r42947%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42942%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42955%_
                                               '()
                                               _%imports42939%_)))
                                (_%g4280842832%_ _%g4280942836%_)))
                          _%id4282642885%_
                          _%hd4281642853%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4282142865%_
                                                  _%target4281842859%_
                                                  '()))
                                               (_%g4280842832%_
                                                _%g4280942836%_)))))
                                     (_%g4280842832%_ _%g4280942836%_))))
                             (_%g4280842832%_ _%g4280942836%_))))
                     (_%g4280842832%_ _%g4280942836%_)))))
         (_%g4280742960%_ _%stx42805%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in43012%_ _%rename43014%_)
      (gx#make-module-import
       (gx#module-import-source _%in43012%_)
       _%rename43014%_
       (gx#module-import-phi _%in43012%_)
       (gx#module-import-weak? _%in43012%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42965%_ _%pre42967%_)
      (let* ((_%name4296842976%_ _%name42965%_)
             (_%else4297042988%_
              (lambda () (make-symbol _%pre42967%_ _%name42965%_)))
             (_%K4297242996%_
              (lambda (_%mark42992%_ _%id42994%_)
                (cons (make-symbol _%pre42967%_ _%id42994%_) _%mark42992%_))))
        (if (pair? _%name4296842976%_)
            (let ((_%hd4297343000%_
                   (let () (declare (not safe)) (##car _%name4296842976%_)))
                  (_%tl4297443003%_
                   (let () (declare (not safe)) (##cdr _%name4296842976%_))))
              (let* ((_%id43006%_ _%hd4297343000%_)
                     (_%mark43009%_ _%tl4297443003%_))
                (_%K4297242996%_ _%mark43009%_ _%id43006%_)))
            (_%else4297042988%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx43016%_)
       (let* ((_%g4301943052%_
               (lambda (_%g4302043048%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4302043048%_)))
              (_%g4301843247%_
               (lambda (_%g4302043056%_)
                 (if (gx#stx-pair? _%g4302043056%_)
                     (let ((_%e4302443059%_ (gx#syntax-e _%g4302043056%_)))
                       (let ((_%hd4302543063%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4302443059%_)))
                             (_%tl4302643066%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4302443059%_))))
                         (if (gx#stx-pair? _%tl4302643066%_)
                             (let ((_%e4302743069%_
                                    (gx#syntax-e _%tl4302643066%_)))
                               (let ((_%hd4302843073%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4302743069%_)))
                                     (_%tl4302943076%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4302743069%_))))
                                 (if (gx#stx-pair/null? _%tl4302943076%_)
                                     (let ((_g44696_
                                            (gx#syntax-split-splice
                                             _%tl4302943076%_
                                             '0)))
                                       (begin
                                         (let ((_g44697_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44696_)
                                                      (##values-length
                                                       _g44696_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44697_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44697_)))
                                         (let ((_%target4303043079%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44696_ 0)))
                                               (_%tl4303243082%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44696_ 1))))
                                           (if (gx#stx-null? _%tl4303243082%_)
                                               (letrec ((_%loop4303343085%_
                                                         (lambda (_%hd4303143089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4303743092%_
                          _%id4303843094%_)
                   (if (gx#stx-pair? _%hd4303143089%_)
                       (let ((_%e4303443097%_ (gx#syntax-e _%hd4303143089%_)))
                         (let ((_%lp-hd4303543101%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4303443097%_)))
                               (_%lp-tl4303643104%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4303443097%_))))
                           (if (gx#stx-pair? _%lp-hd4303543101%_)
                               (let ((_%e4304143107%_
                                      (gx#syntax-e _%lp-hd4303543101%_)))
                                 (let ((_%hd4304243111%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4304143107%_)))
                                       (_%tl4304343114%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4304143107%_))))
                                   (if (gx#stx-pair? _%tl4304343114%_)
                                       (let ((_%e4304443117%_
                                              (gx#syntax-e _%tl4304343114%_)))
                                         (let ((_%hd4304543121%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4304443117%_)))
                                               (_%tl4304643124%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4304443117%_))))
                                           (if (gx#stx-null? _%tl4304643124%_)
                                               (_%loop4303343085%_
                                                _%lp-tl4303643104%_
                                                (cons _%hd4304543121%_
                                                      _%new-id4303743092%_)
                                                (cons _%hd4304243111%_
                                                      _%id4303843094%_))
                                               (_%g4301943052%_
                                                _%g4302043056%_))))
                                       (_%g4301943052%_ _%g4302043056%_))))
                               (_%g4301943052%_ _%g4302043056%_))))
                       (let ((_%new-id4303943127%_
                              (reverse _%new-id4303743092%_))
                             (_%id4304043130%_ (reverse _%id4303843094%_)))
                         ((lambda (_%L43133%_ _%L43135%_ _%L43136%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4315443157%_
                                                      _%g4315543160%_)
                                               (cons _%g4315443157%_
                                                     _%g4315543160%_))
                                             '()
                                             _%L43135%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4316243165%_
                                                      _%g4316343168%_)
                                               (cons _%g4316243165%_
                                                     _%g4316343168%_))
                                             '()
                                             _%L43133%_)))
                                (let* ((_%keytab43171%_ (make-hash-table))
                                       (_%found43174%_ (make-hash-table))
                                       (_%_43197%_
                                        (for-each
                                         (lambda (_%id43177%_ _%new-id43179%_)
                                           (hash-put!
                                            _%keytab43171%_
                                            (gx#core-identifier-key
                                             _%id43177%_)
                                            (gx#core-identifier-key
                                             _%new-id43179%_)))
                                         (foldr (lambda (_%g4318043183%_
                                                         _%g4318143186%_)
                                                  (cons _%g4318043183%_
                                                        _%g4318143186%_))
                                                '()
                                                _%L43135%_)
                                         (foldr (lambda (_%g4318843191%_
                                                         _%g4318943194%_)
                                                  (cons _%g4318843191%_
                                                        _%g4318943194%_))
                                                '()
                                                _%L43133%_)))
                                       (_%imports43200%_
                                        (gx#core-expand-import-source
                                         _%L43136%_))
                                       (_%fold-e43228%_
                                        (letrec ((_%fold-e43203%_
                                                  (lambda (_%in43206%_
                                                           _%r43208%_)
                                                    (if (gx#module-import?
                                                         _%in43206%_)
                                                        (let* ((_%name43212%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43206%_))
                       (_%$e43215%_ (hash-get _%keytab43171%_ _%name43212%_)))
                  (if _%$e43215%_
                      ((lambda (_%rename43219%_)
                         (hash-put! _%found43174%_ _%name43212%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43206%_
                                _%rename43219%_)
                               _%r43208%_))
                       _%$e43215%_)
                      (cons _%in43206%_ _%r43208%_)))
                (if (gx#import-set? _%in43206%_)
                    (foldl _%fold-e43203%_
                           _%r43208%_
                           (gx#import-set-imports _%in43206%_))
                    (cons _%in43206%_ _%r43208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43203%_))
                                       (_%new-imports43231%_
                                        (foldl _%fold-e43228%_
                                               '()
                                               _%imports43200%_)))
                                  (for-each
                                   (lambda (_%id43236%_)
                                     (if (hash-get
                                          _%found43174%_
                                          (gx#core-identifier-key _%id43236%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx43016%_
                                          _%id43236%_)))
                                   (foldr (lambda (_%g4323843241%_
                                                   _%g4323943244%_)
                                            (cons _%g4323843241%_
                                                  _%g4323943244%_))
                                          '()
                                          _%L43135%_))
                                  (cons 'begin: _%new-imports43231%_))
                                (_%g4301943052%_ _%g4302043056%_)))
                          _%new-id4303943127%_
                          _%id4304043130%_
                          _%hd4302843073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4303343085%_
                                                  _%target4303043079%_
                                                  '()
                                                  '()))
                                               (_%g4301943052%_
                                                _%g4302043056%_)))))
                                     (_%g4301943052%_ _%g4302043056%_))))
                             (_%g4301943052%_ _%g4302043056%_))))
                     (_%g4301943052%_ _%g4302043056%_)))))
         (_%g4301843247%_ _%stx43016%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43252%_)
       (let* ((_%g4325543273%_
               (lambda (_%g4325643269%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4325643269%_)))
              (_%g4325443358%_
               (lambda (_%g4325643277%_)
                 (if (gx#stx-pair? _%g4325643277%_)
                     (let ((_%e4325943280%_ (gx#syntax-e _%g4325643277%_)))
                       (let ((_%hd4326043284%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4325943280%_)))
                             (_%tl4326143287%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4325943280%_))))
                         (if (gx#stx-pair? _%tl4326143287%_)
                             (let ((_%e4326243290%_
                                    (gx#syntax-e _%tl4326143287%_)))
                               (let ((_%hd4326343294%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4326243290%_)))
                                     (_%tl4326443297%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4326243290%_))))
                                 (if (gx#stx-pair? _%tl4326443297%_)
                                     (let ((_%e4326543300%_
                                            (gx#syntax-e _%tl4326443297%_)))
                                       (let ((_%hd4326643304%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4326543300%_)))
                                             (_%tl4326743307%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4326543300%_))))
                                         (if (gx#stx-null? _%tl4326743307%_)
                                             ((lambda (_%L43310%_ _%L43312%_)
                                                (if (gx#identifier? _%L43310%_)
                                                    (let* ((_%pre43328%_
                                                            (gx#stx-e
                                                             _%L43310%_))
                                                           (_%imports43331%_
                                                            (gx#core-expand-import-source
                                                             _%L43312%_))
                                                           (_%rename-e43337%_
                                                            (lambda (_%name43334%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43334%_
                                                               _%pre43328%_)))
                                                           (_%fold-e43353%_
                                                            (letrec ((_%fold-e43340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43343%_ _%r43345%_)
                                (if (gx#module-import? _%in43343%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43343%_
                                           (_%rename-e43337%_
                                            (gx#module-import-name
                                             _%in43343%_)))
                                          _%r43345%_)
                                    (if (gx#import-set? _%in43343%_)
                                        (foldl _%fold-e43340%_
                                               _%r43345%_
                                               (gx#import-set-imports
                                                _%in43343%_))
                                        (cons _%in43343%_ _%r43345%_))))))
                      _%fold-e43340%_)))
              (cons 'begin: (foldl _%fold-e43353%_ '() _%imports43331%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4325543273%_
                                                     _%g4325643277%_)))
                                              _%hd4326643304%_
                                              _%hd4326343294%_)
                                             (_%g4325543273%_
                                              _%g4325643277%_))))
                                     (_%g4325543273%_ _%g4325643277%_))))
                             (_%g4325543273%_ _%g4325643277%_))))
                     (_%g4325543273%_ _%g4325643277%_)))))
         (_%g4325443358%_ _%stx43252%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43362%_)
       (letrec ((_%flatten43365%_
                 (lambda (_%list-of-lists43620%_)
                   (foldr (lambda (_%v43623%_ _%acc43625%_)
                            (if (null? _%v43623%_)
                                _%acc43625%_
                                (if (pair? _%v43623%_)
                                    (append (_%flatten43365%_ _%v43623%_)
                                            _%acc43625%_)
                                    (cons _%v43623%_ _%acc43625%_))))
                          '()
                          _%list-of-lists43620%_)))
                (_%expand-path43367%_
                 (lambda (_%top43488%_ _%mod43490%_)
                   (let* ((_%__stx4459644597%_ _%mod43490%_)
                          (_%g4349343515%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4459644597%_))))
                     (let ((_%__kont4459944600%_
                            (lambda (_%L43583%_ _%L43585%_)
                              (map (lambda (_%mod43600%_)
                                     (gx#stx-identifier
                                      _%top43488%_
                                      _%top43488%_
                                      '"/"
                                      _%mod43600%_))
                                   (_%flatten43365%_
                                    (map (lambda (_%g4360243604%_)
                                           (_%expand-path43367%_
                                            _%L43585%_
                                            _%g4360243604%_))
                                         (foldr (lambda (_%g4360743610%_
                                                         _%g4360843613%_)
                                                  (cons _%g4360743610%_
                                                        _%g4360843613%_))
                                                '()
                                                _%L43583%_))))))
                           (_%__kont4460344604%_
                            (lambda (_%L43522%_)
                              (gx#stx-identifier
                               _%top43488%_
                               _%top43488%_
                               '"/"
                               _%L43522%_))))
                       (let* ((_%g4349243536%_
                               (lambda ()
                                 (let ((_%L43522%_ _%__stx4459644597%_))
                                   (if (or (gx#identifier? _%L43522%_)
                                           (gx#stx-fixnum? _%L43522%_))
                                       (_%__kont4460344604%_ _%L43522%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4349343515%_))))))
                              (_%__match4461944620%_
                               (lambda (_%e4349743543%_
                                        _%hd4349843547%_
                                        _%tl4349943550%_
                                        _%__splice4460144602%_
                                        _%target4350043553%_
                                        _%tl4350243556%_)
                                 (letrec ((_%loop4350343559%_
                                           (lambda (_%hd4350143563%_
                                                    _%mod4350743566%_)
                                             (if (gx#stx-pair?
                                                  _%hd4350143563%_)
                                                 (let ((_%e4350443569%_
                                                        (gx#syntax-e
                                                         _%hd4350143563%_)))
                                                   (let ((_%lp-tl4350643576%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4350443569%_)))
                                                         (_%lp-hd4350543573%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4350443569%_))))
                                                     (_%loop4350343559%_
                                                      _%lp-tl4350643576%_
                                                      (cons _%lp-hd4350543573%_
                                                            _%mod4350743566%_))))
                                                 (let ((_%mod4350843579%_
                                                        (reverse _%mod4350743566%_)))
                                                   (_%__kont4459944600%_
                                                    _%mod4350843579%_
                                                    _%hd4349843547%_))))))
                                   (_%loop4350343559%_
                                    _%target4350043553%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4459644597%_)
                             (let ((_%e4349743543%_
                                    (gx#syntax-e _%__stx4459644597%_)))
                               (let ((_%tl4349943550%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4349743543%_)))
                                     (_%hd4349843547%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4349743543%_))))
                                 (if (gx#stx-pair/null? _%tl4349943550%_)
                                     (let ((_%__splice4460144602%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4349943550%_
                                             '0)))
                                       (let ((_%tl4350243556%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4460144602%_
                                                 '1)))
                                             (_%target4350043553%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4460144602%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4350243556%_)
                                             (_%__match4461944620%_
                                              _%e4349743543%_
                                              _%hd4349843547%_
                                              _%tl4349943550%_
                                              _%__splice4460144602%_
                                              _%target4350043553%_
                                              _%tl4350243556%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4349243536%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4349243536%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4349243536%_)))))))))
         (let* ((_%g4336943393%_
                 (lambda (_%g4337043389%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4337043389%_)))
                (_%g4336843484%_
                 (lambda (_%g4337043397%_)
                   (if (gx#stx-pair? _%g4337043397%_)
                       (let ((_%e4337343400%_ (gx#syntax-e _%g4337043397%_)))
                         (let ((_%hd4337443404%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4337343400%_)))
                               (_%tl4337543407%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4337343400%_))))
                           (if (gx#stx-pair? _%tl4337543407%_)
                               (let ((_%e4337643410%_
                                      (gx#syntax-e _%tl4337543407%_)))
                                 (let ((_%hd4337743414%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4337643410%_)))
                                       (_%tl4337843417%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4337643410%_))))
                                   (if (gx#stx-pair/null? _%tl4337843417%_)
                                       (let ((_g44698_
                                              (gx#syntax-split-splice
                                               _%tl4337843417%_
                                               '0)))
                                         (begin
                                           (let ((_g44699_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44698_)
                                                        (##values-length
                                                         _g44698_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44699_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44699_)))
                                           (let ((_%target4337943420%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g44698_ 0)))
                                                 (_%tl4338143423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g44698_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4338143423%_)
                                                 (letrec ((_%loop4338243426%_
                                                           (lambda (_%hd4338043430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4338643433%_)
                     (if (gx#stx-pair? _%hd4338043430%_)
                         (let ((_%e4338343436%_
                                (gx#syntax-e _%hd4338043430%_)))
                           (let ((_%lp-hd4338443440%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4338343436%_)))
                                 (_%lp-tl4338543443%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4338343436%_))))
                             (_%loop4338243426%_
                              _%lp-tl4338543443%_
                              (cons _%lp-hd4338443440%_ _%mod4338643433%_))))
                         (let ((_%mod4338743446%_ (reverse _%mod4338643433%_)))
                           ((lambda (_%L43450%_ _%L43452%_)
                              (cons 'begin:
                                    (_%flatten43365%_
                                     (map (lambda (_%g4347043472%_)
                                            (_%expand-path43367%_
                                             _%L43452%_
                                             _%g4347043472%_))
                                          (foldr (lambda (_%g4347543478%_
                                                          _%g4347643481%_)
                                                   (cons _%g4347543478%_
                                                         _%g4347643481%_))
                                                 '()
                                                 _%L43450%_)))))
                            _%mod4338743446%_
                            _%hd4337743414%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4338243426%_
                                                    _%target4337943420%_
                                                    '()))
                                                 (_%g4336943393%_
                                                  _%g4337043397%_)))))
                                       (_%g4336943393%_ _%g4337043397%_))))
                               (_%g4336943393%_ _%g4337043397%_))))
                       (_%g4336943393%_ _%g4337043397%_)))))
           (_%g4336843484%_ _%stx43362%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43635%_)
       (let* ((_%g4363843662%_
               (lambda (_%g4363943658%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4363943658%_)))
              (_%g4363743790%_
               (lambda (_%g4363943666%_)
                 (if (gx#stx-pair? _%g4363943666%_)
                     (let ((_%e4364243669%_ (gx#syntax-e _%g4363943666%_)))
                       (let ((_%hd4364343673%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4364243669%_)))
                             (_%tl4364443676%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4364243669%_))))
                         (if (gx#stx-pair? _%tl4364443676%_)
                             (let ((_%e4364543679%_
                                    (gx#syntax-e _%tl4364443676%_)))
                               (let ((_%hd4364643683%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4364543679%_)))
                                     (_%tl4364743686%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4364543679%_))))
                                 (if (gx#stx-pair/null? _%tl4364743686%_)
                                     (let ((_g44700_
                                            (gx#syntax-split-splice
                                             _%tl4364743686%_
                                             '0)))
                                       (begin
                                         (let ((_g44701_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44700_)
                                                      (##values-length
                                                       _g44700_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44701_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44701_)))
                                         (let ((_%target4364843689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44700_ 0)))
                                               (_%tl4365043692%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44700_ 1))))
                                           (if (gx#stx-null? _%tl4365043692%_)
                                               (letrec ((_%loop4365143695%_
                                                         (lambda (_%hd4364943699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4365543702%_)
                   (if (gx#stx-pair? _%hd4364943699%_)
                       (let ((_%e4365243705%_ (gx#syntax-e _%hd4364943699%_)))
                         (let ((_%lp-hd4365343709%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4365243705%_)))
                               (_%lp-tl4365443712%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4365243705%_))))
                           (_%loop4365143695%_
                            _%lp-tl4365443712%_
                            (cons _%lp-hd4365343709%_ _%id4365543702%_))))
                       (let ((_%id4365643715%_ (reverse _%id4365543702%_)))
                         ((lambda (_%L43719%_ _%L43721%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4373843741%_
                                                 _%g4373943744%_)
                                          (cons _%g4373843741%_
                                                _%g4373943744%_))
                                        '()
                                        _%L43719%_))
                                (let* ((_%keys43755%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4374643749%_
                                                         _%g4374743752%_)
                                                  (cons _%g4374643749%_
                                                        _%g4374743752%_))
                                                '()
                                                _%L43719%_)))
                                       (_%keytab43766%_
                                        (let ((_%ht43758%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4376043762%_)
                                             (hash-put!
                                              _%ht43758%_
                                              _%g4376043762%_
                                              '#t))
                                           _%keys43755%_)
                                          _%ht43758%_))
                                       (_%exports43769%_
                                        (gx#core-expand-export-source
                                         _%L43721%_))
                                       (_%fold-e43785%_
                                        (letrec ((_%fold-e43772%_
                                                  (lambda (_%out43775%_
                                                           _%r43777%_)
                                                    (if (gx#module-export?
                                                         _%out43775%_)
                                                        (if (hash-get
                                                             _%keytab43766%_
                                                             (gx#module-export-name
                                                              _%out43775%_))
                                                            _%r43777%_
                                                            (cons _%out43775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43777%_))
                (if (gx#export-set? _%out43775%_)
                    (foldl _%fold-e43772%_
                           _%r43777%_
                           (gx#export-set-exports _%out43775%_))
                    _%r43777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43772%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43785%_
                                               '()
                                               _%exports43769%_)))
                                (_%g4363843662%_ _%g4363943666%_)))
                          _%id4365643715%_
                          _%hd4364643683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4365143695%_
                                                  _%target4364843689%_
                                                  '()))
                                               (_%g4363843662%_
                                                _%g4363943666%_)))))
                                     (_%g4363843662%_ _%g4363943666%_))))
                             (_%g4363843662%_ _%g4363943666%_))))
                     (_%g4363843662%_ _%g4363943666%_)))))
         (_%g4363743790%_ _%stx43635%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43795%_ _%rename43797%_)
      (gx#make-module-export
       (gx#module-export-context _%out43795%_)
       (gx#module-export-key _%out43795%_)
       (gx#module-export-phi _%out43795%_)
       _%rename43797%_
       (gx#module-export-weak? _%out43795%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43799%_)
       (let* ((_%g4380243835%_
               (lambda (_%g4380343831%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4380343831%_)))
              (_%g4380144030%_
               (lambda (_%g4380343839%_)
                 (if (gx#stx-pair? _%g4380343839%_)
                     (let ((_%e4380743842%_ (gx#syntax-e _%g4380343839%_)))
                       (let ((_%hd4380843846%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4380743842%_)))
                             (_%tl4380943849%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4380743842%_))))
                         (if (gx#stx-pair? _%tl4380943849%_)
                             (let ((_%e4381043852%_
                                    (gx#syntax-e _%tl4380943849%_)))
                               (let ((_%hd4381143856%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4381043852%_)))
                                     (_%tl4381243859%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4381043852%_))))
                                 (if (gx#stx-pair/null? _%tl4381243859%_)
                                     (let ((_g44702_
                                            (gx#syntax-split-splice
                                             _%tl4381243859%_
                                             '0)))
                                       (begin
                                         (let ((_g44703_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44702_)
                                                      (##values-length
                                                       _g44702_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44703_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44703_)))
                                         (let ((_%target4381343862%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44702_ 0)))
                                               (_%tl4381543865%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g44702_ 1))))
                                           (if (gx#stx-null? _%tl4381543865%_)
                                               (letrec ((_%loop4381643868%_
                                                         (lambda (_%hd4381443872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4382043875%_
                          _%id4382143877%_)
                   (if (gx#stx-pair? _%hd4381443872%_)
                       (let ((_%e4381743880%_ (gx#syntax-e _%hd4381443872%_)))
                         (let ((_%lp-hd4381843884%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4381743880%_)))
                               (_%lp-tl4381943887%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4381743880%_))))
                           (if (gx#stx-pair? _%lp-hd4381843884%_)
                               (let ((_%e4382443890%_
                                      (gx#syntax-e _%lp-hd4381843884%_)))
                                 (let ((_%hd4382543894%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4382443890%_)))
                                       (_%tl4382643897%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4382443890%_))))
                                   (if (gx#stx-pair? _%tl4382643897%_)
                                       (let ((_%e4382743900%_
                                              (gx#syntax-e _%tl4382643897%_)))
                                         (let ((_%hd4382843904%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4382743900%_)))
                                               (_%tl4382943907%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4382743900%_))))
                                           (if (gx#stx-null? _%tl4382943907%_)
                                               (_%loop4381643868%_
                                                _%lp-tl4381943887%_
                                                (cons _%hd4382843904%_
                                                      _%new-id4382043875%_)
                                                (cons _%hd4382543894%_
                                                      _%id4382143877%_))
                                               (_%g4380243835%_
                                                _%g4380343839%_))))
                                       (_%g4380243835%_ _%g4380343839%_))))
                               (_%g4380243835%_ _%g4380343839%_))))
                       (let ((_%new-id4382243910%_
                              (reverse _%new-id4382043875%_))
                             (_%id4382343913%_ (reverse _%id4382143877%_)))
                         ((lambda (_%L43916%_ _%L43918%_ _%L43919%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4393743940%_
                                                      _%g4393843943%_)
                                               (cons _%g4393743940%_
                                                     _%g4393843943%_))
                                             '()
                                             _%L43918%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4394543948%_
                                                      _%g4394643951%_)
                                               (cons _%g4394543948%_
                                                     _%g4394643951%_))
                                             '()
                                             _%L43916%_)))
                                (let* ((_%keytab43954%_ (make-hash-table))
                                       (_%found43957%_ (make-hash-table))
                                       (_%_43980%_
                                        (for-each
                                         (lambda (_%id43960%_ _%new-id43962%_)
                                           (hash-put!
                                            _%keytab43954%_
                                            (gx#core-identifier-key
                                             _%id43960%_)
                                            (gx#core-identifier-key
                                             _%new-id43962%_)))
                                         (foldr (lambda (_%g4396343966%_
                                                         _%g4396443969%_)
                                                  (cons _%g4396343966%_
                                                        _%g4396443969%_))
                                                '()
                                                _%L43918%_)
                                         (foldr (lambda (_%g4397143974%_
                                                         _%g4397243977%_)
                                                  (cons _%g4397143974%_
                                                        _%g4397243977%_))
                                                '()
                                                _%L43916%_)))
                                       (_%exports43983%_
                                        (gx#core-expand-export-source
                                         _%L43919%_))
                                       (_%fold-e44011%_
                                        (letrec ((_%fold-e43986%_
                                                  (lambda (_%out43989%_
                                                           _%r43991%_)
                                                    (if (gx#module-export?
                                                         _%out43989%_)
                                                        (let* ((_%name43995%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43989%_))
                       (_%$e43998%_ (hash-get _%keytab43954%_ _%name43995%_)))
                  (if _%$e43998%_
                      ((lambda (_%rename44002%_)
                         (hash-put! _%found43957%_ _%name43995%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43989%_
                                _%rename44002%_)
                               _%r43991%_))
                       _%$e43998%_)
                      (cons _%out43989%_ _%r43991%_)))
                (if (gx#export-set? _%out43989%_)
                    (foldl _%fold-e43986%_
                           _%r43991%_
                           (gx#export-set-exports _%out43989%_))
                    (cons _%out43989%_ _%r43991%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43986%_))
                                       (_%new-exports44014%_
                                        (foldl _%fold-e44011%_
                                               '()
                                               _%exports43983%_)))
                                  (for-each
                                   (lambda (_%id44019%_)
                                     (if (hash-get
                                          _%found43957%_
                                          (gx#core-identifier-key _%id44019%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43799%_
                                          _%id44019%_)))
                                   (foldr (lambda (_%g4402144024%_
                                                   _%g4402244027%_)
                                            (cons _%g4402144024%_
                                                  _%g4402244027%_))
                                          '()
                                          _%L43918%_))
                                  (cons 'begin: _%new-exports44014%_))
                                (_%g4380243835%_ _%g4380343839%_)))
                          _%new-id4382243910%_
                          _%id4382343913%_
                          _%hd4381143856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4381643868%_
                                                  _%target4381343862%_
                                                  '()
                                                  '()))
                                               (_%g4380243835%_
                                                _%g4380343839%_)))))
                                     (_%g4380243835%_ _%g4380343839%_))))
                             (_%g4380243835%_ _%g4380343839%_))))
                     (_%g4380243835%_ _%g4380343839%_)))))
         (_%g4380144030%_ _%stx43799%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx44035%_)
       (let* ((_%g4403844056%_
               (lambda (_%g4403944052%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4403944052%_)))
              (_%g4403744141%_
               (lambda (_%g4403944060%_)
                 (if (gx#stx-pair? _%g4403944060%_)
                     (let ((_%e4404244063%_ (gx#syntax-e _%g4403944060%_)))
                       (let ((_%hd4404344067%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4404244063%_)))
                             (_%tl4404444070%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4404244063%_))))
                         (if (gx#stx-pair? _%tl4404444070%_)
                             (let ((_%e4404544073%_
                                    (gx#syntax-e _%tl4404444070%_)))
                               (let ((_%hd4404644077%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4404544073%_)))
                                     (_%tl4404744080%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4404544073%_))))
                                 (if (gx#stx-pair? _%tl4404744080%_)
                                     (let ((_%e4404844083%_
                                            (gx#syntax-e _%tl4404744080%_)))
                                       (let ((_%hd4404944087%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4404844083%_)))
                                             (_%tl4405044090%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4404844083%_))))
                                         (if (gx#stx-null? _%tl4405044090%_)
                                             ((lambda (_%L44093%_ _%L44095%_)
                                                (if (gx#identifier? _%L44093%_)
                                                    (let* ((_%pre44111%_
                                                            (gx#stx-e
                                                             _%L44093%_))
                                                           (_%exports44114%_
                                                            (gx#core-expand-export-source
                                                             _%L44095%_))
                                                           (_%rename-e44120%_
                                                            (lambda (_%name44117%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name44117%_
                                                               _%pre44111%_)))
                                                           (_%fold-e44136%_
                                                            (letrec ((_%fold-e44123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44126%_ _%r44128%_)
                                (if (gx#module-export? _%out44126%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44126%_
                                           (_%rename-e44120%_
                                            (gx#module-export-name
                                             _%out44126%_)))
                                          _%r44128%_)
                                    (if (gx#export-set? _%out44126%_)
                                        (foldl _%fold-e44123%_
                                               _%r44128%_
                                               (gx#export-set-exports
                                                _%out44126%_))
                                        (cons _%out44126%_ _%r44128%_))))))
                      _%fold-e44123%_)))
              (cons 'begin: (foldl _%fold-e44136%_ '() _%exports44114%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4403844056%_
                                                     _%g4403944060%_)))
                                              _%hd4404944087%_
                                              _%hd4404644077%_)
                                             (_%g4403844056%_
                                              _%g4403944060%_))))
                                     (_%g4403844056%_ _%g4403944060%_))))
                             (_%g4403844056%_ _%g4403944060%_))))
                     (_%g4403844056%_ _%g4403944060%_)))))
         (_%g4403744141%_ _%stx44035%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44145%_)
       (letrec ((_%identifiers44148%_
                 (lambda (_%id44380%_ _%unchecked?44382%_)
                   (let ((_%info44384%_
                          (gx#syntax-local-value _%id44380%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44384%_))
                         (cons _%id44380%_
                               (cons (let ((__obj44681 _%info44384%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44681
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44681
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj44681
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44682
                                                         _%info44384%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44682
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44682
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj44682
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44683 _%info44384%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44683
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44683
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44683
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44684 _%info44384%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44684
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44684
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44684
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44685 _%info44384%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44685
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44685
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj44685
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44686 _%info44384%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44686
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44686
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj44686 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44387%_
                                                   (let ((__obj44687
                                                          _%info44384%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44687
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44687
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj44687
                                                          'constructor)))))
                                              (if _%ctor44387%_
                                                  (cons _%ctor44387%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44145%_
                          _%id44380%_))))))
         (let* ((_%__stx4462244623%_ _%stx44145%_)
                (_%g4415244193%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4462244623%_))))
           (let ((_%__kont4462544626%_
                  (lambda (_%L44341%_ _%L44343%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4436244364%_)
                              (_%identifiers44148%_
                               _%g4436244364%_
                               (gx#stx-e _%L44343%_)))
                            (foldr (lambda (_%g4436744370%_ _%g4436844373%_)
                                     (cons _%g4436744370%_ _%g4436844373%_))
                                   '()
                                   _%L44341%_))))))
                 (_%__kont4462944630%_
                  (lambda (_%L44240%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4425644258%_)
                              (_%identifiers44148%_ _%g4425644258%_ '#f))
                            (foldr (lambda (_%g4426144264%_ _%g4426244267%_)
                                     (cons _%g4426144264%_ _%g4426244267%_))
                                   '()
                                   _%L44240%_)))))))
             (let* ((_%__match4467944680%_
                     (lambda (_%e4417644200%_
                              _%hd4417744204%_
                              _%tl4417844207%_
                              _%__splice4463144632%_
                              _%target4417944210%_
                              _%tl4418144213%_)
                       (letrec ((_%loop4418244216%_
                                 (lambda (_%hd4418044220%_ _%id4418644223%_)
                                   (if (gx#stx-pair? _%hd4418044220%_)
                                       (let ((_%e4418344226%_
                                              (gx#syntax-e _%hd4418044220%_)))
                                         (let ((_%lp-tl4418544233%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4418344226%_)))
                                               (_%lp-hd4418444230%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4418344226%_))))
                                           (_%loop4418244216%_
                                            _%lp-tl4418544233%_
                                            (cons _%lp-hd4418444230%_
                                                  _%id4418644223%_))))
                                       (let ((_%id4418744236%_
                                              (reverse _%id4418644223%_)))
                                         (_%__kont4462944630%_
                                          _%id4418744236%_))))))
                         (_%loop4418244216%_ _%target4417944210%_ '()))))
                    (_%__match4466544666%_
                     (lambda (_%e4415644277%_
                              _%hd4415744281%_
                              _%tl4415844284%_
                              _%e4415944287%_
                              _%hd4416044291%_
                              _%tl4416144294%_
                              _%e4416244297%_
                              _%e4416344301%_
                              _%hd4416444305%_
                              _%tl4416544308%_
                              _%__splice4462744628%_
                              _%target4416644311%_
                              _%tl4416844314%_)
                       (letrec ((_%loop4416944317%_
                                 (lambda (_%hd4416744321%_ _%id4417344324%_)
                                   (if (gx#stx-pair? _%hd4416744321%_)
                                       (let ((_%e4417044327%_
                                              (gx#syntax-e _%hd4416744321%_)))
                                         (let ((_%lp-tl4417244334%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4417044327%_)))
                                               (_%lp-hd4417144331%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4417044327%_))))
                                           (_%loop4416944317%_
                                            _%lp-tl4417244334%_
                                            (cons _%lp-hd4417144331%_
                                                  _%id4417344324%_))))
                                       (let ((_%id4417444337%_
                                              (reverse _%id4417344324%_)))
                                         (_%__kont4462544626%_
                                          _%id4417444337%_
                                          _%hd4416444305%_))))))
                         (_%loop4416944317%_ _%target4416644311%_ '())))))
               (if (gx#stx-pair? _%__stx4462244623%_)
                   (let ((_%e4415644277%_ (gx#syntax-e _%__stx4462244623%_)))
                     (let ((_%tl4415844284%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4415644277%_)))
                           (_%hd4415744281%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4415644277%_))))
                       (if (gx#stx-pair? _%tl4415844284%_)
                           (let ((_%e4415944287%_
                                  (gx#syntax-e _%tl4415844284%_)))
                             (let ((_%tl4416144294%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4415944287%_)))
                                   (_%hd4416044291%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4415944287%_))))
                               (if (gx#stx-datum? _%hd4416044291%_)
                                   (let ((_%e4416244297%_
                                          (gx#stx-e _%hd4416044291%_)))
                                     (if (equal? _%e4416244297%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4416144294%_)
                                             (let ((_%e4416344301%_
                                                    (gx#syntax-e
                                                     _%tl4416144294%_)))
                                               (let ((_%tl4416544308%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4416344301%_)))
                                                     (_%hd4416444305%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4416344301%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4416544308%_)
                                                     (let ((_%__splice4462744628%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4416544308%_
                                                             '0)))
                                                       (let ((_%tl4416844314%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4462744628%_ '1)))
                     (_%target4416644311%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4462744628%_ '0))))
                 (if (gx#stx-null? _%tl4416844314%_)
                     (_%__match4466544666%_
                      _%e4415644277%_
                      _%hd4415744281%_
                      _%tl4415844284%_
                      _%e4415944287%_
                      _%hd4416044291%_
                      _%tl4416144294%_
                      _%e4416244297%_
                      _%e4416344301%_
                      _%hd4416444305%_
                      _%tl4416544308%_
                      _%__splice4462744628%_
                      _%target4416644311%_
                      _%tl4416844314%_)
                     (if (gx#stx-pair/null? _%tl4415844284%_)
                         (let ((_%__splice4463144632%_
                                (gx#syntax-split-splice->vector
                                 _%tl4415844284%_
                                 '0)))
                           (let ((_%tl4418144213%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4463144632%_ '1)))
                                 (_%target4417944210%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4463144632%_ '0))))
                             (if (gx#stx-null? _%tl4418144213%_)
                                 (_%__match4467944680%_
                                  _%e4415644277%_
                                  _%hd4415744281%_
                                  _%tl4415844284%_
                                  _%__splice4463144632%_
                                  _%target4417944210%_
                                  _%tl4418144213%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4415244193%_)))))
                         (let () (declare (not safe)) (_%g4415244193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4415844284%_)
                                                         (let ((_%__splice4463144632%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4415844284%_
                         '0)))
                   (let ((_%tl4418144213%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4463144632%_ '1)))
                         (_%target4417944210%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4463144632%_ '0))))
                     (if (gx#stx-null? _%tl4418144213%_)
                         (_%__match4467944680%_
                          _%e4415644277%_
                          _%hd4415744281%_
                          _%tl4415844284%_
                          _%__splice4463144632%_
                          _%target4417944210%_
                          _%tl4418144213%_)
                         (let () (declare (not safe)) (_%g4415244193%_)))))
                 (let () (declare (not safe)) (_%g4415244193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4415844284%_)
                                                 (let ((_%__splice4463144632%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4415844284%_
                                                         '0)))
                                                   (let ((_%tl4418144213%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4463144632%_
                                                             '1)))
                                                         (_%target4417944210%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4463144632%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4418144213%_)
                                                         (_%__match4467944680%_
                                                          _%e4415644277%_
                                                          _%hd4415744281%_
                                                          _%tl4415844284%_
                                                          _%__splice4463144632%_
                                                          _%target4417944210%_
                                                          _%tl4418144213%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4415244193%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4415244193%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4415844284%_)
                                             (let ((_%__splice4463144632%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4415844284%_
                                                     '0)))
                                               (let ((_%tl4418144213%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4463144632%_
                                                         '1)))
                                                     (_%target4417944210%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4463144632%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4418144213%_)
                                                     (_%__match4467944680%_
                                                      _%e4415644277%_
                                                      _%hd4415744281%_
                                                      _%tl4415844284%_
                                                      _%__splice4463144632%_
                                                      _%target4417944210%_
                                                      _%tl4418144213%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4415244193%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4415244193%_)))))
                                   (if (gx#stx-pair/null? _%tl4415844284%_)
                                       (let ((_%__splice4463144632%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4415844284%_
                                               '0)))
                                         (let ((_%tl4418144213%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4463144632%_
                                                   '1)))
                                               (_%target4417944210%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4463144632%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4418144213%_)
                                               (_%__match4467944680%_
                                                _%e4415644277%_
                                                _%hd4415744281%_
                                                _%tl4415844284%_
                                                _%__splice4463144632%_
                                                _%target4417944210%_
                                                _%tl4418144213%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4415244193%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4415244193%_))))))
                           (if (gx#stx-pair/null? _%tl4415844284%_)
                               (let ((_%__splice4463144632%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4415844284%_
                                       '0)))
                                 (let ((_%tl4418144213%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4463144632%_
                                           '1)))
                                       (_%target4417944210%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4463144632%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4418144213%_)
                                       (_%__match4467944680%_
                                        _%e4415644277%_
                                        _%hd4415744281%_
                                        _%tl4415844284%_
                                        _%__splice4463144632%_
                                        _%target4417944210%_
                                        _%tl4418144213%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4415244193%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4415244193%_))))))
                   (let () (declare (not safe)) (_%g4415244193%_)))))))))))
