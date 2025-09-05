(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45168%_)
      (let* ((_%__stx4782247823%_ _%$stx45168%_)
             (_%g4517345192%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4782247823%_))))
        (let ((_%__kont4782547826%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4782747828%_
               (lambda (_%L45219%_ _%L45221%_ _%L45222%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L45221%_
                                   (cons (cons _%L45222%_ _%L45219%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L45221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4782247823%_)
              (let ((_%e4517545244%_ (gx#syntax-e _%__stx4782247823%_)))
                (let ((_%tl4517745251%_
                       (let () (declare (not safe)) (##cdr _%e4517545244%_)))
                      (_%hd4517645248%_
                       (let () (declare (not safe)) (##car _%e4517545244%_))))
                  (if (gx#stx-null? _%tl4517745251%_)
                      (_%__kont4782547826%_)
                      (if (gx#stx-pair? _%tl4517745251%_)
                          (let ((_%e4518445209%_
                                 (gx#syntax-e _%tl4517745251%_)))
                            (let ((_%tl4518645216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4518445209%_)))
                                  (_%hd4518545213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4518445209%_))))
                              (_%__kont4782747828%_
                               _%tl4518645216%_
                               _%hd4518545213%_
                               _%hd4517645248%_)))
                          (let () (declare (not safe)) (_%g4517345192%_))))))
              (let () (declare (not safe)) (_%g4517345192%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx45262%_)
      (let* ((_%__stx4785247853%_ _%$stx45262%_)
             (_%g4526745307%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4785247853%_))))
        (let ((_%__kont4785547856%_
               (lambda (_%L45445%_ _%L45447%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45447%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L45445%_ '()))
                                   '())))))
              (_%__kont4785747858%_
               (lambda (_%L45374%_ _%L45376%_ _%L45377%_ _%L45378%_)
                 (cons _%L45378%_
                       (cons _%L45377%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45376%_
                                               (foldr (lambda (_%g4539945402%_
                                                               _%g4540045405%_)
                                                        (cons _%g4539945402%_
                                                              _%g4540045405%_))
                                                      '()
                                                      _%L45374%_)))
                                   '()))))))
          (let* ((_%__match4790747908%_
                  (lambda (_%e4528445314%_
                           _%hd4528545318%_
                           _%tl4528645321%_
                           _%e4528745324%_
                           _%hd4528845328%_
                           _%tl4528945331%_
                           _%e4529045334%_
                           _%hd4529145338%_
                           _%tl4529245341%_
                           _%__splice4785947860%_
                           _%target4529345344%_
                           _%tl4529545347%_)
                    (letrec ((_%loop4529645350%_
                              (lambda (_%hd4529445354%_ _%body4530045357%_)
                                (if (gx#stx-pair? _%hd4529445354%_)
                                    (let ((_%e4529745360%_
                                           (gx#syntax-e _%hd4529445354%_)))
                                      (let ((_%lp-tl4529945367%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4529745360%_)))
                                            (_%lp-hd4529845364%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4529745360%_))))
                                        (_%loop4529645350%_
                                         _%lp-tl4529945367%_
                                         (cons _%lp-hd4529845364%_
                                               _%body4530045357%_))))
                                    (let ((_%body4530145370%_
                                           (reverse _%body4530045357%_)))
                                      (let ((_%L45374%_ _%body4530145370%_)
                                            (_%L45376%_ _%tl4529245341%_)
                                            (_%L45377%_ _%hd4529145338%_)
                                            (_%L45378%_ _%hd4528545318%_))
                                        (if (gx#identifier? _%L45377%_)
                                            (_%__kont4785747858%_
                                             _%L45374%_
                                             _%L45376%_
                                             _%L45377%_
                                             _%L45378%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4526745307%_)))))))))
                      (_%loop4529645350%_ _%target4529345344%_ '()))))
                 (_%__match4788147882%_
                  (lambda (_%e4527145415%_
                           _%hd4527245419%_
                           _%tl4527345422%_
                           _%e4527445425%_
                           _%hd4527545429%_
                           _%tl4527645432%_
                           _%e4527745435%_
                           _%hd4527845439%_
                           _%tl4527945442%_)
                    (let ((_%L45445%_ _%hd4527845439%_)
                          (_%L45447%_ _%hd4527545429%_))
                      (if (gx#identifier? _%L45447%_)
                          (_%__kont4785547856%_ _%L45445%_ _%L45447%_)
                          (if (gx#stx-pair? _%hd4527545429%_)
                              (let ((_%e4529045334%_
                                     (gx#syntax-e _%hd4527545429%_)))
                                (let ((_%tl4529245341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4529045334%_)))
                                      (_%hd4529145338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4529045334%_))))
                                  (if (gx#stx-pair/null? _%tl4527645432%_)
                                      (let ((_%__splice4785947860%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4527645432%_
                                              '0)))
                                        (let ((_%tl4529545347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4785947860%_
                                                  '1)))
                                              (_%target4529345344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4785947860%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4529545347%_)
                                              (_%__match4790747908%_
                                               _%e4527145415%_
                                               _%hd4527245419%_
                                               _%tl4527345422%_
                                               _%e4527445425%_
                                               _%hd4527545429%_
                                               _%tl4527645432%_
                                               _%e4529045334%_
                                               _%hd4529145338%_
                                               _%tl4529245341%_
                                               _%__splice4785947860%_
                                               _%target4529345344%_
                                               _%tl4529545347%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4526745307%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4526745307%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4526745307%_))))))))
            (if (gx#stx-pair? _%__stx4785247853%_)
                (let ((_%e4527145415%_ (gx#syntax-e _%__stx4785247853%_)))
                  (let ((_%tl4527345422%_
                         (let () (declare (not safe)) (##cdr _%e4527145415%_)))
                        (_%hd4527245419%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4527145415%_))))
                    (if (gx#stx-pair? _%tl4527345422%_)
                        (let ((_%e4527445425%_ (gx#syntax-e _%tl4527345422%_)))
                          (let ((_%tl4527645432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4527445425%_)))
                                (_%hd4527545429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4527445425%_))))
                            (if (gx#stx-pair? _%tl4527645432%_)
                                (let ((_%e4527745435%_
                                       (gx#syntax-e _%tl4527645432%_)))
                                  (let ((_%tl4527945442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4527745435%_)))
                                        (_%hd4527845439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4527745435%_))))
                                    (if (gx#stx-null? _%tl4527945442%_)
                                        (_%__match4788147882%_
                                         _%e4527145415%_
                                         _%hd4527245419%_
                                         _%tl4527345422%_
                                         _%e4527445425%_
                                         _%hd4527545429%_
                                         _%tl4527645432%_
                                         _%e4527745435%_
                                         _%hd4527845439%_
                                         _%tl4527945442%_)
                                        (if (gx#stx-pair? _%hd4527545429%_)
                                            (let ((_%e4529045334%_
                                                   (gx#syntax-e
                                                    _%hd4527545429%_)))
                                              (let ((_%tl4529245341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4529045334%_)))
                                                    (_%hd4529145338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4529045334%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4527645432%_)
                                                    (let ((_%__splice4785947860%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4527645432%_
                                                            '0)))
                                                      (let ((_%tl4529545347%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4785947860%_ '1)))
                    (_%target4529345344%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4785947860%_ '0))))
                (if (gx#stx-null? _%tl4529545347%_)
                    (_%__match4790747908%_
                     _%e4527145415%_
                     _%hd4527245419%_
                     _%tl4527345422%_
                     _%e4527445425%_
                     _%hd4527545429%_
                     _%tl4527645432%_
                     _%e4529045334%_
                     _%hd4529145338%_
                     _%tl4529245341%_
                     _%__splice4785947860%_
                     _%target4529345344%_
                     _%tl4529545347%_)
                    (let () (declare (not safe)) (_%g4526745307%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4526745307%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4526745307%_))))))
                                (if (gx#stx-pair? _%hd4527545429%_)
                                    (let ((_%e4529045334%_
                                           (gx#syntax-e _%hd4527545429%_)))
                                      (let ((_%tl4529245341%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4529045334%_)))
                                            (_%hd4529145338%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4529045334%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4527645432%_)
                                            (let ((_%__splice4785947860%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4527645432%_
                                                    '0)))
                                              (let ((_%tl4529545347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4785947860%_
                                                        '1)))
                                                    (_%target4529345344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4785947860%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4529545347%_)
                                                    (_%__match4790747908%_
                                                     _%e4527145415%_
                                                     _%hd4527245419%_
                                                     _%tl4527345422%_
                                                     _%e4527445425%_
                                                     _%hd4527545429%_
                                                     _%tl4527645432%_
                                                     _%e4529045334%_
                                                     _%hd4529145338%_
                                                     _%tl4529245341%_
                                                     _%__splice4785947860%_
                                                     _%target4529345344%_
                                                     _%tl4529545347%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4526745307%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4526745307%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4526745307%_))))))
                        (let () (declare (not safe)) (_%g4526745307%_)))))
                (let () (declare (not safe)) (_%g4526745307%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx45467%_)
      (let* ((_%__stx4791047911%_ _%$stx45467%_)
             (_%g4547245512%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4791047911%_))))
        (let ((_%__kont4791347914%_
               (lambda (_%L45650%_ _%L45652%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45652%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L45650%_ '()))
                                   '())))))
              (_%__kont4791547916%_
               (lambda (_%L45579%_ _%L45581%_ _%L45582%_ _%L45583%_)
                 (cons _%L45583%_
                       (cons _%L45582%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45581%_
                                               (foldr (lambda (_%g4560445607%_
                                                               _%g4560545610%_)
                                                        (cons _%g4560445607%_
                                                              _%g4560545610%_))
                                                      '()
                                                      _%L45579%_)))
                                   '()))))))
          (let* ((_%__match4796547966%_
                  (lambda (_%e4548945519%_
                           _%hd4549045523%_
                           _%tl4549145526%_
                           _%e4549245529%_
                           _%hd4549345533%_
                           _%tl4549445536%_
                           _%e4549545539%_
                           _%hd4549645543%_
                           _%tl4549745546%_
                           _%__splice4791747918%_
                           _%target4549845549%_
                           _%tl4550045552%_)
                    (letrec ((_%loop4550145555%_
                              (lambda (_%hd4549945559%_ _%body4550545562%_)
                                (if (gx#stx-pair? _%hd4549945559%_)
                                    (let ((_%e4550245565%_
                                           (gx#syntax-e _%hd4549945559%_)))
                                      (let ((_%lp-tl4550445572%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4550245565%_)))
                                            (_%lp-hd4550345569%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4550245565%_))))
                                        (_%loop4550145555%_
                                         _%lp-tl4550445572%_
                                         (cons _%lp-hd4550345569%_
                                               _%body4550545562%_))))
                                    (let ((_%body4550645575%_
                                           (reverse _%body4550545562%_)))
                                      (let ((_%L45579%_ _%body4550645575%_)
                                            (_%L45581%_ _%tl4549745546%_)
                                            (_%L45582%_ _%hd4549645543%_)
                                            (_%L45583%_ _%hd4549045523%_))
                                        (if (gx#identifier? _%L45582%_)
                                            (_%__kont4791547916%_
                                             _%L45579%_
                                             _%L45581%_
                                             _%L45582%_
                                             _%L45583%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4547245512%_)))))))))
                      (_%loop4550145555%_ _%target4549845549%_ '()))))
                 (_%__match4793947940%_
                  (lambda (_%e4547645620%_
                           _%hd4547745624%_
                           _%tl4547845627%_
                           _%e4547945630%_
                           _%hd4548045634%_
                           _%tl4548145637%_
                           _%e4548245640%_
                           _%hd4548345644%_
                           _%tl4548445647%_)
                    (let ((_%L45650%_ _%hd4548345644%_)
                          (_%L45652%_ _%hd4548045634%_))
                      (if (gx#identifier? _%L45652%_)
                          (_%__kont4791347914%_ _%L45650%_ _%L45652%_)
                          (if (gx#stx-pair? _%hd4548045634%_)
                              (let ((_%e4549545539%_
                                     (gx#syntax-e _%hd4548045634%_)))
                                (let ((_%tl4549745546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4549545539%_)))
                                      (_%hd4549645543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4549545539%_))))
                                  (if (gx#stx-pair/null? _%tl4548145637%_)
                                      (let ((_%__splice4791747918%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4548145637%_
                                              '0)))
                                        (let ((_%tl4550045552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4791747918%_
                                                  '1)))
                                              (_%target4549845549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4791747918%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4550045552%_)
                                              (_%__match4796547966%_
                                               _%e4547645620%_
                                               _%hd4547745624%_
                                               _%tl4547845627%_
                                               _%e4547945630%_
                                               _%hd4548045634%_
                                               _%tl4548145637%_
                                               _%e4549545539%_
                                               _%hd4549645543%_
                                               _%tl4549745546%_
                                               _%__splice4791747918%_
                                               _%target4549845549%_
                                               _%tl4550045552%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4547245512%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4547245512%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4547245512%_))))))))
            (if (gx#stx-pair? _%__stx4791047911%_)
                (let ((_%e4547645620%_ (gx#syntax-e _%__stx4791047911%_)))
                  (let ((_%tl4547845627%_
                         (let () (declare (not safe)) (##cdr _%e4547645620%_)))
                        (_%hd4547745624%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4547645620%_))))
                    (if (gx#stx-pair? _%tl4547845627%_)
                        (let ((_%e4547945630%_ (gx#syntax-e _%tl4547845627%_)))
                          (let ((_%tl4548145637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4547945630%_)))
                                (_%hd4548045634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4547945630%_))))
                            (if (gx#stx-pair? _%tl4548145637%_)
                                (let ((_%e4548245640%_
                                       (gx#syntax-e _%tl4548145637%_)))
                                  (let ((_%tl4548445647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4548245640%_)))
                                        (_%hd4548345644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4548245640%_))))
                                    (if (gx#stx-null? _%tl4548445647%_)
                                        (_%__match4793947940%_
                                         _%e4547645620%_
                                         _%hd4547745624%_
                                         _%tl4547845627%_
                                         _%e4547945630%_
                                         _%hd4548045634%_
                                         _%tl4548145637%_
                                         _%e4548245640%_
                                         _%hd4548345644%_
                                         _%tl4548445647%_)
                                        (if (gx#stx-pair? _%hd4548045634%_)
                                            (let ((_%e4549545539%_
                                                   (gx#syntax-e
                                                    _%hd4548045634%_)))
                                              (let ((_%tl4549745546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4549545539%_)))
                                                    (_%hd4549645543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4549545539%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4548145637%_)
                                                    (let ((_%__splice4791747918%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4548145637%_
                                                            '0)))
                                                      (let ((_%tl4550045552%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4791747918%_ '1)))
                    (_%target4549845549%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4791747918%_ '0))))
                (if (gx#stx-null? _%tl4550045552%_)
                    (_%__match4796547966%_
                     _%e4547645620%_
                     _%hd4547745624%_
                     _%tl4547845627%_
                     _%e4547945630%_
                     _%hd4548045634%_
                     _%tl4548145637%_
                     _%e4549545539%_
                     _%hd4549645543%_
                     _%tl4549745546%_
                     _%__splice4791747918%_
                     _%target4549845549%_
                     _%tl4550045552%_)
                    (let () (declare (not safe)) (_%g4547245512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4547245512%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4547245512%_))))))
                                (if (gx#stx-pair? _%hd4548045634%_)
                                    (let ((_%e4549545539%_
                                           (gx#syntax-e _%hd4548045634%_)))
                                      (let ((_%tl4549745546%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4549545539%_)))
                                            (_%hd4549645543%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4549545539%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4548145637%_)
                                            (let ((_%__splice4791747918%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4548145637%_
                                                    '0)))
                                              (let ((_%tl4550045552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4791747918%_
                                                        '1)))
                                                    (_%target4549845549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4791747918%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4550045552%_)
                                                    (_%__match4796547966%_
                                                     _%e4547645620%_
                                                     _%hd4547745624%_
                                                     _%tl4547845627%_
                                                     _%e4547945630%_
                                                     _%hd4548045634%_
                                                     _%tl4548145637%_
                                                     _%e4549545539%_
                                                     _%hd4549645543%_
                                                     _%tl4549745546%_
                                                     _%__splice4791747918%_
                                                     _%target4549845549%_
                                                     _%tl4550045552%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4547245512%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4547245512%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4547245512%_))))))
                        (let () (declare (not safe)) (_%g4547245512%_)))))
                (let () (declare (not safe)) (_%g4547245512%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx45672%_)
      (let* ((_%__stx4796847969%_ _%$stx45672%_)
             (_%g4567745717%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4796847969%_))))
        (let ((_%__kont4797147972%_
               (lambda (_%L45855%_ _%L45857%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45857%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L45855%_ '()))
                                   '())))))
              (_%__kont4797347974%_
               (lambda (_%L45784%_ _%L45786%_ _%L45787%_ _%L45788%_)
                 (cons _%L45788%_
                       (cons _%L45787%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45786%_
                                               (foldr (lambda (_%g4580945812%_
                                                               _%g4581045815%_)
                                                        (cons _%g4580945812%_
                                                              _%g4581045815%_))
                                                      '()
                                                      _%L45784%_)))
                                   '()))))))
          (let* ((_%__match4802348024%_
                  (lambda (_%e4569445724%_
                           _%hd4569545728%_
                           _%tl4569645731%_
                           _%e4569745734%_
                           _%hd4569845738%_
                           _%tl4569945741%_
                           _%e4570045744%_
                           _%hd4570145748%_
                           _%tl4570245751%_
                           _%__splice4797547976%_
                           _%target4570345754%_
                           _%tl4570545757%_)
                    (letrec ((_%loop4570645760%_
                              (lambda (_%hd4570445764%_ _%body4571045767%_)
                                (if (gx#stx-pair? _%hd4570445764%_)
                                    (let ((_%e4570745770%_
                                           (gx#syntax-e _%hd4570445764%_)))
                                      (let ((_%lp-tl4570945777%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4570745770%_)))
                                            (_%lp-hd4570845774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4570745770%_))))
                                        (_%loop4570645760%_
                                         _%lp-tl4570945777%_
                                         (cons _%lp-hd4570845774%_
                                               _%body4571045767%_))))
                                    (let ((_%body4571145780%_
                                           (reverse _%body4571045767%_)))
                                      (let ((_%L45784%_ _%body4571145780%_)
                                            (_%L45786%_ _%tl4570245751%_)
                                            (_%L45787%_ _%hd4570145748%_)
                                            (_%L45788%_ _%hd4569545728%_))
                                        (if (gx#identifier? _%L45787%_)
                                            (_%__kont4797347974%_
                                             _%L45784%_
                                             _%L45786%_
                                             _%L45787%_
                                             _%L45788%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4567745717%_)))))))))
                      (_%loop4570645760%_ _%target4570345754%_ '()))))
                 (_%__match4799747998%_
                  (lambda (_%e4568145825%_
                           _%hd4568245829%_
                           _%tl4568345832%_
                           _%e4568445835%_
                           _%hd4568545839%_
                           _%tl4568645842%_
                           _%e4568745845%_
                           _%hd4568845849%_
                           _%tl4568945852%_)
                    (let ((_%L45855%_ _%hd4568845849%_)
                          (_%L45857%_ _%hd4568545839%_))
                      (if (gx#identifier? _%L45857%_)
                          (_%__kont4797147972%_ _%L45855%_ _%L45857%_)
                          (if (gx#stx-pair? _%hd4568545839%_)
                              (let ((_%e4570045744%_
                                     (gx#syntax-e _%hd4568545839%_)))
                                (let ((_%tl4570245751%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4570045744%_)))
                                      (_%hd4570145748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4570045744%_))))
                                  (if (gx#stx-pair/null? _%tl4568645842%_)
                                      (let ((_%__splice4797547976%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4568645842%_
                                              '0)))
                                        (let ((_%tl4570545757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4797547976%_
                                                  '1)))
                                              (_%target4570345754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4797547976%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4570545757%_)
                                              (_%__match4802348024%_
                                               _%e4568145825%_
                                               _%hd4568245829%_
                                               _%tl4568345832%_
                                               _%e4568445835%_
                                               _%hd4568545839%_
                                               _%tl4568645842%_
                                               _%e4570045744%_
                                               _%hd4570145748%_
                                               _%tl4570245751%_
                                               _%__splice4797547976%_
                                               _%target4570345754%_
                                               _%tl4570545757%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4567745717%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4567745717%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4567745717%_))))))))
            (if (gx#stx-pair? _%__stx4796847969%_)
                (let ((_%e4568145825%_ (gx#syntax-e _%__stx4796847969%_)))
                  (let ((_%tl4568345832%_
                         (let () (declare (not safe)) (##cdr _%e4568145825%_)))
                        (_%hd4568245829%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4568145825%_))))
                    (if (gx#stx-pair? _%tl4568345832%_)
                        (let ((_%e4568445835%_ (gx#syntax-e _%tl4568345832%_)))
                          (let ((_%tl4568645842%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4568445835%_)))
                                (_%hd4568545839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4568445835%_))))
                            (if (gx#stx-pair? _%tl4568645842%_)
                                (let ((_%e4568745845%_
                                       (gx#syntax-e _%tl4568645842%_)))
                                  (let ((_%tl4568945852%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4568745845%_)))
                                        (_%hd4568845849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4568745845%_))))
                                    (if (gx#stx-null? _%tl4568945852%_)
                                        (_%__match4799747998%_
                                         _%e4568145825%_
                                         _%hd4568245829%_
                                         _%tl4568345832%_
                                         _%e4568445835%_
                                         _%hd4568545839%_
                                         _%tl4568645842%_
                                         _%e4568745845%_
                                         _%hd4568845849%_
                                         _%tl4568945852%_)
                                        (if (gx#stx-pair? _%hd4568545839%_)
                                            (let ((_%e4570045744%_
                                                   (gx#syntax-e
                                                    _%hd4568545839%_)))
                                              (let ((_%tl4570245751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4570045744%_)))
                                                    (_%hd4570145748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4570045744%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4568645842%_)
                                                    (let ((_%__splice4797547976%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4568645842%_
                                                            '0)))
                                                      (let ((_%tl4570545757%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4797547976%_ '1)))
                    (_%target4570345754%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4797547976%_ '0))))
                (if (gx#stx-null? _%tl4570545757%_)
                    (_%__match4802348024%_
                     _%e4568145825%_
                     _%hd4568245829%_
                     _%tl4568345832%_
                     _%e4568445835%_
                     _%hd4568545839%_
                     _%tl4568645842%_
                     _%e4570045744%_
                     _%hd4570145748%_
                     _%tl4570245751%_
                     _%__splice4797547976%_
                     _%target4570345754%_
                     _%tl4570545757%_)
                    (let () (declare (not safe)) (_%g4567745717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4567745717%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4567745717%_))))))
                                (if (gx#stx-pair? _%hd4568545839%_)
                                    (let ((_%e4570045744%_
                                           (gx#syntax-e _%hd4568545839%_)))
                                      (let ((_%tl4570245751%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4570045744%_)))
                                            (_%hd4570145748%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4570045744%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4568645842%_)
                                            (let ((_%__splice4797547976%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4568645842%_
                                                    '0)))
                                              (let ((_%tl4570545757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4797547976%_
                                                        '1)))
                                                    (_%target4570345754%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4797547976%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4570545757%_)
                                                    (_%__match4802348024%_
                                                     _%e4568145825%_
                                                     _%hd4568245829%_
                                                     _%tl4568345832%_
                                                     _%e4568445835%_
                                                     _%hd4568545839%_
                                                     _%tl4568645842%_
                                                     _%e4570045744%_
                                                     _%hd4570145748%_
                                                     _%tl4570245751%_
                                                     _%__splice4797547976%_
                                                     _%target4570345754%_
                                                     _%tl4570545757%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4567745717%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4567745717%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4567745717%_))))))
                        (let () (declare (not safe)) (_%g4567745717%_)))))
                (let () (declare (not safe)) (_%g4567745717%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx45877%_)
       (let* ((_%g4588045900%_
               (lambda (_%g4588145896%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4588145896%_)))
              (_%g4587945971%_
               (lambda (_%g4588145904%_)
                 (if (gx#stx-pair? _%g4588145904%_)
                     (let ((_%e4588345907%_ (gx#syntax-e _%g4588145904%_)))
                       (let ((_%hd4588445911%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4588345907%_)))
                             (_%tl4588545914%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4588345907%_))))
                         (if (gx#stx-pair/null? _%tl4588545914%_)
                             (let ((_g48118_
                                    (gx#syntax-split-splice
                                     _%tl4588545914%_
                                     '0)))
                               (begin
                                 (let ((_g48119_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48118_)
                                              (##values-length _g48118_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48119_ 2)))
                                       (error "Context expects 2 values"
                                              _g48119_)))
                                 (let ((_%target4588645917%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48118_ 0)))
                                       (_%tl4588845920%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48118_ 1))))
                                   (if (gx#stx-null? _%tl4588845920%_)
                                       (letrec ((_%loop4588945923%_
                                                 (lambda (_%hd4588745927%_
                                                          _%body4589345930%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4588745927%_)
                                                       (let ((_%e4589045933%_
                                                              (gx#syntax-e
                                                               _%hd4588745927%_)))
                                                         (let ((_%lp-hd4589145937%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4589045933%_)))
                       (_%lp-tl4589245940%_
                        (let () (declare (not safe)) (##cdr _%e4589045933%_))))
                   (_%loop4588945923%_
                    _%lp-tl4589245940%_
                    (cons _%lp-hd4589145937%_ _%body4589345930%_))))
               (let ((_%body4589445943%_ (reverse _%body4589345930%_)))
                 ((lambda (_%L45947%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4596245965%_
                                                _%g4596345968%_)
                                         (cons _%g4596245965%_
                                               _%g4596345968%_))
                                       '()
                                       _%L45947%_))))
                  _%body4589445943%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4588945923%_
                                          _%target4588645917%_
                                          '()))
                                       (_%g4588045900%_ _%g4588145904%_)))))
                             (_%g4588045900%_ _%g4588145904%_))))
                     (_%g4588045900%_ _%g4588145904%_)))))
         (_%g4587945971%_ _%stx45877%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx45976%_)
       (let* ((_%g4597945999%_
               (lambda (_%g4598045995%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4598045995%_)))
              (_%g4597846070%_
               (lambda (_%g4598046003%_)
                 (if (gx#stx-pair? _%g4598046003%_)
                     (let ((_%e4598246006%_ (gx#syntax-e _%g4598046003%_)))
                       (let ((_%hd4598346010%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4598246006%_)))
                             (_%tl4598446013%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4598246006%_))))
                         (if (gx#stx-pair/null? _%tl4598446013%_)
                             (let ((_g48120_
                                    (gx#syntax-split-splice
                                     _%tl4598446013%_
                                     '0)))
                               (begin
                                 (let ((_g48121_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48120_)
                                              (##values-length _g48120_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48121_ 2)))
                                       (error "Context expects 2 values"
                                              _g48121_)))
                                 (let ((_%target4598546016%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48120_ 0)))
                                       (_%tl4598746019%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48120_ 1))))
                                   (if (gx#stx-null? _%tl4598746019%_)
                                       (letrec ((_%loop4598846022%_
                                                 (lambda (_%hd4598646026%_
                                                          _%body4599246029%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4598646026%_)
                                                       (let ((_%e4598946032%_
                                                              (gx#syntax-e
                                                               _%hd4598646026%_)))
                                                         (let ((_%lp-hd4599046036%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4598946032%_)))
                       (_%lp-tl4599146039%_
                        (let () (declare (not safe)) (##cdr _%e4598946032%_))))
                   (_%loop4598846022%_
                    _%lp-tl4599146039%_
                    (cons _%lp-hd4599046036%_ _%body4599246029%_))))
               (let ((_%body4599346042%_ (reverse _%body4599246029%_)))
                 ((lambda (_%L46046%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4606146064%_
                                                _%g4606246067%_)
                                         (cons _%g4606146064%_
                                               _%g4606246067%_))
                                       '()
                                       _%L46046%_))))
                  _%body4599346042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4598846022%_
                                          _%target4598546016%_
                                          '()))
                                       (_%g4597945999%_ _%g4598046003%_)))))
                             (_%g4597945999%_ _%g4598046003%_))))
                     (_%g4597945999%_ _%g4598046003%_)))))
         (_%g4597846070%_ _%stx45976%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46075%_)
       (let* ((_%g4607846102%_
               (lambda (_%g4607946098%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4607946098%_)))
              (_%g4607746230%_
               (lambda (_%g4607946106%_)
                 (if (gx#stx-pair? _%g4607946106%_)
                     (let ((_%e4608246109%_ (gx#syntax-e _%g4607946106%_)))
                       (let ((_%hd4608346113%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4608246109%_)))
                             (_%tl4608446116%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4608246109%_))))
                         (if (gx#stx-pair? _%tl4608446116%_)
                             (let ((_%e4608546119%_
                                    (gx#syntax-e _%tl4608446116%_)))
                               (let ((_%hd4608646123%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4608546119%_)))
                                     (_%tl4608746126%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4608546119%_))))
                                 (if (gx#stx-pair/null? _%tl4608746126%_)
                                     (let ((_g48122_
                                            (gx#syntax-split-splice
                                             _%tl4608746126%_
                                             '0)))
                                       (begin
                                         (let ((_g48123_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48122_)
                                                      (##values-length
                                                       _g48122_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48123_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48123_)))
                                         (let ((_%target4608846129%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48122_ 0)))
                                               (_%tl4609046132%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48122_ 1))))
                                           (if (gx#stx-null? _%tl4609046132%_)
                                               (letrec ((_%loop4609146135%_
                                                         (lambda (_%hd4608946139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4609546142%_)
                   (if (gx#stx-pair? _%hd4608946139%_)
                       (let ((_%e4609246145%_ (gx#syntax-e _%hd4608946139%_)))
                         (let ((_%lp-hd4609346149%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4609246145%_)))
                               (_%lp-tl4609446152%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4609246145%_))))
                           (_%loop4609146135%_
                            _%lp-tl4609446152%_
                            (cons _%lp-hd4609346149%_ _%id4609546142%_))))
                       (let ((_%id4609646155%_ (reverse _%id4609546142%_)))
                         ((lambda (_%L46159%_ _%L46161%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4617846181%_
                                                 _%g4617946184%_)
                                          (cons _%g4617846181%_
                                                _%g4617946184%_))
                                        '()
                                        _%L46159%_))
                                (let* ((_%keys46195%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4618646189%_
                                                         _%g4618746192%_)
                                                  (cons _%g4618646189%_
                                                        _%g4618746192%_))
                                                '()
                                                _%L46159%_)))
                                       (_%keytab46206%_
                                        (let ((_%ht46198%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4620046202%_)
                                             (hash-put!
                                              _%ht46198%_
                                              _%g4620046202%_
                                              '#t))
                                           _%keys46195%_)
                                          _%ht46198%_))
                                       (_%imports46209%_
                                        (gx#core-expand-import-source
                                         _%L46161%_))
                                       (_%fold-e46225%_
                                        (letrec ((_%fold-e46212%_
                                                  (lambda (_%in46215%_
                                                           _%r46217%_)
                                                    (if (gx#module-import?
                                                         _%in46215%_)
                                                        (if (hash-get
                                                             _%keytab46206%_
                                                             (gx#module-import-name
                                                              _%in46215%_))
                                                            (cons _%in46215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46217%_)
                    _%r46217%_)
                (if (gx#import-set? _%in46215%_)
                    (foldl _%fold-e46212%_
                           _%r46217%_
                           (gx#import-set-imports _%in46215%_))
                    _%r46217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46212%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46225%_
                                               '()
                                               _%imports46209%_)))
                                (_%g4607846102%_ _%g4607946106%_)))
                          _%id4609646155%_
                          _%hd4608646123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4609146135%_
                                                  _%target4608846129%_
                                                  '()))
                                               (_%g4607846102%_
                                                _%g4607946106%_)))))
                                     (_%g4607846102%_ _%g4607946106%_))))
                             (_%g4607846102%_ _%g4607946106%_))))
                     (_%g4607846102%_ _%g4607946106%_)))))
         (_%g4607746230%_ _%stx46075%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx46235%_)
       (let* ((_%g4623846262%_
               (lambda (_%g4623946258%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4623946258%_)))
              (_%g4623746390%_
               (lambda (_%g4623946266%_)
                 (if (gx#stx-pair? _%g4623946266%_)
                     (let ((_%e4624246269%_ (gx#syntax-e _%g4623946266%_)))
                       (let ((_%hd4624346273%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4624246269%_)))
                             (_%tl4624446276%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4624246269%_))))
                         (if (gx#stx-pair? _%tl4624446276%_)
                             (let ((_%e4624546279%_
                                    (gx#syntax-e _%tl4624446276%_)))
                               (let ((_%hd4624646283%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4624546279%_)))
                                     (_%tl4624746286%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4624546279%_))))
                                 (if (gx#stx-pair/null? _%tl4624746286%_)
                                     (let ((_g48124_
                                            (gx#syntax-split-splice
                                             _%tl4624746286%_
                                             '0)))
                                       (begin
                                         (let ((_g48125_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48124_)
                                                      (##values-length
                                                       _g48124_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48125_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48125_)))
                                         (let ((_%target4624846289%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48124_ 0)))
                                               (_%tl4625046292%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48124_ 1))))
                                           (if (gx#stx-null? _%tl4625046292%_)
                                               (letrec ((_%loop4625146295%_
                                                         (lambda (_%hd4624946299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4625546302%_)
                   (if (gx#stx-pair? _%hd4624946299%_)
                       (let ((_%e4625246305%_ (gx#syntax-e _%hd4624946299%_)))
                         (let ((_%lp-hd4625346309%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4625246305%_)))
                               (_%lp-tl4625446312%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4625246305%_))))
                           (_%loop4625146295%_
                            _%lp-tl4625446312%_
                            (cons _%lp-hd4625346309%_ _%id4625546302%_))))
                       (let ((_%id4625646315%_ (reverse _%id4625546302%_)))
                         ((lambda (_%L46319%_ _%L46321%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4633846341%_
                                                 _%g4633946344%_)
                                          (cons _%g4633846341%_
                                                _%g4633946344%_))
                                        '()
                                        _%L46319%_))
                                (let* ((_%keys46355%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4634646349%_
                                                         _%g4634746352%_)
                                                  (cons _%g4634646349%_
                                                        _%g4634746352%_))
                                                '()
                                                _%L46319%_)))
                                       (_%keytab46366%_
                                        (let ((_%ht46358%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4636046362%_)
                                             (hash-put!
                                              _%ht46358%_
                                              _%g4636046362%_
                                              '#t))
                                           _%keys46355%_)
                                          _%ht46358%_))
                                       (_%imports46369%_
                                        (gx#core-expand-import-source
                                         _%L46321%_))
                                       (_%fold-e46385%_
                                        (letrec ((_%fold-e46372%_
                                                  (lambda (_%in46375%_
                                                           _%r46377%_)
                                                    (if (gx#module-import?
                                                         _%in46375%_)
                                                        (if (hash-get
                                                             _%keytab46366%_
                                                             (gx#module-import-name
                                                              _%in46375%_))
                                                            _%r46377%_
                                                            (cons _%in46375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46377%_))
                (if (gx#import-set? _%in46375%_)
                    (foldl _%fold-e46372%_
                           _%r46377%_
                           (gx#import-set-imports _%in46375%_))
                    (cons _%in46375%_ _%r46377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46372%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46385%_
                                               '()
                                               _%imports46369%_)))
                                (_%g4623846262%_ _%g4623946266%_)))
                          _%id4625646315%_
                          _%hd4624646283%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4625146295%_
                                                  _%target4624846289%_
                                                  '()))
                                               (_%g4623846262%_
                                                _%g4623946266%_)))))
                                     (_%g4623846262%_ _%g4623946266%_))))
                             (_%g4623846262%_ _%g4623946266%_))))
                     (_%g4623846262%_ _%g4623946266%_)))))
         (_%g4623746390%_ _%stx46235%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in46442%_ _%rename46444%_)
      (gx#make-module-import
       (gx#module-import-source _%in46442%_)
       _%rename46444%_
       (gx#module-import-phi _%in46442%_)
       (gx#module-import-weak? _%in46442%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name46395%_ _%pre46397%_)
      (let* ((_%name4639846406%_ _%name46395%_)
             (_%else4640046418%_
              (lambda () (make-symbol _%pre46397%_ _%name46395%_)))
             (_%K4640246426%_
              (lambda (_%mark46422%_ _%id46424%_)
                (cons (make-symbol _%pre46397%_ _%id46424%_) _%mark46422%_))))
        (if (pair? _%name4639846406%_)
            (let ((_%hd4640346430%_
                   (let () (declare (not safe)) (##car _%name4639846406%_)))
                  (_%tl4640446433%_
                   (let () (declare (not safe)) (##cdr _%name4639846406%_))))
              (let* ((_%id46436%_ _%hd4640346430%_)
                     (_%mark46439%_ _%tl4640446433%_))
                (_%K4640246426%_ _%mark46439%_ _%id46436%_)))
            (_%else4640046418%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx46446%_)
       (let* ((_%g4644946482%_
               (lambda (_%g4645046478%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4645046478%_)))
              (_%g4644846677%_
               (lambda (_%g4645046486%_)
                 (if (gx#stx-pair? _%g4645046486%_)
                     (let ((_%e4645446489%_ (gx#syntax-e _%g4645046486%_)))
                       (let ((_%hd4645546493%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4645446489%_)))
                             (_%tl4645646496%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4645446489%_))))
                         (if (gx#stx-pair? _%tl4645646496%_)
                             (let ((_%e4645746499%_
                                    (gx#syntax-e _%tl4645646496%_)))
                               (let ((_%hd4645846503%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4645746499%_)))
                                     (_%tl4645946506%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4645746499%_))))
                                 (if (gx#stx-pair/null? _%tl4645946506%_)
                                     (let ((_g48126_
                                            (gx#syntax-split-splice
                                             _%tl4645946506%_
                                             '0)))
                                       (begin
                                         (let ((_g48127_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48126_)
                                                      (##values-length
                                                       _g48126_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48127_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48127_)))
                                         (let ((_%target4646046509%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48126_ 0)))
                                               (_%tl4646246512%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48126_ 1))))
                                           (if (gx#stx-null? _%tl4646246512%_)
                                               (letrec ((_%loop4646346515%_
                                                         (lambda (_%hd4646146519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4646746522%_
                          _%id4646846524%_)
                   (if (gx#stx-pair? _%hd4646146519%_)
                       (let ((_%e4646446527%_ (gx#syntax-e _%hd4646146519%_)))
                         (let ((_%lp-hd4646546531%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4646446527%_)))
                               (_%lp-tl4646646534%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4646446527%_))))
                           (if (gx#stx-pair? _%lp-hd4646546531%_)
                               (let ((_%e4647146537%_
                                      (gx#syntax-e _%lp-hd4646546531%_)))
                                 (let ((_%hd4647246541%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4647146537%_)))
                                       (_%tl4647346544%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4647146537%_))))
                                   (if (gx#stx-pair? _%tl4647346544%_)
                                       (let ((_%e4647446547%_
                                              (gx#syntax-e _%tl4647346544%_)))
                                         (let ((_%hd4647546551%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4647446547%_)))
                                               (_%tl4647646554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4647446547%_))))
                                           (if (gx#stx-null? _%tl4647646554%_)
                                               (_%loop4646346515%_
                                                _%lp-tl4646646534%_
                                                (cons _%hd4647546551%_
                                                      _%new-id4646746522%_)
                                                (cons _%hd4647246541%_
                                                      _%id4646846524%_))
                                               (_%g4644946482%_
                                                _%g4645046486%_))))
                                       (_%g4644946482%_ _%g4645046486%_))))
                               (_%g4644946482%_ _%g4645046486%_))))
                       (let ((_%new-id4646946557%_
                              (reverse _%new-id4646746522%_))
                             (_%id4647046560%_ (reverse _%id4646846524%_)))
                         ((lambda (_%L46563%_ _%L46565%_ _%L46566%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4658446587%_
                                                      _%g4658546590%_)
                                               (cons _%g4658446587%_
                                                     _%g4658546590%_))
                                             '()
                                             _%L46565%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4659246595%_
                                                      _%g4659346598%_)
                                               (cons _%g4659246595%_
                                                     _%g4659346598%_))
                                             '()
                                             _%L46563%_)))
                                (let* ((_%keytab46601%_ (make-hash-table))
                                       (_%found46604%_ (make-hash-table))
                                       (_%_46627%_
                                        (for-each
                                         (lambda (_%id46607%_ _%new-id46609%_)
                                           (hash-put!
                                            _%keytab46601%_
                                            (gx#core-identifier-key
                                             _%id46607%_)
                                            (gx#core-identifier-key
                                             _%new-id46609%_)))
                                         (foldr (lambda (_%g4661046613%_
                                                         _%g4661146616%_)
                                                  (cons _%g4661046613%_
                                                        _%g4661146616%_))
                                                '()
                                                _%L46565%_)
                                         (foldr (lambda (_%g4661846621%_
                                                         _%g4661946624%_)
                                                  (cons _%g4661846621%_
                                                        _%g4661946624%_))
                                                '()
                                                _%L46563%_)))
                                       (_%imports46630%_
                                        (gx#core-expand-import-source
                                         _%L46566%_))
                                       (_%fold-e46658%_
                                        (letrec ((_%fold-e46633%_
                                                  (lambda (_%in46636%_
                                                           _%r46638%_)
                                                    (if (gx#module-import?
                                                         _%in46636%_)
                                                        (let* ((_%name46642%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in46636%_))
                       (_%$e46645%_ (hash-get _%keytab46601%_ _%name46642%_)))
                  (if _%$e46645%_
                      ((lambda (_%rename46649%_)
                         (hash-put! _%found46604%_ _%name46642%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in46636%_
                                _%rename46649%_)
                               _%r46638%_))
                       _%$e46645%_)
                      (cons _%in46636%_ _%r46638%_)))
                (if (gx#import-set? _%in46636%_)
                    (foldl _%fold-e46633%_
                           _%r46638%_
                           (gx#import-set-imports _%in46636%_))
                    (cons _%in46636%_ _%r46638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46633%_))
                                       (_%new-imports46661%_
                                        (foldl _%fold-e46658%_
                                               '()
                                               _%imports46630%_)))
                                  (for-each
                                   (lambda (_%id46666%_)
                                     (if (hash-get
                                          _%found46604%_
                                          (gx#core-identifier-key _%id46666%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx46446%_
                                          _%id46666%_)))
                                   (foldr (lambda (_%g4666846671%_
                                                   _%g4666946674%_)
                                            (cons _%g4666846671%_
                                                  _%g4666946674%_))
                                          '()
                                          _%L46565%_))
                                  (cons 'begin: _%new-imports46661%_))
                                (_%g4644946482%_ _%g4645046486%_)))
                          _%new-id4646946557%_
                          _%id4647046560%_
                          _%hd4645846503%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4646346515%_
                                                  _%target4646046509%_
                                                  '()
                                                  '()))
                                               (_%g4644946482%_
                                                _%g4645046486%_)))))
                                     (_%g4644946482%_ _%g4645046486%_))))
                             (_%g4644946482%_ _%g4645046486%_))))
                     (_%g4644946482%_ _%g4645046486%_)))))
         (_%g4644846677%_ _%stx46446%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx46682%_)
       (let* ((_%g4668546703%_
               (lambda (_%g4668646699%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4668646699%_)))
              (_%g4668446788%_
               (lambda (_%g4668646707%_)
                 (if (gx#stx-pair? _%g4668646707%_)
                     (let ((_%e4668946710%_ (gx#syntax-e _%g4668646707%_)))
                       (let ((_%hd4669046714%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4668946710%_)))
                             (_%tl4669146717%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4668946710%_))))
                         (if (gx#stx-pair? _%tl4669146717%_)
                             (let ((_%e4669246720%_
                                    (gx#syntax-e _%tl4669146717%_)))
                               (let ((_%hd4669346724%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4669246720%_)))
                                     (_%tl4669446727%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4669246720%_))))
                                 (if (gx#stx-pair? _%tl4669446727%_)
                                     (let ((_%e4669546730%_
                                            (gx#syntax-e _%tl4669446727%_)))
                                       (let ((_%hd4669646734%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4669546730%_)))
                                             (_%tl4669746737%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4669546730%_))))
                                         (if (gx#stx-null? _%tl4669746737%_)
                                             ((lambda (_%L46740%_ _%L46742%_)
                                                (if (gx#identifier? _%L46740%_)
                                                    (let* ((_%pre46758%_
                                                            (gx#stx-e
                                                             _%L46740%_))
                                                           (_%imports46761%_
                                                            (gx#core-expand-import-source
                                                             _%L46742%_))
                                                           (_%rename-e46767%_
                                                            (lambda (_%name46764%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name46764%_
                                                               _%pre46758%_)))
                                                           (_%fold-e46783%_
                                                            (letrec ((_%fold-e46770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in46773%_ _%r46775%_)
                                (if (gx#module-import? _%in46773%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in46773%_
                                           (_%rename-e46767%_
                                            (gx#module-import-name
                                             _%in46773%_)))
                                          _%r46775%_)
                                    (if (gx#import-set? _%in46773%_)
                                        (foldl _%fold-e46770%_
                                               _%r46775%_
                                               (gx#import-set-imports
                                                _%in46773%_))
                                        (cons _%in46773%_ _%r46775%_))))))
                      _%fold-e46770%_)))
              (cons 'begin: (foldl _%fold-e46783%_ '() _%imports46761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4668546703%_
                                                     _%g4668646707%_)))
                                              _%hd4669646734%_
                                              _%hd4669346724%_)
                                             (_%g4668546703%_
                                              _%g4668646707%_))))
                                     (_%g4668546703%_ _%g4668646707%_))))
                             (_%g4668546703%_ _%g4668646707%_))))
                     (_%g4668546703%_ _%g4668646707%_)))))
         (_%g4668446788%_ _%stx46682%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx46792%_)
       (letrec ((_%flatten46795%_
                 (lambda (_%list-of-lists47050%_)
                   (foldr (lambda (_%v47053%_ _%acc47055%_)
                            (if (null? _%v47053%_)
                                _%acc47055%_
                                (if (pair? _%v47053%_)
                                    (append (_%flatten46795%_ _%v47053%_)
                                            _%acc47055%_)
                                    (cons _%v47053%_ _%acc47055%_))))
                          '()
                          _%list-of-lists47050%_)))
                (_%expand-path46797%_
                 (lambda (_%top46918%_ _%mod46920%_)
                   (let* ((_%__stx4802648027%_ _%mod46920%_)
                          (_%g4692346945%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4802648027%_))))
                     (let ((_%__kont4802948030%_
                            (lambda (_%L47013%_ _%L47015%_)
                              (map (lambda (_%mod47030%_)
                                     (gx#stx-identifier
                                      _%top46918%_
                                      _%top46918%_
                                      '"/"
                                      _%mod47030%_))
                                   (_%flatten46795%_
                                    (map (lambda (_%g4703247034%_)
                                           (_%expand-path46797%_
                                            _%L47015%_
                                            _%g4703247034%_))
                                         (foldr (lambda (_%g4703747040%_
                                                         _%g4703847043%_)
                                                  (cons _%g4703747040%_
                                                        _%g4703847043%_))
                                                '()
                                                _%L47013%_))))))
                           (_%__kont4803348034%_
                            (lambda (_%L46952%_)
                              (gx#stx-identifier
                               _%top46918%_
                               _%top46918%_
                               '"/"
                               _%L46952%_))))
                       (let* ((_%g4692246966%_
                               (lambda ()
                                 (let ((_%L46952%_ _%__stx4802648027%_))
                                   (if (or (gx#identifier? _%L46952%_)
                                           (gx#stx-fixnum? _%L46952%_))
                                       (_%__kont4803348034%_ _%L46952%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4692346945%_))))))
                              (_%__match4804948050%_
                               (lambda (_%e4692746973%_
                                        _%hd4692846977%_
                                        _%tl4692946980%_
                                        _%__splice4803148032%_
                                        _%target4693046983%_
                                        _%tl4693246986%_)
                                 (letrec ((_%loop4693346989%_
                                           (lambda (_%hd4693146993%_
                                                    _%mod4693746996%_)
                                             (if (gx#stx-pair?
                                                  _%hd4693146993%_)
                                                 (let ((_%e4693446999%_
                                                        (gx#syntax-e
                                                         _%hd4693146993%_)))
                                                   (let ((_%lp-tl4693647006%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4693446999%_)))
                                                         (_%lp-hd4693547003%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4693446999%_))))
                                                     (_%loop4693346989%_
                                                      _%lp-tl4693647006%_
                                                      (cons _%lp-hd4693547003%_
                                                            _%mod4693746996%_))))
                                                 (let ((_%mod4693847009%_
                                                        (reverse _%mod4693746996%_)))
                                                   (_%__kont4802948030%_
                                                    _%mod4693847009%_
                                                    _%hd4692846977%_))))))
                                   (_%loop4693346989%_
                                    _%target4693046983%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4802648027%_)
                             (let ((_%e4692746973%_
                                    (gx#syntax-e _%__stx4802648027%_)))
                               (let ((_%tl4692946980%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4692746973%_)))
                                     (_%hd4692846977%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4692746973%_))))
                                 (if (gx#stx-pair/null? _%tl4692946980%_)
                                     (let ((_%__splice4803148032%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4692946980%_
                                             '0)))
                                       (let ((_%tl4693246986%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4803148032%_
                                                 '1)))
                                             (_%target4693046983%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4803148032%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4693246986%_)
                                             (_%__match4804948050%_
                                              _%e4692746973%_
                                              _%hd4692846977%_
                                              _%tl4692946980%_
                                              _%__splice4803148032%_
                                              _%target4693046983%_
                                              _%tl4693246986%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4692246966%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4692246966%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4692246966%_)))))))))
         (let* ((_%g4679946823%_
                 (lambda (_%g4680046819%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4680046819%_)))
                (_%g4679846914%_
                 (lambda (_%g4680046827%_)
                   (if (gx#stx-pair? _%g4680046827%_)
                       (let ((_%e4680346830%_ (gx#syntax-e _%g4680046827%_)))
                         (let ((_%hd4680446834%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4680346830%_)))
                               (_%tl4680546837%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4680346830%_))))
                           (if (gx#stx-pair? _%tl4680546837%_)
                               (let ((_%e4680646840%_
                                      (gx#syntax-e _%tl4680546837%_)))
                                 (let ((_%hd4680746844%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4680646840%_)))
                                       (_%tl4680846847%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4680646840%_))))
                                   (if (gx#stx-pair/null? _%tl4680846847%_)
                                       (let ((_g48128_
                                              (gx#syntax-split-splice
                                               _%tl4680846847%_
                                               '0)))
                                         (begin
                                           (let ((_g48129_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48128_)
                                                        (##values-length
                                                         _g48128_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48129_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48129_)))
                                           (let ((_%target4680946850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g48128_ 0)))
                                                 (_%tl4681146853%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g48128_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4681146853%_)
                                                 (letrec ((_%loop4681246856%_
                                                           (lambda (_%hd4681046860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4681646863%_)
                     (if (gx#stx-pair? _%hd4681046860%_)
                         (let ((_%e4681346866%_
                                (gx#syntax-e _%hd4681046860%_)))
                           (let ((_%lp-hd4681446870%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4681346866%_)))
                                 (_%lp-tl4681546873%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4681346866%_))))
                             (_%loop4681246856%_
                              _%lp-tl4681546873%_
                              (cons _%lp-hd4681446870%_ _%mod4681646863%_))))
                         (let ((_%mod4681746876%_ (reverse _%mod4681646863%_)))
                           ((lambda (_%L46880%_ _%L46882%_)
                              (cons 'begin:
                                    (_%flatten46795%_
                                     (map (lambda (_%g4690046902%_)
                                            (_%expand-path46797%_
                                             _%L46882%_
                                             _%g4690046902%_))
                                          (foldr (lambda (_%g4690546908%_
                                                          _%g4690646911%_)
                                                   (cons _%g4690546908%_
                                                         _%g4690646911%_))
                                                 '()
                                                 _%L46880%_)))))
                            _%mod4681746876%_
                            _%hd4680746844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4681246856%_
                                                    _%target4680946850%_
                                                    '()))
                                                 (_%g4679946823%_
                                                  _%g4680046827%_)))))
                                       (_%g4679946823%_ _%g4680046827%_))))
                               (_%g4679946823%_ _%g4680046827%_))))
                       (_%g4679946823%_ _%g4680046827%_)))))
           (_%g4679846914%_ _%stx46792%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47065%_)
       (let* ((_%g4706847092%_
               (lambda (_%g4706947088%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4706947088%_)))
              (_%g4706747220%_
               (lambda (_%g4706947096%_)
                 (if (gx#stx-pair? _%g4706947096%_)
                     (let ((_%e4707247099%_ (gx#syntax-e _%g4706947096%_)))
                       (let ((_%hd4707347103%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4707247099%_)))
                             (_%tl4707447106%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4707247099%_))))
                         (if (gx#stx-pair? _%tl4707447106%_)
                             (let ((_%e4707547109%_
                                    (gx#syntax-e _%tl4707447106%_)))
                               (let ((_%hd4707647113%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4707547109%_)))
                                     (_%tl4707747116%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4707547109%_))))
                                 (if (gx#stx-pair/null? _%tl4707747116%_)
                                     (let ((_g48130_
                                            (gx#syntax-split-splice
                                             _%tl4707747116%_
                                             '0)))
                                       (begin
                                         (let ((_g48131_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48130_)
                                                      (##values-length
                                                       _g48130_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48131_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48131_)))
                                         (let ((_%target4707847119%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48130_ 0)))
                                               (_%tl4708047122%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48130_ 1))))
                                           (if (gx#stx-null? _%tl4708047122%_)
                                               (letrec ((_%loop4708147125%_
                                                         (lambda (_%hd4707947129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4708547132%_)
                   (if (gx#stx-pair? _%hd4707947129%_)
                       (let ((_%e4708247135%_ (gx#syntax-e _%hd4707947129%_)))
                         (let ((_%lp-hd4708347139%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4708247135%_)))
                               (_%lp-tl4708447142%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4708247135%_))))
                           (_%loop4708147125%_
                            _%lp-tl4708447142%_
                            (cons _%lp-hd4708347139%_ _%id4708547132%_))))
                       (let ((_%id4708647145%_ (reverse _%id4708547132%_)))
                         ((lambda (_%L47149%_ _%L47151%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4716847171%_
                                                 _%g4716947174%_)
                                          (cons _%g4716847171%_
                                                _%g4716947174%_))
                                        '()
                                        _%L47149%_))
                                (let* ((_%keys47185%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4717647179%_
                                                         _%g4717747182%_)
                                                  (cons _%g4717647179%_
                                                        _%g4717747182%_))
                                                '()
                                                _%L47149%_)))
                                       (_%keytab47196%_
                                        (let ((_%ht47188%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4719047192%_)
                                             (hash-put!
                                              _%ht47188%_
                                              _%g4719047192%_
                                              '#t))
                                           _%keys47185%_)
                                          _%ht47188%_))
                                       (_%exports47199%_
                                        (gx#core-expand-export-source
                                         _%L47151%_))
                                       (_%fold-e47215%_
                                        (letrec ((_%fold-e47202%_
                                                  (lambda (_%out47205%_
                                                           _%r47207%_)
                                                    (if (gx#module-export?
                                                         _%out47205%_)
                                                        (if (hash-get
                                                             _%keytab47196%_
                                                             (gx#module-export-name
                                                              _%out47205%_))
                                                            _%r47207%_
                                                            (cons _%out47205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47207%_))
                (if (gx#export-set? _%out47205%_)
                    (foldl _%fold-e47202%_
                           _%r47207%_
                           (gx#export-set-exports _%out47205%_))
                    _%r47207%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47202%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47215%_
                                               '()
                                               _%exports47199%_)))
                                (_%g4706847092%_ _%g4706947096%_)))
                          _%id4708647145%_
                          _%hd4707647113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4708147125%_
                                                  _%target4707847119%_
                                                  '()))
                                               (_%g4706847092%_
                                                _%g4706947096%_)))))
                                     (_%g4706847092%_ _%g4706947096%_))))
                             (_%g4706847092%_ _%g4706947096%_))))
                     (_%g4706847092%_ _%g4706947096%_)))))
         (_%g4706747220%_ _%stx47065%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out47225%_ _%rename47227%_)
      (gx#make-module-export
       (gx#module-export-context _%out47225%_)
       (gx#module-export-key _%out47225%_)
       (gx#module-export-phi _%out47225%_)
       _%rename47227%_
       (gx#module-export-weak? _%out47225%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx47229%_)
       (let* ((_%g4723247265%_
               (lambda (_%g4723347261%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4723347261%_)))
              (_%g4723147460%_
               (lambda (_%g4723347269%_)
                 (if (gx#stx-pair? _%g4723347269%_)
                     (let ((_%e4723747272%_ (gx#syntax-e _%g4723347269%_)))
                       (let ((_%hd4723847276%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4723747272%_)))
                             (_%tl4723947279%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4723747272%_))))
                         (if (gx#stx-pair? _%tl4723947279%_)
                             (let ((_%e4724047282%_
                                    (gx#syntax-e _%tl4723947279%_)))
                               (let ((_%hd4724147286%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4724047282%_)))
                                     (_%tl4724247289%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4724047282%_))))
                                 (if (gx#stx-pair/null? _%tl4724247289%_)
                                     (let ((_g48132_
                                            (gx#syntax-split-splice
                                             _%tl4724247289%_
                                             '0)))
                                       (begin
                                         (let ((_g48133_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48132_)
                                                      (##values-length
                                                       _g48132_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48133_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48133_)))
                                         (let ((_%target4724347292%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48132_ 0)))
                                               (_%tl4724547295%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48132_ 1))))
                                           (if (gx#stx-null? _%tl4724547295%_)
                                               (letrec ((_%loop4724647298%_
                                                         (lambda (_%hd4724447302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4725047305%_
                          _%id4725147307%_)
                   (if (gx#stx-pair? _%hd4724447302%_)
                       (let ((_%e4724747310%_ (gx#syntax-e _%hd4724447302%_)))
                         (let ((_%lp-hd4724847314%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4724747310%_)))
                               (_%lp-tl4724947317%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4724747310%_))))
                           (if (gx#stx-pair? _%lp-hd4724847314%_)
                               (let ((_%e4725447320%_
                                      (gx#syntax-e _%lp-hd4724847314%_)))
                                 (let ((_%hd4725547324%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4725447320%_)))
                                       (_%tl4725647327%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4725447320%_))))
                                   (if (gx#stx-pair? _%tl4725647327%_)
                                       (let ((_%e4725747330%_
                                              (gx#syntax-e _%tl4725647327%_)))
                                         (let ((_%hd4725847334%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4725747330%_)))
                                               (_%tl4725947337%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4725747330%_))))
                                           (if (gx#stx-null? _%tl4725947337%_)
                                               (_%loop4724647298%_
                                                _%lp-tl4724947317%_
                                                (cons _%hd4725847334%_
                                                      _%new-id4725047305%_)
                                                (cons _%hd4725547324%_
                                                      _%id4725147307%_))
                                               (_%g4723247265%_
                                                _%g4723347269%_))))
                                       (_%g4723247265%_ _%g4723347269%_))))
                               (_%g4723247265%_ _%g4723347269%_))))
                       (let ((_%new-id4725247340%_
                              (reverse _%new-id4725047305%_))
                             (_%id4725347343%_ (reverse _%id4725147307%_)))
                         ((lambda (_%L47346%_ _%L47348%_ _%L47349%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4736747370%_
                                                      _%g4736847373%_)
                                               (cons _%g4736747370%_
                                                     _%g4736847373%_))
                                             '()
                                             _%L47348%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4737547378%_
                                                      _%g4737647381%_)
                                               (cons _%g4737547378%_
                                                     _%g4737647381%_))
                                             '()
                                             _%L47346%_)))
                                (let* ((_%keytab47384%_ (make-hash-table))
                                       (_%found47387%_ (make-hash-table))
                                       (_%_47410%_
                                        (for-each
                                         (lambda (_%id47390%_ _%new-id47392%_)
                                           (hash-put!
                                            _%keytab47384%_
                                            (gx#core-identifier-key
                                             _%id47390%_)
                                            (gx#core-identifier-key
                                             _%new-id47392%_)))
                                         (foldr (lambda (_%g4739347396%_
                                                         _%g4739447399%_)
                                                  (cons _%g4739347396%_
                                                        _%g4739447399%_))
                                                '()
                                                _%L47348%_)
                                         (foldr (lambda (_%g4740147404%_
                                                         _%g4740247407%_)
                                                  (cons _%g4740147404%_
                                                        _%g4740247407%_))
                                                '()
                                                _%L47346%_)))
                                       (_%exports47413%_
                                        (gx#core-expand-export-source
                                         _%L47349%_))
                                       (_%fold-e47441%_
                                        (letrec ((_%fold-e47416%_
                                                  (lambda (_%out47419%_
                                                           _%r47421%_)
                                                    (if (gx#module-export?
                                                         _%out47419%_)
                                                        (let* ((_%name47425%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out47419%_))
                       (_%$e47428%_ (hash-get _%keytab47384%_ _%name47425%_)))
                  (if _%$e47428%_
                      ((lambda (_%rename47432%_)
                         (hash-put! _%found47387%_ _%name47425%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out47419%_
                                _%rename47432%_)
                               _%r47421%_))
                       _%$e47428%_)
                      (cons _%out47419%_ _%r47421%_)))
                (if (gx#export-set? _%out47419%_)
                    (foldl _%fold-e47416%_
                           _%r47421%_
                           (gx#export-set-exports _%out47419%_))
                    (cons _%out47419%_ _%r47421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47416%_))
                                       (_%new-exports47444%_
                                        (foldl _%fold-e47441%_
                                               '()
                                               _%exports47413%_)))
                                  (for-each
                                   (lambda (_%id47449%_)
                                     (if (hash-get
                                          _%found47387%_
                                          (gx#core-identifier-key _%id47449%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx47229%_
                                          _%id47449%_)))
                                   (foldr (lambda (_%g4745147454%_
                                                   _%g4745247457%_)
                                            (cons _%g4745147454%_
                                                  _%g4745247457%_))
                                          '()
                                          _%L47348%_))
                                  (cons 'begin: _%new-exports47444%_))
                                (_%g4723247265%_ _%g4723347269%_)))
                          _%new-id4725247340%_
                          _%id4725347343%_
                          _%hd4724147286%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4724647298%_
                                                  _%target4724347292%_
                                                  '()
                                                  '()))
                                               (_%g4723247265%_
                                                _%g4723347269%_)))))
                                     (_%g4723247265%_ _%g4723347269%_))))
                             (_%g4723247265%_ _%g4723347269%_))))
                     (_%g4723247265%_ _%g4723347269%_)))))
         (_%g4723147460%_ _%stx47229%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx47465%_)
       (let* ((_%g4746847486%_
               (lambda (_%g4746947482%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4746947482%_)))
              (_%g4746747571%_
               (lambda (_%g4746947490%_)
                 (if (gx#stx-pair? _%g4746947490%_)
                     (let ((_%e4747247493%_ (gx#syntax-e _%g4746947490%_)))
                       (let ((_%hd4747347497%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4747247493%_)))
                             (_%tl4747447500%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4747247493%_))))
                         (if (gx#stx-pair? _%tl4747447500%_)
                             (let ((_%e4747547503%_
                                    (gx#syntax-e _%tl4747447500%_)))
                               (let ((_%hd4747647507%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4747547503%_)))
                                     (_%tl4747747510%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4747547503%_))))
                                 (if (gx#stx-pair? _%tl4747747510%_)
                                     (let ((_%e4747847513%_
                                            (gx#syntax-e _%tl4747747510%_)))
                                       (let ((_%hd4747947517%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4747847513%_)))
                                             (_%tl4748047520%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4747847513%_))))
                                         (if (gx#stx-null? _%tl4748047520%_)
                                             ((lambda (_%L47523%_ _%L47525%_)
                                                (if (gx#identifier? _%L47523%_)
                                                    (let* ((_%pre47541%_
                                                            (gx#stx-e
                                                             _%L47523%_))
                                                           (_%exports47544%_
                                                            (gx#core-expand-export-source
                                                             _%L47525%_))
                                                           (_%rename-e47550%_
                                                            (lambda (_%name47547%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47547%_
                                                               _%pre47541%_)))
                                                           (_%fold-e47566%_
                                                            (letrec ((_%fold-e47553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out47556%_ _%r47558%_)
                                (if (gx#module-export? _%out47556%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out47556%_
                                           (_%rename-e47550%_
                                            (gx#module-export-name
                                             _%out47556%_)))
                                          _%r47558%_)
                                    (if (gx#export-set? _%out47556%_)
                                        (foldl _%fold-e47553%_
                                               _%r47558%_
                                               (gx#export-set-exports
                                                _%out47556%_))
                                        (cons _%out47556%_ _%r47558%_))))))
                      _%fold-e47553%_)))
              (cons 'begin: (foldl _%fold-e47566%_ '() _%exports47544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4746847486%_
                                                     _%g4746947490%_)))
                                              _%hd4747947517%_
                                              _%hd4747647507%_)
                                             (_%g4746847486%_
                                              _%g4746947490%_))))
                                     (_%g4746847486%_ _%g4746947490%_))))
                             (_%g4746847486%_ _%g4746947490%_))))
                     (_%g4746847486%_ _%g4746947490%_)))))
         (_%g4746747571%_ _%stx47465%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx47575%_)
       (letrec ((_%identifiers47578%_
                 (lambda (_%id47810%_ _%unchecked?47812%_)
                   (let ((_%info47814%_
                          (gx#syntax-local-value _%id47810%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info47814%_))
                         (cons _%id47810%_
                               (cons (let ((__obj48111 _%info47814%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj48111
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj48111
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj48111
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj48112
                                                         _%info47814%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj48112
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj48112
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj48112
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?47812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj48113 _%info47814%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48113
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48113
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48113
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj48114 _%info47814%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48114
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48114
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48114
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj48115 _%info47814%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj48115
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj48115
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj48115
                                    'mutators)))))
                 (map cdr
                      (let ((__obj48116 _%info47814%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj48116
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj48116
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj48116 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor47817%_
                                                   (let ((__obj48117
                                                          _%info47814%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj48117
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj48117
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj48117
                                                          'constructor)))))
                                              (if _%ctor47817%_
                                                  (cons _%ctor47817%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx47575%_
                          _%id47810%_))))))
         (let* ((_%__stx4805248053%_ _%stx47575%_)
                (_%g4758247623%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4805248053%_))))
           (let ((_%__kont4805548056%_
                  (lambda (_%L47771%_ _%L47773%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4779247794%_)
                              (_%identifiers47578%_
                               _%g4779247794%_
                               (gx#stx-e _%L47773%_)))
                            (foldr (lambda (_%g4779747800%_ _%g4779847803%_)
                                     (cons _%g4779747800%_ _%g4779847803%_))
                                   '()
                                   _%L47771%_))))))
                 (_%__kont4805948060%_
                  (lambda (_%L47670%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4768647688%_)
                              (_%identifiers47578%_ _%g4768647688%_ '#f))
                            (foldr (lambda (_%g4769147694%_ _%g4769247697%_)
                                     (cons _%g4769147694%_ _%g4769247697%_))
                                   '()
                                   _%L47670%_)))))))
             (let* ((_%__match4810948110%_
                     (lambda (_%e4760647630%_
                              _%hd4760747634%_
                              _%tl4760847637%_
                              _%__splice4806148062%_
                              _%target4760947640%_
                              _%tl4761147643%_)
                       (letrec ((_%loop4761247646%_
                                 (lambda (_%hd4761047650%_ _%id4761647653%_)
                                   (if (gx#stx-pair? _%hd4761047650%_)
                                       (let ((_%e4761347656%_
                                              (gx#syntax-e _%hd4761047650%_)))
                                         (let ((_%lp-tl4761547663%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4761347656%_)))
                                               (_%lp-hd4761447660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4761347656%_))))
                                           (_%loop4761247646%_
                                            _%lp-tl4761547663%_
                                            (cons _%lp-hd4761447660%_
                                                  _%id4761647653%_))))
                                       (let ((_%id4761747666%_
                                              (reverse _%id4761647653%_)))
                                         (_%__kont4805948060%_
                                          _%id4761747666%_))))))
                         (_%loop4761247646%_ _%target4760947640%_ '()))))
                    (_%__match4809548096%_
                     (lambda (_%e4758647707%_
                              _%hd4758747711%_
                              _%tl4758847714%_
                              _%e4758947717%_
                              _%hd4759047721%_
                              _%tl4759147724%_
                              _%e4759247727%_
                              _%e4759347731%_
                              _%hd4759447735%_
                              _%tl4759547738%_
                              _%__splice4805748058%_
                              _%target4759647741%_
                              _%tl4759847744%_)
                       (letrec ((_%loop4759947747%_
                                 (lambda (_%hd4759747751%_ _%id4760347754%_)
                                   (if (gx#stx-pair? _%hd4759747751%_)
                                       (let ((_%e4760047757%_
                                              (gx#syntax-e _%hd4759747751%_)))
                                         (let ((_%lp-tl4760247764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4760047757%_)))
                                               (_%lp-hd4760147761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4760047757%_))))
                                           (_%loop4759947747%_
                                            _%lp-tl4760247764%_
                                            (cons _%lp-hd4760147761%_
                                                  _%id4760347754%_))))
                                       (let ((_%id4760447767%_
                                              (reverse _%id4760347754%_)))
                                         (_%__kont4805548056%_
                                          _%id4760447767%_
                                          _%hd4759447735%_))))))
                         (_%loop4759947747%_ _%target4759647741%_ '())))))
               (if (gx#stx-pair? _%__stx4805248053%_)
                   (let ((_%e4758647707%_ (gx#syntax-e _%__stx4805248053%_)))
                     (let ((_%tl4758847714%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4758647707%_)))
                           (_%hd4758747711%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4758647707%_))))
                       (if (gx#stx-pair? _%tl4758847714%_)
                           (let ((_%e4758947717%_
                                  (gx#syntax-e _%tl4758847714%_)))
                             (let ((_%tl4759147724%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4758947717%_)))
                                   (_%hd4759047721%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4758947717%_))))
                               (if (gx#stx-datum? _%hd4759047721%_)
                                   (let ((_%e4759247727%_
                                          (gx#stx-e _%hd4759047721%_)))
                                     (if (equal? _%e4759247727%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4759147724%_)
                                             (let ((_%e4759347731%_
                                                    (gx#syntax-e
                                                     _%tl4759147724%_)))
                                               (let ((_%tl4759547738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4759347731%_)))
                                                     (_%hd4759447735%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4759347731%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4759547738%_)
                                                     (let ((_%__splice4805748058%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4759547738%_
                                                             '0)))
                                                       (let ((_%tl4759847744%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4805748058%_ '1)))
                     (_%target4759647741%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4805748058%_ '0))))
                 (if (gx#stx-null? _%tl4759847744%_)
                     (_%__match4809548096%_
                      _%e4758647707%_
                      _%hd4758747711%_
                      _%tl4758847714%_
                      _%e4758947717%_
                      _%hd4759047721%_
                      _%tl4759147724%_
                      _%e4759247727%_
                      _%e4759347731%_
                      _%hd4759447735%_
                      _%tl4759547738%_
                      _%__splice4805748058%_
                      _%target4759647741%_
                      _%tl4759847744%_)
                     (if (gx#stx-pair/null? _%tl4758847714%_)
                         (let ((_%__splice4806148062%_
                                (gx#syntax-split-splice->vector
                                 _%tl4758847714%_
                                 '0)))
                           (let ((_%tl4761147643%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4806148062%_ '1)))
                                 (_%target4760947640%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4806148062%_ '0))))
                             (if (gx#stx-null? _%tl4761147643%_)
                                 (_%__match4810948110%_
                                  _%e4758647707%_
                                  _%hd4758747711%_
                                  _%tl4758847714%_
                                  _%__splice4806148062%_
                                  _%target4760947640%_
                                  _%tl4761147643%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4758247623%_)))))
                         (let () (declare (not safe)) (_%g4758247623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4758847714%_)
                                                         (let ((_%__splice4806148062%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4758847714%_
                         '0)))
                   (let ((_%tl4761147643%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4806148062%_ '1)))
                         (_%target4760947640%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4806148062%_ '0))))
                     (if (gx#stx-null? _%tl4761147643%_)
                         (_%__match4810948110%_
                          _%e4758647707%_
                          _%hd4758747711%_
                          _%tl4758847714%_
                          _%__splice4806148062%_
                          _%target4760947640%_
                          _%tl4761147643%_)
                         (let () (declare (not safe)) (_%g4758247623%_)))))
                 (let () (declare (not safe)) (_%g4758247623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4758847714%_)
                                                 (let ((_%__splice4806148062%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4758847714%_
                                                         '0)))
                                                   (let ((_%tl4761147643%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4806148062%_
                                                             '1)))
                                                         (_%target4760947640%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4806148062%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4761147643%_)
                                                         (_%__match4810948110%_
                                                          _%e4758647707%_
                                                          _%hd4758747711%_
                                                          _%tl4758847714%_
                                                          _%__splice4806148062%_
                                                          _%target4760947640%_
                                                          _%tl4761147643%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4758247623%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4758247623%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4758847714%_)
                                             (let ((_%__splice4806148062%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4758847714%_
                                                     '0)))
                                               (let ((_%tl4761147643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4806148062%_
                                                         '1)))
                                                     (_%target4760947640%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4806148062%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4761147643%_)
                                                     (_%__match4810948110%_
                                                      _%e4758647707%_
                                                      _%hd4758747711%_
                                                      _%tl4758847714%_
                                                      _%__splice4806148062%_
                                                      _%target4760947640%_
                                                      _%tl4761147643%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4758247623%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4758247623%_)))))
                                   (if (gx#stx-pair/null? _%tl4758847714%_)
                                       (let ((_%__splice4806148062%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4758847714%_
                                               '0)))
                                         (let ((_%tl4761147643%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4806148062%_
                                                   '1)))
                                               (_%target4760947640%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4806148062%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4761147643%_)
                                               (_%__match4810948110%_
                                                _%e4758647707%_
                                                _%hd4758747711%_
                                                _%tl4758847714%_
                                                _%__splice4806148062%_
                                                _%target4760947640%_
                                                _%tl4761147643%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4758247623%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4758247623%_))))))
                           (if (gx#stx-pair/null? _%tl4758847714%_)
                               (let ((_%__splice4806148062%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4758847714%_
                                       '0)))
                                 (let ((_%tl4761147643%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4806148062%_
                                           '1)))
                                       (_%target4760947640%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4806148062%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4761147643%_)
                                       (_%__match4810948110%_
                                        _%e4758647707%_
                                        _%hd4758747711%_
                                        _%tl4758847714%_
                                        _%__splice4806148062%_
                                        _%target4760947640%_
                                        _%tl4761147643%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4758247623%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4758247623%_))))))
                   (let () (declare (not safe)) (_%g4758247623%_)))))))))))
