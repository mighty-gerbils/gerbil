(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45848%_)
      (let* ((_%__stx4847048471%_ _%$stx45848%_)
             (_%g4585345872%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4847048471%_))))
        (let ((_%__kont4847348474%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4847548476%_
               (lambda (_%g4585845899%_ _%g4585945901%_ _%g4586045902%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4585945901%_
                                   (cons (cons _%g4586045902%_ _%g4585845899%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4585945901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4847048471%_)
              (let ((_%e4585545924%_ (gx#syntax-e _%__stx4847048471%_)))
                (let ((_%tl4585745931%_
                       (let () (declare (not safe)) (##cdr _%e4585545924%_)))
                      (_%hd4585645928%_
                       (let () (declare (not safe)) (##car _%e4585545924%_))))
                  (if (gx#stx-null? _%tl4585745931%_)
                      (_%__kont4847348474%_)
                      (if (gx#stx-pair? _%tl4585745931%_)
                          (let ((_%e4586445889%_
                                 (gx#syntax-e _%tl4585745931%_)))
                            (let ((_%tl4586645896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4586445889%_)))
                                  (_%hd4586545893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4586445889%_))))
                              (_%__kont4847548476%_
                               _%tl4586645896%_
                               _%hd4586545893%_
                               _%hd4585645928%_)))
                          (let () (declare (not safe)) (_%g4585345872%_))))))
              (let () (declare (not safe)) (_%g4585345872%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx45942%_)
      (let* ((_%__stx4850048501%_ _%$stx45942%_)
             (_%g4594745987%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4850048501%_))))
        (let ((_%__kont4850348504%_
               (lambda (_%g4594946123%_ _%g4595046125%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4595046125%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4594946123%_ '()))
                                   '())))))
              (_%__kont4850548506%_
               (lambda (_%g4596046052%_
                        _%g4596146054%_
                        _%g4596246055%_
                        _%g4596346056%_)
                 (cons _%g4596346056%_
                       (cons _%g4596246055%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4596146054%_
                                               (foldr (lambda (_%g4607746080%_
                                                               _%g4607846083%_)
                                                        (cons _%g4607746080%_
                                                              _%g4607846083%_))
                                                      '()
                                                      _%g4596046052%_)))
                                   '()))))))
          (let* ((_%__match4855548556%_
                  (lambda (_%e4596445994%_
                           _%hd4596545998%_
                           _%tl4596646001%_
                           _%e4596746004%_
                           _%hd4596846008%_
                           _%tl4596946011%_
                           _%e4597046014%_
                           _%hd4597146018%_
                           _%tl4597246021%_
                           _%__splice4850748508%_
                           _%target4597346024%_
                           _%tl4597546027%_)
                    (letrec ((_%loop4597646030%_
                              (lambda (_%hd4597446034%_ _%body4598046037%_)
                                (if (gx#stx-pair? _%hd4597446034%_)
                                    (let ((_%e4597746039%_
                                           (gx#syntax-e _%hd4597446034%_)))
                                      (let ((_%lp-tl4597946046%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4597746039%_)))
                                            (_%lp-hd4597846043%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4597746039%_))))
                                        (_%loop4597646030%_
                                         _%lp-tl4597946046%_
                                         (cons _%lp-hd4597846043%_
                                               _%body4598046037%_))))
                                    (let ((_%body4598146049%_
                                           (reverse _%body4598046037%_)))
                                      (let ((_%g4596046052%_
                                             _%body4598146049%_)
                                            (_%g4596146054%_ _%tl4597246021%_)
                                            (_%g4596246055%_ _%hd4597146018%_)
                                            (_%g4596346056%_ _%hd4596545998%_))
                                        (if (gx#identifier? _%g4596246055%_)
                                            (_%__kont4850548506%_
                                             _%g4596046052%_
                                             _%g4596146054%_
                                             _%g4596246055%_
                                             _%g4596346056%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4594745987%_)))))))))
                      (_%loop4597646030%_ _%target4597346024%_ '()))))
                 (_%__match4852948530%_
                  (lambda (_%e4595146093%_
                           _%hd4595246097%_
                           _%tl4595346100%_
                           _%e4595446103%_
                           _%hd4595546107%_
                           _%tl4595646110%_
                           _%e4595746113%_
                           _%hd4595846117%_
                           _%tl4595946120%_)
                    (let ((_%g4594946123%_ _%hd4595846117%_)
                          (_%g4595046125%_ _%hd4595546107%_))
                      (if (gx#identifier? _%g4595046125%_)
                          (_%__kont4850348504%_
                           _%g4594946123%_
                           _%g4595046125%_)
                          (if (gx#stx-pair? _%hd4595546107%_)
                              (let ((_%e4597046014%_
                                     (gx#syntax-e _%hd4595546107%_)))
                                (let ((_%tl4597246021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4597046014%_)))
                                      (_%hd4597146018%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4597046014%_))))
                                  (if (gx#stx-pair/null? _%tl4595646110%_)
                                      (let ((_%__splice4850748508%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4595646110%_
                                              '0)))
                                        (let ((_%tl4597546027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4850748508%_
                                                  '1)))
                                              (_%target4597346024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4850748508%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4597546027%_)
                                              (_%__match4855548556%_
                                               _%e4595146093%_
                                               _%hd4595246097%_
                                               _%tl4595346100%_
                                               _%e4595446103%_
                                               _%hd4595546107%_
                                               _%tl4595646110%_
                                               _%e4597046014%_
                                               _%hd4597146018%_
                                               _%tl4597246021%_
                                               _%__splice4850748508%_
                                               _%target4597346024%_
                                               _%tl4597546027%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4594745987%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4594745987%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4594745987%_))))))))
            (if (gx#stx-pair? _%__stx4850048501%_)
                (let ((_%e4595146093%_ (gx#syntax-e _%__stx4850048501%_)))
                  (let ((_%tl4595346100%_
                         (let () (declare (not safe)) (##cdr _%e4595146093%_)))
                        (_%hd4595246097%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4595146093%_))))
                    (if (gx#stx-pair? _%tl4595346100%_)
                        (let ((_%e4595446103%_ (gx#syntax-e _%tl4595346100%_)))
                          (let ((_%tl4595646110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4595446103%_)))
                                (_%hd4595546107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4595446103%_))))
                            (if (gx#stx-pair? _%tl4595646110%_)
                                (let ((_%e4595746113%_
                                       (gx#syntax-e _%tl4595646110%_)))
                                  (let ((_%tl4595946120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4595746113%_)))
                                        (_%hd4595846117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4595746113%_))))
                                    (if (gx#stx-null? _%tl4595946120%_)
                                        (_%__match4852948530%_
                                         _%e4595146093%_
                                         _%hd4595246097%_
                                         _%tl4595346100%_
                                         _%e4595446103%_
                                         _%hd4595546107%_
                                         _%tl4595646110%_
                                         _%e4595746113%_
                                         _%hd4595846117%_
                                         _%tl4595946120%_)
                                        (if (gx#stx-pair? _%hd4595546107%_)
                                            (let ((_%e4597046014%_
                                                   (gx#syntax-e
                                                    _%hd4595546107%_)))
                                              (let ((_%tl4597246021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4597046014%_)))
                                                    (_%hd4597146018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4597046014%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4595646110%_)
                                                    (let ((_%__splice4850748508%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4595646110%_
                                                            '0)))
                                                      (let ((_%tl4597546027%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4850748508%_ '1)))
                    (_%target4597346024%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4850748508%_ '0))))
                (if (gx#stx-null? _%tl4597546027%_)
                    (_%__match4855548556%_
                     _%e4595146093%_
                     _%hd4595246097%_
                     _%tl4595346100%_
                     _%e4595446103%_
                     _%hd4595546107%_
                     _%tl4595646110%_
                     _%e4597046014%_
                     _%hd4597146018%_
                     _%tl4597246021%_
                     _%__splice4850748508%_
                     _%target4597346024%_
                     _%tl4597546027%_)
                    (let () (declare (not safe)) (_%g4594745987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4594745987%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4594745987%_))))))
                                (if (gx#stx-pair? _%hd4595546107%_)
                                    (let ((_%e4597046014%_
                                           (gx#syntax-e _%hd4595546107%_)))
                                      (let ((_%tl4597246021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4597046014%_)))
                                            (_%hd4597146018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4597046014%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4595646110%_)
                                            (let ((_%__splice4850748508%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4595646110%_
                                                    '0)))
                                              (let ((_%tl4597546027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4850748508%_
                                                        '1)))
                                                    (_%target4597346024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4850748508%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4597546027%_)
                                                    (_%__match4855548556%_
                                                     _%e4595146093%_
                                                     _%hd4595246097%_
                                                     _%tl4595346100%_
                                                     _%e4595446103%_
                                                     _%hd4595546107%_
                                                     _%tl4595646110%_
                                                     _%e4597046014%_
                                                     _%hd4597146018%_
                                                     _%tl4597246021%_
                                                     _%__splice4850748508%_
                                                     _%target4597346024%_
                                                     _%tl4597546027%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4594745987%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4594745987%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4594745987%_))))))
                        (let () (declare (not safe)) (_%g4594745987%_)))))
                (let () (declare (not safe)) (_%g4594745987%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46145%_)
      (let* ((_%__stx4855848559%_ _%$stx46145%_)
             (_%g4615046190%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4855848559%_))))
        (let ((_%__kont4856148562%_
               (lambda (_%g4615246326%_ _%g4615346328%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4615346328%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4615246326%_ '()))
                                   '())))))
              (_%__kont4856348564%_
               (lambda (_%g4616346255%_
                        _%g4616446257%_
                        _%g4616546258%_
                        _%g4616646259%_)
                 (cons _%g4616646259%_
                       (cons _%g4616546258%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4616446257%_
                                               (foldr (lambda (_%g4628046283%_
                                                               _%g4628146286%_)
                                                        (cons _%g4628046283%_
                                                              _%g4628146286%_))
                                                      '()
                                                      _%g4616346255%_)))
                                   '()))))))
          (let* ((_%__match4861348614%_
                  (lambda (_%e4616746197%_
                           _%hd4616846201%_
                           _%tl4616946204%_
                           _%e4617046207%_
                           _%hd4617146211%_
                           _%tl4617246214%_
                           _%e4617346217%_
                           _%hd4617446221%_
                           _%tl4617546224%_
                           _%__splice4856548566%_
                           _%target4617646227%_
                           _%tl4617846230%_)
                    (letrec ((_%loop4617946233%_
                              (lambda (_%hd4617746237%_ _%body4618346240%_)
                                (if (gx#stx-pair? _%hd4617746237%_)
                                    (let ((_%e4618046242%_
                                           (gx#syntax-e _%hd4617746237%_)))
                                      (let ((_%lp-tl4618246249%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4618046242%_)))
                                            (_%lp-hd4618146246%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4618046242%_))))
                                        (_%loop4617946233%_
                                         _%lp-tl4618246249%_
                                         (cons _%lp-hd4618146246%_
                                               _%body4618346240%_))))
                                    (let ((_%body4618446252%_
                                           (reverse _%body4618346240%_)))
                                      (let ((_%g4616346255%_
                                             _%body4618446252%_)
                                            (_%g4616446257%_ _%tl4617546224%_)
                                            (_%g4616546258%_ _%hd4617446221%_)
                                            (_%g4616646259%_ _%hd4616846201%_))
                                        (if (gx#identifier? _%g4616546258%_)
                                            (_%__kont4856348564%_
                                             _%g4616346255%_
                                             _%g4616446257%_
                                             _%g4616546258%_
                                             _%g4616646259%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4615046190%_)))))))))
                      (_%loop4617946233%_ _%target4617646227%_ '()))))
                 (_%__match4858748588%_
                  (lambda (_%e4615446296%_
                           _%hd4615546300%_
                           _%tl4615646303%_
                           _%e4615746306%_
                           _%hd4615846310%_
                           _%tl4615946313%_
                           _%e4616046316%_
                           _%hd4616146320%_
                           _%tl4616246323%_)
                    (let ((_%g4615246326%_ _%hd4616146320%_)
                          (_%g4615346328%_ _%hd4615846310%_))
                      (if (gx#identifier? _%g4615346328%_)
                          (_%__kont4856148562%_
                           _%g4615246326%_
                           _%g4615346328%_)
                          (if (gx#stx-pair? _%hd4615846310%_)
                              (let ((_%e4617346217%_
                                     (gx#syntax-e _%hd4615846310%_)))
                                (let ((_%tl4617546224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4617346217%_)))
                                      (_%hd4617446221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4617346217%_))))
                                  (if (gx#stx-pair/null? _%tl4615946313%_)
                                      (let ((_%__splice4856548566%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4615946313%_
                                              '0)))
                                        (let ((_%tl4617846230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4856548566%_
                                                  '1)))
                                              (_%target4617646227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4856548566%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4617846230%_)
                                              (_%__match4861348614%_
                                               _%e4615446296%_
                                               _%hd4615546300%_
                                               _%tl4615646303%_
                                               _%e4615746306%_
                                               _%hd4615846310%_
                                               _%tl4615946313%_
                                               _%e4617346217%_
                                               _%hd4617446221%_
                                               _%tl4617546224%_
                                               _%__splice4856548566%_
                                               _%target4617646227%_
                                               _%tl4617846230%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4615046190%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4615046190%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4615046190%_))))))))
            (if (gx#stx-pair? _%__stx4855848559%_)
                (let ((_%e4615446296%_ (gx#syntax-e _%__stx4855848559%_)))
                  (let ((_%tl4615646303%_
                         (let () (declare (not safe)) (##cdr _%e4615446296%_)))
                        (_%hd4615546300%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4615446296%_))))
                    (if (gx#stx-pair? _%tl4615646303%_)
                        (let ((_%e4615746306%_ (gx#syntax-e _%tl4615646303%_)))
                          (let ((_%tl4615946313%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4615746306%_)))
                                (_%hd4615846310%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4615746306%_))))
                            (if (gx#stx-pair? _%tl4615946313%_)
                                (let ((_%e4616046316%_
                                       (gx#syntax-e _%tl4615946313%_)))
                                  (let ((_%tl4616246323%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4616046316%_)))
                                        (_%hd4616146320%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4616046316%_))))
                                    (if (gx#stx-null? _%tl4616246323%_)
                                        (_%__match4858748588%_
                                         _%e4615446296%_
                                         _%hd4615546300%_
                                         _%tl4615646303%_
                                         _%e4615746306%_
                                         _%hd4615846310%_
                                         _%tl4615946313%_
                                         _%e4616046316%_
                                         _%hd4616146320%_
                                         _%tl4616246323%_)
                                        (if (gx#stx-pair? _%hd4615846310%_)
                                            (let ((_%e4617346217%_
                                                   (gx#syntax-e
                                                    _%hd4615846310%_)))
                                              (let ((_%tl4617546224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4617346217%_)))
                                                    (_%hd4617446221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4617346217%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4615946313%_)
                                                    (let ((_%__splice4856548566%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4615946313%_
                                                            '0)))
                                                      (let ((_%tl4617846230%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4856548566%_ '1)))
                    (_%target4617646227%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4856548566%_ '0))))
                (if (gx#stx-null? _%tl4617846230%_)
                    (_%__match4861348614%_
                     _%e4615446296%_
                     _%hd4615546300%_
                     _%tl4615646303%_
                     _%e4615746306%_
                     _%hd4615846310%_
                     _%tl4615946313%_
                     _%e4617346217%_
                     _%hd4617446221%_
                     _%tl4617546224%_
                     _%__splice4856548566%_
                     _%target4617646227%_
                     _%tl4617846230%_)
                    (let () (declare (not safe)) (_%g4615046190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4615046190%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4615046190%_))))))
                                (if (gx#stx-pair? _%hd4615846310%_)
                                    (let ((_%e4617346217%_
                                           (gx#syntax-e _%hd4615846310%_)))
                                      (let ((_%tl4617546224%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4617346217%_)))
                                            (_%hd4617446221%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4617346217%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4615946313%_)
                                            (let ((_%__splice4856548566%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4615946313%_
                                                    '0)))
                                              (let ((_%tl4617846230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4856548566%_
                                                        '1)))
                                                    (_%target4617646227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4856548566%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4617846230%_)
                                                    (_%__match4861348614%_
                                                     _%e4615446296%_
                                                     _%hd4615546300%_
                                                     _%tl4615646303%_
                                                     _%e4615746306%_
                                                     _%hd4615846310%_
                                                     _%tl4615946313%_
                                                     _%e4617346217%_
                                                     _%hd4617446221%_
                                                     _%tl4617546224%_
                                                     _%__splice4856548566%_
                                                     _%target4617646227%_
                                                     _%tl4617846230%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4615046190%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4615046190%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4615046190%_))))))
                        (let () (declare (not safe)) (_%g4615046190%_)))))
                (let () (declare (not safe)) (_%g4615046190%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46348%_)
      (let* ((_%__stx4861648617%_ _%$stx46348%_)
             (_%g4635346393%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4861648617%_))))
        (let ((_%__kont4861948620%_
               (lambda (_%g4635546529%_ _%g4635646531%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4635646531%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4635546529%_ '()))
                                   '())))))
              (_%__kont4862148622%_
               (lambda (_%g4636646458%_
                        _%g4636746460%_
                        _%g4636846461%_
                        _%g4636946462%_)
                 (cons _%g4636946462%_
                       (cons _%g4636846461%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4636746460%_
                                               (foldr (lambda (_%g4648346486%_
                                                               _%g4648446489%_)
                                                        (cons _%g4648346486%_
                                                              _%g4648446489%_))
                                                      '()
                                                      _%g4636646458%_)))
                                   '()))))))
          (let* ((_%__match4867148672%_
                  (lambda (_%e4637046400%_
                           _%hd4637146404%_
                           _%tl4637246407%_
                           _%e4637346410%_
                           _%hd4637446414%_
                           _%tl4637546417%_
                           _%e4637646420%_
                           _%hd4637746424%_
                           _%tl4637846427%_
                           _%__splice4862348624%_
                           _%target4637946430%_
                           _%tl4638146433%_)
                    (letrec ((_%loop4638246436%_
                              (lambda (_%hd4638046440%_ _%body4638646443%_)
                                (if (gx#stx-pair? _%hd4638046440%_)
                                    (let ((_%e4638346445%_
                                           (gx#syntax-e _%hd4638046440%_)))
                                      (let ((_%lp-tl4638546452%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4638346445%_)))
                                            (_%lp-hd4638446449%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4638346445%_))))
                                        (_%loop4638246436%_
                                         _%lp-tl4638546452%_
                                         (cons _%lp-hd4638446449%_
                                               _%body4638646443%_))))
                                    (let ((_%body4638746455%_
                                           (reverse _%body4638646443%_)))
                                      (let ((_%g4636646458%_
                                             _%body4638746455%_)
                                            (_%g4636746460%_ _%tl4637846427%_)
                                            (_%g4636846461%_ _%hd4637746424%_)
                                            (_%g4636946462%_ _%hd4637146404%_))
                                        (if (gx#identifier? _%g4636846461%_)
                                            (_%__kont4862148622%_
                                             _%g4636646458%_
                                             _%g4636746460%_
                                             _%g4636846461%_
                                             _%g4636946462%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4635346393%_)))))))))
                      (_%loop4638246436%_ _%target4637946430%_ '()))))
                 (_%__match4864548646%_
                  (lambda (_%e4635746499%_
                           _%hd4635846503%_
                           _%tl4635946506%_
                           _%e4636046509%_
                           _%hd4636146513%_
                           _%tl4636246516%_
                           _%e4636346519%_
                           _%hd4636446523%_
                           _%tl4636546526%_)
                    (let ((_%g4635546529%_ _%hd4636446523%_)
                          (_%g4635646531%_ _%hd4636146513%_))
                      (if (gx#identifier? _%g4635646531%_)
                          (_%__kont4861948620%_
                           _%g4635546529%_
                           _%g4635646531%_)
                          (if (gx#stx-pair? _%hd4636146513%_)
                              (let ((_%e4637646420%_
                                     (gx#syntax-e _%hd4636146513%_)))
                                (let ((_%tl4637846427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4637646420%_)))
                                      (_%hd4637746424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4637646420%_))))
                                  (if (gx#stx-pair/null? _%tl4636246516%_)
                                      (let ((_%__splice4862348624%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4636246516%_
                                              '0)))
                                        (let ((_%tl4638146433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4862348624%_
                                                  '1)))
                                              (_%target4637946430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4862348624%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4638146433%_)
                                              (_%__match4867148672%_
                                               _%e4635746499%_
                                               _%hd4635846503%_
                                               _%tl4635946506%_
                                               _%e4636046509%_
                                               _%hd4636146513%_
                                               _%tl4636246516%_
                                               _%e4637646420%_
                                               _%hd4637746424%_
                                               _%tl4637846427%_
                                               _%__splice4862348624%_
                                               _%target4637946430%_
                                               _%tl4638146433%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4635346393%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4635346393%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4635346393%_))))))))
            (if (gx#stx-pair? _%__stx4861648617%_)
                (let ((_%e4635746499%_ (gx#syntax-e _%__stx4861648617%_)))
                  (let ((_%tl4635946506%_
                         (let () (declare (not safe)) (##cdr _%e4635746499%_)))
                        (_%hd4635846503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4635746499%_))))
                    (if (gx#stx-pair? _%tl4635946506%_)
                        (let ((_%e4636046509%_ (gx#syntax-e _%tl4635946506%_)))
                          (let ((_%tl4636246516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4636046509%_)))
                                (_%hd4636146513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4636046509%_))))
                            (if (gx#stx-pair? _%tl4636246516%_)
                                (let ((_%e4636346519%_
                                       (gx#syntax-e _%tl4636246516%_)))
                                  (let ((_%tl4636546526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4636346519%_)))
                                        (_%hd4636446523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4636346519%_))))
                                    (if (gx#stx-null? _%tl4636546526%_)
                                        (_%__match4864548646%_
                                         _%e4635746499%_
                                         _%hd4635846503%_
                                         _%tl4635946506%_
                                         _%e4636046509%_
                                         _%hd4636146513%_
                                         _%tl4636246516%_
                                         _%e4636346519%_
                                         _%hd4636446523%_
                                         _%tl4636546526%_)
                                        (if (gx#stx-pair? _%hd4636146513%_)
                                            (let ((_%e4637646420%_
                                                   (gx#syntax-e
                                                    _%hd4636146513%_)))
                                              (let ((_%tl4637846427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4637646420%_)))
                                                    (_%hd4637746424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4637646420%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4636246516%_)
                                                    (let ((_%__splice4862348624%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4636246516%_
                                                            '0)))
                                                      (let ((_%tl4638146433%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4862348624%_ '1)))
                    (_%target4637946430%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4862348624%_ '0))))
                (if (gx#stx-null? _%tl4638146433%_)
                    (_%__match4867148672%_
                     _%e4635746499%_
                     _%hd4635846503%_
                     _%tl4635946506%_
                     _%e4636046509%_
                     _%hd4636146513%_
                     _%tl4636246516%_
                     _%e4637646420%_
                     _%hd4637746424%_
                     _%tl4637846427%_
                     _%__splice4862348624%_
                     _%target4637946430%_
                     _%tl4638146433%_)
                    (let () (declare (not safe)) (_%g4635346393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4635346393%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4635346393%_))))))
                                (if (gx#stx-pair? _%hd4636146513%_)
                                    (let ((_%e4637646420%_
                                           (gx#syntax-e _%hd4636146513%_)))
                                      (let ((_%tl4637846427%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4637646420%_)))
                                            (_%hd4637746424%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4637646420%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4636246516%_)
                                            (let ((_%__splice4862348624%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4636246516%_
                                                    '0)))
                                              (let ((_%tl4638146433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4862348624%_
                                                        '1)))
                                                    (_%target4637946430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4862348624%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4638146433%_)
                                                    (_%__match4867148672%_
                                                     _%e4635746499%_
                                                     _%hd4635846503%_
                                                     _%tl4635946506%_
                                                     _%e4636046509%_
                                                     _%hd4636146513%_
                                                     _%tl4636246516%_
                                                     _%e4637646420%_
                                                     _%hd4637746424%_
                                                     _%tl4637846427%_
                                                     _%__splice4862348624%_
                                                     _%target4637946430%_
                                                     _%tl4638146433%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4635346393%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4635346393%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4635346393%_))))))
                        (let () (declare (not safe)) (_%g4635346393%_)))))
                (let () (declare (not safe)) (_%g4635346393%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx46551%_)
       (let* ((_%g4655446574%_
               (lambda (_%g4655546570%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4655546570%_)))
              (_%g4655346643%_
               (lambda (_%g4655546578%_)
                 (if (gx#stx-pair? _%g4655546578%_)
                     (let ((_%e4655746581%_ (gx#syntax-e _%g4655546578%_)))
                       (let ((_%hd4655846585%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4655746581%_)))
                             (_%tl4655946588%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4655746581%_))))
                         (if (gx#stx-pair/null? _%tl4655946588%_)
                             (let ((_g48766_
                                    (gx#syntax-split-splice
                                     _%tl4655946588%_
                                     '0)))
                               (begin
                                 (let ((_g48767_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48766_)
                                              (##values-length _g48766_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48767_ 2)))
                                       (error "Context expects 2 values"
                                              _g48767_)))
                                 (let ((_%target4656046591%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48766_ 0)))
                                       (_%tl4656246594%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48766_ 1))))
                                   (if (gx#stx-null? _%tl4656246594%_)
                                       (letrec ((_%loop4656346597%_
                                                 (lambda (_%hd4656146601%_
                                                          _%body4656746604%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4656146601%_)
                                                       (let ((_%e4656446606%_
                                                              (gx#syntax-e
                                                               _%hd4656146601%_)))
                                                         (let ((_%lp-hd4656546610%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4656446606%_)))
                       (_%lp-tl4656646613%_
                        (let () (declare (not safe)) (##cdr _%e4656446606%_))))
                   (_%loop4656346597%_
                    _%lp-tl4656646613%_
                    (cons _%lp-hd4656546610%_ _%body4656746604%_))))
               (let ((_%body4656846616%_ (reverse _%body4656746604%_)))
                 ((lambda (_%g4655646619%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4663446637%_
                                                _%g4663546640%_)
                                         (cons _%g4663446637%_
                                               _%g4663546640%_))
                                       '()
                                       _%g4655646619%_))))
                  _%body4656846616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4656346597%_
                                          _%target4656046591%_
                                          '()))
                                       (_%g4655446574%_ _%g4655546578%_)))))
                             (_%g4655446574%_ _%g4655546578%_))))
                     (_%g4655446574%_ _%g4655546578%_)))))
         (_%g4655346643%_ _%stx46551%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46648%_)
       (let* ((_%g4665146671%_
               (lambda (_%g4665246667%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4665246667%_)))
              (_%g4665046740%_
               (lambda (_%g4665246675%_)
                 (if (gx#stx-pair? _%g4665246675%_)
                     (let ((_%e4665446678%_ (gx#syntax-e _%g4665246675%_)))
                       (let ((_%hd4665546682%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4665446678%_)))
                             (_%tl4665646685%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4665446678%_))))
                         (if (gx#stx-pair/null? _%tl4665646685%_)
                             (let ((_g48768_
                                    (gx#syntax-split-splice
                                     _%tl4665646685%_
                                     '0)))
                               (begin
                                 (let ((_g48769_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48768_)
                                              (##values-length _g48768_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48769_ 2)))
                                       (error "Context expects 2 values"
                                              _g48769_)))
                                 (let ((_%target4665746688%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48768_ 0)))
                                       (_%tl4665946691%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48768_ 1))))
                                   (if (gx#stx-null? _%tl4665946691%_)
                                       (letrec ((_%loop4666046694%_
                                                 (lambda (_%hd4665846698%_
                                                          _%body4666446701%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4665846698%_)
                                                       (let ((_%e4666146703%_
                                                              (gx#syntax-e
                                                               _%hd4665846698%_)))
                                                         (let ((_%lp-hd4666246707%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4666146703%_)))
                       (_%lp-tl4666346710%_
                        (let () (declare (not safe)) (##cdr _%e4666146703%_))))
                   (_%loop4666046694%_
                    _%lp-tl4666346710%_
                    (cons _%lp-hd4666246707%_ _%body4666446701%_))))
               (let ((_%body4666546713%_ (reverse _%body4666446701%_)))
                 ((lambda (_%g4665346716%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4673146734%_
                                                _%g4673246737%_)
                                         (cons _%g4673146734%_
                                               _%g4673246737%_))
                                       '()
                                       _%g4665346716%_))))
                  _%body4666546713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4666046694%_
                                          _%target4665746688%_
                                          '()))
                                       (_%g4665146671%_ _%g4665246675%_)))))
                             (_%g4665146671%_ _%g4665246675%_))))
                     (_%g4665146671%_ _%g4665246675%_)))))
         (_%g4665046740%_ _%stx46648%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46745%_)
       (let* ((_%g4674846772%_
               (lambda (_%g4674946768%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4674946768%_)))
              (_%g4674746898%_
               (lambda (_%g4674946776%_)
                 (if (gx#stx-pair? _%g4674946776%_)
                     (let ((_%e4675246779%_ (gx#syntax-e _%g4674946776%_)))
                       (let ((_%hd4675346783%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4675246779%_)))
                             (_%tl4675446786%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4675246779%_))))
                         (if (gx#stx-pair? _%tl4675446786%_)
                             (let ((_%e4675546789%_
                                    (gx#syntax-e _%tl4675446786%_)))
                               (let ((_%hd4675646793%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4675546789%_)))
                                     (_%tl4675746796%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4675546789%_))))
                                 (if (gx#stx-pair/null? _%tl4675746796%_)
                                     (let ((_g48770_
                                            (gx#syntax-split-splice
                                             _%tl4675746796%_
                                             '0)))
                                       (begin
                                         (let ((_g48771_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48770_)
                                                      (##values-length
                                                       _g48770_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48771_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48771_)))
                                         (let ((_%target4675846799%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48770_ 0)))
                                               (_%tl4676046802%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48770_ 1))))
                                           (if (gx#stx-null? _%tl4676046802%_)
                                               (letrec ((_%loop4676146805%_
                                                         (lambda (_%hd4675946809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4676546812%_)
                   (if (gx#stx-pair? _%hd4675946809%_)
                       (let ((_%e4676246814%_ (gx#syntax-e _%hd4675946809%_)))
                         (let ((_%lp-hd4676346818%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4676246814%_)))
                               (_%lp-tl4676446821%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4676246814%_))))
                           (_%loop4676146805%_
                            _%lp-tl4676446821%_
                            (cons _%lp-hd4676346818%_ _%id4676546812%_))))
                       (let ((_%id4676646824%_ (reverse _%id4676546812%_)))
                         ((lambda (_%g4675046827%_ _%g4675146829%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4684646849%_
                                                 _%g4684746852%_)
                                          (cons _%g4684646849%_
                                                _%g4684746852%_))
                                        '()
                                        _%g4675046827%_))
                                (let* ((_%keys46863%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4685446857%_
                                                         _%g4685546860%_)
                                                  (cons _%g4685446857%_
                                                        _%g4685546860%_))
                                                '()
                                                _%g4675046827%_)))
                                       (_%keytab46874%_
                                        (let ((_%ht46866%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4686846870%_)
                                             (hash-put!
                                              _%ht46866%_
                                              _%g4686846870%_
                                              '#t))
                                           _%keys46863%_)
                                          _%ht46866%_))
                                       (_%imports46877%_
                                        (gx#core-expand-import-source
                                         _%g4675146829%_))
                                       (_%fold-e46893%_
                                        (letrec ((_%fold-e46880%_
                                                  (lambda (_%in46883%_
                                                           _%r46885%_)
                                                    (if (gx#module-import?
                                                         _%in46883%_)
                                                        (if (hash-get
                                                             _%keytab46874%_
                                                             (gx#module-import-name
                                                              _%in46883%_))
                                                            (cons _%in46883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46885%_)
                    _%r46885%_)
                (if (gx#import-set? _%in46883%_)
                    (foldl _%fold-e46880%_
                           _%r46885%_
                           (gx#import-set-imports _%in46883%_))
                    _%r46885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46880%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46893%_
                                               '()
                                               _%imports46877%_)))
                                (_%g4674846772%_ _%g4674946776%_)))
                          _%id4676646824%_
                          _%hd4675646793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4676146805%_
                                                  _%target4675846799%_
                                                  '()))
                                               (_%g4674846772%_
                                                _%g4674946776%_)))))
                                     (_%g4674846772%_ _%g4674946776%_))))
                             (_%g4674846772%_ _%g4674946776%_))))
                     (_%g4674846772%_ _%g4674946776%_)))))
         (_%g4674746898%_ _%stx46745%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx46903%_)
       (let* ((_%g4690646930%_
               (lambda (_%g4690746926%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4690746926%_)))
              (_%g4690547056%_
               (lambda (_%g4690746934%_)
                 (if (gx#stx-pair? _%g4690746934%_)
                     (let ((_%e4691046937%_ (gx#syntax-e _%g4690746934%_)))
                       (let ((_%hd4691146941%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4691046937%_)))
                             (_%tl4691246944%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4691046937%_))))
                         (if (gx#stx-pair? _%tl4691246944%_)
                             (let ((_%e4691346947%_
                                    (gx#syntax-e _%tl4691246944%_)))
                               (let ((_%hd4691446951%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4691346947%_)))
                                     (_%tl4691546954%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4691346947%_))))
                                 (if (gx#stx-pair/null? _%tl4691546954%_)
                                     (let ((_g48772_
                                            (gx#syntax-split-splice
                                             _%tl4691546954%_
                                             '0)))
                                       (begin
                                         (let ((_g48773_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48772_)
                                                      (##values-length
                                                       _g48772_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48773_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48773_)))
                                         (let ((_%target4691646957%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48772_ 0)))
                                               (_%tl4691846960%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48772_ 1))))
                                           (if (gx#stx-null? _%tl4691846960%_)
                                               (letrec ((_%loop4691946963%_
                                                         (lambda (_%hd4691746967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4692346970%_)
                   (if (gx#stx-pair? _%hd4691746967%_)
                       (let ((_%e4692046972%_ (gx#syntax-e _%hd4691746967%_)))
                         (let ((_%lp-hd4692146976%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4692046972%_)))
                               (_%lp-tl4692246979%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4692046972%_))))
                           (_%loop4691946963%_
                            _%lp-tl4692246979%_
                            (cons _%lp-hd4692146976%_ _%id4692346970%_))))
                       (let ((_%id4692446982%_ (reverse _%id4692346970%_)))
                         ((lambda (_%g4690846985%_ _%g4690946987%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4700447007%_
                                                 _%g4700547010%_)
                                          (cons _%g4700447007%_
                                                _%g4700547010%_))
                                        '()
                                        _%g4690846985%_))
                                (let* ((_%keys47021%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4701247015%_
                                                         _%g4701347018%_)
                                                  (cons _%g4701247015%_
                                                        _%g4701347018%_))
                                                '()
                                                _%g4690846985%_)))
                                       (_%keytab47032%_
                                        (let ((_%ht47024%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4702647028%_)
                                             (hash-put!
                                              _%ht47024%_
                                              _%g4702647028%_
                                              '#t))
                                           _%keys47021%_)
                                          _%ht47024%_))
                                       (_%imports47035%_
                                        (gx#core-expand-import-source
                                         _%g4690946987%_))
                                       (_%fold-e47051%_
                                        (letrec ((_%fold-e47038%_
                                                  (lambda (_%in47041%_
                                                           _%r47043%_)
                                                    (if (gx#module-import?
                                                         _%in47041%_)
                                                        (if (hash-get
                                                             _%keytab47032%_
                                                             (gx#module-import-name
                                                              _%in47041%_))
                                                            _%r47043%_
                                                            (cons _%in47041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47043%_))
                (if (gx#import-set? _%in47041%_)
                    (foldl _%fold-e47038%_
                           _%r47043%_
                           (gx#import-set-imports _%in47041%_))
                    (cons _%in47041%_ _%r47043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47038%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47051%_
                                               '()
                                               _%imports47035%_)))
                                (_%g4690646930%_ _%g4690746934%_)))
                          _%id4692446982%_
                          _%hd4691446951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4691946963%_
                                                  _%target4691646957%_
                                                  '()))
                                               (_%g4690646930%_
                                                _%g4690746934%_)))))
                                     (_%g4690646930%_ _%g4690746934%_))))
                             (_%g4690646930%_ _%g4690746934%_))))
                     (_%g4690646930%_ _%g4690746934%_)))))
         (_%g4690547056%_ _%stx46903%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47108%_ _%rename47110%_)
      (gx#make-module-import
       (gx#module-import-source _%in47108%_)
       _%rename47110%_
       (gx#module-import-phi _%in47108%_)
       (gx#module-import-weak? _%in47108%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47061%_ _%pre47063%_)
      (let* ((_%name4706447072%_ _%name47061%_)
             (_%else4706647084%_
              (lambda () (make-symbol _%pre47063%_ _%name47061%_)))
             (_%K4706847092%_
              (lambda (_%mark47088%_ _%id47090%_)
                (cons (make-symbol _%pre47063%_ _%id47090%_) _%mark47088%_))))
        (if (pair? _%name4706447072%_)
            (let ((_%hd4706947096%_
                   (let () (declare (not safe)) (##car _%name4706447072%_)))
                  (_%tl4707047099%_
                   (let () (declare (not safe)) (##cdr _%name4706447072%_))))
              (let* ((_%id47102%_ _%hd4706947096%_)
                     (_%mark47105%_ _%tl4707047099%_))
                (_%K4706847092%_ _%mark47105%_ _%id47102%_)))
            (_%else4706647084%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47112%_)
       (let* ((_%g4711547148%_
               (lambda (_%g4711647144%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4711647144%_)))
              (_%g4711447339%_
               (lambda (_%g4711647152%_)
                 (if (gx#stx-pair? _%g4711647152%_)
                     (let ((_%e4712047155%_ (gx#syntax-e _%g4711647152%_)))
                       (let ((_%hd4712147159%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4712047155%_)))
                             (_%tl4712247162%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4712047155%_))))
                         (if (gx#stx-pair? _%tl4712247162%_)
                             (let ((_%e4712347165%_
                                    (gx#syntax-e _%tl4712247162%_)))
                               (let ((_%hd4712447169%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4712347165%_)))
                                     (_%tl4712547172%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4712347165%_))))
                                 (if (gx#stx-pair/null? _%tl4712547172%_)
                                     (let ((_g48774_
                                            (gx#syntax-split-splice
                                             _%tl4712547172%_
                                             '0)))
                                       (begin
                                         (let ((_g48775_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48774_)
                                                      (##values-length
                                                       _g48774_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48775_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48775_)))
                                         (let ((_%target4712647175%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48774_ 0)))
                                               (_%tl4712847178%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48774_ 1))))
                                           (if (gx#stx-null? _%tl4712847178%_)
                                               (letrec ((_%loop4712947181%_
                                                         (lambda (_%hd4712747185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4713347188%_
                          _%id4713447189%_)
                   (if (gx#stx-pair? _%hd4712747185%_)
                       (let ((_%e4713047191%_ (gx#syntax-e _%hd4712747185%_)))
                         (let ((_%lp-hd4713147195%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4713047191%_)))
                               (_%lp-tl4713247198%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4713047191%_))))
                           (if (gx#stx-pair? _%lp-hd4713147195%_)
                               (let ((_%e4713747201%_
                                      (gx#syntax-e _%lp-hd4713147195%_)))
                                 (let ((_%hd4713847205%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4713747201%_)))
                                       (_%tl4713947208%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4713747201%_))))
                                   (if (gx#stx-pair? _%tl4713947208%_)
                                       (let ((_%e4714047211%_
                                              (gx#syntax-e _%tl4713947208%_)))
                                         (let ((_%hd4714147215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4714047211%_)))
                                               (_%tl4714247218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4714047211%_))))
                                           (if (gx#stx-null? _%tl4714247218%_)
                                               (_%loop4712947181%_
                                                _%lp-tl4713247198%_
                                                (cons _%hd4714147215%_
                                                      _%new-id4713347188%_)
                                                (cons _%hd4713847205%_
                                                      _%id4713447189%_))
                                               (_%g4711547148%_
                                                _%g4711647152%_))))
                                       (_%g4711547148%_ _%g4711647152%_))))
                               (_%g4711547148%_ _%g4711647152%_))))
                       (let ((_%new-id4713547221%_
                              (reverse _%new-id4713347188%_))
                             (_%id4713647223%_ (reverse _%id4713447189%_)))
                         ((lambda (_%g4711747225%_
                                   _%g4711847227%_
                                   _%g4711947228%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4724647249%_
                                                      _%g4724747252%_)
                                               (cons _%g4724647249%_
                                                     _%g4724747252%_))
                                             '()
                                             _%g4711847227%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4725447257%_
                                                      _%g4725547260%_)
                                               (cons _%g4725447257%_
                                                     _%g4725547260%_))
                                             '()
                                             _%g4711747225%_)))
                                (let* ((_%keytab47263%_ (make-hash-table))
                                       (_%found47266%_ (make-hash-table))
                                       (_%_47289%_
                                        (for-each
                                         (lambda (_%id47269%_ _%new-id47271%_)
                                           (hash-put!
                                            _%keytab47263%_
                                            (gx#core-identifier-key
                                             _%id47269%_)
                                            (gx#core-identifier-key
                                             _%new-id47271%_)))
                                         (foldr (lambda (_%g4727247275%_
                                                         _%g4727347278%_)
                                                  (cons _%g4727247275%_
                                                        _%g4727347278%_))
                                                '()
                                                _%g4711847227%_)
                                         (foldr (lambda (_%g4728047283%_
                                                         _%g4728147286%_)
                                                  (cons _%g4728047283%_
                                                        _%g4728147286%_))
                                                '()
                                                _%g4711747225%_)))
                                       (_%imports47292%_
                                        (gx#core-expand-import-source
                                         _%g4711947228%_))
                                       (_%fold-e47320%_
                                        (letrec ((_%fold-e47295%_
                                                  (lambda (_%in47298%_
                                                           _%r47300%_)
                                                    (if (gx#module-import?
                                                         _%in47298%_)
                                                        (let* ((_%name47304%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47298%_))
                       (_%$e47307%_ (hash-get _%keytab47263%_ _%name47304%_)))
                  (if _%$e47307%_
                      ((lambda (_%rename47311%_)
                         (hash-put! _%found47266%_ _%name47304%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47298%_
                                _%rename47311%_)
                               _%r47300%_))
                       _%$e47307%_)
                      (cons _%in47298%_ _%r47300%_)))
                (if (gx#import-set? _%in47298%_)
                    (foldl _%fold-e47295%_
                           _%r47300%_
                           (gx#import-set-imports _%in47298%_))
                    (cons _%in47298%_ _%r47300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47295%_))
                                       (_%new-imports47323%_
                                        (foldl _%fold-e47320%_
                                               '()
                                               _%imports47292%_)))
                                  (for-each
                                   (lambda (_%id47328%_)
                                     (if (hash-get
                                          _%found47266%_
                                          (gx#core-identifier-key _%id47328%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47112%_
                                          _%id47328%_)))
                                   (foldr (lambda (_%g4733047333%_
                                                   _%g4733147336%_)
                                            (cons _%g4733047333%_
                                                  _%g4733147336%_))
                                          '()
                                          _%g4711847227%_))
                                  (cons 'begin: _%new-imports47323%_))
                                (_%g4711547148%_ _%g4711647152%_)))
                          _%new-id4713547221%_
                          _%id4713647223%_
                          _%hd4712447169%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4712947181%_
                                                  _%target4712647175%_
                                                  '()
                                                  '()))
                                               (_%g4711547148%_
                                                _%g4711647152%_)))))
                                     (_%g4711547148%_ _%g4711647152%_))))
                             (_%g4711547148%_ _%g4711647152%_))))
                     (_%g4711547148%_ _%g4711647152%_)))))
         (_%g4711447339%_ _%stx47112%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47344%_)
       (let* ((_%g4734747365%_
               (lambda (_%g4734847361%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4734847361%_)))
              (_%g4734647450%_
               (lambda (_%g4734847369%_)
                 (if (gx#stx-pair? _%g4734847369%_)
                     (let ((_%e4735147372%_ (gx#syntax-e _%g4734847369%_)))
                       (let ((_%hd4735247376%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4735147372%_)))
                             (_%tl4735347379%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4735147372%_))))
                         (if (gx#stx-pair? _%tl4735347379%_)
                             (let ((_%e4735447382%_
                                    (gx#syntax-e _%tl4735347379%_)))
                               (let ((_%hd4735547386%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4735447382%_)))
                                     (_%tl4735647389%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4735447382%_))))
                                 (if (gx#stx-pair? _%tl4735647389%_)
                                     (let ((_%e4735747392%_
                                            (gx#syntax-e _%tl4735647389%_)))
                                       (let ((_%hd4735847396%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4735747392%_)))
                                             (_%tl4735947399%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4735747392%_))))
                                         (if (gx#stx-null? _%tl4735947399%_)
                                             ((lambda (_%g4734947402%_
                                                       _%g4735047404%_)
                                                (if (gx#identifier?
                                                     _%g4734947402%_)
                                                    (let* ((_%pre47420%_
                                                            (gx#stx-e
                                                             _%g4734947402%_))
                                                           (_%imports47423%_
                                                            (gx#core-expand-import-source
                                                             _%g4735047404%_))
                                                           (_%rename-e47429%_
                                                            (lambda (_%name47426%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47426%_
                                                               _%pre47420%_)))
                                                           (_%fold-e47445%_
                                                            (letrec ((_%fold-e47432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47435%_ _%r47437%_)
                                (if (gx#module-import? _%in47435%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47435%_
                                           (_%rename-e47429%_
                                            (gx#module-import-name
                                             _%in47435%_)))
                                          _%r47437%_)
                                    (if (gx#import-set? _%in47435%_)
                                        (foldl _%fold-e47432%_
                                               _%r47437%_
                                               (gx#import-set-imports
                                                _%in47435%_))
                                        (cons _%in47435%_ _%r47437%_))))))
                      _%fold-e47432%_)))
              (cons 'begin: (foldl _%fold-e47445%_ '() _%imports47423%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4734747365%_
                                                     _%g4734847369%_)))
                                              _%hd4735847396%_
                                              _%hd4735547386%_)
                                             (_%g4734747365%_
                                              _%g4734847369%_))))
                                     (_%g4734747365%_ _%g4734847369%_))))
                             (_%g4734747365%_ _%g4734847369%_))))
                     (_%g4734747365%_ _%g4734847369%_)))))
         (_%g4734647450%_ _%stx47344%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47454%_)
       (letrec ((_%flatten47457%_
                 (lambda (_%list-of-lists47708%_)
                   (foldr (lambda (_%v47711%_ _%acc47713%_)
                            (if (null? _%v47711%_)
                                _%acc47713%_
                                (if (pair? _%v47711%_)
                                    (append (_%flatten47457%_ _%v47711%_)
                                            _%acc47713%_)
                                    (cons _%v47711%_ _%acc47713%_))))
                          '()
                          _%list-of-lists47708%_)))
                (_%expand-path47459%_
                 (lambda (_%top47578%_ _%mod47580%_)
                   (let* ((_%__stx4867448675%_ _%mod47580%_)
                          (_%g4758347605%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4867448675%_))))
                     (let ((_%__kont4867748678%_
                            (lambda (_%g4758547671%_ _%g4758647673%_)
                              (map (lambda (_%mod47688%_)
                                     (gx#stx-identifier
                                      _%top47578%_
                                      _%top47578%_
                                      '"/"
                                      _%mod47688%_))
                                   (_%flatten47457%_
                                    (map (lambda (_%g4769047692%_)
                                           (_%expand-path47459%_
                                            _%g4758647673%_
                                            _%g4769047692%_))
                                         (foldr (lambda (_%g4769547698%_
                                                         _%g4769647701%_)
                                                  (cons _%g4769547698%_
                                                        _%g4769647701%_))
                                                '()
                                                _%g4758547671%_))))))
                           (_%__kont4868148682%_
                            (lambda (_%g4759947612%_)
                              (gx#stx-identifier
                               _%top47578%_
                               _%top47578%_
                               '"/"
                               _%g4759947612%_))))
                       (let* ((_%g4758247626%_
                               (lambda ()
                                 (let ((_%g4759947612%_ _%__stx4867448675%_))
                                   (if (or (gx#identifier? _%g4759947612%_)
                                           (gx#stx-fixnum? _%g4759947612%_))
                                       (_%__kont4868148682%_ _%g4759947612%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4758347605%_))))))
                              (_%__match4869748698%_
                               (lambda (_%e4758747633%_
                                        _%hd4758847637%_
                                        _%tl4758947640%_
                                        _%__splice4867948680%_
                                        _%target4759047643%_
                                        _%tl4759247646%_)
                                 (letrec ((_%loop4759347649%_
                                           (lambda (_%hd4759147653%_
                                                    _%mod4759747656%_)
                                             (if (gx#stx-pair?
                                                  _%hd4759147653%_)
                                                 (let ((_%e4759447658%_
                                                        (gx#syntax-e
                                                         _%hd4759147653%_)))
                                                   (let ((_%lp-tl4759647665%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4759447658%_)))
                                                         (_%lp-hd4759547662%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4759447658%_))))
                                                     (_%loop4759347649%_
                                                      _%lp-tl4759647665%_
                                                      (cons _%lp-hd4759547662%_
                                                            _%mod4759747656%_))))
                                                 (let ((_%mod4759847668%_
                                                        (reverse _%mod4759747656%_)))
                                                   (_%__kont4867748678%_
                                                    _%mod4759847668%_
                                                    _%hd4758847637%_))))))
                                   (_%loop4759347649%_
                                    _%target4759047643%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4867448675%_)
                             (let ((_%e4758747633%_
                                    (gx#syntax-e _%__stx4867448675%_)))
                               (let ((_%tl4758947640%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4758747633%_)))
                                     (_%hd4758847637%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4758747633%_))))
                                 (if (gx#stx-pair/null? _%tl4758947640%_)
                                     (let ((_%__splice4867948680%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4758947640%_
                                             '0)))
                                       (let ((_%tl4759247646%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4867948680%_
                                                 '1)))
                                             (_%target4759047643%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4867948680%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4759247646%_)
                                             (_%__match4869748698%_
                                              _%e4758747633%_
                                              _%hd4758847637%_
                                              _%tl4758947640%_
                                              _%__splice4867948680%_
                                              _%target4759047643%_
                                              _%tl4759247646%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4758247626%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4758247626%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4758247626%_)))))))))
         (let* ((_%g4746147485%_
                 (lambda (_%g4746247481%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4746247481%_)))
                (_%g4746047574%_
                 (lambda (_%g4746247489%_)
                   (if (gx#stx-pair? _%g4746247489%_)
                       (let ((_%e4746547492%_ (gx#syntax-e _%g4746247489%_)))
                         (let ((_%hd4746647496%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4746547492%_)))
                               (_%tl4746747499%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4746547492%_))))
                           (if (gx#stx-pair? _%tl4746747499%_)
                               (let ((_%e4746847502%_
                                      (gx#syntax-e _%tl4746747499%_)))
                                 (let ((_%hd4746947506%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4746847502%_)))
                                       (_%tl4747047509%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4746847502%_))))
                                   (if (gx#stx-pair/null? _%tl4747047509%_)
                                       (let ((_g48776_
                                              (gx#syntax-split-splice
                                               _%tl4747047509%_
                                               '0)))
                                         (begin
                                           (let ((_g48777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48776_)
                                                        (##values-length
                                                         _g48776_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48777_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48777_)))
                                           (let ((_%target4747147512%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g48776_ 0)))
                                                 (_%tl4747347515%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g48776_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4747347515%_)
                                                 (letrec ((_%loop4747447518%_
                                                           (lambda (_%hd4747247522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4747847525%_)
                     (if (gx#stx-pair? _%hd4747247522%_)
                         (let ((_%e4747547527%_
                                (gx#syntax-e _%hd4747247522%_)))
                           (let ((_%lp-hd4747647531%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4747547527%_)))
                                 (_%lp-tl4747747534%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4747547527%_))))
                             (_%loop4747447518%_
                              _%lp-tl4747747534%_
                              (cons _%lp-hd4747647531%_ _%mod4747847525%_))))
                         (let ((_%mod4747947537%_ (reverse _%mod4747847525%_)))
                           ((lambda (_%g4746347540%_ _%g4746447542%_)
                              (cons 'begin:
                                    (_%flatten47457%_
                                     (map (lambda (_%g4756047562%_)
                                            (_%expand-path47459%_
                                             _%g4746447542%_
                                             _%g4756047562%_))
                                          (foldr (lambda (_%g4756547568%_
                                                          _%g4756647571%_)
                                                   (cons _%g4756547568%_
                                                         _%g4756647571%_))
                                                 '()
                                                 _%g4746347540%_)))))
                            _%mod4747947537%_
                            _%hd4746947506%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4747447518%_
                                                    _%target4747147512%_
                                                    '()))
                                                 (_%g4746147485%_
                                                  _%g4746247489%_)))))
                                       (_%g4746147485%_ _%g4746247489%_))))
                               (_%g4746147485%_ _%g4746247489%_))))
                       (_%g4746147485%_ _%g4746247489%_)))))
           (_%g4746047574%_ _%stx47454%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47723%_)
       (let* ((_%g4772647750%_
               (lambda (_%g4772747746%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4772747746%_)))
              (_%g4772547876%_
               (lambda (_%g4772747754%_)
                 (if (gx#stx-pair? _%g4772747754%_)
                     (let ((_%e4773047757%_ (gx#syntax-e _%g4772747754%_)))
                       (let ((_%hd4773147761%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4773047757%_)))
                             (_%tl4773247764%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4773047757%_))))
                         (if (gx#stx-pair? _%tl4773247764%_)
                             (let ((_%e4773347767%_
                                    (gx#syntax-e _%tl4773247764%_)))
                               (let ((_%hd4773447771%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4773347767%_)))
                                     (_%tl4773547774%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4773347767%_))))
                                 (if (gx#stx-pair/null? _%tl4773547774%_)
                                     (let ((_g48778_
                                            (gx#syntax-split-splice
                                             _%tl4773547774%_
                                             '0)))
                                       (begin
                                         (let ((_g48779_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48778_)
                                                      (##values-length
                                                       _g48778_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48779_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48779_)))
                                         (let ((_%target4773647777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48778_ 0)))
                                               (_%tl4773847780%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48778_ 1))))
                                           (if (gx#stx-null? _%tl4773847780%_)
                                               (letrec ((_%loop4773947783%_
                                                         (lambda (_%hd4773747787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4774347790%_)
                   (if (gx#stx-pair? _%hd4773747787%_)
                       (let ((_%e4774047792%_ (gx#syntax-e _%hd4773747787%_)))
                         (let ((_%lp-hd4774147796%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4774047792%_)))
                               (_%lp-tl4774247799%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4774047792%_))))
                           (_%loop4773947783%_
                            _%lp-tl4774247799%_
                            (cons _%lp-hd4774147796%_ _%id4774347790%_))))
                       (let ((_%id4774447802%_ (reverse _%id4774347790%_)))
                         ((lambda (_%g4772847805%_ _%g4772947807%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4782447827%_
                                                 _%g4782547830%_)
                                          (cons _%g4782447827%_
                                                _%g4782547830%_))
                                        '()
                                        _%g4772847805%_))
                                (let* ((_%keys47841%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4783247835%_
                                                         _%g4783347838%_)
                                                  (cons _%g4783247835%_
                                                        _%g4783347838%_))
                                                '()
                                                _%g4772847805%_)))
                                       (_%keytab47852%_
                                        (let ((_%ht47844%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4784647848%_)
                                             (hash-put!
                                              _%ht47844%_
                                              _%g4784647848%_
                                              '#t))
                                           _%keys47841%_)
                                          _%ht47844%_))
                                       (_%exports47855%_
                                        (gx#core-expand-export-source
                                         _%g4772947807%_))
                                       (_%fold-e47871%_
                                        (letrec ((_%fold-e47858%_
                                                  (lambda (_%out47861%_
                                                           _%r47863%_)
                                                    (if (gx#module-export?
                                                         _%out47861%_)
                                                        (if (hash-get
                                                             _%keytab47852%_
                                                             (gx#module-export-name
                                                              _%out47861%_))
                                                            _%r47863%_
                                                            (cons _%out47861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47863%_))
                (if (gx#export-set? _%out47861%_)
                    (foldl _%fold-e47858%_
                           _%r47863%_
                           (gx#export-set-exports _%out47861%_))
                    _%r47863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47858%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47871%_
                                               '()
                                               _%exports47855%_)))
                                (_%g4772647750%_ _%g4772747754%_)))
                          _%id4774447802%_
                          _%hd4773447771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4773947783%_
                                                  _%target4773647777%_
                                                  '()))
                                               (_%g4772647750%_
                                                _%g4772747754%_)))))
                                     (_%g4772647750%_ _%g4772747754%_))))
                             (_%g4772647750%_ _%g4772747754%_))))
                     (_%g4772647750%_ _%g4772747754%_)))))
         (_%g4772547876%_ _%stx47723%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out47881%_ _%rename47883%_)
      (gx#make-module-export
       (gx#module-export-context _%out47881%_)
       (gx#module-export-key _%out47881%_)
       (gx#module-export-phi _%out47881%_)
       _%rename47883%_
       (gx#module-export-weak? _%out47881%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx47885%_)
       (let* ((_%g4788847921%_
               (lambda (_%g4788947917%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4788947917%_)))
              (_%g4788748112%_
               (lambda (_%g4788947925%_)
                 (if (gx#stx-pair? _%g4788947925%_)
                     (let ((_%e4789347928%_ (gx#syntax-e _%g4788947925%_)))
                       (let ((_%hd4789447932%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4789347928%_)))
                             (_%tl4789547935%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4789347928%_))))
                         (if (gx#stx-pair? _%tl4789547935%_)
                             (let ((_%e4789647938%_
                                    (gx#syntax-e _%tl4789547935%_)))
                               (let ((_%hd4789747942%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4789647938%_)))
                                     (_%tl4789847945%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4789647938%_))))
                                 (if (gx#stx-pair/null? _%tl4789847945%_)
                                     (let ((_g48780_
                                            (gx#syntax-split-splice
                                             _%tl4789847945%_
                                             '0)))
                                       (begin
                                         (let ((_g48781_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48780_)
                                                      (##values-length
                                                       _g48780_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48781_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48781_)))
                                         (let ((_%target4789947948%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48780_ 0)))
                                               (_%tl4790147951%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48780_ 1))))
                                           (if (gx#stx-null? _%tl4790147951%_)
                                               (letrec ((_%loop4790247954%_
                                                         (lambda (_%hd4790047958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4790647961%_
                          _%id4790747962%_)
                   (if (gx#stx-pair? _%hd4790047958%_)
                       (let ((_%e4790347964%_ (gx#syntax-e _%hd4790047958%_)))
                         (let ((_%lp-hd4790447968%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4790347964%_)))
                               (_%lp-tl4790547971%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4790347964%_))))
                           (if (gx#stx-pair? _%lp-hd4790447968%_)
                               (let ((_%e4791047974%_
                                      (gx#syntax-e _%lp-hd4790447968%_)))
                                 (let ((_%hd4791147978%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4791047974%_)))
                                       (_%tl4791247981%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4791047974%_))))
                                   (if (gx#stx-pair? _%tl4791247981%_)
                                       (let ((_%e4791347984%_
                                              (gx#syntax-e _%tl4791247981%_)))
                                         (let ((_%hd4791447988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4791347984%_)))
                                               (_%tl4791547991%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4791347984%_))))
                                           (if (gx#stx-null? _%tl4791547991%_)
                                               (_%loop4790247954%_
                                                _%lp-tl4790547971%_
                                                (cons _%hd4791447988%_
                                                      _%new-id4790647961%_)
                                                (cons _%hd4791147978%_
                                                      _%id4790747962%_))
                                               (_%g4788847921%_
                                                _%g4788947925%_))))
                                       (_%g4788847921%_ _%g4788947925%_))))
                               (_%g4788847921%_ _%g4788947925%_))))
                       (let ((_%new-id4790847994%_
                              (reverse _%new-id4790647961%_))
                             (_%id4790947996%_ (reverse _%id4790747962%_)))
                         ((lambda (_%g4789047998%_
                                   _%g4789148000%_
                                   _%g4789248001%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4801948022%_
                                                      _%g4802048025%_)
                                               (cons _%g4801948022%_
                                                     _%g4802048025%_))
                                             '()
                                             _%g4789148000%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4802748030%_
                                                      _%g4802848033%_)
                                               (cons _%g4802748030%_
                                                     _%g4802848033%_))
                                             '()
                                             _%g4789047998%_)))
                                (let* ((_%keytab48036%_ (make-hash-table))
                                       (_%found48039%_ (make-hash-table))
                                       (_%_48062%_
                                        (for-each
                                         (lambda (_%id48042%_ _%new-id48044%_)
                                           (hash-put!
                                            _%keytab48036%_
                                            (gx#core-identifier-key
                                             _%id48042%_)
                                            (gx#core-identifier-key
                                             _%new-id48044%_)))
                                         (foldr (lambda (_%g4804548048%_
                                                         _%g4804648051%_)
                                                  (cons _%g4804548048%_
                                                        _%g4804648051%_))
                                                '()
                                                _%g4789148000%_)
                                         (foldr (lambda (_%g4805348056%_
                                                         _%g4805448059%_)
                                                  (cons _%g4805348056%_
                                                        _%g4805448059%_))
                                                '()
                                                _%g4789047998%_)))
                                       (_%exports48065%_
                                        (gx#core-expand-export-source
                                         _%g4789248001%_))
                                       (_%fold-e48093%_
                                        (letrec ((_%fold-e48068%_
                                                  (lambda (_%out48071%_
                                                           _%r48073%_)
                                                    (if (gx#module-export?
                                                         _%out48071%_)
                                                        (let* ((_%name48077%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48071%_))
                       (_%$e48080%_ (hash-get _%keytab48036%_ _%name48077%_)))
                  (if _%$e48080%_
                      ((lambda (_%rename48084%_)
                         (hash-put! _%found48039%_ _%name48077%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48071%_
                                _%rename48084%_)
                               _%r48073%_))
                       _%$e48080%_)
                      (cons _%out48071%_ _%r48073%_)))
                (if (gx#export-set? _%out48071%_)
                    (foldl _%fold-e48068%_
                           _%r48073%_
                           (gx#export-set-exports _%out48071%_))
                    (cons _%out48071%_ _%r48073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48068%_))
                                       (_%new-exports48096%_
                                        (foldl _%fold-e48093%_
                                               '()
                                               _%exports48065%_)))
                                  (for-each
                                   (lambda (_%id48101%_)
                                     (if (hash-get
                                          _%found48039%_
                                          (gx#core-identifier-key _%id48101%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx47885%_
                                          _%id48101%_)))
                                   (foldr (lambda (_%g4810348106%_
                                                   _%g4810448109%_)
                                            (cons _%g4810348106%_
                                                  _%g4810448109%_))
                                          '()
                                          _%g4789148000%_))
                                  (cons 'begin: _%new-exports48096%_))
                                (_%g4788847921%_ _%g4788947925%_)))
                          _%new-id4790847994%_
                          _%id4790947996%_
                          _%hd4789747942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4790247954%_
                                                  _%target4789947948%_
                                                  '()
                                                  '()))
                                               (_%g4788847921%_
                                                _%g4788947925%_)))))
                                     (_%g4788847921%_ _%g4788947925%_))))
                             (_%g4788847921%_ _%g4788947925%_))))
                     (_%g4788847921%_ _%g4788947925%_)))))
         (_%g4788748112%_ _%stx47885%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48117%_)
       (let* ((_%g4812048138%_
               (lambda (_%g4812148134%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4812148134%_)))
              (_%g4811948223%_
               (lambda (_%g4812148142%_)
                 (if (gx#stx-pair? _%g4812148142%_)
                     (let ((_%e4812448145%_ (gx#syntax-e _%g4812148142%_)))
                       (let ((_%hd4812548149%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4812448145%_)))
                             (_%tl4812648152%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4812448145%_))))
                         (if (gx#stx-pair? _%tl4812648152%_)
                             (let ((_%e4812748155%_
                                    (gx#syntax-e _%tl4812648152%_)))
                               (let ((_%hd4812848159%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4812748155%_)))
                                     (_%tl4812948162%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4812748155%_))))
                                 (if (gx#stx-pair? _%tl4812948162%_)
                                     (let ((_%e4813048165%_
                                            (gx#syntax-e _%tl4812948162%_)))
                                       (let ((_%hd4813148169%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4813048165%_)))
                                             (_%tl4813248172%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4813048165%_))))
                                         (if (gx#stx-null? _%tl4813248172%_)
                                             ((lambda (_%g4812248175%_
                                                       _%g4812348177%_)
                                                (if (gx#identifier?
                                                     _%g4812248175%_)
                                                    (let* ((_%pre48193%_
                                                            (gx#stx-e
                                                             _%g4812248175%_))
                                                           (_%exports48196%_
                                                            (gx#core-expand-export-source
                                                             _%g4812348177%_))
                                                           (_%rename-e48202%_
                                                            (lambda (_%name48199%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48199%_
                                                               _%pre48193%_)))
                                                           (_%fold-e48218%_
                                                            (letrec ((_%fold-e48205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48208%_ _%r48210%_)
                                (if (gx#module-export? _%out48208%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48208%_
                                           (_%rename-e48202%_
                                            (gx#module-export-name
                                             _%out48208%_)))
                                          _%r48210%_)
                                    (if (gx#export-set? _%out48208%_)
                                        (foldl _%fold-e48205%_
                                               _%r48210%_
                                               (gx#export-set-exports
                                                _%out48208%_))
                                        (cons _%out48208%_ _%r48210%_))))))
                      _%fold-e48205%_)))
              (cons 'begin: (foldl _%fold-e48218%_ '() _%exports48196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4812048138%_
                                                     _%g4812148142%_)))
                                              _%hd4813148169%_
                                              _%hd4812848159%_)
                                             (_%g4812048138%_
                                              _%g4812148142%_))))
                                     (_%g4812048138%_ _%g4812148142%_))))
                             (_%g4812048138%_ _%g4812148142%_))))
                     (_%g4812048138%_ _%g4812148142%_)))))
         (_%g4811948223%_ _%stx48117%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48227%_)
       (letrec ((_%identifiers48230%_
                 (lambda (_%id48458%_ _%unchecked?48460%_)
                   (let ((_%info48462%_
                          (gx#syntax-local-value _%id48458%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info48462%_))
                         (cons _%id48458%_
                               (cons (let ((__obj48759 _%info48462%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj48759
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj48759
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj48759
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj48760
                                                         _%info48462%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj48760
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj48760
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj48760
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?48460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj48761 _%info48462%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48761
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48761
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48761
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj48762 _%info48462%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48762
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48762
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48762
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj48763 _%info48462%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj48763
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj48763
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj48763
                                    'mutators)))))
                 (map cdr
                      (let ((__obj48764 _%info48462%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj48764
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj48764
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj48764 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor48465%_
                                                   (let ((__obj48765
                                                          _%info48462%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj48765
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj48765
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj48765
                                                          'constructor)))))
                                              (if _%ctor48465%_
                                                  (cons _%ctor48465%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48227%_
                          _%id48458%_))))))
         (let* ((_%__stx4870048701%_ _%stx48227%_)
                (_%g4823448275%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4870048701%_))))
           (let ((_%__kont4870348704%_
                  (lambda (_%g4823648419%_ _%g4823748421%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4844048442%_)
                              (_%identifiers48230%_
                               _%g4844048442%_
                               (gx#stx-e _%g4823748421%_)))
                            (foldr (lambda (_%g4844548448%_ _%g4844648451%_)
                                     (cons _%g4844548448%_ _%g4844648451%_))
                                   '()
                                   _%g4823648419%_))))))
                 (_%__kont4870748708%_
                  (lambda (_%g4825748320%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4833648338%_)
                              (_%identifiers48230%_ _%g4833648338%_ '#f))
                            (foldr (lambda (_%g4834148344%_ _%g4834248347%_)
                                     (cons _%g4834148344%_ _%g4834248347%_))
                                   '()
                                   _%g4825748320%_)))))))
             (let* ((_%__match4875748758%_
                     (lambda (_%e4825848282%_
                              _%hd4825948286%_
                              _%tl4826048289%_
                              _%__splice4870948710%_
                              _%target4826148292%_
                              _%tl4826348295%_)
                       (letrec ((_%loop4826448298%_
                                 (lambda (_%hd4826248302%_ _%id4826848305%_)
                                   (if (gx#stx-pair? _%hd4826248302%_)
                                       (let ((_%e4826548307%_
                                              (gx#syntax-e _%hd4826248302%_)))
                                         (let ((_%lp-tl4826748314%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4826548307%_)))
                                               (_%lp-hd4826648311%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4826548307%_))))
                                           (_%loop4826448298%_
                                            _%lp-tl4826748314%_
                                            (cons _%lp-hd4826648311%_
                                                  _%id4826848305%_))))
                                       (let ((_%id4826948317%_
                                              (reverse _%id4826848305%_)))
                                         (_%__kont4870748708%_
                                          _%id4826948317%_))))))
                         (_%loop4826448298%_ _%target4826148292%_ '()))))
                    (_%__match4874348744%_
                     (lambda (_%e4823848357%_
                              _%hd4823948361%_
                              _%tl4824048364%_
                              _%e4824148367%_
                              _%hd4824248371%_
                              _%tl4824348374%_
                              _%e4824448377%_
                              _%e4824548381%_
                              _%hd4824648385%_
                              _%tl4824748388%_
                              _%__splice4870548706%_
                              _%target4824848391%_
                              _%tl4825048394%_)
                       (letrec ((_%loop4825148397%_
                                 (lambda (_%hd4824948401%_ _%id4825548404%_)
                                   (if (gx#stx-pair? _%hd4824948401%_)
                                       (let ((_%e4825248406%_
                                              (gx#syntax-e _%hd4824948401%_)))
                                         (let ((_%lp-tl4825448413%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4825248406%_)))
                                               (_%lp-hd4825348410%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4825248406%_))))
                                           (_%loop4825148397%_
                                            _%lp-tl4825448413%_
                                            (cons _%lp-hd4825348410%_
                                                  _%id4825548404%_))))
                                       (let ((_%id4825648416%_
                                              (reverse _%id4825548404%_)))
                                         (_%__kont4870348704%_
                                          _%id4825648416%_
                                          _%hd4824648385%_))))))
                         (_%loop4825148397%_ _%target4824848391%_ '())))))
               (if (gx#stx-pair? _%__stx4870048701%_)
                   (let ((_%e4823848357%_ (gx#syntax-e _%__stx4870048701%_)))
                     (let ((_%tl4824048364%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4823848357%_)))
                           (_%hd4823948361%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4823848357%_))))
                       (if (gx#stx-pair? _%tl4824048364%_)
                           (let ((_%e4824148367%_
                                  (gx#syntax-e _%tl4824048364%_)))
                             (let ((_%tl4824348374%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4824148367%_)))
                                   (_%hd4824248371%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4824148367%_))))
                               (if (gx#stx-datum? _%hd4824248371%_)
                                   (let ((_%e4824448377%_
                                          (gx#stx-e _%hd4824248371%_)))
                                     (if (equal? _%e4824448377%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4824348374%_)
                                             (let ((_%e4824548381%_
                                                    (gx#syntax-e
                                                     _%tl4824348374%_)))
                                               (let ((_%tl4824748388%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4824548381%_)))
                                                     (_%hd4824648385%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4824548381%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4824748388%_)
                                                     (let ((_%__splice4870548706%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4824748388%_
                                                             '0)))
                                                       (let ((_%tl4825048394%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4870548706%_ '1)))
                     (_%target4824848391%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4870548706%_ '0))))
                 (if (gx#stx-null? _%tl4825048394%_)
                     (_%__match4874348744%_
                      _%e4823848357%_
                      _%hd4823948361%_
                      _%tl4824048364%_
                      _%e4824148367%_
                      _%hd4824248371%_
                      _%tl4824348374%_
                      _%e4824448377%_
                      _%e4824548381%_
                      _%hd4824648385%_
                      _%tl4824748388%_
                      _%__splice4870548706%_
                      _%target4824848391%_
                      _%tl4825048394%_)
                     (if (gx#stx-pair/null? _%tl4824048364%_)
                         (let ((_%__splice4870948710%_
                                (gx#syntax-split-splice->vector
                                 _%tl4824048364%_
                                 '0)))
                           (let ((_%tl4826348295%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4870948710%_ '1)))
                                 (_%target4826148292%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4870948710%_ '0))))
                             (if (gx#stx-null? _%tl4826348295%_)
                                 (_%__match4875748758%_
                                  _%e4823848357%_
                                  _%hd4823948361%_
                                  _%tl4824048364%_
                                  _%__splice4870948710%_
                                  _%target4826148292%_
                                  _%tl4826348295%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4823448275%_)))))
                         (let () (declare (not safe)) (_%g4823448275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4824048364%_)
                                                         (let ((_%__splice4870948710%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4824048364%_
                         '0)))
                   (let ((_%tl4826348295%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4870948710%_ '1)))
                         (_%target4826148292%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4870948710%_ '0))))
                     (if (gx#stx-null? _%tl4826348295%_)
                         (_%__match4875748758%_
                          _%e4823848357%_
                          _%hd4823948361%_
                          _%tl4824048364%_
                          _%__splice4870948710%_
                          _%target4826148292%_
                          _%tl4826348295%_)
                         (let () (declare (not safe)) (_%g4823448275%_)))))
                 (let () (declare (not safe)) (_%g4823448275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4824048364%_)
                                                 (let ((_%__splice4870948710%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4824048364%_
                                                         '0)))
                                                   (let ((_%tl4826348295%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4870948710%_
                                                             '1)))
                                                         (_%target4826148292%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4870948710%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4826348295%_)
                                                         (_%__match4875748758%_
                                                          _%e4823848357%_
                                                          _%hd4823948361%_
                                                          _%tl4824048364%_
                                                          _%__splice4870948710%_
                                                          _%target4826148292%_
                                                          _%tl4826348295%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4823448275%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4823448275%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4824048364%_)
                                             (let ((_%__splice4870948710%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4824048364%_
                                                     '0)))
                                               (let ((_%tl4826348295%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4870948710%_
                                                         '1)))
                                                     (_%target4826148292%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4870948710%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4826348295%_)
                                                     (_%__match4875748758%_
                                                      _%e4823848357%_
                                                      _%hd4823948361%_
                                                      _%tl4824048364%_
                                                      _%__splice4870948710%_
                                                      _%target4826148292%_
                                                      _%tl4826348295%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4823448275%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4823448275%_)))))
                                   (if (gx#stx-pair/null? _%tl4824048364%_)
                                       (let ((_%__splice4870948710%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4824048364%_
                                               '0)))
                                         (let ((_%tl4826348295%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4870948710%_
                                                   '1)))
                                               (_%target4826148292%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4870948710%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4826348295%_)
                                               (_%__match4875748758%_
                                                _%e4823848357%_
                                                _%hd4823948361%_
                                                _%tl4824048364%_
                                                _%__splice4870948710%_
                                                _%target4826148292%_
                                                _%tl4826348295%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4823448275%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4823448275%_))))))
                           (if (gx#stx-pair/null? _%tl4824048364%_)
                               (let ((_%__splice4870948710%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4824048364%_
                                       '0)))
                                 (let ((_%tl4826348295%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4870948710%_
                                           '1)))
                                       (_%target4826148292%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4870948710%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4826348295%_)
                                       (_%__match4875748758%_
                                        _%e4823848357%_
                                        _%hd4823948361%_
                                        _%tl4824048364%_
                                        _%__splice4870948710%_
                                        _%target4826148292%_
                                        _%tl4826348295%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4823448275%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4823448275%_))))))
                   (let () (declare (not safe)) (_%g4823448275%_)))))))))))
