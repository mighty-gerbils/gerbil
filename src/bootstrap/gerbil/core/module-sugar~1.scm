(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx55512%_)
      (let* ((_%__stx5829658297%_ _%$stx55512%_)
             (_%g5551755536%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5829658297%_))))
        (let ((_%__kont5829958300%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont5830158302%_
               (lambda (_%g5552255563%_ _%g5552355565%_ _%g5552455566%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g5552355565%_
                                   (cons (cons _%g5552455566%_ _%g5552255563%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g5552355565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx5829658297%_)
              (let ((_%e5551955588%_ (gx#syntax-e _%__stx5829658297%_)))
                (let ((_%tl5552155595%_
                       (let () (declare (not safe)) (##cdr _%e5551955588%_)))
                      (_%hd5552055592%_
                       (let () (declare (not safe)) (##car _%e5551955588%_))))
                  (if (gx#stx-null? _%tl5552155595%_)
                      (_%__kont5829958300%_)
                      (if (gx#stx-pair? _%tl5552155595%_)
                          (let ((_%e5552855553%_
                                 (gx#syntax-e _%tl5552155595%_)))
                            (let ((_%tl5553055560%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5552855553%_)))
                                  (_%hd5552955557%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5552855553%_))))
                              (_%__kont5830158302%_
                               _%tl5553055560%_
                               _%hd5552955557%_
                               _%hd5552055592%_)))
                          (let () (declare (not safe)) (_%g5551755536%_))))))
              (let () (declare (not safe)) (_%g5551755536%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx55606%_)
      (let* ((_%__stx5832658327%_ _%$stx55606%_)
             (_%g5561155651%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5832658327%_))))
        (let ((_%__kont5832958330%_
               (lambda (_%g5561355787%_ _%g5561455789%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g5561455789%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g5561355787%_ '()))
                                   '())))))
              (_%__kont5833158332%_
               (lambda (_%g5562455716%_
                        _%g5562555718%_
                        _%g5562655719%_
                        _%g5562755720%_)
                 (cons _%g5562755720%_
                       (cons _%g5562655719%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g5562555718%_
                                               (foldr (lambda (_%g5574155744%_
                                                               _%g5574255747%_)
                                                        (cons _%g5574155744%_
                                                              _%g5574255747%_))
                                                      '()
                                                      _%g5562455716%_)))
                                   '()))))))
          (let* ((_%__match5838158382%_
                  (lambda (_%e5562855658%_
                           _%hd5562955662%_
                           _%tl5563055665%_
                           _%e5563155668%_
                           _%hd5563255672%_
                           _%tl5563355675%_
                           _%e5563455678%_
                           _%hd5563555682%_
                           _%tl5563655685%_
                           _%__splice5833358334%_
                           _%target5563755688%_
                           _%tl5563955691%_)
                    (letrec ((_%loop5564055694%_
                              (lambda (_%hd5563855698%_ _%body5564455701%_)
                                (if (gx#stx-pair? _%hd5563855698%_)
                                    (let ((_%e5564155703%_
                                           (gx#syntax-e _%hd5563855698%_)))
                                      (let ((_%lp-tl5564355710%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5564155703%_)))
                                            (_%lp-hd5564255707%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5564155703%_))))
                                        (_%loop5564055694%_
                                         _%lp-tl5564355710%_
                                         (cons _%lp-hd5564255707%_
                                               _%body5564455701%_))))
                                    (let ((_%body5564555713%_
                                           (reverse _%body5564455701%_)))
                                      (let ((_%g5562455716%_
                                             _%body5564555713%_)
                                            (_%g5562555718%_ _%tl5563655685%_)
                                            (_%g5562655719%_ _%hd5563555682%_)
                                            (_%g5562755720%_ _%hd5562955662%_))
                                        (if (gx#identifier? _%g5562655719%_)
                                            (_%__kont5833158332%_
                                             _%g5562455716%_
                                             _%g5562555718%_
                                             _%g5562655719%_
                                             _%g5562755720%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g5561155651%_)))))))))
                      (_%loop5564055694%_ _%target5563755688%_ '()))))
                 (_%__match5835558356%_
                  (lambda (_%e5561555757%_
                           _%hd5561655761%_
                           _%tl5561755764%_
                           _%e5561855767%_
                           _%hd5561955771%_
                           _%tl5562055774%_
                           _%e5562155777%_
                           _%hd5562255781%_
                           _%tl5562355784%_)
                    (let ((_%g5561355787%_ _%hd5562255781%_)
                          (_%g5561455789%_ _%hd5561955771%_))
                      (if (gx#identifier? _%g5561455789%_)
                          (_%__kont5832958330%_
                           _%g5561355787%_
                           _%g5561455789%_)
                          (if (gx#stx-pair? _%hd5561955771%_)
                              (let ((_%e5563455678%_
                                     (gx#syntax-e _%hd5561955771%_)))
                                (let ((_%tl5563655685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5563455678%_)))
                                      (_%hd5563555682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5563455678%_))))
                                  (if (gx#stx-pair/null? _%tl5562055774%_)
                                      (let ((_%__splice5833358334%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5562055774%_
                                              '0)))
                                        (let ((_%tl5563955691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5833358334%_
                                                  '1)))
                                              (_%target5563755688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5833358334%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5563955691%_)
                                              (_%__match5838158382%_
                                               _%e5561555757%_
                                               _%hd5561655761%_
                                               _%tl5561755764%_
                                               _%e5561855767%_
                                               _%hd5561955771%_
                                               _%tl5562055774%_
                                               _%e5563455678%_
                                               _%hd5563555682%_
                                               _%tl5563655685%_
                                               _%__splice5833358334%_
                                               _%target5563755688%_
                                               _%tl5563955691%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5561155651%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5561155651%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5561155651%_))))))))
            (if (gx#stx-pair? _%__stx5832658327%_)
                (let ((_%e5561555757%_ (gx#syntax-e _%__stx5832658327%_)))
                  (let ((_%tl5561755764%_
                         (let () (declare (not safe)) (##cdr _%e5561555757%_)))
                        (_%hd5561655761%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5561555757%_))))
                    (if (gx#stx-pair? _%tl5561755764%_)
                        (let ((_%e5561855767%_ (gx#syntax-e _%tl5561755764%_)))
                          (let ((_%tl5562055774%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5561855767%_)))
                                (_%hd5561955771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5561855767%_))))
                            (if (gx#stx-pair? _%tl5562055774%_)
                                (let ((_%e5562155777%_
                                       (gx#syntax-e _%tl5562055774%_)))
                                  (let ((_%tl5562355784%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5562155777%_)))
                                        (_%hd5562255781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5562155777%_))))
                                    (if (gx#stx-null? _%tl5562355784%_)
                                        (_%__match5835558356%_
                                         _%e5561555757%_
                                         _%hd5561655761%_
                                         _%tl5561755764%_
                                         _%e5561855767%_
                                         _%hd5561955771%_
                                         _%tl5562055774%_
                                         _%e5562155777%_
                                         _%hd5562255781%_
                                         _%tl5562355784%_)
                                        (if (gx#stx-pair? _%hd5561955771%_)
                                            (let ((_%e5563455678%_
                                                   (gx#syntax-e
                                                    _%hd5561955771%_)))
                                              (let ((_%tl5563655685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5563455678%_)))
                                                    (_%hd5563555682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5563455678%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5562055774%_)
                                                    (let ((_%__splice5833358334%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5562055774%_
                                                            '0)))
                                                      (let ((_%tl5563955691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5833358334%_ '1)))
                    (_%target5563755688%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5833358334%_ '0))))
                (if (gx#stx-null? _%tl5563955691%_)
                    (_%__match5838158382%_
                     _%e5561555757%_
                     _%hd5561655761%_
                     _%tl5561755764%_
                     _%e5561855767%_
                     _%hd5561955771%_
                     _%tl5562055774%_
                     _%e5563455678%_
                     _%hd5563555682%_
                     _%tl5563655685%_
                     _%__splice5833358334%_
                     _%target5563755688%_
                     _%tl5563955691%_)
                    (let () (declare (not safe)) (_%g5561155651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5561155651%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5561155651%_))))))
                                (if (gx#stx-pair? _%hd5561955771%_)
                                    (let ((_%e5563455678%_
                                           (gx#syntax-e _%hd5561955771%_)))
                                      (let ((_%tl5563655685%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5563455678%_)))
                                            (_%hd5563555682%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5563455678%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl5562055774%_)
                                            (let ((_%__splice5833358334%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl5562055774%_
                                                    '0)))
                                              (let ((_%tl5563955691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5833358334%_
                                                        '1)))
                                                    (_%target5563755688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5833358334%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl5563955691%_)
                                                    (_%__match5838158382%_
                                                     _%e5561555757%_
                                                     _%hd5561655761%_
                                                     _%tl5561755764%_
                                                     _%e5561855767%_
                                                     _%hd5561955771%_
                                                     _%tl5562055774%_
                                                     _%e5563455678%_
                                                     _%hd5563555682%_
                                                     _%tl5563655685%_
                                                     _%__splice5833358334%_
                                                     _%target5563755688%_
                                                     _%tl5563955691%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5561155651%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5561155651%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5561155651%_))))))
                        (let () (declare (not safe)) (_%g5561155651%_)))))
                (let () (declare (not safe)) (_%g5561155651%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx55809%_)
      (let* ((_%__stx5838458385%_ _%$stx55809%_)
             (_%g5581455854%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5838458385%_))))
        (let ((_%__kont5838758388%_
               (lambda (_%g5581655990%_ _%g5581755992%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g5581755992%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g5581655990%_ '()))
                                   '())))))
              (_%__kont5838958390%_
               (lambda (_%g5582755919%_
                        _%g5582855921%_
                        _%g5582955922%_
                        _%g5583055923%_)
                 (cons _%g5583055923%_
                       (cons _%g5582955922%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g5582855921%_
                                               (foldr (lambda (_%g5594455947%_
                                                               _%g5594555950%_)
                                                        (cons _%g5594455947%_
                                                              _%g5594555950%_))
                                                      '()
                                                      _%g5582755919%_)))
                                   '()))))))
          (let* ((_%__match5843958440%_
                  (lambda (_%e5583155861%_
                           _%hd5583255865%_
                           _%tl5583355868%_
                           _%e5583455871%_
                           _%hd5583555875%_
                           _%tl5583655878%_
                           _%e5583755881%_
                           _%hd5583855885%_
                           _%tl5583955888%_
                           _%__splice5839158392%_
                           _%target5584055891%_
                           _%tl5584255894%_)
                    (letrec ((_%loop5584355897%_
                              (lambda (_%hd5584155901%_ _%body5584755904%_)
                                (if (gx#stx-pair? _%hd5584155901%_)
                                    (let ((_%e5584455906%_
                                           (gx#syntax-e _%hd5584155901%_)))
                                      (let ((_%lp-tl5584655913%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5584455906%_)))
                                            (_%lp-hd5584555910%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5584455906%_))))
                                        (_%loop5584355897%_
                                         _%lp-tl5584655913%_
                                         (cons _%lp-hd5584555910%_
                                               _%body5584755904%_))))
                                    (let ((_%body5584855916%_
                                           (reverse _%body5584755904%_)))
                                      (let ((_%g5582755919%_
                                             _%body5584855916%_)
                                            (_%g5582855921%_ _%tl5583955888%_)
                                            (_%g5582955922%_ _%hd5583855885%_)
                                            (_%g5583055923%_ _%hd5583255865%_))
                                        (if (gx#identifier? _%g5582955922%_)
                                            (_%__kont5838958390%_
                                             _%g5582755919%_
                                             _%g5582855921%_
                                             _%g5582955922%_
                                             _%g5583055923%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g5581455854%_)))))))))
                      (_%loop5584355897%_ _%target5584055891%_ '()))))
                 (_%__match5841358414%_
                  (lambda (_%e5581855960%_
                           _%hd5581955964%_
                           _%tl5582055967%_
                           _%e5582155970%_
                           _%hd5582255974%_
                           _%tl5582355977%_
                           _%e5582455980%_
                           _%hd5582555984%_
                           _%tl5582655987%_)
                    (let ((_%g5581655990%_ _%hd5582555984%_)
                          (_%g5581755992%_ _%hd5582255974%_))
                      (if (gx#identifier? _%g5581755992%_)
                          (_%__kont5838758388%_
                           _%g5581655990%_
                           _%g5581755992%_)
                          (if (gx#stx-pair? _%hd5582255974%_)
                              (let ((_%e5583755881%_
                                     (gx#syntax-e _%hd5582255974%_)))
                                (let ((_%tl5583955888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5583755881%_)))
                                      (_%hd5583855885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5583755881%_))))
                                  (if (gx#stx-pair/null? _%tl5582355977%_)
                                      (let ((_%__splice5839158392%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5582355977%_
                                              '0)))
                                        (let ((_%tl5584255894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5839158392%_
                                                  '1)))
                                              (_%target5584055891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5839158392%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5584255894%_)
                                              (_%__match5843958440%_
                                               _%e5581855960%_
                                               _%hd5581955964%_
                                               _%tl5582055967%_
                                               _%e5582155970%_
                                               _%hd5582255974%_
                                               _%tl5582355977%_
                                               _%e5583755881%_
                                               _%hd5583855885%_
                                               _%tl5583955888%_
                                               _%__splice5839158392%_
                                               _%target5584055891%_
                                               _%tl5584255894%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5581455854%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5581455854%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5581455854%_))))))))
            (if (gx#stx-pair? _%__stx5838458385%_)
                (let ((_%e5581855960%_ (gx#syntax-e _%__stx5838458385%_)))
                  (let ((_%tl5582055967%_
                         (let () (declare (not safe)) (##cdr _%e5581855960%_)))
                        (_%hd5581955964%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5581855960%_))))
                    (if (gx#stx-pair? _%tl5582055967%_)
                        (let ((_%e5582155970%_ (gx#syntax-e _%tl5582055967%_)))
                          (let ((_%tl5582355977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5582155970%_)))
                                (_%hd5582255974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5582155970%_))))
                            (if (gx#stx-pair? _%tl5582355977%_)
                                (let ((_%e5582455980%_
                                       (gx#syntax-e _%tl5582355977%_)))
                                  (let ((_%tl5582655987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5582455980%_)))
                                        (_%hd5582555984%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5582455980%_))))
                                    (if (gx#stx-null? _%tl5582655987%_)
                                        (_%__match5841358414%_
                                         _%e5581855960%_
                                         _%hd5581955964%_
                                         _%tl5582055967%_
                                         _%e5582155970%_
                                         _%hd5582255974%_
                                         _%tl5582355977%_
                                         _%e5582455980%_
                                         _%hd5582555984%_
                                         _%tl5582655987%_)
                                        (if (gx#stx-pair? _%hd5582255974%_)
                                            (let ((_%e5583755881%_
                                                   (gx#syntax-e
                                                    _%hd5582255974%_)))
                                              (let ((_%tl5583955888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5583755881%_)))
                                                    (_%hd5583855885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5583755881%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5582355977%_)
                                                    (let ((_%__splice5839158392%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5582355977%_
                                                            '0)))
                                                      (let ((_%tl5584255894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5839158392%_ '1)))
                    (_%target5584055891%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5839158392%_ '0))))
                (if (gx#stx-null? _%tl5584255894%_)
                    (_%__match5843958440%_
                     _%e5581855960%_
                     _%hd5581955964%_
                     _%tl5582055967%_
                     _%e5582155970%_
                     _%hd5582255974%_
                     _%tl5582355977%_
                     _%e5583755881%_
                     _%hd5583855885%_
                     _%tl5583955888%_
                     _%__splice5839158392%_
                     _%target5584055891%_
                     _%tl5584255894%_)
                    (let () (declare (not safe)) (_%g5581455854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5581455854%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5581455854%_))))))
                                (if (gx#stx-pair? _%hd5582255974%_)
                                    (let ((_%e5583755881%_
                                           (gx#syntax-e _%hd5582255974%_)))
                                      (let ((_%tl5583955888%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5583755881%_)))
                                            (_%hd5583855885%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5583755881%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl5582355977%_)
                                            (let ((_%__splice5839158392%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl5582355977%_
                                                    '0)))
                                              (let ((_%tl5584255894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5839158392%_
                                                        '1)))
                                                    (_%target5584055891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5839158392%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl5584255894%_)
                                                    (_%__match5843958440%_
                                                     _%e5581855960%_
                                                     _%hd5581955964%_
                                                     _%tl5582055967%_
                                                     _%e5582155970%_
                                                     _%hd5582255974%_
                                                     _%tl5582355977%_
                                                     _%e5583755881%_
                                                     _%hd5583855885%_
                                                     _%tl5583955888%_
                                                     _%__splice5839158392%_
                                                     _%target5584055891%_
                                                     _%tl5584255894%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5581455854%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5581455854%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5581455854%_))))))
                        (let () (declare (not safe)) (_%g5581455854%_)))))
                (let () (declare (not safe)) (_%g5581455854%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx56012%_)
      (let* ((_%__stx5844258443%_ _%$stx56012%_)
             (_%g5601756057%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5844258443%_))))
        (let ((_%__kont5844558446%_
               (lambda (_%g5601956193%_ _%g5602056195%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g5602056195%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g5601956193%_ '()))
                                   '())))))
              (_%__kont5844758448%_
               (lambda (_%g5603056122%_
                        _%g5603156124%_
                        _%g5603256125%_
                        _%g5603356126%_)
                 (cons _%g5603356126%_
                       (cons _%g5603256125%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g5603156124%_
                                               (foldr (lambda (_%g5614756150%_
                                                               _%g5614856153%_)
                                                        (cons _%g5614756150%_
                                                              _%g5614856153%_))
                                                      '()
                                                      _%g5603056122%_)))
                                   '()))))))
          (let* ((_%__match5849758498%_
                  (lambda (_%e5603456064%_
                           _%hd5603556068%_
                           _%tl5603656071%_
                           _%e5603756074%_
                           _%hd5603856078%_
                           _%tl5603956081%_
                           _%e5604056084%_
                           _%hd5604156088%_
                           _%tl5604256091%_
                           _%__splice5844958450%_
                           _%target5604356094%_
                           _%tl5604556097%_)
                    (letrec ((_%loop5604656100%_
                              (lambda (_%hd5604456104%_ _%body5605056107%_)
                                (if (gx#stx-pair? _%hd5604456104%_)
                                    (let ((_%e5604756109%_
                                           (gx#syntax-e _%hd5604456104%_)))
                                      (let ((_%lp-tl5604956116%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5604756109%_)))
                                            (_%lp-hd5604856113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5604756109%_))))
                                        (_%loop5604656100%_
                                         _%lp-tl5604956116%_
                                         (cons _%lp-hd5604856113%_
                                               _%body5605056107%_))))
                                    (let ((_%body5605156119%_
                                           (reverse _%body5605056107%_)))
                                      (let ((_%g5603056122%_
                                             _%body5605156119%_)
                                            (_%g5603156124%_ _%tl5604256091%_)
                                            (_%g5603256125%_ _%hd5604156088%_)
                                            (_%g5603356126%_ _%hd5603556068%_))
                                        (if (gx#identifier? _%g5603256125%_)
                                            (_%__kont5844758448%_
                                             _%g5603056122%_
                                             _%g5603156124%_
                                             _%g5603256125%_
                                             _%g5603356126%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g5601756057%_)))))))))
                      (_%loop5604656100%_ _%target5604356094%_ '()))))
                 (_%__match5847158472%_
                  (lambda (_%e5602156163%_
                           _%hd5602256167%_
                           _%tl5602356170%_
                           _%e5602456173%_
                           _%hd5602556177%_
                           _%tl5602656180%_
                           _%e5602756183%_
                           _%hd5602856187%_
                           _%tl5602956190%_)
                    (let ((_%g5601956193%_ _%hd5602856187%_)
                          (_%g5602056195%_ _%hd5602556177%_))
                      (if (gx#identifier? _%g5602056195%_)
                          (_%__kont5844558446%_
                           _%g5601956193%_
                           _%g5602056195%_)
                          (if (gx#stx-pair? _%hd5602556177%_)
                              (let ((_%e5604056084%_
                                     (gx#syntax-e _%hd5602556177%_)))
                                (let ((_%tl5604256091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5604056084%_)))
                                      (_%hd5604156088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5604056084%_))))
                                  (if (gx#stx-pair/null? _%tl5602656180%_)
                                      (let ((_%__splice5844958450%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5602656180%_
                                              '0)))
                                        (let ((_%tl5604556097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5844958450%_
                                                  '1)))
                                              (_%target5604356094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5844958450%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5604556097%_)
                                              (_%__match5849758498%_
                                               _%e5602156163%_
                                               _%hd5602256167%_
                                               _%tl5602356170%_
                                               _%e5602456173%_
                                               _%hd5602556177%_
                                               _%tl5602656180%_
                                               _%e5604056084%_
                                               _%hd5604156088%_
                                               _%tl5604256091%_
                                               _%__splice5844958450%_
                                               _%target5604356094%_
                                               _%tl5604556097%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5601756057%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5601756057%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5601756057%_))))))))
            (if (gx#stx-pair? _%__stx5844258443%_)
                (let ((_%e5602156163%_ (gx#syntax-e _%__stx5844258443%_)))
                  (let ((_%tl5602356170%_
                         (let () (declare (not safe)) (##cdr _%e5602156163%_)))
                        (_%hd5602256167%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5602156163%_))))
                    (if (gx#stx-pair? _%tl5602356170%_)
                        (let ((_%e5602456173%_ (gx#syntax-e _%tl5602356170%_)))
                          (let ((_%tl5602656180%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5602456173%_)))
                                (_%hd5602556177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5602456173%_))))
                            (if (gx#stx-pair? _%tl5602656180%_)
                                (let ((_%e5602756183%_
                                       (gx#syntax-e _%tl5602656180%_)))
                                  (let ((_%tl5602956190%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5602756183%_)))
                                        (_%hd5602856187%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5602756183%_))))
                                    (if (gx#stx-null? _%tl5602956190%_)
                                        (_%__match5847158472%_
                                         _%e5602156163%_
                                         _%hd5602256167%_
                                         _%tl5602356170%_
                                         _%e5602456173%_
                                         _%hd5602556177%_
                                         _%tl5602656180%_
                                         _%e5602756183%_
                                         _%hd5602856187%_
                                         _%tl5602956190%_)
                                        (if (gx#stx-pair? _%hd5602556177%_)
                                            (let ((_%e5604056084%_
                                                   (gx#syntax-e
                                                    _%hd5602556177%_)))
                                              (let ((_%tl5604256091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5604056084%_)))
                                                    (_%hd5604156088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5604056084%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5602656180%_)
                                                    (let ((_%__splice5844958450%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5602656180%_
                                                            '0)))
                                                      (let ((_%tl5604556097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5844958450%_ '1)))
                    (_%target5604356094%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5844958450%_ '0))))
                (if (gx#stx-null? _%tl5604556097%_)
                    (_%__match5849758498%_
                     _%e5602156163%_
                     _%hd5602256167%_
                     _%tl5602356170%_
                     _%e5602456173%_
                     _%hd5602556177%_
                     _%tl5602656180%_
                     _%e5604056084%_
                     _%hd5604156088%_
                     _%tl5604256091%_
                     _%__splice5844958450%_
                     _%target5604356094%_
                     _%tl5604556097%_)
                    (let () (declare (not safe)) (_%g5601756057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5601756057%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5601756057%_))))))
                                (if (gx#stx-pair? _%hd5602556177%_)
                                    (let ((_%e5604056084%_
                                           (gx#syntax-e _%hd5602556177%_)))
                                      (let ((_%tl5604256091%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5604056084%_)))
                                            (_%hd5604156088%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5604056084%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl5602656180%_)
                                            (let ((_%__splice5844958450%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl5602656180%_
                                                    '0)))
                                              (let ((_%tl5604556097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5844958450%_
                                                        '1)))
                                                    (_%target5604356094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5844958450%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl5604556097%_)
                                                    (_%__match5849758498%_
                                                     _%e5602156163%_
                                                     _%hd5602256167%_
                                                     _%tl5602356170%_
                                                     _%e5602456173%_
                                                     _%hd5602556177%_
                                                     _%tl5602656180%_
                                                     _%e5604056084%_
                                                     _%hd5604156088%_
                                                     _%tl5604256091%_
                                                     _%__splice5844958450%_
                                                     _%target5604356094%_
                                                     _%tl5604556097%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5601756057%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5601756057%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5601756057%_))))))
                        (let () (declare (not safe)) (_%g5601756057%_)))))
                (let () (declare (not safe)) (_%g5601756057%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx56215%_)
       (let* ((_%g5621856238%_
               (lambda (_%g5621956234%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5621956234%_)))
              (_%g5621756307%_
               (lambda (_%g5621956242%_)
                 (if (gx#stx-pair? _%g5621956242%_)
                     (let ((_%e5622156245%_ (gx#syntax-e _%g5621956242%_)))
                       (let ((_%hd5622256249%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5622156245%_)))
                             (_%tl5622356252%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5622156245%_))))
                         (if (gx#stx-pair/null? _%tl5622356252%_)
                             (let ((_g58592_
                                    (gx#syntax-split-splice
                                     _%tl5622356252%_
                                     '0)))
                               (begin
                                 (let ((_g58593_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g58592_)
                                              (##values-length _g58592_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g58593_ 2)))
                                       (error "Context expects 2 values"
                                              _g58593_)))
                                 (let ((_%target5622456255%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g58592_ 0)))
                                       (_%tl5622656258%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g58592_ 1))))
                                   (if (gx#stx-null? _%tl5622656258%_)
                                       (letrec ((_%loop5622756261%_
                                                 (lambda (_%hd5622556265%_
                                                          _%body5623156268%_)
                                                   (if (gx#stx-pair?
                                                        _%hd5622556265%_)
                                                       (let ((_%e5622856270%_
                                                              (gx#syntax-e
                                                               _%hd5622556265%_)))
                                                         (let ((_%lp-hd5622956274%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5622856270%_)))
                       (_%lp-tl5623056277%_
                        (let () (declare (not safe)) (##cdr _%e5622856270%_))))
                   (_%loop5622756261%_
                    _%lp-tl5623056277%_
                    (cons _%lp-hd5622956274%_ _%body5623156268%_))))
               (let ((_%body5623256280%_ (reverse _%body5623156268%_)))
                 ((lambda (_%g5622056283%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g5629856301%_
                                                _%g5629956304%_)
                                         (cons _%g5629856301%_
                                               _%g5629956304%_))
                                       '()
                                       _%g5622056283%_))))
                  _%body5623256280%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop5622756261%_
                                          _%target5622456255%_
                                          '()))
                                       (_%g5621856238%_ _%g5621956242%_)))))
                             (_%g5621856238%_ _%g5621956242%_))))
                     (_%g5621856238%_ _%g5621956242%_)))))
         (_%g5621756307%_ _%stx56215%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx56312%_)
       (let* ((_%g5631556335%_
               (lambda (_%g5631656331%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5631656331%_)))
              (_%g5631456404%_
               (lambda (_%g5631656339%_)
                 (if (gx#stx-pair? _%g5631656339%_)
                     (let ((_%e5631856342%_ (gx#syntax-e _%g5631656339%_)))
                       (let ((_%hd5631956346%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5631856342%_)))
                             (_%tl5632056349%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5631856342%_))))
                         (if (gx#stx-pair/null? _%tl5632056349%_)
                             (let ((_g58594_
                                    (gx#syntax-split-splice
                                     _%tl5632056349%_
                                     '0)))
                               (begin
                                 (let ((_g58595_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g58594_)
                                              (##values-length _g58594_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g58595_ 2)))
                                       (error "Context expects 2 values"
                                              _g58595_)))
                                 (let ((_%target5632156352%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g58594_ 0)))
                                       (_%tl5632356355%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g58594_ 1))))
                                   (if (gx#stx-null? _%tl5632356355%_)
                                       (letrec ((_%loop5632456358%_
                                                 (lambda (_%hd5632256362%_
                                                          _%body5632856365%_)
                                                   (if (gx#stx-pair?
                                                        _%hd5632256362%_)
                                                       (let ((_%e5632556367%_
                                                              (gx#syntax-e
                                                               _%hd5632256362%_)))
                                                         (let ((_%lp-hd5632656371%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5632556367%_)))
                       (_%lp-tl5632756374%_
                        (let () (declare (not safe)) (##cdr _%e5632556367%_))))
                   (_%loop5632456358%_
                    _%lp-tl5632756374%_
                    (cons _%lp-hd5632656371%_ _%body5632856365%_))))
               (let ((_%body5632956377%_ (reverse _%body5632856365%_)))
                 ((lambda (_%g5631756380%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g5639556398%_
                                                _%g5639656401%_)
                                         (cons _%g5639556398%_
                                               _%g5639656401%_))
                                       '()
                                       _%g5631756380%_))))
                  _%body5632956377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop5632456358%_
                                          _%target5632156352%_
                                          '()))
                                       (_%g5631556335%_ _%g5631656339%_)))))
                             (_%g5631556335%_ _%g5631656339%_))))
                     (_%g5631556335%_ _%g5631656339%_)))))
         (_%g5631456404%_ _%stx56312%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx56409%_)
       (let* ((_%g5641256436%_
               (lambda (_%g5641356432%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5641356432%_)))
              (_%g5641156562%_
               (lambda (_%g5641356440%_)
                 (if (gx#stx-pair? _%g5641356440%_)
                     (let ((_%e5641656443%_ (gx#syntax-e _%g5641356440%_)))
                       (let ((_%hd5641756447%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5641656443%_)))
                             (_%tl5641856450%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5641656443%_))))
                         (if (gx#stx-pair? _%tl5641856450%_)
                             (let ((_%e5641956453%_
                                    (gx#syntax-e _%tl5641856450%_)))
                               (let ((_%hd5642056457%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5641956453%_)))
                                     (_%tl5642156460%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5641956453%_))))
                                 (if (gx#stx-pair/null? _%tl5642156460%_)
                                     (let ((_g58596_
                                            (gx#syntax-split-splice
                                             _%tl5642156460%_
                                             '0)))
                                       (begin
                                         (let ((_g58597_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g58596_)
                                                      (##values-length
                                                       _g58596_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g58597_ 2)))
                                               (error "Context expects 2 values"
                                                      _g58597_)))
                                         (let ((_%target5642256463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58596_ 0)))
                                               (_%tl5642456466%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58596_ 1))))
                                           (if (gx#stx-null? _%tl5642456466%_)
                                               (letrec ((_%loop5642556469%_
                                                         (lambda (_%hd5642356473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id5642956476%_)
                   (if (gx#stx-pair? _%hd5642356473%_)
                       (let ((_%e5642656478%_ (gx#syntax-e _%hd5642356473%_)))
                         (let ((_%lp-hd5642756482%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5642656478%_)))
                               (_%lp-tl5642856485%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5642656478%_))))
                           (_%loop5642556469%_
                            _%lp-tl5642856485%_
                            (cons _%lp-hd5642756482%_ _%id5642956476%_))))
                       (let ((_%id5643056488%_ (reverse _%id5642956476%_)))
                         ((lambda (_%g5641456491%_ _%g5641556493%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g5651056513%_
                                                 _%g5651156516%_)
                                          (cons _%g5651056513%_
                                                _%g5651156516%_))
                                        '()
                                        _%g5641456491%_))
                                (let* ((_%keys56527%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g5651856521%_
                                                         _%g5651956524%_)
                                                  (cons _%g5651856521%_
                                                        _%g5651956524%_))
                                                '()
                                                _%g5641456491%_)))
                                       (_%keytab56538%_
                                        (let ((_%ht56530%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g5653256534%_)
                                             (hash-put!
                                              _%ht56530%_
                                              _%g5653256534%_
                                              '#t))
                                           _%keys56527%_)
                                          _%ht56530%_))
                                       (_%imports56541%_
                                        (gx#core-expand-import-source
                                         _%g5641556493%_))
                                       (_%fold-e56557%_
                                        (letrec ((_%fold-e56544%_
                                                  (lambda (_%in56547%_
                                                           _%r56549%_)
                                                    (if (gx#module-import?
                                                         _%in56547%_)
                                                        (if (hash-get
                                                             _%keytab56538%_
                                                             (gx#module-import-name
                                                              _%in56547%_))
                                                            (cons _%in56547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r56549%_)
                    _%r56549%_)
                (if (gx#import-set? _%in56547%_)
                    (foldl _%fold-e56544%_
                           _%r56549%_
                           (gx#import-set-imports _%in56547%_))
                    _%r56549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e56544%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e56557%_
                                               '()
                                               _%imports56541%_)))
                                (_%g5641256436%_ _%g5641356440%_)))
                          _%id5643056488%_
                          _%hd5642056457%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop5642556469%_
                                                  _%target5642256463%_
                                                  '()))
                                               (_%g5641256436%_
                                                _%g5641356440%_)))))
                                     (_%g5641256436%_ _%g5641356440%_))))
                             (_%g5641256436%_ _%g5641356440%_))))
                     (_%g5641256436%_ _%g5641356440%_)))))
         (_%g5641156562%_ _%stx56409%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx56567%_)
       (let* ((_%g5657056594%_
               (lambda (_%g5657156590%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5657156590%_)))
              (_%g5656956720%_
               (lambda (_%g5657156598%_)
                 (if (gx#stx-pair? _%g5657156598%_)
                     (let ((_%e5657456601%_ (gx#syntax-e _%g5657156598%_)))
                       (let ((_%hd5657556605%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5657456601%_)))
                             (_%tl5657656608%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5657456601%_))))
                         (if (gx#stx-pair? _%tl5657656608%_)
                             (let ((_%e5657756611%_
                                    (gx#syntax-e _%tl5657656608%_)))
                               (let ((_%hd5657856615%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5657756611%_)))
                                     (_%tl5657956618%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5657756611%_))))
                                 (if (gx#stx-pair/null? _%tl5657956618%_)
                                     (let ((_g58598_
                                            (gx#syntax-split-splice
                                             _%tl5657956618%_
                                             '0)))
                                       (begin
                                         (let ((_g58599_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g58598_)
                                                      (##values-length
                                                       _g58598_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g58599_ 2)))
                                               (error "Context expects 2 values"
                                                      _g58599_)))
                                         (let ((_%target5658056621%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58598_ 0)))
                                               (_%tl5658256624%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58598_ 1))))
                                           (if (gx#stx-null? _%tl5658256624%_)
                                               (letrec ((_%loop5658356627%_
                                                         (lambda (_%hd5658156631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id5658756634%_)
                   (if (gx#stx-pair? _%hd5658156631%_)
                       (let ((_%e5658456636%_ (gx#syntax-e _%hd5658156631%_)))
                         (let ((_%lp-hd5658556640%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5658456636%_)))
                               (_%lp-tl5658656643%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5658456636%_))))
                           (_%loop5658356627%_
                            _%lp-tl5658656643%_
                            (cons _%lp-hd5658556640%_ _%id5658756634%_))))
                       (let ((_%id5658856646%_ (reverse _%id5658756634%_)))
                         ((lambda (_%g5657256649%_ _%g5657356651%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g5666856671%_
                                                 _%g5666956674%_)
                                          (cons _%g5666856671%_
                                                _%g5666956674%_))
                                        '()
                                        _%g5657256649%_))
                                (let* ((_%keys56685%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g5667656679%_
                                                         _%g5667756682%_)
                                                  (cons _%g5667656679%_
                                                        _%g5667756682%_))
                                                '()
                                                _%g5657256649%_)))
                                       (_%keytab56696%_
                                        (let ((_%ht56688%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g5669056692%_)
                                             (hash-put!
                                              _%ht56688%_
                                              _%g5669056692%_
                                              '#t))
                                           _%keys56685%_)
                                          _%ht56688%_))
                                       (_%imports56699%_
                                        (gx#core-expand-import-source
                                         _%g5657356651%_))
                                       (_%fold-e56715%_
                                        (letrec ((_%fold-e56702%_
                                                  (lambda (_%in56705%_
                                                           _%r56707%_)
                                                    (if (gx#module-import?
                                                         _%in56705%_)
                                                        (if (hash-get
                                                             _%keytab56696%_
                                                             (gx#module-import-name
                                                              _%in56705%_))
                                                            _%r56707%_
                                                            (cons _%in56705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r56707%_))
                (if (gx#import-set? _%in56705%_)
                    (foldl _%fold-e56702%_
                           _%r56707%_
                           (gx#import-set-imports _%in56705%_))
                    (cons _%in56705%_ _%r56707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e56702%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e56715%_
                                               '()
                                               _%imports56699%_)))
                                (_%g5657056594%_ _%g5657156598%_)))
                          _%id5658856646%_
                          _%hd5657856615%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop5658356627%_
                                                  _%target5658056621%_
                                                  '()))
                                               (_%g5657056594%_
                                                _%g5657156598%_)))))
                                     (_%g5657056594%_ _%g5657156598%_))))
                             (_%g5657056594%_ _%g5657156598%_))))
                     (_%g5657056594%_ _%g5657156598%_)))))
         (_%g5656956720%_ _%stx56567%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in56772%_ _%rename56774%_)
      (gx#make-module-import
       (gx#module-import-source _%in56772%_)
       _%rename56774%_
       (gx#module-import-phi _%in56772%_)
       (gx#module-import-weak? _%in56772%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name56725%_ _%pre56727%_)
      (let* ((_%name5672856736%_ _%name56725%_)
             (_%else5673056748%_
              (lambda () (make-symbol _%pre56727%_ _%name56725%_)))
             (_%K5673256756%_
              (lambda (_%mark56752%_ _%id56754%_)
                (cons (make-symbol _%pre56727%_ _%id56754%_) _%mark56752%_))))
        (if (pair? _%name5672856736%_)
            (let ((_%hd5673356760%_
                   (let () (declare (not safe)) (##car _%name5672856736%_)))
                  (_%tl5673456763%_
                   (let () (declare (not safe)) (##cdr _%name5672856736%_))))
              (let* ((_%id56766%_ _%hd5673356760%_)
                     (_%mark56769%_ _%tl5673456763%_))
                (_%K5673256756%_ _%mark56769%_ _%id56766%_)))
            (_%else5673056748%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx56776%_)
       (let* ((_%g5677956812%_
               (lambda (_%g5678056808%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5678056808%_)))
              (_%g5677857003%_
               (lambda (_%g5678056816%_)
                 (if (gx#stx-pair? _%g5678056816%_)
                     (let ((_%e5678456819%_ (gx#syntax-e _%g5678056816%_)))
                       (let ((_%hd5678556823%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5678456819%_)))
                             (_%tl5678656826%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5678456819%_))))
                         (if (gx#stx-pair? _%tl5678656826%_)
                             (let ((_%e5678756829%_
                                    (gx#syntax-e _%tl5678656826%_)))
                               (let ((_%hd5678856833%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5678756829%_)))
                                     (_%tl5678956836%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5678756829%_))))
                                 (if (gx#stx-pair/null? _%tl5678956836%_)
                                     (let ((_g58600_
                                            (gx#syntax-split-splice
                                             _%tl5678956836%_
                                             '0)))
                                       (begin
                                         (let ((_g58601_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g58600_)
                                                      (##values-length
                                                       _g58600_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g58601_ 2)))
                                               (error "Context expects 2 values"
                                                      _g58601_)))
                                         (let ((_%target5679056839%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58600_ 0)))
                                               (_%tl5679256842%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58600_ 1))))
                                           (if (gx#stx-null? _%tl5679256842%_)
                                               (letrec ((_%loop5679356845%_
                                                         (lambda (_%hd5679156849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id5679756852%_
                          _%id5679856853%_)
                   (if (gx#stx-pair? _%hd5679156849%_)
                       (let ((_%e5679456855%_ (gx#syntax-e _%hd5679156849%_)))
                         (let ((_%lp-hd5679556859%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5679456855%_)))
                               (_%lp-tl5679656862%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5679456855%_))))
                           (if (gx#stx-pair? _%lp-hd5679556859%_)
                               (let ((_%e5680156865%_
                                      (gx#syntax-e _%lp-hd5679556859%_)))
                                 (let ((_%hd5680256869%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e5680156865%_)))
                                       (_%tl5680356872%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e5680156865%_))))
                                   (if (gx#stx-pair? _%tl5680356872%_)
                                       (let ((_%e5680456875%_
                                              (gx#syntax-e _%tl5680356872%_)))
                                         (let ((_%hd5680556879%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5680456875%_)))
                                               (_%tl5680656882%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5680456875%_))))
                                           (if (gx#stx-null? _%tl5680656882%_)
                                               (_%loop5679356845%_
                                                _%lp-tl5679656862%_
                                                (cons _%hd5680556879%_
                                                      _%new-id5679756852%_)
                                                (cons _%hd5680256869%_
                                                      _%id5679856853%_))
                                               (_%g5677956812%_
                                                _%g5678056816%_))))
                                       (_%g5677956812%_ _%g5678056816%_))))
                               (_%g5677956812%_ _%g5678056816%_))))
                       (let ((_%new-id5679956885%_
                              (reverse _%new-id5679756852%_))
                             (_%id5680056887%_ (reverse _%id5679856853%_)))
                         ((lambda (_%g5678156889%_
                                   _%g5678256891%_
                                   _%g5678356892%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g5691056913%_
                                                      _%g5691156916%_)
                                               (cons _%g5691056913%_
                                                     _%g5691156916%_))
                                             '()
                                             _%g5678256891%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g5691856921%_
                                                      _%g5691956924%_)
                                               (cons _%g5691856921%_
                                                     _%g5691956924%_))
                                             '()
                                             _%g5678156889%_)))
                                (let* ((_%keytab56927%_ (make-hash-table))
                                       (_%found56930%_ (make-hash-table))
                                       (_%_56953%_
                                        (for-each
                                         (lambda (_%id56933%_ _%new-id56935%_)
                                           (hash-put!
                                            _%keytab56927%_
                                            (gx#core-identifier-key
                                             _%id56933%_)
                                            (gx#core-identifier-key
                                             _%new-id56935%_)))
                                         (foldr (lambda (_%g5693656939%_
                                                         _%g5693756942%_)
                                                  (cons _%g5693656939%_
                                                        _%g5693756942%_))
                                                '()
                                                _%g5678256891%_)
                                         (foldr (lambda (_%g5694456947%_
                                                         _%g5694556950%_)
                                                  (cons _%g5694456947%_
                                                        _%g5694556950%_))
                                                '()
                                                _%g5678156889%_)))
                                       (_%imports56956%_
                                        (gx#core-expand-import-source
                                         _%g5678356892%_))
                                       (_%fold-e56984%_
                                        (letrec ((_%fold-e56959%_
                                                  (lambda (_%in56962%_
                                                           _%r56964%_)
                                                    (if (gx#module-import?
                                                         _%in56962%_)
                                                        (let* ((_%name56968%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in56962%_))
                       (_%$e56971%_ (hash-get _%keytab56927%_ _%name56968%_)))
                  (if _%$e56971%_
                      ((lambda (_%rename56975%_)
                         (hash-put! _%found56930%_ _%name56968%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in56962%_
                                _%rename56975%_)
                               _%r56964%_))
                       _%$e56971%_)
                      (cons _%in56962%_ _%r56964%_)))
                (if (gx#import-set? _%in56962%_)
                    (foldl _%fold-e56959%_
                           _%r56964%_
                           (gx#import-set-imports _%in56962%_))
                    (cons _%in56962%_ _%r56964%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e56959%_))
                                       (_%new-imports56987%_
                                        (foldl _%fold-e56984%_
                                               '()
                                               _%imports56956%_)))
                                  (for-each
                                   (lambda (_%id56992%_)
                                     (if (hash-get
                                          _%found56930%_
                                          (gx#core-identifier-key _%id56992%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx56776%_
                                          _%id56992%_)))
                                   (foldr (lambda (_%g5699456997%_
                                                   _%g5699557000%_)
                                            (cons _%g5699456997%_
                                                  _%g5699557000%_))
                                          '()
                                          _%g5678256891%_))
                                  (cons 'begin: _%new-imports56987%_))
                                (_%g5677956812%_ _%g5678056816%_)))
                          _%new-id5679956885%_
                          _%id5680056887%_
                          _%hd5678856833%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop5679356845%_
                                                  _%target5679056839%_
                                                  '()
                                                  '()))
                                               (_%g5677956812%_
                                                _%g5678056816%_)))))
                                     (_%g5677956812%_ _%g5678056816%_))))
                             (_%g5677956812%_ _%g5678056816%_))))
                     (_%g5677956812%_ _%g5678056816%_)))))
         (_%g5677857003%_ _%stx56776%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx57008%_)
       (let* ((_%g5701157029%_
               (lambda (_%g5701257025%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5701257025%_)))
              (_%g5701057114%_
               (lambda (_%g5701257033%_)
                 (if (gx#stx-pair? _%g5701257033%_)
                     (let ((_%e5701557036%_ (gx#syntax-e _%g5701257033%_)))
                       (let ((_%hd5701657040%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5701557036%_)))
                             (_%tl5701757043%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5701557036%_))))
                         (if (gx#stx-pair? _%tl5701757043%_)
                             (let ((_%e5701857046%_
                                    (gx#syntax-e _%tl5701757043%_)))
                               (let ((_%hd5701957050%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5701857046%_)))
                                     (_%tl5702057053%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5701857046%_))))
                                 (if (gx#stx-pair? _%tl5702057053%_)
                                     (let ((_%e5702157056%_
                                            (gx#syntax-e _%tl5702057053%_)))
                                       (let ((_%hd5702257060%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5702157056%_)))
                                             (_%tl5702357063%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5702157056%_))))
                                         (if (gx#stx-null? _%tl5702357063%_)
                                             ((lambda (_%g5701357066%_
                                                       _%g5701457068%_)
                                                (if (gx#identifier?
                                                     _%g5701357066%_)
                                                    (let* ((_%pre57084%_
                                                            (gx#stx-e
                                                             _%g5701357066%_))
                                                           (_%imports57087%_
                                                            (gx#core-expand-import-source
                                                             _%g5701457068%_))
                                                           (_%rename-e57093%_
                                                            (lambda (_%name57090%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name57090%_
                                                               _%pre57084%_)))
                                                           (_%fold-e57109%_
                                                            (letrec ((_%fold-e57096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in57099%_ _%r57101%_)
                                (if (gx#module-import? _%in57099%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in57099%_
                                           (_%rename-e57093%_
                                            (gx#module-import-name
                                             _%in57099%_)))
                                          _%r57101%_)
                                    (if (gx#import-set? _%in57099%_)
                                        (foldl _%fold-e57096%_
                                               _%r57101%_
                                               (gx#import-set-imports
                                                _%in57099%_))
                                        (cons _%in57099%_ _%r57101%_))))))
                      _%fold-e57096%_)))
              (cons 'begin: (foldl _%fold-e57109%_ '() _%imports57087%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5701157029%_
                                                     _%g5701257033%_)))
                                              _%hd5702257060%_
                                              _%hd5701957050%_)
                                             (_%g5701157029%_
                                              _%g5701257033%_))))
                                     (_%g5701157029%_ _%g5701257033%_))))
                             (_%g5701157029%_ _%g5701257033%_))))
                     (_%g5701157029%_ _%g5701257033%_)))))
         (_%g5701057114%_ _%stx57008%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx57118%_)
       (letrec ((_%flatten57121%_
                 (lambda (_%list-of-lists57372%_)
                   (foldr (lambda (_%v57375%_ _%acc57377%_)
                            (if (null? _%v57375%_)
                                _%acc57377%_
                                (if (pair? _%v57375%_)
                                    (append (_%flatten57121%_ _%v57375%_)
                                            _%acc57377%_)
                                    (cons _%v57375%_ _%acc57377%_))))
                          '()
                          _%list-of-lists57372%_)))
                (_%expand-path57123%_
                 (lambda (_%top57242%_ _%mod57244%_)
                   (let* ((_%__stx5850058501%_ _%mod57244%_)
                          (_%g5724757269%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx5850058501%_))))
                     (let ((_%__kont5850358504%_
                            (lambda (_%g5724957335%_ _%g5725057337%_)
                              (map (lambda (_%mod57352%_)
                                     (gx#stx-identifier
                                      _%top57242%_
                                      _%top57242%_
                                      '"/"
                                      _%mod57352%_))
                                   (_%flatten57121%_
                                    (map (lambda (_%g5735457356%_)
                                           (_%expand-path57123%_
                                            _%g5725057337%_
                                            _%g5735457356%_))
                                         (foldr (lambda (_%g5735957362%_
                                                         _%g5736057365%_)
                                                  (cons _%g5735957362%_
                                                        _%g5736057365%_))
                                                '()
                                                _%g5724957335%_))))))
                           (_%__kont5850758508%_
                            (lambda (_%g5726357276%_)
                              (gx#stx-identifier
                               _%top57242%_
                               _%top57242%_
                               '"/"
                               _%g5726357276%_))))
                       (let* ((_%g5724657290%_
                               (lambda ()
                                 (let ((_%g5726357276%_ _%__stx5850058501%_))
                                   (if (or (gx#identifier? _%g5726357276%_)
                                           (gx#stx-fixnum? _%g5726357276%_))
                                       (_%__kont5850758508%_ _%g5726357276%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g5724757269%_))))))
                              (_%__match5852358524%_
                               (lambda (_%e5725157297%_
                                        _%hd5725257301%_
                                        _%tl5725357304%_
                                        _%__splice5850558506%_
                                        _%target5725457307%_
                                        _%tl5725657310%_)
                                 (letrec ((_%loop5725757313%_
                                           (lambda (_%hd5725557317%_
                                                    _%mod5726157320%_)
                                             (if (gx#stx-pair?
                                                  _%hd5725557317%_)
                                                 (let ((_%e5725857322%_
                                                        (gx#syntax-e
                                                         _%hd5725557317%_)))
                                                   (let ((_%lp-tl5726057329%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e5725857322%_)))
                                                         (_%lp-hd5725957326%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e5725857322%_))))
                                                     (_%loop5725757313%_
                                                      _%lp-tl5726057329%_
                                                      (cons _%lp-hd5725957326%_
                                                            _%mod5726157320%_))))
                                                 (let ((_%mod5726257332%_
                                                        (reverse _%mod5726157320%_)))
                                                   (_%__kont5850358504%_
                                                    _%mod5726257332%_
                                                    _%hd5725257301%_))))))
                                   (_%loop5725757313%_
                                    _%target5725457307%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx5850058501%_)
                             (let ((_%e5725157297%_
                                    (gx#syntax-e _%__stx5850058501%_)))
                               (let ((_%tl5725357304%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5725157297%_)))
                                     (_%hd5725257301%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5725157297%_))))
                                 (if (gx#stx-pair/null? _%tl5725357304%_)
                                     (let ((_%__splice5850558506%_
                                            (gx#syntax-split-splice->vector
                                             _%tl5725357304%_
                                             '0)))
                                       (let ((_%tl5725657310%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5850558506%_
                                                 '1)))
                                             (_%target5725457307%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5850558506%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl5725657310%_)
                                             (_%__match5852358524%_
                                              _%e5725157297%_
                                              _%hd5725257301%_
                                              _%tl5725357304%_
                                              _%__splice5850558506%_
                                              _%target5725457307%_
                                              _%tl5725657310%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g5724657290%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g5724657290%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g5724657290%_)))))))))
         (let* ((_%g5712557149%_
                 (lambda (_%g5712657145%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g5712657145%_)))
                (_%g5712457238%_
                 (lambda (_%g5712657153%_)
                   (if (gx#stx-pair? _%g5712657153%_)
                       (let ((_%e5712957156%_ (gx#syntax-e _%g5712657153%_)))
                         (let ((_%hd5713057160%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5712957156%_)))
                               (_%tl5713157163%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5712957156%_))))
                           (if (gx#stx-pair? _%tl5713157163%_)
                               (let ((_%e5713257166%_
                                      (gx#syntax-e _%tl5713157163%_)))
                                 (let ((_%hd5713357170%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e5713257166%_)))
                                       (_%tl5713457173%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e5713257166%_))))
                                   (if (gx#stx-pair/null? _%tl5713457173%_)
                                       (let ((_g58602_
                                              (gx#syntax-split-splice
                                               _%tl5713457173%_
                                               '0)))
                                         (begin
                                           (let ((_g58603_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g58602_)
                                                        (##values-length
                                                         _g58602_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g58603_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g58603_)))
                                           (let ((_%target5713557176%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g58602_ 0)))
                                                 (_%tl5713757179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g58602_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl5713757179%_)
                                                 (letrec ((_%loop5713857182%_
                                                           (lambda (_%hd5713657186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod5714257189%_)
                     (if (gx#stx-pair? _%hd5713657186%_)
                         (let ((_%e5713957191%_
                                (gx#syntax-e _%hd5713657186%_)))
                           (let ((_%lp-hd5714057195%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e5713957191%_)))
                                 (_%lp-tl5714157198%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e5713957191%_))))
                             (_%loop5713857182%_
                              _%lp-tl5714157198%_
                              (cons _%lp-hd5714057195%_ _%mod5714257189%_))))
                         (let ((_%mod5714357201%_ (reverse _%mod5714257189%_)))
                           ((lambda (_%g5712757204%_ _%g5712857206%_)
                              (cons 'begin:
                                    (_%flatten57121%_
                                     (map (lambda (_%g5722457226%_)
                                            (_%expand-path57123%_
                                             _%g5712857206%_
                                             _%g5722457226%_))
                                          (foldr (lambda (_%g5722957232%_
                                                          _%g5723057235%_)
                                                   (cons _%g5722957232%_
                                                         _%g5723057235%_))
                                                 '()
                                                 _%g5712757204%_)))))
                            _%mod5714357201%_
                            _%hd5713357170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop5713857182%_
                                                    _%target5713557176%_
                                                    '()))
                                                 (_%g5712557149%_
                                                  _%g5712657153%_)))))
                                       (_%g5712557149%_ _%g5712657153%_))))
                               (_%g5712557149%_ _%g5712657153%_))))
                       (_%g5712557149%_ _%g5712657153%_)))))
           (_%g5712457238%_ _%stx57118%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx57387%_)
       (let* ((_%g5739057414%_
               (lambda (_%g5739157410%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5739157410%_)))
              (_%g5738957540%_
               (lambda (_%g5739157418%_)
                 (if (gx#stx-pair? _%g5739157418%_)
                     (let ((_%e5739457421%_ (gx#syntax-e _%g5739157418%_)))
                       (let ((_%hd5739557425%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5739457421%_)))
                             (_%tl5739657428%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5739457421%_))))
                         (if (gx#stx-pair? _%tl5739657428%_)
                             (let ((_%e5739757431%_
                                    (gx#syntax-e _%tl5739657428%_)))
                               (let ((_%hd5739857435%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5739757431%_)))
                                     (_%tl5739957438%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5739757431%_))))
                                 (if (gx#stx-pair/null? _%tl5739957438%_)
                                     (let ((_g58604_
                                            (gx#syntax-split-splice
                                             _%tl5739957438%_
                                             '0)))
                                       (begin
                                         (let ((_g58605_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g58604_)
                                                      (##values-length
                                                       _g58604_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g58605_ 2)))
                                               (error "Context expects 2 values"
                                                      _g58605_)))
                                         (let ((_%target5740057441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58604_ 0)))
                                               (_%tl5740257444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58604_ 1))))
                                           (if (gx#stx-null? _%tl5740257444%_)
                                               (letrec ((_%loop5740357447%_
                                                         (lambda (_%hd5740157451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id5740757454%_)
                   (if (gx#stx-pair? _%hd5740157451%_)
                       (let ((_%e5740457456%_ (gx#syntax-e _%hd5740157451%_)))
                         (let ((_%lp-hd5740557460%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5740457456%_)))
                               (_%lp-tl5740657463%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5740457456%_))))
                           (_%loop5740357447%_
                            _%lp-tl5740657463%_
                            (cons _%lp-hd5740557460%_ _%id5740757454%_))))
                       (let ((_%id5740857466%_ (reverse _%id5740757454%_)))
                         ((lambda (_%g5739257469%_ _%g5739357471%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g5748857491%_
                                                 _%g5748957494%_)
                                          (cons _%g5748857491%_
                                                _%g5748957494%_))
                                        '()
                                        _%g5739257469%_))
                                (let* ((_%keys57505%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g5749657499%_
                                                         _%g5749757502%_)
                                                  (cons _%g5749657499%_
                                                        _%g5749757502%_))
                                                '()
                                                _%g5739257469%_)))
                                       (_%keytab57516%_
                                        (let ((_%ht57508%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g5751057512%_)
                                             (hash-put!
                                              _%ht57508%_
                                              _%g5751057512%_
                                              '#t))
                                           _%keys57505%_)
                                          _%ht57508%_))
                                       (_%exports57519%_
                                        (gx#core-expand-export-source
                                         _%g5739357471%_))
                                       (_%fold-e57535%_
                                        (letrec ((_%fold-e57522%_
                                                  (lambda (_%out57525%_
                                                           _%r57527%_)
                                                    (if (gx#module-export?
                                                         _%out57525%_)
                                                        (if (hash-get
                                                             _%keytab57516%_
                                                             (gx#module-export-name
                                                              _%out57525%_))
                                                            _%r57527%_
                                                            (cons _%out57525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r57527%_))
                (if (gx#export-set? _%out57525%_)
                    (foldl _%fold-e57522%_
                           _%r57527%_
                           (gx#export-set-exports _%out57525%_))
                    _%r57527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e57522%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e57535%_
                                               '()
                                               _%exports57519%_)))
                                (_%g5739057414%_ _%g5739157418%_)))
                          _%id5740857466%_
                          _%hd5739857435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop5740357447%_
                                                  _%target5740057441%_
                                                  '()))
                                               (_%g5739057414%_
                                                _%g5739157418%_)))))
                                     (_%g5739057414%_ _%g5739157418%_))))
                             (_%g5739057414%_ _%g5739157418%_))))
                     (_%g5739057414%_ _%g5739157418%_)))))
         (_%g5738957540%_ _%stx57387%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx57545%_)
       (let* ((_%g5754857572%_
               (lambda (_%g5754957568%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5754957568%_)))
              (_%g5754757702%_
               (lambda (_%g5754957576%_)
                 (if (gx#stx-pair? _%g5754957576%_)
                     (let ((_%e5755257579%_ (gx#syntax-e _%g5754957576%_)))
                       (let ((_%hd5755357583%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5755257579%_)))
                             (_%tl5755457586%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5755257579%_))))
                         (if (gx#stx-pair? _%tl5755457586%_)
                             (let ((_%e5755557589%_
                                    (gx#syntax-e _%tl5755457586%_)))
                               (let ((_%hd5755657593%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5755557589%_)))
                                     (_%tl5755757596%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5755557589%_))))
                                 (if (gx#stx-pair/null? _%tl5755757596%_)
                                     (let ((_g58606_
                                            (gx#syntax-split-splice
                                             _%tl5755757596%_
                                             '0)))
                                       (begin
                                         (let ((_g58607_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g58606_)
                                                      (##values-length
                                                       _g58606_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g58607_ 2)))
                                               (error "Context expects 2 values"
                                                      _g58607_)))
                                         (let ((_%target5755857599%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58606_ 0)))
                                               (_%tl5756057602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58606_ 1))))
                                           (if (gx#stx-null? _%tl5756057602%_)
                                               (letrec ((_%loop5756157605%_
                                                         (lambda (_%hd5755957609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out5756557612%_)
                   (if (gx#stx-pair? _%hd5755957609%_)
                       (let ((_%e5756257614%_ (gx#syntax-e _%hd5755957609%_)))
                         (let ((_%lp-hd5756357618%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5756257614%_)))
                               (_%lp-tl5756457621%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5756257614%_))))
                           (_%loop5756157605%_
                            _%lp-tl5756457621%_
                            (cons _%lp-hd5756357618%_
                                  _%filter-out5756557612%_))))
                       (let ((_%filter-out5756657624%_
                              (reverse _%filter-out5756557612%_)))
                         ((lambda (_%g5755057627%_ _%g5755157629%_)
                            (let ((_%filtered57647%_ (make-hash-table)))
                              (letrec ((_%fold-out57650%_
                                        (lambda (_%out57692%_ _%r57694%_)
                                          (if (gx#module-export? _%out57692%_)
                                              (cons _%out57692%_ _%r57694%_)
                                              (if (gx#export-set? _%out57692%_)
                                                  (foldl _%fold-out57650%_
                                                         _%r57694%_
                                                         (gx#export-set-exports
                                                          _%out57692%_))
                                                  _%r57694%_)))))
                                (for-each
                                 (lambda (_%src57653%_)
                                   (let* ((_%exports57659%_
                                           (if (gx#identifier? _%src57653%_)
                                               (let ((_%mod57656%_
                                                      (gx#syntax-local-value
                                                       _%src57653%_)))
                                                 (if (gx#module-context?
                                                      _%mod57656%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src57653%_))
                                                 (gx#module-context-export
                                                  _%mod57656%_))
                                               (gx#core-expand-export-source
                                                _%src57653%_)))
                                          (_%exports57662%_
                                           (foldl _%fold-out57650%_
                                                  '()
                                                  _%exports57659%_)))
                                     (for-each
                                      (lambda (_%out57667%_)
                                        (hash-put!
                                         _%filtered57647%_
                                         (gx#module-export-name _%out57667%_)
                                         '#t))
                                      _%exports57662%_)))
                                 (foldr (lambda (_%g5766957672%_
                                                 _%g5767057675%_)
                                          (cons _%g5766957672%_
                                                _%g5767057675%_))
                                        '()
                                        _%g5755057627%_))
                                (let* ((_%exports57678%_
                                        (gx#core-expand-export-source
                                         _%g5755157629%_))
                                       (_%exports57681%_
                                        (foldl _%fold-out57650%_
                                               '()
                                               _%exports57678%_))
                                       (_%exports57687%_
                                        (filter (lambda (_%out57684%_)
                                                  (not (hash-get
                                                        _%filtered57647%_
                                                        (gx#module-export-name
                                                         _%out57684%_))))
                                                _%exports57681%_)))
                                  (cons 'begin: _%exports57687%_)))))
                          _%filter-out5756657624%_
                          _%hd5755657593%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop5756157605%_
                                                  _%target5755857599%_
                                                  '()))
                                               (_%g5754857572%_
                                                _%g5754957576%_)))))
                                     (_%g5754857572%_ _%g5754957576%_))))
                             (_%g5754857572%_ _%g5754957576%_))))
                     (_%g5754857572%_ _%g5754957576%_)))))
         (_%g5754757702%_ _%stx57545%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out57707%_ _%rename57709%_)
      (gx#make-module-export
       (gx#module-export-context _%out57707%_)
       (gx#module-export-key _%out57707%_)
       (gx#module-export-phi _%out57707%_)
       _%rename57709%_
       (gx#module-export-weak? _%out57707%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx57711%_)
       (let* ((_%g5771457747%_
               (lambda (_%g5771557743%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5771557743%_)))
              (_%g5771357938%_
               (lambda (_%g5771557751%_)
                 (if (gx#stx-pair? _%g5771557751%_)
                     (let ((_%e5771957754%_ (gx#syntax-e _%g5771557751%_)))
                       (let ((_%hd5772057758%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5771957754%_)))
                             (_%tl5772157761%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5771957754%_))))
                         (if (gx#stx-pair? _%tl5772157761%_)
                             (let ((_%e5772257764%_
                                    (gx#syntax-e _%tl5772157761%_)))
                               (let ((_%hd5772357768%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5772257764%_)))
                                     (_%tl5772457771%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5772257764%_))))
                                 (if (gx#stx-pair/null? _%tl5772457771%_)
                                     (let ((_g58608_
                                            (gx#syntax-split-splice
                                             _%tl5772457771%_
                                             '0)))
                                       (begin
                                         (let ((_g58609_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g58608_)
                                                      (##values-length
                                                       _g58608_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g58609_ 2)))
                                               (error "Context expects 2 values"
                                                      _g58609_)))
                                         (let ((_%target5772557774%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58608_ 0)))
                                               (_%tl5772757777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g58608_ 1))))
                                           (if (gx#stx-null? _%tl5772757777%_)
                                               (letrec ((_%loop5772857780%_
                                                         (lambda (_%hd5772657784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id5773257787%_
                          _%id5773357788%_)
                   (if (gx#stx-pair? _%hd5772657784%_)
                       (let ((_%e5772957790%_ (gx#syntax-e _%hd5772657784%_)))
                         (let ((_%lp-hd5773057794%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5772957790%_)))
                               (_%lp-tl5773157797%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5772957790%_))))
                           (if (gx#stx-pair? _%lp-hd5773057794%_)
                               (let ((_%e5773657800%_
                                      (gx#syntax-e _%lp-hd5773057794%_)))
                                 (let ((_%hd5773757804%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e5773657800%_)))
                                       (_%tl5773857807%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e5773657800%_))))
                                   (if (gx#stx-pair? _%tl5773857807%_)
                                       (let ((_%e5773957810%_
                                              (gx#syntax-e _%tl5773857807%_)))
                                         (let ((_%hd5774057814%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5773957810%_)))
                                               (_%tl5774157817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5773957810%_))))
                                           (if (gx#stx-null? _%tl5774157817%_)
                                               (_%loop5772857780%_
                                                _%lp-tl5773157797%_
                                                (cons _%hd5774057814%_
                                                      _%new-id5773257787%_)
                                                (cons _%hd5773757804%_
                                                      _%id5773357788%_))
                                               (_%g5771457747%_
                                                _%g5771557751%_))))
                                       (_%g5771457747%_ _%g5771557751%_))))
                               (_%g5771457747%_ _%g5771557751%_))))
                       (let ((_%new-id5773457820%_
                              (reverse _%new-id5773257787%_))
                             (_%id5773557822%_ (reverse _%id5773357788%_)))
                         ((lambda (_%g5771657824%_
                                   _%g5771757826%_
                                   _%g5771857827%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g5784557848%_
                                                      _%g5784657851%_)
                                               (cons _%g5784557848%_
                                                     _%g5784657851%_))
                                             '()
                                             _%g5771757826%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g5785357856%_
                                                      _%g5785457859%_)
                                               (cons _%g5785357856%_
                                                     _%g5785457859%_))
                                             '()
                                             _%g5771657824%_)))
                                (let* ((_%keytab57862%_ (make-hash-table))
                                       (_%found57865%_ (make-hash-table))
                                       (_%_57888%_
                                        (for-each
                                         (lambda (_%id57868%_ _%new-id57870%_)
                                           (hash-put!
                                            _%keytab57862%_
                                            (gx#core-identifier-key
                                             _%id57868%_)
                                            (gx#core-identifier-key
                                             _%new-id57870%_)))
                                         (foldr (lambda (_%g5787157874%_
                                                         _%g5787257877%_)
                                                  (cons _%g5787157874%_
                                                        _%g5787257877%_))
                                                '()
                                                _%g5771757826%_)
                                         (foldr (lambda (_%g5787957882%_
                                                         _%g5788057885%_)
                                                  (cons _%g5787957882%_
                                                        _%g5788057885%_))
                                                '()
                                                _%g5771657824%_)))
                                       (_%exports57891%_
                                        (gx#core-expand-export-source
                                         _%g5771857827%_))
                                       (_%fold-e57919%_
                                        (letrec ((_%fold-e57894%_
                                                  (lambda (_%out57897%_
                                                           _%r57899%_)
                                                    (if (gx#module-export?
                                                         _%out57897%_)
                                                        (let* ((_%name57903%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out57897%_))
                       (_%$e57906%_ (hash-get _%keytab57862%_ _%name57903%_)))
                  (if _%$e57906%_
                      ((lambda (_%rename57910%_)
                         (hash-put! _%found57865%_ _%name57903%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out57897%_
                                _%rename57910%_)
                               _%r57899%_))
                       _%$e57906%_)
                      (cons _%out57897%_ _%r57899%_)))
                (if (gx#export-set? _%out57897%_)
                    (foldl _%fold-e57894%_
                           _%r57899%_
                           (gx#export-set-exports _%out57897%_))
                    (cons _%out57897%_ _%r57899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e57894%_))
                                       (_%new-exports57922%_
                                        (foldl _%fold-e57919%_
                                               '()
                                               _%exports57891%_)))
                                  (for-each
                                   (lambda (_%id57927%_)
                                     (if (hash-get
                                          _%found57865%_
                                          (gx#core-identifier-key _%id57927%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx57711%_
                                          _%id57927%_)))
                                   (foldr (lambda (_%g5792957932%_
                                                   _%g5793057935%_)
                                            (cons _%g5792957932%_
                                                  _%g5793057935%_))
                                          '()
                                          _%g5771757826%_))
                                  (cons 'begin: _%new-exports57922%_))
                                (_%g5771457747%_ _%g5771557751%_)))
                          _%new-id5773457820%_
                          _%id5773557822%_
                          _%hd5772357768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop5772857780%_
                                                  _%target5772557774%_
                                                  '()
                                                  '()))
                                               (_%g5771457747%_
                                                _%g5771557751%_)))))
                                     (_%g5771457747%_ _%g5771557751%_))))
                             (_%g5771457747%_ _%g5771557751%_))))
                     (_%g5771457747%_ _%g5771557751%_)))))
         (_%g5771357938%_ _%stx57711%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx57943%_)
       (let* ((_%g5794657964%_
               (lambda (_%g5794757960%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5794757960%_)))
              (_%g5794558049%_
               (lambda (_%g5794757968%_)
                 (if (gx#stx-pair? _%g5794757968%_)
                     (let ((_%e5795057971%_ (gx#syntax-e _%g5794757968%_)))
                       (let ((_%hd5795157975%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5795057971%_)))
                             (_%tl5795257978%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5795057971%_))))
                         (if (gx#stx-pair? _%tl5795257978%_)
                             (let ((_%e5795357981%_
                                    (gx#syntax-e _%tl5795257978%_)))
                               (let ((_%hd5795457985%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5795357981%_)))
                                     (_%tl5795557988%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5795357981%_))))
                                 (if (gx#stx-pair? _%tl5795557988%_)
                                     (let ((_%e5795657991%_
                                            (gx#syntax-e _%tl5795557988%_)))
                                       (let ((_%hd5795757995%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5795657991%_)))
                                             (_%tl5795857998%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5795657991%_))))
                                         (if (gx#stx-null? _%tl5795857998%_)
                                             ((lambda (_%g5794858001%_
                                                       _%g5794958003%_)
                                                (if (gx#identifier?
                                                     _%g5794858001%_)
                                                    (let* ((_%pre58019%_
                                                            (gx#stx-e
                                                             _%g5794858001%_))
                                                           (_%exports58022%_
                                                            (gx#core-expand-export-source
                                                             _%g5794958003%_))
                                                           (_%rename-e58028%_
                                                            (lambda (_%name58025%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name58025%_
                                                               _%pre58019%_)))
                                                           (_%fold-e58044%_
                                                            (letrec ((_%fold-e58031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out58034%_ _%r58036%_)
                                (if (gx#module-export? _%out58034%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out58034%_
                                           (_%rename-e58028%_
                                            (gx#module-export-name
                                             _%out58034%_)))
                                          _%r58036%_)
                                    (if (gx#export-set? _%out58034%_)
                                        (foldl _%fold-e58031%_
                                               _%r58036%_
                                               (gx#export-set-exports
                                                _%out58034%_))
                                        (cons _%out58034%_ _%r58036%_))))))
                      _%fold-e58031%_)))
              (cons 'begin: (foldl _%fold-e58044%_ '() _%exports58022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5794657964%_
                                                     _%g5794757968%_)))
                                              _%hd5795757995%_
                                              _%hd5795457985%_)
                                             (_%g5794657964%_
                                              _%g5794757968%_))))
                                     (_%g5794657964%_ _%g5794757968%_))))
                             (_%g5794657964%_ _%g5794757968%_))))
                     (_%g5794657964%_ _%g5794757968%_)))))
         (_%g5794558049%_ _%stx57943%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx58053%_)
       (letrec ((_%identifiers58056%_
                 (lambda (_%id58284%_ _%unchecked?58286%_)
                   (let ((_%info58288%_
                          (gx#syntax-local-value _%id58284%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info58288%_))
                         (cons _%id58284%_
                               (cons (let ((__obj58585 _%info58288%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj58585
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj58585
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj58585
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj58586
                                                         _%info58288%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj58586
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj58586
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj58586
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?58286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj58587 _%info58288%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj58587
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj58587
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj58587
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj58588 _%info58288%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj58588
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj58588
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj58588
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj58589 _%info58288%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj58589
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj58589
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj58589
                                    'mutators)))))
                 (map cdr
                      (let ((__obj58590 _%info58288%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj58590
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj58590
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj58590 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor58291%_
                                                   (let ((__obj58591
                                                          _%info58288%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj58591
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj58591
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj58591
                                                          'constructor)))))
                                              (if _%ctor58291%_
                                                  (cons _%ctor58291%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx58053%_
                          _%id58284%_))))))
         (let* ((_%__stx5852658527%_ _%stx58053%_)
                (_%g5806058101%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx5852658527%_))))
           (let ((_%__kont5852958530%_
                  (lambda (_%g5806258245%_ _%g5806358247%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g5826658268%_)
                              (_%identifiers58056%_
                               _%g5826658268%_
                               (gx#stx-e _%g5806358247%_)))
                            (foldr (lambda (_%g5827158274%_ _%g5827258277%_)
                                     (cons _%g5827158274%_ _%g5827258277%_))
                                   '()
                                   _%g5806258245%_))))))
                 (_%__kont5853358534%_
                  (lambda (_%g5808358146%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g5816258164%_)
                              (_%identifiers58056%_ _%g5816258164%_ '#f))
                            (foldr (lambda (_%g5816758170%_ _%g5816858173%_)
                                     (cons _%g5816758170%_ _%g5816858173%_))
                                   '()
                                   _%g5808358146%_)))))))
             (let* ((_%__match5858358584%_
                     (lambda (_%e5808458108%_
                              _%hd5808558112%_
                              _%tl5808658115%_
                              _%__splice5853558536%_
                              _%target5808758118%_
                              _%tl5808958121%_)
                       (letrec ((_%loop5809058124%_
                                 (lambda (_%hd5808858128%_ _%id5809458131%_)
                                   (if (gx#stx-pair? _%hd5808858128%_)
                                       (let ((_%e5809158133%_
                                              (gx#syntax-e _%hd5808858128%_)))
                                         (let ((_%lp-tl5809358140%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5809158133%_)))
                                               (_%lp-hd5809258137%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5809158133%_))))
                                           (_%loop5809058124%_
                                            _%lp-tl5809358140%_
                                            (cons _%lp-hd5809258137%_
                                                  _%id5809458131%_))))
                                       (let ((_%id5809558143%_
                                              (reverse _%id5809458131%_)))
                                         (_%__kont5853358534%_
                                          _%id5809558143%_))))))
                         (_%loop5809058124%_ _%target5808758118%_ '()))))
                    (_%__match5856958570%_
                     (lambda (_%e5806458183%_
                              _%hd5806558187%_
                              _%tl5806658190%_
                              _%e5806758193%_
                              _%hd5806858197%_
                              _%tl5806958200%_
                              _%e5807058203%_
                              _%e5807158207%_
                              _%hd5807258211%_
                              _%tl5807358214%_
                              _%__splice5853158532%_
                              _%target5807458217%_
                              _%tl5807658220%_)
                       (letrec ((_%loop5807758223%_
                                 (lambda (_%hd5807558227%_ _%id5808158230%_)
                                   (if (gx#stx-pair? _%hd5807558227%_)
                                       (let ((_%e5807858232%_
                                              (gx#syntax-e _%hd5807558227%_)))
                                         (let ((_%lp-tl5808058239%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5807858232%_)))
                                               (_%lp-hd5807958236%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5807858232%_))))
                                           (_%loop5807758223%_
                                            _%lp-tl5808058239%_
                                            (cons _%lp-hd5807958236%_
                                                  _%id5808158230%_))))
                                       (let ((_%id5808258242%_
                                              (reverse _%id5808158230%_)))
                                         (_%__kont5852958530%_
                                          _%id5808258242%_
                                          _%hd5807258211%_))))))
                         (_%loop5807758223%_ _%target5807458217%_ '())))))
               (if (gx#stx-pair? _%__stx5852658527%_)
                   (let ((_%e5806458183%_ (gx#syntax-e _%__stx5852658527%_)))
                     (let ((_%tl5806658190%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e5806458183%_)))
                           (_%hd5806558187%_
                            (let ()
                              (declare (not safe))
                              (##car _%e5806458183%_))))
                       (if (gx#stx-pair? _%tl5806658190%_)
                           (let ((_%e5806758193%_
                                  (gx#syntax-e _%tl5806658190%_)))
                             (let ((_%tl5806958200%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e5806758193%_)))
                                   (_%hd5806858197%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e5806758193%_))))
                               (if (gx#stx-datum? _%hd5806858197%_)
                                   (let ((_%e5807058203%_
                                          (gx#stx-e _%hd5806858197%_)))
                                     (if (equal? _%e5807058203%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl5806958200%_)
                                             (let ((_%e5807158207%_
                                                    (gx#syntax-e
                                                     _%tl5806958200%_)))
                                               (let ((_%tl5807358214%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5807158207%_)))
                                                     (_%hd5807258211%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5807158207%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl5807358214%_)
                                                     (let ((_%__splice5853158532%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl5807358214%_
                                                             '0)))
                                                       (let ((_%tl5807658220%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice5853158532%_ '1)))
                     (_%target5807458217%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice5853158532%_ '0))))
                 (if (gx#stx-null? _%tl5807658220%_)
                     (_%__match5856958570%_
                      _%e5806458183%_
                      _%hd5806558187%_
                      _%tl5806658190%_
                      _%e5806758193%_
                      _%hd5806858197%_
                      _%tl5806958200%_
                      _%e5807058203%_
                      _%e5807158207%_
                      _%hd5807258211%_
                      _%tl5807358214%_
                      _%__splice5853158532%_
                      _%target5807458217%_
                      _%tl5807658220%_)
                     (if (gx#stx-pair/null? _%tl5806658190%_)
                         (let ((_%__splice5853558536%_
                                (gx#syntax-split-splice->vector
                                 _%tl5806658190%_
                                 '0)))
                           (let ((_%tl5808958121%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5853558536%_ '1)))
                                 (_%target5808758118%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5853558536%_ '0))))
                             (if (gx#stx-null? _%tl5808958121%_)
                                 (_%__match5858358584%_
                                  _%e5806458183%_
                                  _%hd5806558187%_
                                  _%tl5806658190%_
                                  _%__splice5853558536%_
                                  _%target5808758118%_
                                  _%tl5808958121%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g5806058101%_)))))
                         (let () (declare (not safe)) (_%g5806058101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl5806658190%_)
                                                         (let ((_%__splice5853558536%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl5806658190%_
                         '0)))
                   (let ((_%tl5808958121%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5853558536%_ '1)))
                         (_%target5808758118%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5853558536%_ '0))))
                     (if (gx#stx-null? _%tl5808958121%_)
                         (_%__match5858358584%_
                          _%e5806458183%_
                          _%hd5806558187%_
                          _%tl5806658190%_
                          _%__splice5853558536%_
                          _%target5808758118%_
                          _%tl5808958121%_)
                         (let () (declare (not safe)) (_%g5806058101%_)))))
                 (let () (declare (not safe)) (_%g5806058101%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl5806658190%_)
                                                 (let ((_%__splice5853558536%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl5806658190%_
                                                         '0)))
                                                   (let ((_%tl5808958121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5853558536%_
                                                             '1)))
                                                         (_%target5808758118%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5853558536%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl5808958121%_)
                                                         (_%__match5858358584%_
                                                          _%e5806458183%_
                                                          _%hd5806558187%_
                                                          _%tl5806658190%_
                                                          _%__splice5853558536%_
                                                          _%target5808758118%_
                                                          _%tl5808958121%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g5806058101%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g5806058101%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl5806658190%_)
                                             (let ((_%__splice5853558536%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl5806658190%_
                                                     '0)))
                                               (let ((_%tl5808958121%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5853558536%_
                                                         '1)))
                                                     (_%target5808758118%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5853558536%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl5808958121%_)
                                                     (_%__match5858358584%_
                                                      _%e5806458183%_
                                                      _%hd5806558187%_
                                                      _%tl5806658190%_
                                                      _%__splice5853558536%_
                                                      _%target5808758118%_
                                                      _%tl5808958121%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g5806058101%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g5806058101%_)))))
                                   (if (gx#stx-pair/null? _%tl5806658190%_)
                                       (let ((_%__splice5853558536%_
                                              (gx#syntax-split-splice->vector
                                               _%tl5806658190%_
                                               '0)))
                                         (let ((_%tl5808958121%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5853558536%_
                                                   '1)))
                                               (_%target5808758118%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5853558536%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl5808958121%_)
                                               (_%__match5858358584%_
                                                _%e5806458183%_
                                                _%hd5806558187%_
                                                _%tl5806658190%_
                                                _%__splice5853558536%_
                                                _%target5808758118%_
                                                _%tl5808958121%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g5806058101%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g5806058101%_))))))
                           (if (gx#stx-pair/null? _%tl5806658190%_)
                               (let ((_%__splice5853558536%_
                                      (gx#syntax-split-splice->vector
                                       _%tl5806658190%_
                                       '0)))
                                 (let ((_%tl5808958121%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5853558536%_
                                           '1)))
                                       (_%target5808758118%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5853558536%_
                                           '0))))
                                   (if (gx#stx-null? _%tl5808958121%_)
                                       (_%__match5858358584%_
                                        _%e5806458183%_
                                        _%hd5806558187%_
                                        _%tl5806658190%_
                                        _%__splice5853558536%_
                                        _%target5808758118%_
                                        _%tl5808958121%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g5806058101%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g5806058101%_))))))
                   (let () (declare (not safe)) (_%g5806058101%_)))))))))))
