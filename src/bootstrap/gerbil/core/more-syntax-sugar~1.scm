(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g55503_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx54741%_)
        (let* ((_%g5474554756%_
                (lambda (_%g5474654752%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5474654752%_)))
               (_%g5474454786%_
                (lambda (_%g5474654760%_)
                  (if (gx#stx-pair? _%g5474654760%_)
                      (let ((_%e5474854763%_ (gx#syntax-e _%g5474654760%_)))
                        (let ((_%hd5474954767%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5474854763%_)))
                              (_%tl5475054770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5474854763%_))))
                          ((lambda (_%g5474754773%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g5474754773%_)
                                               '()))))
                           _%tl5475054770%_)))
                      (_%g5474554756%_ _%g5474654760%_)))))
          (_%g5474454786%_ _%$stx54741%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx54790%_)
        (let* ((_%g5479354826%_
                (lambda (_%g5479454822%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5479454822%_)))
               (_%g5479255228%_
                (lambda (_%g5479454830%_)
                  (if (gx#stx-pair? _%g5479454830%_)
                      (let ((_%e5479754833%_ (gx#syntax-e _%g5479454830%_)))
                        (let ((_%hd5479854837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5479754833%_)))
                              (_%tl5479954840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5479754833%_))))
                          (if (gx#stx-pair? _%tl5479954840%_)
                              (let ((_%e5480054843%_
                                     (gx#syntax-e _%tl5479954840%_)))
                                (let ((_%hd5480154847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5480054843%_)))
                                      (_%tl5480254850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5480054843%_))))
                                  (if (gx#stx-pair/null? _%hd5480154847%_)
                                      (let ((_g55497_
                                             (gx#syntax-split-splice
                                              _%hd5480154847%_
                                              '0)))
                                        (begin
                                          (let ((_g55498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g55497_)
                                                       (##values-length
                                                        _g55497_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g55498_ 2)))
                                                (error "Context expects 2 values"
                                                       _g55498_)))
                                          (let ((_%target5480354853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g55497_ 0)))
                                                (_%tl5480554856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g55497_ 1))))
                                            (if (gx#stx-null? _%tl5480554856%_)
                                                (letrec ((_%loop5480654859%_
                                                          (lambda (_%hd5480454863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause5481054866%_)
                    (if (gx#stx-pair? _%hd5480454863%_)
                        (let ((_%e5480754868%_ (gx#syntax-e _%hd5480454863%_)))
                          (let ((_%lp-hd5480854872%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5480754868%_)))
                                (_%lp-tl5480954875%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5480754868%_))))
                            (_%loop5480654859%_
                             _%lp-tl5480954875%_
                             (cons _%lp-hd5480854872%_ _%clause5481054866%_))))
                        (let ((_%clause5481154878%_
                               (reverse _%clause5481054866%_)))
                          (if (gx#stx-pair/null? _%tl5480254850%_)
                              (let ((_g55499_
                                     (gx#syntax-split-splice
                                      _%tl5480254850%_
                                      '0)))
                                (begin
                                  (let ((_g55500_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g55499_)
                                               (##values-length _g55499_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g55500_ 2)))
                                        (error "Context expects 2 values"
                                               _g55500_)))
                                  (let ((_%target5481254881%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g55499_ 0)))
                                        (_%tl5481454884%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g55499_ 1))))
                                    (if (gx#stx-null? _%tl5481454884%_)
                                        (letrec ((_%loop5481554887%_
                                                  (lambda (_%hd5481354891%_
                                                           _%body5481954894%_)
                                                    (if (gx#stx-pair?
                                                         _%hd5481354891%_)
                                                        (let ((_%e5481654896%_
                                                               (gx#syntax-e
                                                                _%hd5481354891%_)))
                                                          (let ((_%lp-hd5481754900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5481654896%_)))
                        (_%lp-tl5481854903%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5481654896%_))))
                    (_%loop5481554887%_
                     _%lp-tl5481854903%_
                     (cons _%lp-hd5481754900%_ _%body5481954894%_))))
                (let ((_%body5482054906%_ (reverse _%body5481954894%_)))
                  ((lambda (_%g5479554909%_ _%g5479654911%_)
                     (let* ((_%g5493354950%_
                             (lambda (_%g5493454946%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5493454946%_)))
                            (_%g5493255017%_
                             (lambda (_%g5493454954%_)
                               (if (gx#stx-pair/null? _%g5493454954%_)
                                   (let ((_g55501_
                                          (gx#syntax-split-splice
                                           _%g5493454954%_
                                           '0)))
                                     (begin
                                       (let ((_g55502_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g55501_)
                                                    (##values-length _g55501_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g55502_ 2)))
                                             (error "Context expects 2 values"
                                                    _g55502_)))
                                       (let ((_%target5493654957%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g55501_ 0)))
                                             (_%tl5493854960%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g55501_ 1))))
                                         (if (gx#stx-null? _%tl5493854960%_)
                                             (letrec ((_%loop5493954963%_
                                                       (lambda (_%hd5493754967%_
                                                                _%clause5494354970%_)
                                                         (if (gx#stx-pair?
                                                              _%hd5493754967%_)
                                                             (let ((_%e5494054972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd5493754967%_)))
                       (let ((_%lp-hd5494154976%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5494054972%_)))
                             (_%lp-tl5494254979%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5494054972%_))))
                         (_%loop5493954963%_
                          _%lp-tl5494254979%_
                          (cons _%lp-hd5494154976%_ _%clause5494354970%_))))
                     (let ((_%clause5494454982%_
                            (reverse _%clause5494354970%_)))
                       ((lambda (_%g5493554985%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g5500055005%_
                                                      _%g5500155008%_)
                                               (cons _%g5500055005%_
                                                     _%g5500155008%_))
                                             '()
                                             _%g5493554985%_)
                                      (foldr (lambda (_%g5500255011%_
                                                      _%g5500355014%_)
                                               (cons _%g5500255011%_
                                                     _%g5500355014%_))
                                             '()
                                             _%g5479554909%_))))
                        _%clause5494454982%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop5493954963%_
                                                _%target5493654957%_
                                                '()))
                                             (_%g5493354950%_
                                              _%g5493454954%_)))))
                                   (_%g5493354950%_ _%g5493454954%_)))))
                       (_%g5493255017%_
                        (map (lambda (_%clause55021%_)
                               (let* ((_%__stx5543455435%_ _%clause55021%_)
                                      (_%g5502555064%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx5543455435%_))))
                                 (let ((_%__kont5543755438%_
                                        (lambda (_%g5502755197%_
                                                 _%g5502855199%_)
                                          (cons _%g5502855199%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g5502755197%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont5543955440%_
                                        (lambda (_%g5504155119%_
                                                 _%g5504255121%_
                                                 _%g5504355122%_)
                                          (cons _%g5504355122%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g5504255121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g5514155144%_ _%g5514255147%_)
                                   (cons _%g5514155144%_ _%g5514255147%_))
                                 '()
                                 _%g5504155119%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match5549555496%_
                                           (lambda (_%e5504455071%_
                                                    _%hd5504555075%_
                                                    _%tl5504655078%_
                                                    _%e5504755081%_
                                                    _%hd5504855085%_
                                                    _%tl5504955088%_
                                                    _%__splice5544155442%_
                                                    _%target5505055091%_
                                                    _%tl5505255094%_)
                                             (letrec ((_%loop5505355097%_
                                                       (lambda (_%hd5505155101%_
                                                                _%components5505755104%_)
                                                         (if (gx#stx-pair?
                                                              _%hd5505155101%_)
                                                             (let ((_%e5505455106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd5505155101%_)))
                       (let ((_%lp-tl5505655113%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e5505455106%_)))
                             (_%lp-hd5505555110%_
                              (let ()
                                (declare (not safe))
                                (##car _%e5505455106%_))))
                         (_%loop5505355097%_
                          _%lp-tl5505655113%_
                          (cons _%lp-hd5505555110%_
                                _%components5505755104%_))))
                     (let ((_%components5505855116%_
                            (reverse _%components5505755104%_)))
                       (let ((_%g5504155119%_ _%components5505855116%_)
                             (_%g5504255121%_ _%hd5504855085%_)
                             (_%g5504355122%_ _%hd5504555075%_))
                         (if (gx#identifier? _%g5504355122%_)
                             (_%__kont5543955440%_
                              _%g5504155119%_
                              _%g5504255121%_
                              _%g5504355122%_)
                             (let ()
                               (declare (not safe))
                               (_%g5502555064%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop5505355097%_
                                                _%target5505055091%_
                                                '()))))
                                          (_%__match5547555476%_
                                           (lambda (_%e5502955157%_
                                                    _%hd5503055161%_
                                                    _%tl5503155164%_
                                                    _%e5503255167%_
                                                    _%hd5503355171%_
                                                    _%tl5503455174%_
                                                    _%e5503555177%_
                                                    _%hd5503655181%_
                                                    _%tl5503755184%_
                                                    _%e5503855187%_
                                                    _%hd5503955191%_
                                                    _%tl5504055194%_)
                                             (let ((_%g5502755197%_
                                                    _%hd5503955191%_)
                                                   (_%g5502855199%_
                                                    _%hd5503055161%_))
                                               (if (and (gx#identifier?
                                                         _%g5502855199%_)
                                                        (gx#identifier?
                                                         _%g5502755197%_))
                                                   (_%__kont5543755438%_
                                                    _%g5502755197%_
                                                    _%g5502855199%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl5503455174%_)
                                                       (let ((_%__splice5544155442%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl5503455174%_
                                                               '0)))
                                                         (let ((_%tl5505255094%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice5544155442%_ '1)))
                       (_%target5505055091%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice5544155442%_ '0))))
                   (if (gx#stx-null? _%tl5505255094%_)
                       (_%__match5549555496%_
                        _%e5502955157%_
                        _%hd5503055161%_
                        _%tl5503155164%_
                        _%e5503255167%_
                        _%hd5503355171%_
                        _%tl5503455174%_
                        _%__splice5544155442%_
                        _%target5505055091%_
                        _%tl5505255094%_)
                       (let () (declare (not safe)) (_%g5502555064%_)))))
               (let () (declare (not safe)) (_%g5502555064%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx5543455435%_)
                                         (let ((_%e5502955157%_
                                                (gx#syntax-e
                                                 _%__stx5543455435%_)))
                                           (let ((_%tl5503155164%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5502955157%_)))
                                                 (_%hd5503055161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5502955157%_))))
                                             (if (gx#stx-pair?
                                                  _%tl5503155164%_)
                                                 (let ((_%e5503255167%_
                                                        (gx#syntax-e
                                                         _%tl5503155164%_)))
                                                   (let ((_%tl5503455174%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e5503255167%_)))
                                                         (_%hd5503355171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e5503255167%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd5503355171%_)
                                                         (let ((_%e5503555177%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd5503355171%_)))
                   (let ((_%tl5503755184%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e5503555177%_)))
                         (_%hd5503655181%_
                          (let ()
                            (declare (not safe))
                            (##car _%e5503555177%_))))
                     (if (gx#identifier? _%hd5503655181%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g55503_|
                              _%hd5503655181%_)
                             (if (gx#stx-pair? _%tl5503755184%_)
                                 (let ((_%e5503855187%_
                                        (gx#syntax-e _%tl5503755184%_)))
                                   (let ((_%tl5504055194%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5503855187%_)))
                                         (_%hd5503955191%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5503855187%_))))
                                     (if (gx#stx-null? _%tl5504055194%_)
                                         (if (gx#stx-null? _%tl5503455174%_)
                                             (_%__match5547555476%_
                                              _%e5502955157%_
                                              _%hd5503055161%_
                                              _%tl5503155164%_
                                              _%e5503255167%_
                                              _%hd5503355171%_
                                              _%tl5503455174%_
                                              _%e5503555177%_
                                              _%hd5503655181%_
                                              _%tl5503755184%_
                                              _%e5503855187%_
                                              _%hd5503955191%_
                                              _%tl5504055194%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl5503455174%_)
                                                 (let ((_%__splice5544155442%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl5503455174%_
                                                         '0)))
                                                   (let ((_%tl5505255094%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5544155442%_
                                                             '1)))
                                                         (_%target5505055091%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5544155442%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl5505255094%_)
                                                         (_%__match5549555496%_
                                                          _%e5502955157%_
                                                          _%hd5503055161%_
                                                          _%tl5503155164%_
                                                          _%e5503255167%_
                                                          _%hd5503355171%_
                                                          _%tl5503455174%_
                                                          _%__splice5544155442%_
                                                          _%target5505055091%_
                                                          _%tl5505255094%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g5502555064%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g5502555064%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl5503455174%_)
                                             (let ((_%__splice5544155442%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl5503455174%_
                                                     '0)))
                                               (let ((_%tl5505255094%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5544155442%_
                                                         '1)))
                                                     (_%target5505055091%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5544155442%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl5505255094%_)
                                                     (_%__match5549555496%_
                                                      _%e5502955157%_
                                                      _%hd5503055161%_
                                                      _%tl5503155164%_
                                                      _%e5503255167%_
                                                      _%hd5503355171%_
                                                      _%tl5503455174%_
                                                      _%__splice5544155442%_
                                                      _%target5505055091%_
                                                      _%tl5505255094%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g5502555064%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g5502555064%_))))))
                                 (if (gx#stx-pair/null? _%tl5503455174%_)
                                     (let ((_%__splice5544155442%_
                                            (gx#syntax-split-splice->vector
                                             _%tl5503455174%_
                                             '0)))
                                       (let ((_%tl5505255094%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5544155442%_
                                                 '1)))
                                             (_%target5505055091%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5544155442%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl5505255094%_)
                                             (_%__match5549555496%_
                                              _%e5502955157%_
                                              _%hd5503055161%_
                                              _%tl5503155164%_
                                              _%e5503255167%_
                                              _%hd5503355171%_
                                              _%tl5503455174%_
                                              _%__splice5544155442%_
                                              _%target5505055091%_
                                              _%tl5505255094%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g5502555064%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g5502555064%_))))
                             (if (gx#stx-pair/null? _%tl5503455174%_)
                                 (let ((_%__splice5544155442%_
                                        (gx#syntax-split-splice->vector
                                         _%tl5503455174%_
                                         '0)))
                                   (let ((_%tl5505255094%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice5544155442%_
                                             '1)))
                                         (_%target5505055091%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice5544155442%_
                                             '0))))
                                     (if (gx#stx-null? _%tl5505255094%_)
                                         (_%__match5549555496%_
                                          _%e5502955157%_
                                          _%hd5503055161%_
                                          _%tl5503155164%_
                                          _%e5503255167%_
                                          _%hd5503355171%_
                                          _%tl5503455174%_
                                          _%__splice5544155442%_
                                          _%target5505055091%_
                                          _%tl5505255094%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g5502555064%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g5502555064%_))))
                         (if (gx#stx-pair/null? _%tl5503455174%_)
                             (let ((_%__splice5544155442%_
                                    (gx#syntax-split-splice->vector
                                     _%tl5503455174%_
                                     '0)))
                               (let ((_%tl5505255094%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice5544155442%_
                                         '1)))
                                     (_%target5505055091%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice5544155442%_
                                         '0))))
                                 (if (gx#stx-null? _%tl5505255094%_)
                                     (_%__match5549555496%_
                                      _%e5502955157%_
                                      _%hd5503055161%_
                                      _%tl5503155164%_
                                      _%e5503255167%_
                                      _%hd5503355171%_
                                      _%tl5503455174%_
                                      _%__splice5544155442%_
                                      _%target5505055091%_
                                      _%tl5505255094%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g5502555064%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g5502555064%_))))))
                 (if (gx#stx-pair/null? _%tl5503455174%_)
                     (let ((_%__splice5544155442%_
                            (gx#syntax-split-splice->vector
                             _%tl5503455174%_
                             '0)))
                       (let ((_%tl5505255094%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice5544155442%_ '1)))
                             (_%target5505055091%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice5544155442%_ '0))))
                         (if (gx#stx-null? _%tl5505255094%_)
                             (_%__match5549555496%_
                              _%e5502955157%_
                              _%hd5503055161%_
                              _%tl5503155164%_
                              _%e5503255167%_
                              _%hd5503355171%_
                              _%tl5503455174%_
                              _%__splice5544155442%_
                              _%target5505055091%_
                              _%tl5505255094%_)
                             (let () (declare (not safe)) (_%g5502555064%_)))))
                     (let () (declare (not safe)) (_%g5502555064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g5502555064%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g5502555064%_)))))))
                             (foldr (lambda (_%g5521955222%_ _%g5522055225%_)
                                      (cons _%g5521955222%_ _%g5522055225%_))
                                    '()
                                    _%g5479654911%_)))))
                   _%body5482054906%_
                   _%clause5481154878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop5481554887%_
                                           _%target5481254881%_
                                           '()))
                                        (_%g5479354826%_ _%g5479454830%_)))))
                              (_%g5479354826%_ _%g5479454830%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5480654859%_
                                                   _%target5480354853%_
                                                   '()))
                                                (_%g5479354826%_
                                                 _%g5479454830%_)))))
                                      (_%g5479354826%_ _%g5479454830%_))))
                              (_%g5479354826%_ _%g5479454830%_))))
                      (_%g5479354826%_ _%g5479454830%_)))))
          (_%g5479255228%_ _%stx54790%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx55236%_)
        (let* ((_%g5524055277%_
                (lambda (_%g5524155273%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5524155273%_)))
               (_%g5523955414%_
                (lambda (_%g5524155281%_)
                  (if (gx#stx-pair? _%g5524155281%_)
                      (let ((_%e5524555284%_ (gx#syntax-e _%g5524155281%_)))
                        (let ((_%hd5524655288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5524555284%_)))
                              (_%tl5524755291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5524555284%_))))
                          (if (gx#stx-pair? _%tl5524755291%_)
                              (let ((_%e5524855294%_
                                     (gx#syntax-e _%tl5524755291%_)))
                                (let ((_%hd5524955298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5524855294%_)))
                                      (_%tl5525055301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5524855294%_))))
                                  (if (gx#stx-pair? _%hd5524955298%_)
                                      (let ((_%e5525155304%_
                                             (gx#syntax-e _%hd5524955298%_)))
                                        (let ((_%hd5525255308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5525155304%_)))
                                              (_%tl5525355311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5525155304%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5525355311%_)
                                              (let ((_g55504_
                                                     (gx#syntax-split-splice
                                                      _%tl5525355311%_
                                                      '0)))
                                                (begin
                                                  (let ((_g55505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g55504_)
                                                               (##values-length
                                                                _g55504_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g55505_ 2)))
                (error "Context expects 2 values" _g55505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target5525455314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g55504_
                                                            0)))
                                                        (_%tl5525655317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g55504_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl5525655317%_)
                                                        (letrec ((_%loop5525755320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd5525555324%_ _%components5526155327%_)
                            (if (gx#stx-pair? _%hd5525555324%_)
                                (let ((_%e5525855329%_
                                       (gx#syntax-e _%hd5525555324%_)))
                                  (let ((_%lp-hd5525955333%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5525855329%_)))
                                        (_%lp-tl5526055336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5525855329%_))))
                                    (_%loop5525755320%_
                                     _%lp-tl5526055336%_
                                     (cons _%lp-hd5525955333%_
                                           _%components5526155327%_))))
                                (let ((_%components5526255339%_
                                       (reverse _%components5526155327%_)))
                                  (if (gx#stx-pair/null? _%tl5525055301%_)
                                      (let ((_g55506_
                                             (gx#syntax-split-splice
                                              _%tl5525055301%_
                                              '0)))
                                        (begin
                                          (let ((_g55507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g55506_)
                                                       (##values-length
                                                        _g55506_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g55507_ 2)))
                                                (error "Context expects 2 values"
                                                       _g55507_)))
                                          (let ((_%target5526355342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g55506_ 0)))
                                                (_%tl5526555345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g55506_ 1))))
                                            (if (gx#stx-null? _%tl5526555345%_)
                                                (letrec ((_%loop5526655348%_
                                                          (lambda (_%hd5526455352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body5527055355%_)
                    (if (gx#stx-pair? _%hd5526455352%_)
                        (let ((_%e5526755357%_ (gx#syntax-e _%hd5526455352%_)))
                          (let ((_%lp-hd5526855361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5526755357%_)))
                                (_%lp-tl5526955364%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5526755357%_))))
                            (_%loop5526655348%_
                             _%lp-tl5526955364%_
                             (cons _%lp-hd5526855361%_ _%body5527055355%_))))
                        (let ((_%body5527155367%_
                               (reverse _%body5527055355%_)))
                          ((lambda (_%g5524255370%_
                                    _%g5524355372%_
                                    _%g5524455373%_)
                             (if (gx#identifier? _%g5524455373%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g5524455373%_
                                                         (foldr (lambda (_%g5539755402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g5539855405%_)
                          (cons _%g5539755402%_ _%g5539855405%_))
                        '()
                        _%g5524355372%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g5539955408%_
                                                             _%g5540055411%_)
                                                      (cons _%g5539955408%_
                                                            _%g5540055411%_))
                                                    '()
                                                    _%g5524255370%_)))
                                 (_%g5524055277%_ _%g5524155281%_)))
                           _%body5527155367%_
                           _%components5526255339%_
                           _%hd5525255308%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5526655348%_
                                                   _%target5526355342%_
                                                   '()))
                                                (_%g5524055277%_
                                                 _%g5524155281%_)))))
                                      (_%g5524055277%_ _%g5524155281%_)))))))
                  (_%loop5525755320%_ _%target5525455314%_ '()))
                (_%g5524055277%_ _%g5524155281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5524055277%_
                                               _%g5524155281%_))))
                                      (_%g5524055277%_ _%g5524155281%_))))
                              (_%g5524055277%_ _%g5524155281%_))))
                      (_%g5524055277%_ _%g5524155281%_)))))
          (_%g5523955414%_ _%$stx55236%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx55420%_)
        (let ((_%g5542355430%_
               (lambda (_%g5542455426%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5542455426%_))))
          (_%g5542355430%_ _%$stx55420%_))))))
