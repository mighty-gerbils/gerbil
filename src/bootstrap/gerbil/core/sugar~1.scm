(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20950_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20951_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20954_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20955_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1985%_)
        (let* ((_%g19892017%_
                (lambda (_%g19902013%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19902013%_)))
               (_%g19882116%_
                (lambda (_%g19902021%_)
                  (if (gx#stx-pair? _%g19902021%_)
                      (let ((_%e19942024%_ (gx#syntax-e _%g19902021%_)))
                        (let ((_%hd19952028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19942024%_)))
                              (_%tl19962031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19942024%_))))
                          (if (gx#stx-pair? _%tl19962031%_)
                              (let ((_%e19972034%_
                                     (gx#syntax-e _%tl19962031%_)))
                                (let ((_%hd19982038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19972034%_)))
                                      (_%tl19992041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19972034%_))))
                                  (if (gx#stx-pair? _%tl19992041%_)
                                      (let ((_%e20002044%_
                                             (gx#syntax-e _%tl19992041%_)))
                                        (let ((_%hd20012048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e20002044%_)))
                                              (_%tl20022051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e20002044%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl20022051%_)
                                              (let ((_g20942_
                                                     (gx#syntax-split-splice
                                                      _%tl20022051%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20942_)
                                                               (##values-length
                                                                _g20942_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20943_ 2)))
                (error "Context expects 2 values" _g20943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target20032054%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20942_
                                                            0)))
                                                        (_%tl20052057%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20942_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl20052057%_)
                                                        (letrec ((_%loop20062060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd20042064%_ _%clauses20102067%_)
                            (if (gx#stx-pair? _%hd20042064%_)
                                (let ((_%e20072069%_
                                       (gx#syntax-e _%hd20042064%_)))
                                  (let ((_%lp-hd20082073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e20072069%_)))
                                        (_%lp-tl20092076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e20072069%_))))
                                    (_%loop20062060%_
                                     _%lp-tl20092076%_
                                     (cons _%lp-hd20082073%_
                                           _%clauses20102067%_))))
                                (let ((_%clauses20112079%_
                                       (reverse _%clauses20102067%_)))
                                  ((lambda (_%g19912082%_
                                            _%g19922084%_
                                            _%g19932085%_)
                                     (if (gx#identifier? _%g19932085%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%g19932085%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%g19922084%_
                               (foldr (lambda (_%g21072110%_ _%g21082113%_)
                                        (cons _%g21072110%_ _%g21082113%_))
                                      '()
                                      _%g19912082%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19892017%_ _%g19902021%_)))
                                   _%clauses20112079%_
                                   _%hd20012048%_
                                   _%hd19982038%_))))))
                  (_%loop20062060%_ _%target20032054%_ '()))
                (_%g19892017%_ _%g19902021%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19892017%_ _%g19902021%_))))
                                      (_%g19892017%_ _%g19902021%_))))
                              (_%g19892017%_ _%g19902021%_))))
                      (_%g19892017%_ _%g19902021%_)))))
          (_%g19882116%_ _%$stx1985%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2121%_)
        (let* ((_%__stx1832918330%_ _%$stx2121%_)
               (_%g21262167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1832918330%_))))
          (let ((_%__kont1833218333%_
                 (lambda (_%g21282297%_ _%g21292299%_ _%g21302300%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21302300%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21292299%_)
                     (cons _%g21282297%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1833418335%_
                 (lambda (_%g21432224%_
                          _%g21442226%_
                          _%g21452227%_
                          _%g21462228%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21462228%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21452227%_)
                     (cons _%g21442226%_ (cons _%g21432224%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1839418395%_
                    (lambda (_%e21472174%_
                             _%hd21482178%_
                             _%tl21492181%_
                             _%e21502184%_
                             _%hd21512188%_
                             _%tl21522191%_
                             _%e21532194%_
                             _%hd21542198%_
                             _%tl21552201%_
                             _%e21562204%_
                             _%hd21572208%_
                             _%tl21582211%_
                             _%e21592214%_
                             _%hd21602218%_
                             _%tl21612221%_)
                      (let ((_%g21432224%_ _%hd21602218%_)
                            (_%g21442226%_ _%hd21572208%_)
                            (_%g21452227%_ _%tl21552201%_)
                            (_%g21462228%_ _%hd21542198%_))
                        (if (gx#identifier? _%g21462228%_)
                            (_%__kont1833418335%_
                             _%g21432224%_
                             _%g21442226%_
                             _%g21452227%_
                             _%g21462228%_)
                            (let () (declare (not safe)) (_%g21262167%_))))))
                   (_%__match1836218363%_
                    (lambda (_%e21312257%_
                             _%hd21322261%_
                             _%tl21332264%_
                             _%e21342267%_
                             _%hd21352271%_
                             _%tl21362274%_
                             _%e21372277%_
                             _%hd21382281%_
                             _%tl21392284%_
                             _%e21402287%_
                             _%hd21412291%_
                             _%tl21422294%_)
                      (let ((_%g21282297%_ _%hd21412291%_)
                            (_%g21292299%_ _%tl21392284%_)
                            (_%g21302300%_ _%hd21382281%_))
                        (if (gx#identifier? _%g21302300%_)
                            (_%__kont1833218333%_
                             _%g21282297%_
                             _%g21292299%_
                             _%g21302300%_)
                            (let () (declare (not safe)) (_%g21262167%_)))))))
              (if (gx#stx-pair? _%__stx1832918330%_)
                  (let ((_%e21312257%_ (gx#syntax-e _%__stx1832918330%_)))
                    (let ((_%tl21332264%_
                           (let () (declare (not safe)) (##cdr _%e21312257%_)))
                          (_%hd21322261%_
                           (let ()
                             (declare (not safe))
                             (##car _%e21312257%_))))
                      (if (gx#stx-pair? _%tl21332264%_)
                          (let ((_%e21342267%_ (gx#syntax-e _%tl21332264%_)))
                            (let ((_%tl21362274%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e21342267%_)))
                                  (_%hd21352271%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e21342267%_))))
                              (if (gx#stx-pair? _%hd21352271%_)
                                  (let ((_%e21372277%_
                                         (gx#syntax-e _%hd21352271%_)))
                                    (let ((_%tl21392284%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e21372277%_)))
                                          (_%hd21382281%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e21372277%_))))
                                      (if (gx#stx-pair? _%tl21362274%_)
                                          (let ((_%e21402287%_
                                                 (gx#syntax-e _%tl21362274%_)))
                                            (let ((_%tl21422294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e21402287%_)))
                                                  (_%hd21412291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e21402287%_))))
                                              (if (gx#stx-null? _%tl21422294%_)
                                                  (_%__match1836218363%_
                                                   _%e21312257%_
                                                   _%hd21322261%_
                                                   _%tl21332264%_
                                                   _%e21342267%_
                                                   _%hd21352271%_
                                                   _%tl21362274%_
                                                   _%e21372277%_
                                                   _%hd21382281%_
                                                   _%tl21392284%_
                                                   _%e21402287%_
                                                   _%hd21412291%_
                                                   _%tl21422294%_)
                                                  (if (gx#stx-pair?
                                                       _%tl21422294%_)
                                                      (let ((_%e21592214%_
                                                             (gx#syntax-e
                                                              _%tl21422294%_)))
                                                        (let ((_%tl21612221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21592214%_)))
                      (_%hd21602218%_
                       (let () (declare (not safe)) (##car _%e21592214%_))))
                  (if (gx#stx-null? _%tl21612221%_)
                      (_%__match1839418395%_
                       _%e21312257%_
                       _%hd21322261%_
                       _%tl21332264%_
                       _%e21342267%_
                       _%hd21352271%_
                       _%tl21362274%_
                       _%e21372277%_
                       _%hd21382281%_
                       _%tl21392284%_
                       _%e21402287%_
                       _%hd21412291%_
                       _%tl21422294%_
                       _%e21592214%_
                       _%hd21602218%_
                       _%tl21612221%_)
                      (let () (declare (not safe)) (_%g21262167%_)))))
              (let () (declare (not safe)) (_%g21262167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g21262167%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g21262167%_)))))
                          (let () (declare (not safe)) (_%g21262167%_)))))
                  (let () (declare (not safe)) (_%g21262167%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2322%_)
        (let* ((_%__stx1839718398%_ _%$stx2322%_)
               (_%g23272366%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1839718398%_))))
          (let ((_%__kont1840018401%_
                 (lambda (_%g23292486%_ _%g23302488%_ _%g23312489%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23312489%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g23302488%_
                                                 (foldr (lambda (_%g25082511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g25092514%_)
                  (cons _%g25082511%_ _%g25092514%_))
                '()
                _%g23292486%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1840418405%_
                 (lambda (_%g23502403%_ _%g23512405%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23512405%_ (cons _%g23502403%_ '()))))))
            (let* ((_%__match1845218453%_
                    (lambda (_%e23522373%_
                             _%hd23532377%_
                             _%tl23542380%_
                             _%e23552383%_
                             _%hd23562387%_
                             _%tl23572390%_
                             _%e23582393%_
                             _%hd23592397%_
                             _%tl23602400%_)
                      (let ((_%g23502403%_ _%hd23592397%_)
                            (_%g23512405%_ _%hd23562387%_))
                        (if (gx#identifier? _%g23512405%_)
                            (_%__kont1840418405%_ _%g23502403%_ _%g23512405%_)
                            (let () (declare (not safe)) (_%g23272366%_))))))
                   (_%__match1844418445%_
                    (lambda (_%e23522373%_
                             _%hd23532377%_
                             _%tl23542380%_
                             _%e23552383%_
                             _%hd23562387%_
                             _%tl23572390%_)
                      (if (gx#stx-pair? _%tl23572390%_)
                          (let ((_%e23582393%_ (gx#syntax-e _%tl23572390%_)))
                            (let ((_%tl23602400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23582393%_)))
                                  (_%hd23592397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23582393%_))))
                              (if (gx#stx-null? _%tl23602400%_)
                                  (_%__match1845218453%_
                                   _%e23522373%_
                                   _%hd23532377%_
                                   _%tl23542380%_
                                   _%e23552383%_
                                   _%hd23562387%_
                                   _%tl23572390%_
                                   _%e23582393%_
                                   _%hd23592397%_
                                   _%tl23602400%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g23272366%_)))))
                          (let () (declare (not safe)) (_%g23272366%_)))))
                   (_%__match1843218433%_
                    (lambda (_%e23322428%_
                             _%hd23332432%_
                             _%tl23342435%_
                             _%e23352438%_
                             _%hd23362442%_
                             _%tl23372445%_
                             _%e23382448%_
                             _%hd23392452%_
                             _%tl23402455%_
                             _%__splice1840218403%_
                             _%target23412458%_
                             _%tl23432461%_)
                      (letrec ((_%loop23442464%_
                                (lambda (_%hd23422468%_ _%body23482471%_)
                                  (if (gx#stx-pair? _%hd23422468%_)
                                      (let ((_%e23452473%_
                                             (gx#syntax-e _%hd23422468%_)))
                                        (let ((_%lp-tl23472480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23452473%_)))
                                              (_%lp-hd23462477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23452473%_))))
                                          (_%loop23442464%_
                                           _%lp-tl23472480%_
                                           (cons _%lp-hd23462477%_
                                                 _%body23482471%_))))
                                      (let ((_%body23492483%_
                                             (reverse _%body23482471%_)))
                                        (let ((_%g23292486%_ _%body23492483%_)
                                              (_%g23302488%_ _%tl23402455%_)
                                              (_%g23312489%_ _%hd23392452%_))
                                          (if (gx#identifier? _%g23312489%_)
                                              (_%__kont1840018401%_
                                               _%g23292486%_
                                               _%g23302488%_
                                               _%g23312489%_)
                                              (_%__match1844418445%_
                                               _%e23322428%_
                                               _%hd23332432%_
                                               _%tl23342435%_
                                               _%e23352438%_
                                               _%hd23362442%_
                                               _%tl23372445%_))))))))
                        (_%loop23442464%_ _%target23412458%_ '())))))
              (if (gx#stx-pair? _%__stx1839718398%_)
                  (let ((_%e23322428%_ (gx#syntax-e _%__stx1839718398%_)))
                    (let ((_%tl23342435%_
                           (let () (declare (not safe)) (##cdr _%e23322428%_)))
                          (_%hd23332432%_
                           (let ()
                             (declare (not safe))
                             (##car _%e23322428%_))))
                      (if (gx#stx-pair? _%tl23342435%_)
                          (let ((_%e23352438%_ (gx#syntax-e _%tl23342435%_)))
                            (let ((_%tl23372445%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23352438%_)))
                                  (_%hd23362442%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23352438%_))))
                              (if (gx#stx-pair? _%hd23362442%_)
                                  (let ((_%e23382448%_
                                         (gx#syntax-e _%hd23362442%_)))
                                    (let ((_%tl23402455%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e23382448%_)))
                                          (_%hd23392452%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e23382448%_))))
                                      (if (gx#stx-pair/null? _%tl23372445%_)
                                          (let ((_%__splice1840218403%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl23372445%_
                                                  '0)))
                                            (let ((_%tl23432461%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1840218403%_
                                                      '1)))
                                                  (_%target23412458%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1840218403%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl23432461%_)
                                                  (_%__match1843218433%_
                                                   _%e23322428%_
                                                   _%hd23332432%_
                                                   _%tl23342435%_
                                                   _%e23352438%_
                                                   _%hd23362442%_
                                                   _%tl23372445%_
                                                   _%e23382448%_
                                                   _%hd23392452%_
                                                   _%tl23402455%_
                                                   _%__splice1840218403%_
                                                   _%target23412458%_
                                                   _%tl23432461%_)
                                                  (if (gx#stx-pair?
                                                       _%tl23372445%_)
                                                      (let ((_%e23582393%_
                                                             (gx#syntax-e
                                                              _%tl23372445%_)))
                                                        (let ((_%tl23602400%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23582393%_)))
                      (_%hd23592397%_
                       (let () (declare (not safe)) (##car _%e23582393%_))))
                  (if (gx#stx-null? _%tl23602400%_)
                      (_%__match1845218453%_
                       _%e23322428%_
                       _%hd23332432%_
                       _%tl23342435%_
                       _%e23352438%_
                       _%hd23362442%_
                       _%tl23372445%_
                       _%e23582393%_
                       _%hd23592397%_
                       _%tl23602400%_)
                      (let () (declare (not safe)) (_%g23272366%_)))))
              (let () (declare (not safe)) (_%g23272366%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl23372445%_)
                                              (let ((_%e23582393%_
                                                     (gx#syntax-e
                                                      _%tl23372445%_)))
                                                (let ((_%tl23602400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23582393%_)))
                                                      (_%hd23592397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23582393%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23602400%_)
                                                      (_%__match1845218453%_
                                                       _%e23322428%_
                                                       _%hd23332432%_
                                                       _%tl23342435%_
                                                       _%e23352438%_
                                                       _%hd23362442%_
                                                       _%tl23372445%_
                                                       _%e23582393%_
                                                       _%hd23592397%_
                                                       _%tl23602400%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g23272366%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g23272366%_))))))
                                  (if (gx#stx-pair? _%tl23372445%_)
                                      (let ((_%e23582393%_
                                             (gx#syntax-e _%tl23372445%_)))
                                        (let ((_%tl23602400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23582393%_)))
                                              (_%hd23592397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23582393%_))))
                                          (if (gx#stx-null? _%tl23602400%_)
                                              (_%__match1845218453%_
                                               _%e23322428%_
                                               _%hd23332432%_
                                               _%tl23342435%_
                                               _%e23352438%_
                                               _%hd23362442%_
                                               _%tl23372445%_
                                               _%e23582393%_
                                               _%hd23592397%_
                                               _%tl23602400%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g23272366%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g23272366%_))))))
                          (let () (declare (not safe)) (_%g23272366%_)))))
                  (let () (declare (not safe)) (_%g23272366%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2522%_)
        (let* ((_%__stx1845518456%_ _%$stx2522%_)
               (_%g25272566%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1845518456%_))))
          (let ((_%__kont1845818459%_
                 (lambda (_%g25292686%_ _%g25302688%_ _%g25312689%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25312689%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g25302688%_
                                                 (foldr (lambda (_%g27082711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g27092714%_)
                  (cons _%g27082711%_ _%g27092714%_))
                '()
                _%g25292686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1846218463%_
                 (lambda (_%g25502603%_ _%g25512605%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25512605%_ '())
                               (cons _%g25502603%_ '()))))))
            (let* ((_%__match1851018511%_
                    (lambda (_%e25522573%_
                             _%hd25532577%_
                             _%tl25542580%_
                             _%e25552583%_
                             _%hd25562587%_
                             _%tl25572590%_
                             _%e25582593%_
                             _%hd25592597%_
                             _%tl25602600%_)
                      (let ((_%g25502603%_ _%hd25592597%_)
                            (_%g25512605%_ _%hd25562587%_))
                        (if (gx#identifier? _%g25512605%_)
                            (_%__kont1846218463%_ _%g25502603%_ _%g25512605%_)
                            (let () (declare (not safe)) (_%g25272566%_))))))
                   (_%__match1850218503%_
                    (lambda (_%e25522573%_
                             _%hd25532577%_
                             _%tl25542580%_
                             _%e25552583%_
                             _%hd25562587%_
                             _%tl25572590%_)
                      (if (gx#stx-pair? _%tl25572590%_)
                          (let ((_%e25582593%_ (gx#syntax-e _%tl25572590%_)))
                            (let ((_%tl25602600%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25582593%_)))
                                  (_%hd25592597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25582593%_))))
                              (if (gx#stx-null? _%tl25602600%_)
                                  (_%__match1851018511%_
                                   _%e25522573%_
                                   _%hd25532577%_
                                   _%tl25542580%_
                                   _%e25552583%_
                                   _%hd25562587%_
                                   _%tl25572590%_
                                   _%e25582593%_
                                   _%hd25592597%_
                                   _%tl25602600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g25272566%_)))))
                          (let () (declare (not safe)) (_%g25272566%_)))))
                   (_%__match1849018491%_
                    (lambda (_%e25322628%_
                             _%hd25332632%_
                             _%tl25342635%_
                             _%e25352638%_
                             _%hd25362642%_
                             _%tl25372645%_
                             _%e25382648%_
                             _%hd25392652%_
                             _%tl25402655%_
                             _%__splice1846018461%_
                             _%target25412658%_
                             _%tl25432661%_)
                      (letrec ((_%loop25442664%_
                                (lambda (_%hd25422668%_ _%body25482671%_)
                                  (if (gx#stx-pair? _%hd25422668%_)
                                      (let ((_%e25452673%_
                                             (gx#syntax-e _%hd25422668%_)))
                                        (let ((_%lp-tl25472680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25452673%_)))
                                              (_%lp-hd25462677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25452673%_))))
                                          (_%loop25442664%_
                                           _%lp-tl25472680%_
                                           (cons _%lp-hd25462677%_
                                                 _%body25482671%_))))
                                      (let ((_%body25492683%_
                                             (reverse _%body25482671%_)))
                                        (let ((_%g25292686%_ _%body25492683%_)
                                              (_%g25302688%_ _%tl25402655%_)
                                              (_%g25312689%_ _%hd25392652%_))
                                          (if (gx#identifier? _%g25312689%_)
                                              (_%__kont1845818459%_
                                               _%g25292686%_
                                               _%g25302688%_
                                               _%g25312689%_)
                                              (_%__match1850218503%_
                                               _%e25322628%_
                                               _%hd25332632%_
                                               _%tl25342635%_
                                               _%e25352638%_
                                               _%hd25362642%_
                                               _%tl25372645%_))))))))
                        (_%loop25442664%_ _%target25412658%_ '())))))
              (if (gx#stx-pair? _%__stx1845518456%_)
                  (let ((_%e25322628%_ (gx#syntax-e _%__stx1845518456%_)))
                    (let ((_%tl25342635%_
                           (let () (declare (not safe)) (##cdr _%e25322628%_)))
                          (_%hd25332632%_
                           (let ()
                             (declare (not safe))
                             (##car _%e25322628%_))))
                      (if (gx#stx-pair? _%tl25342635%_)
                          (let ((_%e25352638%_ (gx#syntax-e _%tl25342635%_)))
                            (let ((_%tl25372645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25352638%_)))
                                  (_%hd25362642%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25352638%_))))
                              (if (gx#stx-pair? _%hd25362642%_)
                                  (let ((_%e25382648%_
                                         (gx#syntax-e _%hd25362642%_)))
                                    (let ((_%tl25402655%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e25382648%_)))
                                          (_%hd25392652%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e25382648%_))))
                                      (if (gx#stx-pair/null? _%tl25372645%_)
                                          (let ((_%__splice1846018461%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl25372645%_
                                                  '0)))
                                            (let ((_%tl25432661%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1846018461%_
                                                      '1)))
                                                  (_%target25412658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1846018461%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl25432661%_)
                                                  (_%__match1849018491%_
                                                   _%e25322628%_
                                                   _%hd25332632%_
                                                   _%tl25342635%_
                                                   _%e25352638%_
                                                   _%hd25362642%_
                                                   _%tl25372645%_
                                                   _%e25382648%_
                                                   _%hd25392652%_
                                                   _%tl25402655%_
                                                   _%__splice1846018461%_
                                                   _%target25412658%_
                                                   _%tl25432661%_)
                                                  (if (gx#stx-pair?
                                                       _%tl25372645%_)
                                                      (let ((_%e25582593%_
                                                             (gx#syntax-e
                                                              _%tl25372645%_)))
                                                        (let ((_%tl25602600%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25582593%_)))
                      (_%hd25592597%_
                       (let () (declare (not safe)) (##car _%e25582593%_))))
                  (if (gx#stx-null? _%tl25602600%_)
                      (_%__match1851018511%_
                       _%e25322628%_
                       _%hd25332632%_
                       _%tl25342635%_
                       _%e25352638%_
                       _%hd25362642%_
                       _%tl25372645%_
                       _%e25582593%_
                       _%hd25592597%_
                       _%tl25602600%_)
                      (let () (declare (not safe)) (_%g25272566%_)))))
              (let () (declare (not safe)) (_%g25272566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl25372645%_)
                                              (let ((_%e25582593%_
                                                     (gx#syntax-e
                                                      _%tl25372645%_)))
                                                (let ((_%tl25602600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25582593%_)))
                                                      (_%hd25592597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25582593%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25602600%_)
                                                      (_%__match1851018511%_
                                                       _%e25322628%_
                                                       _%hd25332632%_
                                                       _%tl25342635%_
                                                       _%e25352638%_
                                                       _%hd25362642%_
                                                       _%tl25372645%_
                                                       _%e25582593%_
                                                       _%hd25592597%_
                                                       _%tl25602600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g25272566%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g25272566%_))))))
                                  (if (gx#stx-pair? _%tl25372645%_)
                                      (let ((_%e25582593%_
                                             (gx#syntax-e _%tl25372645%_)))
                                        (let ((_%tl25602600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25582593%_)))
                                              (_%hd25592597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25582593%_))))
                                          (if (gx#stx-null? _%tl25602600%_)
                                              (_%__match1851018511%_
                                               _%e25322628%_
                                               _%hd25332632%_
                                               _%tl25342635%_
                                               _%e25352638%_
                                               _%hd25362642%_
                                               _%tl25372645%_
                                               _%e25582593%_
                                               _%hd25592597%_
                                               _%tl25602600%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g25272566%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g25272566%_))))))
                          (let () (declare (not safe)) (_%g25272566%_)))))
                  (let () (declare (not safe)) (_%g25272566%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2722%_)
        (let* ((_%__stx1851318514%_ _%$stx2722%_)
               (_%g27272772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1851318514%_))))
          (let ((_%__kont1851618517%_
                 (lambda (_%g27292926%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g29422945%_ _%g29432948%_)
                                        (cons _%g29422945%_ _%g29432948%_))
                                      '()
                                      _%g27292926%_)))))
                (_%__kont1852018521%_
                 (lambda (_%g27452837%_
                          _%g27462839%_
                          _%g27472840%_
                          _%g27482841%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%g27472840%_ '())
                               (cons (cons _%g27482841%_
                                           (cons _%g27462839%_
                                                 (foldr (lambda (_%g28622865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28632868%_)
                  (cons _%g28622865%_ _%g28632868%_))
                '()
                _%g27452837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1857218573%_
                    (lambda (_%e27492779%_
                             _%hd27502783%_
                             _%tl27512786%_
                             _%e27522789%_
                             _%hd27532793%_
                             _%tl27542796%_
                             _%e27552799%_
                             _%hd27562803%_
                             _%tl27572806%_
                             _%__splice1852218523%_
                             _%target27582809%_
                             _%tl27602812%_)
                      (letrec ((_%loop27612815%_
                                (lambda (_%hd27592819%_ _%body27652822%_)
                                  (if (gx#stx-pair? _%hd27592819%_)
                                      (let ((_%e27622824%_
                                             (gx#syntax-e _%hd27592819%_)))
                                        (let ((_%lp-tl27642831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27622824%_)))
                                              (_%lp-hd27632828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27622824%_))))
                                          (_%loop27612815%_
                                           _%lp-tl27642831%_
                                           (cons _%lp-hd27632828%_
                                                 _%body27652822%_))))
                                      (let ((_%body27662834%_
                                             (reverse _%body27652822%_)))
                                        (_%__kont1852018521%_
                                         _%body27662834%_
                                         _%tl27572806%_
                                         _%hd27562803%_
                                         _%hd27502783%_))))))
                        (_%loop27612815%_ _%target27582809%_ '()))))
                   (_%__match1854618547%_
                    (lambda (_%e27302878%_
                             _%hd27312882%_
                             _%tl27322885%_
                             _%e27332888%_
                             _%hd27342892%_
                             _%tl27352895%_
                             _%__splice1851818519%_
                             _%target27362898%_
                             _%tl27382901%_)
                      (letrec ((_%loop27392904%_
                                (lambda (_%hd27372908%_ _%body27432911%_)
                                  (if (gx#stx-pair? _%hd27372908%_)
                                      (let ((_%e27402913%_
                                             (gx#syntax-e _%hd27372908%_)))
                                        (let ((_%lp-tl27422920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27402913%_)))
                                              (_%lp-hd27412917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27402913%_))))
                                          (_%loop27392904%_
                                           _%lp-tl27422920%_
                                           (cons _%lp-hd27412917%_
                                                 _%body27432911%_))))
                                      (let ((_%body27442923%_
                                             (reverse _%body27432911%_)))
                                        (_%__kont1851618517%_
                                         _%body27442923%_))))))
                        (_%loop27392904%_ _%target27362898%_ '())))))
              (if (gx#stx-pair? _%__stx1851318514%_)
                  (let ((_%e27302878%_ (gx#syntax-e _%__stx1851318514%_)))
                    (let ((_%tl27322885%_
                           (let () (declare (not safe)) (##cdr _%e27302878%_)))
                          (_%hd27312882%_
                           (let ()
                             (declare (not safe))
                             (##car _%e27302878%_))))
                      (if (gx#stx-pair? _%tl27322885%_)
                          (let ((_%e27332888%_ (gx#syntax-e _%tl27322885%_)))
                            (let ((_%tl27352895%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e27332888%_)))
                                  (_%hd27342892%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e27332888%_))))
                              (if (gx#stx-null? _%hd27342892%_)
                                  (if (gx#stx-pair/null? _%tl27352895%_)
                                      (let ((_%__splice1851818519%_
                                             (gx#syntax-split-splice->vector
                                              _%tl27352895%_
                                              '0)))
                                        (let ((_%tl27382901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1851818519%_
                                                  '1)))
                                              (_%target27362898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1851818519%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl27382901%_)
                                              (_%__match1854618547%_
                                               _%e27302878%_
                                               _%hd27312882%_
                                               _%tl27322885%_
                                               _%e27332888%_
                                               _%hd27342892%_
                                               _%tl27352895%_
                                               _%__splice1851818519%_
                                               _%target27362898%_
                                               _%tl27382901%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g27272772%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27272772%_)))
                                  (if (gx#stx-pair? _%hd27342892%_)
                                      (let ((_%e27552799%_
                                             (gx#syntax-e _%hd27342892%_)))
                                        (let ((_%tl27572806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27552799%_)))
                                              (_%hd27562803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27552799%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl27352895%_)
                                              (let ((_%__splice1852218523%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl27352895%_
                                                      '0)))
                                                (let ((_%tl27602812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1852218523%_
                                                          '1)))
                                                      (_%target27582809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1852218523%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27602812%_)
                                                      (_%__match1857218573%_
                                                       _%e27302878%_
                                                       _%hd27312882%_
                                                       _%tl27322885%_
                                                       _%e27332888%_
                                                       _%hd27342892%_
                                                       _%tl27352895%_
                                                       _%e27552799%_
                                                       _%hd27562803%_
                                                       _%tl27572806%_
                                                       _%__splice1852218523%_
                                                       _%target27582809%_
                                                       _%tl27602812%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g27272772%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g27272772%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27272772%_))))))
                          (let () (declare (not safe)) (_%g27272772%_)))))
                  (let () (declare (not safe)) (_%g27272772%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2957%_)
        (let* ((_%__stx1857518576%_ _%$stx2957%_)
               (_%g29623026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1857518576%_))))
          (let ((_%__kont1857818579%_
                 (lambda (_%g29643224%_
                          _%g29653226%_
                          _%g29663227%_
                          _%g29673228%_
                          _%g29683229%_)
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (gx#datum->syntax '#f '@loop)
                               (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _%g29683229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (foldr (lambda (_%g32543261%_
                                                             _%g32553264%_)
                                                      (cons _%g32543261%_
                                                            _%g32553264%_))
                                                    _%g29653226%_
                                                    _%g29673228%_)
                                             (foldr (lambda (_%g32563267%_
                                                             _%g32573270%_)
                                                      (cons _%g32563267%_
                                                            _%g32573270%_))
                                                    '()
                                                    _%g29643224%_)))
                                 '()))
                     '())
               (cons _%g29683229%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%g32583273%_
                                                           _%g32593276%_)
                                                    (cons _%g32583273%_
                                                          _%g32593276%_))
                                                  '()
                                                  _%g29663227%_))
                                     '())))))
                (_%__kont1858418585%_
                 (lambda (_%g30043081%_ _%g30053083%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%g30053083%_
                                     (foldr (lambda (_%g31003103%_
                                                     _%g31013106%_)
                                              (cons _%g31003103%_
                                                    _%g31013106%_))
                                            '()
                                            _%g30043081%_)))))))
            (let* ((_%__match1863218633%_
                    (lambda (_%e30063033%_
                             _%hd30073037%_
                             _%tl30083040%_
                             _%e30093043%_
                             _%hd30103047%_
                             _%tl30113050%_
                             _%__splice1858618587%_
                             _%target30123053%_
                             _%tl30143056%_)
                      (letrec ((_%loop30153059%_
                                (lambda (_%hd30133063%_ _%body30193066%_)
                                  (if (gx#stx-pair? _%hd30133063%_)
                                      (let ((_%e30163068%_
                                             (gx#syntax-e _%hd30133063%_)))
                                        (let ((_%lp-tl30183075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e30163068%_)))
                                              (_%lp-hd30173072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e30163068%_))))
                                          (_%loop30153059%_
                                           _%lp-tl30183075%_
                                           (cons _%lp-hd30173072%_
                                                 _%body30193066%_))))
                                      (let ((_%body30203078%_
                                             (reverse _%body30193066%_)))
                                        (_%__kont1858418585%_
                                         _%body30203078%_
                                         _%hd30103047%_))))))
                        (_%loop30153059%_ _%target30123053%_ '()))))
                   (_%__match1862418625%_
                    (lambda (_%e30063033%_
                             _%hd30073037%_
                             _%tl30083040%_
                             _%e30093043%_
                             _%hd30103047%_
                             _%tl30113050%_)
                      (if (gx#stx-pair/null? _%tl30113050%_)
                          (let ((_%__splice1858618587%_
                                 (gx#syntax-split-splice->vector
                                  _%tl30113050%_
                                  '0)))
                            (let ((_%tl30143056%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1858618587%_ '1)))
                                  (_%target30123053%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1858618587%_
                                      '0))))
                              (if (gx#stx-null? _%tl30143056%_)
                                  (_%__match1863218633%_
                                   _%e30063033%_
                                   _%hd30073037%_
                                   _%tl30083040%_
                                   _%e30093043%_
                                   _%hd30103047%_
                                   _%tl30113050%_
                                   _%__splice1858618587%_
                                   _%target30123053%_
                                   _%tl30143056%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29623026%_)))))
                          (let () (declare (not safe)) (_%g29623026%_)))))
                   (_%__match1861218613%_
                    (lambda (_%e29693116%_
                             _%hd29703120%_
                             _%tl29713123%_
                             _%e29723126%_
                             _%hd29733130%_
                             _%tl29743133%_
                             _%e29753136%_
                             _%hd29763140%_
                             _%tl29773143%_
                             _%__splice1858018581%_
                             _%target29783146%_
                             _%tl29803149%_)
                      (letrec ((_%loop29813152%_
                                (lambda (_%hd29793156%_
                                         _%arg29853159%_
                                         _%var29863160%_)
                                  (if (gx#stx-pair? _%hd29793156%_)
                                      (let ((_%e29823162%_
                                             (gx#syntax-e _%hd29793156%_)))
                                        (let ((_%lp-tl29843169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29823162%_)))
                                              (_%lp-hd29833166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29823162%_))))
                                          (if (gx#stx-pair? _%lp-hd29833166%_)
                                              (let ((_%e29893172%_
                                                     (gx#syntax-e
                                                      _%lp-hd29833166%_)))
                                                (let ((_%tl29913179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29893172%_)))
                                                      (_%hd29903176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29893172%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29913179%_)
                                                      (let ((_%e29923182%_
                                                             (gx#syntax-e
                                                              _%tl29913179%_)))
                                                        (let ((_%tl29943189%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29923182%_)))
                      (_%hd29933186%_
                       (let () (declare (not safe)) (##car _%e29923182%_))))
                  (if (gx#stx-null? _%tl29943189%_)
                      (_%loop29813152%_
                       _%lp-tl29843169%_
                       (cons _%hd29933186%_ _%arg29853159%_)
                       (cons _%hd29903176%_ _%var29863160%_))
                      (_%__match1862418625%_
                       _%e29693116%_
                       _%hd29703120%_
                       _%tl29713123%_
                       _%e29723126%_
                       _%hd29733130%_
                       _%tl29743133%_))))
              (_%__match1862418625%_
               _%e29693116%_
               _%hd29703120%_
               _%tl29713123%_
               _%e29723126%_
               _%hd29733130%_
               _%tl29743133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1862418625%_
                                               _%e29693116%_
                                               _%hd29703120%_
                                               _%tl29713123%_
                                               _%e29723126%_
                                               _%hd29733130%_
                                               _%tl29743133%_))))
                                      (let ((_%var29883194%_
                                             (reverse _%var29863160%_))
                                            (_%arg29873192%_
                                             (reverse _%arg29853159%_)))
                                        (if (gx#stx-pair/null? _%tl29773143%_)
                                            (let ((_%__splice1858218583%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl29773143%_
                                                    '0)))
                                              (let ((_%tl29973199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1858218583%_
                                                        '1)))
                                                    (_%target29953196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1858218583%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29973199%_)
                                                    (letrec ((_%loop29983202%_
                                                              (lambda (_%hd29963206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body30023209%_)
                        (if (gx#stx-pair? _%hd29963206%_)
                            (let ((_%e29993211%_ (gx#syntax-e _%hd29963206%_)))
                              (let ((_%lp-tl30013218%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29993211%_)))
                                    (_%lp-hd30003215%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29993211%_))))
                                (_%loop29983202%_
                                 _%lp-tl30013218%_
                                 (cons _%lp-hd30003215%_ _%body30023209%_))))
                            (let ((_%body30033221%_
                                   (reverse _%body30023209%_)))
                              (let ((_%g29643224%_ _%body30033221%_)
                                    (_%g29653226%_ _%tl29803149%_)
                                    (_%g29663227%_ _%arg29873192%_)
                                    (_%g29673228%_ _%var29883194%_)
                                    (_%g29683229%_ _%hd29733130%_))
                                (if (gx#identifier? _%g29683229%_)
                                    (_%__kont1857818579%_
                                     _%g29643224%_
                                     _%g29653226%_
                                     _%g29663227%_
                                     _%g29673228%_
                                     _%g29683229%_)
                                    (_%__match1862418625%_
                                     _%e29693116%_
                                     _%hd29703120%_
                                     _%tl29713123%_
                                     _%e29723126%_
                                     _%hd29733130%_
                                     _%tl29743133%_))))))))
              (_%loop29983202%_ _%target29953196%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1862418625%_
                                                     _%e29693116%_
                                                     _%hd29703120%_
                                                     _%tl29713123%_
                                                     _%e29723126%_
                                                     _%hd29733130%_
                                                     _%tl29743133%_))))
                                            (_%__match1862418625%_
                                             _%e29693116%_
                                             _%hd29703120%_
                                             _%tl29713123%_
                                             _%e29723126%_
                                             _%hd29733130%_
                                             _%tl29743133%_)))))))
                        (_%loop29813152%_ _%target29783146%_ '() '())))))
              (if (gx#stx-pair? _%__stx1857518576%_)
                  (let ((_%e29693116%_ (gx#syntax-e _%__stx1857518576%_)))
                    (let ((_%tl29713123%_
                           (let () (declare (not safe)) (##cdr _%e29693116%_)))
                          (_%hd29703120%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29693116%_))))
                      (if (gx#stx-pair? _%tl29713123%_)
                          (let ((_%e29723126%_ (gx#syntax-e _%tl29713123%_)))
                            (let ((_%tl29743133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29723126%_)))
                                  (_%hd29733130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29723126%_))))
                              (if (gx#stx-pair? _%tl29743133%_)
                                  (let ((_%e29753136%_
                                         (gx#syntax-e _%tl29743133%_)))
                                    (let ((_%tl29773143%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29753136%_)))
                                          (_%hd29763140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29753136%_))))
                                      (if (gx#stx-pair/null? _%hd29763140%_)
                                          (let ((_%__splice1858018581%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd29763140%_
                                                  '0)))
                                            (let ((_%tl29803149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1858018581%_
                                                      '1)))
                                                  (_%target29783146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1858018581%_
                                                      '0))))
                                              (_%__match1861218613%_
                                               _%e29693116%_
                                               _%hd29703120%_
                                               _%tl29713123%_
                                               _%e29723126%_
                                               _%hd29733130%_
                                               _%tl29743133%_
                                               _%e29753136%_
                                               _%hd29763140%_
                                               _%tl29773143%_
                                               _%__splice1858018581%_
                                               _%target29783146%_
                                               _%tl29803149%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29743133%_)
                                              (let ((_%__splice1858618587%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl29743133%_
                                                      '0)))
                                                (let ((_%tl30143056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1858618587%_
                                                          '1)))
                                                      (_%target30123053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1858618587%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl30143056%_)
                                                      (_%__match1863218633%_
                                                       _%e29693116%_
                                                       _%hd29703120%_
                                                       _%tl29713123%_
                                                       _%e29723126%_
                                                       _%hd29733130%_
                                                       _%tl29743133%_
                                                       _%__splice1858618587%_
                                                       _%target30123053%_
                                                       _%tl30143056%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29623026%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29623026%_))))))
                                  (if (gx#stx-pair/null? _%tl29743133%_)
                                      (let ((_%__splice1858618587%_
                                             (gx#syntax-split-splice->vector
                                              _%tl29743133%_
                                              '0)))
                                        (let ((_%tl30143056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1858618587%_
                                                  '1)))
                                              (_%target30123053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1858618587%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl30143056%_)
                                              (_%__match1863218633%_
                                               _%e29693116%_
                                               _%hd29703120%_
                                               _%tl29713123%_
                                               _%e29723126%_
                                               _%hd29733130%_
                                               _%tl29743133%_
                                               _%__splice1858618587%_
                                               _%target30123053%_
                                               _%tl30143056%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29623026%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29623026%_))))))
                          (let () (declare (not safe)) (_%g29623026%_)))))
                  (let () (declare (not safe)) (_%g29623026%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3286%_)
        (let* ((_%g32903314%_
                (lambda (_%g32913310%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32913310%_)))
               (_%g32893397%_
                (lambda (_%g32913318%_)
                  (if (gx#stx-pair? _%g32913318%_)
                      (let ((_%e32943321%_ (gx#syntax-e _%g32913318%_)))
                        (let ((_%hd32953325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32943321%_)))
                              (_%tl32963328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32943321%_))))
                          (if (gx#stx-pair? _%tl32963328%_)
                              (let ((_%e32973331%_
                                     (gx#syntax-e _%tl32963328%_)))
                                (let ((_%hd32983335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32973331%_)))
                                      (_%tl32993338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32973331%_))))
                                  (if (gx#stx-pair/null? _%tl32993338%_)
                                      (let ((_g20944_
                                             (gx#syntax-split-splice
                                              _%tl32993338%_
                                              '0)))
                                        (begin
                                          (let ((_g20945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20944_)
                                                       (##values-length
                                                        _g20944_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20945_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20945_)))
                                          (let ((_%target33003341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20944_ 0)))
                                                (_%tl33023344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20944_ 1))))
                                            (if (gx#stx-null? _%tl33023344%_)
                                                (letrec ((_%loop33033347%_
                                                          (lambda (_%hd33013351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33073354%_)
                    (if (gx#stx-pair? _%hd33013351%_)
                        (let ((_%e33043356%_ (gx#syntax-e _%hd33013351%_)))
                          (let ((_%lp-hd33053360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33043356%_)))
                                (_%lp-tl33063363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33043356%_))))
                            (_%loop33033347%_
                             _%lp-tl33063363%_
                             (cons _%lp-hd33053360%_ _%body33073354%_))))
                        (let ((_%body33083366%_ (reverse _%body33073354%_)))
                          ((lambda (_%g32923369%_ _%g32933371%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%g32933371%_
                                               (foldr (lambda (_%g33883391%_
                                                               _%g33893394%_)
                                                        (cons _%g33883391%_
                                                              _%g33893394%_))
                                                      '()
                                                      _%g32923369%_)))))
                           _%body33083366%_
                           _%hd32983335%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33033347%_
                                                   _%target33003341%_
                                                   '()))
                                                (_%g32903314%_
                                                 _%g32913318%_)))))
                                      (_%g32903314%_ _%g32913318%_))))
                              (_%g32903314%_ _%g32913318%_))))
                      (_%g32903314%_ _%g32913318%_)))))
          (_%g32893397%_ _%$stx3286%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3402%_)
        (let* ((_%g34063430%_
                (lambda (_%g34073426%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34073426%_)))
               (_%g34053513%_
                (lambda (_%g34073434%_)
                  (if (gx#stx-pair? _%g34073434%_)
                      (let ((_%e34103437%_ (gx#syntax-e _%g34073434%_)))
                        (let ((_%hd34113441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34103437%_)))
                              (_%tl34123444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34103437%_))))
                          (if (gx#stx-pair? _%tl34123444%_)
                              (let ((_%e34133447%_
                                     (gx#syntax-e _%tl34123444%_)))
                                (let ((_%hd34143451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34133447%_)))
                                      (_%tl34153454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34133447%_))))
                                  (if (gx#stx-pair/null? _%tl34153454%_)
                                      (let ((_g20946_
                                             (gx#syntax-split-splice
                                              _%tl34153454%_
                                              '0)))
                                        (begin
                                          (let ((_g20947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20946_)
                                                       (##values-length
                                                        _g20946_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20947_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20947_)))
                                          (let ((_%target34163457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20946_ 0)))
                                                (_%tl34183460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20946_ 1))))
                                            (if (gx#stx-null? _%tl34183460%_)
                                                (letrec ((_%loop34193463%_
                                                          (lambda (_%hd34173467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body34233470%_)
                    (if (gx#stx-pair? _%hd34173467%_)
                        (let ((_%e34203472%_ (gx#syntax-e _%hd34173467%_)))
                          (let ((_%lp-hd34213476%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34203472%_)))
                                (_%lp-tl34223479%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34203472%_))))
                            (_%loop34193463%_
                             _%lp-tl34223479%_
                             (cons _%lp-hd34213476%_ _%body34233470%_))))
                        (let ((_%body34243482%_ (reverse _%body34233470%_)))
                          ((lambda (_%g34083485%_ _%g34093487%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%g34093487%_
                                               (foldr (lambda (_%g35043507%_
                                                               _%g35053510%_)
                                                        (cons _%g35043507%_
                                                              _%g35053510%_))
                                                      '()
                                                      _%g34083485%_)))))
                           _%body34243482%_
                           _%hd34143451%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34193463%_
                                                   _%target34163457%_
                                                   '()))
                                                (_%g34063430%_
                                                 _%g34073434%_)))))
                                      (_%g34063430%_ _%g34073434%_))))
                              (_%g34063430%_ _%g34073434%_))))
                      (_%g34063430%_ _%g34073434%_)))))
          (_%g34053513%_ _%$stx3402%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3518%_)
        (let* ((_%g35223546%_
                (lambda (_%g35233542%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g35233542%_)))
               (_%g35213629%_
                (lambda (_%g35233550%_)
                  (if (gx#stx-pair? _%g35233550%_)
                      (let ((_%e35263553%_ (gx#syntax-e _%g35233550%_)))
                        (let ((_%hd35273557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e35263553%_)))
                              (_%tl35283560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e35263553%_))))
                          (if (gx#stx-pair? _%tl35283560%_)
                              (let ((_%e35293563%_
                                     (gx#syntax-e _%tl35283560%_)))
                                (let ((_%hd35303567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e35293563%_)))
                                      (_%tl35313570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e35293563%_))))
                                  (if (gx#stx-pair/null? _%tl35313570%_)
                                      (let ((_g20948_
                                             (gx#syntax-split-splice
                                              _%tl35313570%_
                                              '0)))
                                        (begin
                                          (let ((_g20949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20948_)
                                                       (##values-length
                                                        _g20948_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20949_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20949_)))
                                          (let ((_%target35323573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20948_ 0)))
                                                (_%tl35343576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20948_ 1))))
                                            (if (gx#stx-null? _%tl35343576%_)
                                                (letrec ((_%loop35353579%_
                                                          (lambda (_%hd35333583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35393586%_)
                    (if (gx#stx-pair? _%hd35333583%_)
                        (let ((_%e35363588%_ (gx#syntax-e _%hd35333583%_)))
                          (let ((_%lp-hd35373592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e35363588%_)))
                                (_%lp-tl35383595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e35363588%_))))
                            (_%loop35353579%_
                             _%lp-tl35383595%_
                             (cons _%lp-hd35373592%_ _%body35393586%_))))
                        (let ((_%body35403598%_ (reverse _%body35393586%_)))
                          ((lambda (_%g35243601%_ _%g35253603%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%g35253603%_
                                               (foldr (lambda (_%g36203623%_
                                                               _%g36213626%_)
                                                        (cons _%g36203623%_
                                                              _%g36213626%_))
                                                      '()
                                                      _%g35243601%_)))))
                           _%body35403598%_
                           _%hd35303567%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop35353579%_
                                                   _%target35323573%_
                                                   '()))
                                                (_%g35223546%_
                                                 _%g35233550%_)))))
                                      (_%g35223546%_ _%g35233550%_))))
                              (_%g35223546%_ _%g35233550%_))))
                      (_%g35223546%_ _%g35233550%_)))))
          (_%g35213629%_ _%$stx3518%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3634%_)
        (letrec ((_%let-head?3637%_
                  (lambda (_%x4109%_)
                    (let* ((_%__stx1863518636%_ _%x4109%_)
                           (_%g41134124%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1863518636%_))))
                      (let ((_%__kont1863818639%_
                             (lambda (_%g41154152%_)
                               (gx#stx-andmap gx#identifier? _%g41154152%_)))
                            (_%__kont1864018641%_
                             (lambda () (gx#identifier? _%x4109%_))))
                        (if (gx#stx-pair? _%__stx1863518636%_)
                            (let ((_%e41164142%_
                                   (gx#syntax-e _%__stx1863518636%_)))
                              (let ((_%tl41184149%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41164142%_)))
                                    (_%hd41174146%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41164142%_))))
                                (if (gx#identifier? _%hd41174146%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20950_|
                                         _%hd41174146%_)
                                        (_%__kont1863818639%_ _%tl41184149%_)
                                        (_%__kont1864018641%_))
                                    (_%__kont1864018641%_))))
                            (_%__kont1864018641%_))))))
                 (_%let-head3639%_
                  (lambda (_%x4049%_)
                    (let* ((_%__stx1865518656%_ _%x4049%_)
                           (_%g40534064%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1865518656%_))))
                      (let ((_%__kont1865818659%_
                             (lambda (_%g40554092%_) _%g40554092%_))
                            (_%__kont1866018661%_
                             (lambda () (list _%x4049%_))))
                        (if (gx#stx-pair? _%__stx1865518656%_)
                            (let ((_%e40564082%_
                                   (gx#syntax-e _%__stx1865518656%_)))
                              (let ((_%tl40584089%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40564082%_)))
                                    (_%hd40574086%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40564082%_))))
                                (if (gx#identifier? _%hd40574086%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20951_|
                                         _%hd40574086%_)
                                        (_%__kont1865818659%_ _%tl40584089%_)
                                        (_%__kont1866018661%_))
                                    (_%__kont1866018661%_))))
                            (_%__kont1866018661%_)))))))
          (let* ((_%__stx1867518676%_ _%stx3634%_)
                 (_%g36423708%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1867518676%_))))
            (let ((_%__kont1867818679%_
                   (lambda (_%g36444018%_
                            _%g36454020%_
                            _%g36464021%_
                            _%g36474022%_
                            _%g36484023%_)
                     (cons _%g36484023%_
                           (cons _%g36474022%_
                                 (cons (cons (cons _%g36464021%_
                                                   (cons _%g36454020%_ '()))
                                             '())
                                       _%g36444018%_)))))
                  (_%__kont1868018681%_
                   (lambda (_%g36643823%_
                            _%g36653825%_
                            _%g36663826%_
                            _%g36673827%_)
                     (let* ((_%g38623879%_
                             (lambda (_%g38633875%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38633875%_)))
                            (_%g38613949%_
                             (lambda (_%g38633883%_)
                               (if (gx#stx-pair/null? _%g38633883%_)
                                   (let ((_g20952_
                                          (gx#syntax-split-splice
                                           _%g38633883%_
                                           '0)))
                                     (begin
                                       (let ((_g20953_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20952_)
                                                    (##values-length _g20952_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20953_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20953_)))
                                       (let ((_%target38653886%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20952_ 0)))
                                             (_%tl38673889%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20952_ 1))))
                                         (if (gx#stx-null? _%tl38673889%_)
                                             (letrec ((_%loop38683892%_
                                                       (lambda (_%hd38663896%_
                                                                _%hd-bind38723899%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38663896%_)
                                                             (let ((_%e38693901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38663896%_)))
                       (let ((_%lp-hd38703905%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38693901%_)))
                             (_%lp-tl38713908%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38693901%_))))
                         (_%loop38683892%_
                          _%lp-tl38713908%_
                          (cons _%lp-hd38703905%_ _%hd-bind38723899%_))))
                     (let ((_%hd-bind38733911%_ (reverse _%hd-bind38723899%_)))
                       ((lambda (_%g38643914%_)
                          (cons _%g36673827%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%g36653825%_
                                         _%g38643914%_)
                                        (foldr (lambda (_%g39293935%_
                                                        _%g39303938%_
                                                        _%g39313940%_)
                                                 (cons (cons _%g39303938%_
                                                             (cons _%g39293935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39313940%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%g36653825%_
                                               _%g38643914%_))
                                      (foldr (lambda (_%g39323943%_
                                                      _%g39333946%_)
                                               (cons _%g39323943%_
                                                     _%g39333946%_))
                                             '()
                                             _%g36643823%_))))
                        _%hd-bind38733911%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38683892%_
                                                _%target38653886%_
                                                '()))
                                             (_%g38623879%_ _%g38633883%_)))))
                                   (_%g38623879%_ _%g38633883%_)))))
                       (_%g38613949%_
                        (gx#stx-map
                         _%let-head3639%_
                         (foldr (lambda (_%g39523955%_ _%g39533958%_)
                                  (cons _%g39523955%_ _%g39533958%_))
                                '()
                                _%g36663826%_)))))))
              (let* ((_%__match1874418745%_
                      (lambda (_%e36683715%_
                               _%hd36693719%_
                               _%tl36703722%_
                               _%e36713725%_
                               _%hd36723729%_
                               _%tl36733732%_
                               _%e36743735%_
                               _%hd36753739%_
                               _%tl36763742%_
                               _%__splice1868218683%_
                               _%target36773745%_
                               _%tl36793748%_)
                        (letrec ((_%loop36803751%_
                                  (lambda (_%hd36783755%_
                                           _%e36843758%_
                                           _%hd36853759%_)
                                    (if (gx#stx-pair? _%hd36783755%_)
                                        (let ((_%e36813761%_
                                               (gx#syntax-e _%hd36783755%_)))
                                          (let ((_%lp-tl36833768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36813761%_)))
                                                (_%lp-hd36823765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36813761%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36823765%_)
                                                (let ((_%e36883771%_
                                                       (gx#syntax-e
                                                        _%lp-hd36823765%_)))
                                                  (let ((_%tl36903778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36883771%_)))
                                                        (_%hd36893775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36883771%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36903778%_)
                                                        (let ((_%e36913781%_
                                                               (gx#syntax-e
                                                                _%tl36903778%_)))
                                                          (let ((_%tl36933788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36913781%_)))
                        (_%hd36923785%_
                         (let () (declare (not safe)) (##car _%e36913781%_))))
                    (if (gx#stx-null? _%tl36933788%_)
                        (_%loop36803751%_
                         _%lp-tl36833768%_
                         (cons _%hd36923785%_ _%e36843758%_)
                         (cons _%hd36893775%_ _%hd36853759%_))
                        (let () (declare (not safe)) (_%g36423708%_)))))
                (let () (declare (not safe)) (_%g36423708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36423708%_)))))
                                        (let ((_%hd36873793%_
                                               (reverse _%hd36853759%_))
                                              (_%e36863791%_
                                               (reverse _%e36843758%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36763742%_)
                                              (let ((_%__splice1868418685%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl36763742%_
                                                      '0)))
                                                (let ((_%tl36963798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1868418685%_
                                                          '1)))
                                                      (_%target36943795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1868418685%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36963798%_)
                                                      (letrec ((_%loop36973801%_
                                                                (lambda (_%hd36953805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body37013808%_)
                          (if (gx#stx-pair? _%hd36953805%_)
                              (let ((_%e36983810%_
                                     (gx#syntax-e _%hd36953805%_)))
                                (let ((_%lp-tl37003817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36983810%_)))
                                      (_%lp-hd36993814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36983810%_))))
                                  (_%loop36973801%_
                                   _%lp-tl37003817%_
                                   (cons _%lp-hd36993814%_ _%body37013808%_))))
                              (let ((_%body37023820%_
                                     (reverse _%body37013808%_)))
                                (let ((_%g36643823%_ _%body37023820%_)
                                      (_%g36653825%_ _%e36863791%_)
                                      (_%g36663826%_ _%hd36873793%_)
                                      (_%g36673827%_ _%hd36723729%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3637%_
                                       (foldr (lambda (_%g38533856%_
                                                       _%g38543859%_)
                                                (cons _%g38533856%_
                                                      _%g38543859%_))
                                              '()
                                              _%g36663826%_))
                                      (_%__kont1868018681%_
                                       _%g36643823%_
                                       _%g36653825%_
                                       _%g36663826%_
                                       _%g36673827%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36423708%_)))))))))
                (_%loop36973801%_ _%target36943795%_ '()))
              (let () (declare (not safe)) (_%g36423708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36423708%_))))))))
                          (_%loop36803751%_ _%target36773745%_ '() '()))))
                     (_%__match1871818719%_
                      (lambda (_%e36493968%_
                               _%hd36503972%_
                               _%tl36513975%_
                               _%e36523978%_
                               _%hd36533982%_
                               _%tl36543985%_
                               _%e36553988%_
                               _%hd36563992%_
                               _%tl36573995%_
                               _%e36583998%_
                               _%hd36594002%_
                               _%tl36604005%_
                               _%e36614008%_
                               _%hd36624012%_
                               _%tl36634015%_)
                        (let ((_%g36444018%_ _%tl36573995%_)
                              (_%g36454020%_ _%hd36624012%_)
                              (_%g36464021%_ _%hd36594002%_)
                              (_%g36474022%_ _%hd36533982%_)
                              (_%g36484023%_ _%hd36503972%_))
                          (if (_%let-head?3637%_ _%g36464021%_)
                              (_%__kont1867818679%_
                               _%g36444018%_
                               _%g36454020%_
                               _%g36464021%_
                               _%g36474022%_
                               _%g36484023%_)
                              (if (gx#stx-pair/null? _%hd36563992%_)
                                  (let ((_%__splice1868218683%_
                                         (gx#syntax-split-splice->vector
                                          _%hd36563992%_
                                          '0)))
                                    (let ((_%tl36793748%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1868218683%_
                                              '1)))
                                          (_%target36773745%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1868218683%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36793748%_)
                                          (_%__match1874418745%_
                                           _%e36493968%_
                                           _%hd36503972%_
                                           _%tl36513975%_
                                           _%e36523978%_
                                           _%hd36533982%_
                                           _%tl36543985%_
                                           _%e36553988%_
                                           _%hd36563992%_
                                           _%tl36573995%_
                                           _%__splice1868218683%_
                                           _%target36773745%_
                                           _%tl36793748%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36423708%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36423708%_))))))))
                (if (gx#stx-pair? _%__stx1867518676%_)
                    (let ((_%e36493968%_ (gx#syntax-e _%__stx1867518676%_)))
                      (let ((_%tl36513975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36493968%_)))
                            (_%hd36503972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36493968%_))))
                        (if (gx#stx-pair? _%tl36513975%_)
                            (let ((_%e36523978%_ (gx#syntax-e _%tl36513975%_)))
                              (let ((_%tl36543985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36523978%_)))
                                    (_%hd36533982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36523978%_))))
                                (if (gx#stx-pair? _%tl36543985%_)
                                    (let ((_%e36553988%_
                                           (gx#syntax-e _%tl36543985%_)))
                                      (let ((_%tl36573995%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36553988%_)))
                                            (_%hd36563992%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36553988%_))))
                                        (if (gx#stx-pair? _%hd36563992%_)
                                            (let ((_%e36583998%_
                                                   (gx#syntax-e
                                                    _%hd36563992%_)))
                                              (let ((_%tl36604005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36583998%_)))
                                                    (_%hd36594002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36583998%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36604005%_)
                                                    (let ((_%e36614008%_
                                                           (gx#syntax-e
                                                            _%tl36604005%_)))
                                                      (let ((_%tl36634015%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36614008%_)))
                    (_%hd36624012%_
                     (let () (declare (not safe)) (##car _%e36614008%_))))
                (if (gx#stx-null? _%tl36634015%_)
                    (_%__match1871818719%_
                     _%e36493968%_
                     _%hd36503972%_
                     _%tl36513975%_
                     _%e36523978%_
                     _%hd36533982%_
                     _%tl36543985%_
                     _%e36553988%_
                     _%hd36563992%_
                     _%tl36573995%_
                     _%e36583998%_
                     _%hd36594002%_
                     _%tl36604005%_
                     _%e36614008%_
                     _%hd36624012%_
                     _%tl36634015%_)
                    (if (gx#stx-pair/null? _%hd36563992%_)
                        (let ((_%__splice1868218683%_
                               (gx#syntax-split-splice->vector
                                _%hd36563992%_
                                '0)))
                          (let ((_%tl36793748%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1868218683%_ '1)))
                                (_%target36773745%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1868218683%_ '0))))
                            (if (gx#stx-null? _%tl36793748%_)
                                (_%__match1874418745%_
                                 _%e36493968%_
                                 _%hd36503972%_
                                 _%tl36513975%_
                                 _%e36523978%_
                                 _%hd36533982%_
                                 _%tl36543985%_
                                 _%e36553988%_
                                 _%hd36563992%_
                                 _%tl36573995%_
                                 _%__splice1868218683%_
                                 _%target36773745%_
                                 _%tl36793748%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36423708%_)))))
                        (let () (declare (not safe)) (_%g36423708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36563992%_)
                                                        (let ((_%__splice1868218683%_
                                                               (gx#syntax-split-splice->vector
                                                                _%hd36563992%_
                                                                '0)))
                                                          (let ((_%tl36793748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1868218683%_ '1)))
                        (_%target36773745%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1868218683%_ '0))))
                    (if (gx#stx-null? _%tl36793748%_)
                        (_%__match1874418745%_
                         _%e36493968%_
                         _%hd36503972%_
                         _%tl36513975%_
                         _%e36523978%_
                         _%hd36533982%_
                         _%tl36543985%_
                         _%e36553988%_
                         _%hd36563992%_
                         _%tl36573995%_
                         _%__splice1868218683%_
                         _%target36773745%_
                         _%tl36793748%_)
                        (let () (declare (not safe)) (_%g36423708%_)))))
                (let () (declare (not safe)) (_%g36423708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36563992%_)
                                                (let ((_%__splice1868218683%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd36563992%_
                                                        '0)))
                                                  (let ((_%tl36793748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1868218683%_
                                                            '1)))
                                                        (_%target36773745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1868218683%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36793748%_)
                                                        (_%__match1874418745%_
                                                         _%e36493968%_
                                                         _%hd36503972%_
                                                         _%tl36513975%_
                                                         _%e36523978%_
                                                         _%hd36533982%_
                                                         _%tl36543985%_
                                                         _%e36553988%_
                                                         _%hd36563992%_
                                                         _%tl36573995%_
                                                         _%__splice1868218683%_
                                                         _%target36773745%_
                                                         _%tl36793748%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36423708%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36423708%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36423708%_)))))
                            (let () (declare (not safe)) (_%g36423708%_)))))
                    (let () (declare (not safe)) (_%g36423708%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4172%_)
        (let* ((_%__stx1874718748%_ _%$stx4172%_)
               (_%g41784204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1874718748%_))))
          (let ((_%__kont1875018751%_ (lambda () '#t))
                (_%__kont1875218753%_ (lambda (_%g41834276%_) _%g41834276%_))
                (_%__kont1875418755%_
                 (lambda (_%g41904231%_ _%g41914233%_ _%g41924234%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g41914233%_
                               (cons (cons _%g41924234%_ _%g41904231%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1874718748%_)
                (let ((_%e41804296%_ (gx#syntax-e _%__stx1874718748%_)))
                  (let ((_%tl41824303%_
                         (let () (declare (not safe)) (##cdr _%e41804296%_)))
                        (_%hd41814300%_
                         (let () (declare (not safe)) (##car _%e41804296%_))))
                    (if (gx#stx-null? _%tl41824303%_)
                        (_%__kont1875018751%_)
                        (if (gx#stx-pair? _%tl41824303%_)
                            (let ((_%e41874266%_ (gx#syntax-e _%tl41824303%_)))
                              (let ((_%tl41894273%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41874266%_)))
                                    (_%hd41884270%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41874266%_))))
                                (if (gx#stx-null? _%tl41894273%_)
                                    (_%__kont1875218753%_ _%hd41884270%_)
                                    (_%__kont1875418755%_
                                     _%tl41894273%_
                                     _%hd41884270%_
                                     _%hd41814300%_))))
                            (let () (declare (not safe)) (_%g41784204%_))))))
                (let () (declare (not safe)) (_%g41784204%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4314%_)
        (let* ((_%__stx1879318794%_ _%$stx4314%_)
               (_%g43204346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1879318794%_))))
          (let ((_%__kont1879618797%_ (lambda () '#f))
                (_%__kont1879818799%_ (lambda (_%g43254418%_) _%g43254418%_))
                (_%__kont1880018801%_
                 (lambda (_%g43324373%_ _%g43334375%_ _%g43344376%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g43334375%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g43344376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g43324373%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1879318794%_)
                (let ((_%e43224438%_ (gx#syntax-e _%__stx1879318794%_)))
                  (let ((_%tl43244445%_
                         (let () (declare (not safe)) (##cdr _%e43224438%_)))
                        (_%hd43234442%_
                         (let () (declare (not safe)) (##car _%e43224438%_))))
                    (if (gx#stx-null? _%tl43244445%_)
                        (_%__kont1879618797%_)
                        (if (gx#stx-pair? _%tl43244445%_)
                            (let ((_%e43294408%_ (gx#syntax-e _%tl43244445%_)))
                              (let ((_%tl43314415%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43294408%_)))
                                    (_%hd43304412%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43294408%_))))
                                (if (gx#stx-null? _%tl43314415%_)
                                    (_%__kont1879818799%_ _%hd43304412%_)
                                    (_%__kont1880018801%_
                                     _%tl43314415%_
                                     _%hd43304412%_
                                     _%hd43234442%_))))
                            (let () (declare (not safe)) (_%g43204346%_))))))
                (let () (declare (not safe)) (_%g43204346%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4456%_)
        (let* ((_%__stx1883918840%_ _%$stx4456%_)
               (_%g44654556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1883918840%_))))
          (let ((_%__kont1884218843%_ (lambda () '#!void))
                (_%__kont1884418845%_
                 (lambda (_%g44704899%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g49184921%_ _%g49194924%_)
                                        (cons _%g49184921%_ _%g49194924%_))
                                      '()
                                      _%g44704899%_)))))
                (_%__kont1884818849%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1885018851%_
                 (lambda (_%g44984774%_ _%g44994776%_ _%g45004777%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g44994776%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g45004777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g44984774%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1885218853%_
                 (lambda (_%g45104712%_
                          _%g45114714%_
                          _%g45124715%_
                          _%g45134716%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g45124715%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%g45114714%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%g45134716%_ _%g45104712%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1885418855%_
                 (lambda (_%g45294621%_
                          _%g45304623%_
                          _%g45314624%_
                          _%g45324625%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g45314624%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46464649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46474652%_)
                  (cons _%g46464649%_ _%g46474652%_))
                '()
                _%g45304623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g45324625%_ _%g45294621%_)
                                           '())))))))
            (let* ((_%__match1900019001%_
                    (lambda (_%e45334563%_
                             _%hd45344567%_
                             _%tl45354570%_
                             _%e45364573%_
                             _%hd45374577%_
                             _%tl45384580%_
                             _%e45394583%_
                             _%hd45404587%_
                             _%tl45414590%_
                             _%__splice1885618857%_
                             _%target45424593%_
                             _%tl45444596%_)
                      (letrec ((_%loop45454599%_
                                (lambda (_%hd45434603%_ _%body45494606%_)
                                  (if (gx#stx-pair? _%hd45434603%_)
                                      (let ((_%e45464608%_
                                             (gx#syntax-e _%hd45434603%_)))
                                        (let ((_%lp-tl45484615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45464608%_)))
                                              (_%lp-hd45474612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45464608%_))))
                                          (_%loop45454599%_
                                           _%lp-tl45484615%_
                                           (cons _%lp-hd45474612%_
                                                 _%body45494606%_))))
                                      (let ((_%body45504618%_
                                             (reverse _%body45494606%_)))
                                        (_%__kont1885418855%_
                                         _%tl45384580%_
                                         _%body45504618%_
                                         _%hd45404587%_
                                         _%hd45344567%_))))))
                        (_%loop45454599%_ _%target45424593%_ '()))))
                   (_%__match1889618897%_
                    (lambda (_%e44714841%_
                             _%hd44724845%_
                             _%tl44734848%_
                             _%e44744851%_
                             _%hd44754855%_
                             _%tl44764858%_
                             _%e44774861%_
                             _%hd44784865%_
                             _%tl44794868%_
                             _%__splice1884618847%_
                             _%target44804871%_
                             _%tl44824874%_)
                      (letrec ((_%loop44834877%_
                                (lambda (_%hd44814881%_ _%body44874884%_)
                                  (if (gx#stx-pair? _%hd44814881%_)
                                      (let ((_%e44844886%_
                                             (gx#syntax-e _%hd44814881%_)))
                                        (let ((_%lp-tl44864893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44844886%_)))
                                              (_%lp-hd44854890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44844886%_))))
                                          (_%loop44834877%_
                                           _%lp-tl44864893%_
                                           (cons _%lp-hd44854890%_
                                                 _%body44874884%_))))
                                      (let ((_%body44884896%_
                                             (reverse _%body44874884%_)))
                                        (if (gx#stx-null? _%tl44764858%_)
                                            (_%__kont1884418845%_
                                             _%body44884896%_)
                                            (_%__kont1884818849%_)))))))
                        (_%loop44834877%_ _%target44804871%_ '())))))
              (if (gx#stx-pair? _%__stx1883918840%_)
                  (let ((_%e44674934%_ (gx#syntax-e _%__stx1883918840%_)))
                    (let ((_%tl44694941%_
                           (let () (declare (not safe)) (##cdr _%e44674934%_)))
                          (_%hd44684938%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44674934%_))))
                      (if (gx#stx-null? _%tl44694941%_)
                          (_%__kont1884218843%_)
                          (if (gx#stx-pair? _%tl44694941%_)
                              (let ((_%e44744851%_
                                     (gx#syntax-e _%tl44694941%_)))
                                (let ((_%tl44764858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44744851%_)))
                                      (_%hd44754855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44744851%_))))
                                  (if (gx#stx-pair? _%hd44754855%_)
                                      (let ((_%e44774861%_
                                             (gx#syntax-e _%hd44754855%_)))
                                        (let ((_%tl44794868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44774861%_)))
                                              (_%hd44784865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44774861%_))))
                                          (if (gx#identifier? _%hd44784865%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20954_|
                                                   _%hd44784865%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44794868%_)
                                                      (let ((_%__splice1884618847%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl44794868%_
                                                              '0)))
                                                        (let ((_%tl44824874%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1884618847%_ '1)))
                      (_%target44804871%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1884618847%_ '0))))
                  (if (gx#stx-null? _%tl44824874%_)
                      (_%__match1889618897%_
                       _%e44674934%_
                       _%hd44684938%_
                       _%tl44694941%_
                       _%e44744851%_
                       _%hd44754855%_
                       _%tl44764858%_
                       _%e44774861%_
                       _%hd44784865%_
                       _%tl44794868%_
                       _%__splice1884618847%_
                       _%target44804871%_
                       _%tl44824874%_)
                      (_%__kont1884818849%_))))
              (_%__kont1884818849%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44794868%_)
                                                      (_%__kont1885018851%_
                                                       _%tl44764858%_
                                                       _%hd44784865%_
                                                       _%hd44684938%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44794868%_)
                                                          (let ((_%e45234692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44794868%_)))
                    (let ((_%tl45254699%_
                           (let () (declare (not safe)) (##cdr _%e45234692%_)))
                          (_%hd45244696%_
                           (let ()
                             (declare (not safe))
                             (##car _%e45234692%_))))
                      (if (gx#identifier? _%hd45244696%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20955_|
                               _%hd45244696%_)
                              (if (gx#stx-pair? _%tl45254699%_)
                                  (let ((_%e45264702%_
                                         (gx#syntax-e _%tl45254699%_)))
                                    (let ((_%tl45284709%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e45264702%_)))
                                          (_%hd45274706%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e45264702%_))))
                                      (if (gx#stx-null? _%tl45284709%_)
                                          (_%__kont1885218853%_
                                           _%tl44764858%_
                                           _%hd45274706%_
                                           _%hd44784865%_
                                           _%hd44684938%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44794868%_)
                                              (let ((_%__splice1885618857%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl44794868%_
                                                      '0)))
                                                (let ((_%tl45444596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1885618857%_
                                                          '1)))
                                                      (_%target45424593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1885618857%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45444596%_)
                                                      (_%__match1900019001%_
                                                       _%e44674934%_
                                                       _%hd44684938%_
                                                       _%tl44694941%_
                                                       _%e44744851%_
                                                       _%hd44754855%_
                                                       _%tl44764858%_
                                                       _%e44774861%_
                                                       _%hd44784865%_
                                                       _%tl44794868%_
                                                       _%__splice1885618857%_
                                                       _%target45424593%_
                                                       _%tl45444596%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44654556%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44654556%_))))))
                                  (if (gx#stx-pair/null? _%tl44794868%_)
                                      (let ((_%__splice1885618857%_
                                             (gx#syntax-split-splice->vector
                                              _%tl44794868%_
                                              '0)))
                                        (let ((_%tl45444596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1885618857%_
                                                  '1)))
                                              (_%target45424593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1885618857%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45444596%_)
                                              (_%__match1900019001%_
                                               _%e44674934%_
                                               _%hd44684938%_
                                               _%tl44694941%_
                                               _%e44744851%_
                                               _%hd44754855%_
                                               _%tl44764858%_
                                               _%e44774861%_
                                               _%hd44784865%_
                                               _%tl44794868%_
                                               _%__splice1885618857%_
                                               _%target45424593%_
                                               _%tl45444596%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44654556%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44654556%_))))
                              (if (gx#stx-pair/null? _%tl44794868%_)
                                  (let ((_%__splice1885618857%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44794868%_
                                          '0)))
                                    (let ((_%tl45444596%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885618857%_
                                              '1)))
                                          (_%target45424593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885618857%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45444596%_)
                                          (_%__match1900019001%_
                                           _%e44674934%_
                                           _%hd44684938%_
                                           _%tl44694941%_
                                           _%e44744851%_
                                           _%hd44754855%_
                                           _%tl44764858%_
                                           _%e44774861%_
                                           _%hd44784865%_
                                           _%tl44794868%_
                                           _%__splice1885618857%_
                                           _%target45424593%_
                                           _%tl45444596%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44654556%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44654556%_))))
                          (if (gx#stx-pair/null? _%tl44794868%_)
                              (let ((_%__splice1885618857%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44794868%_
                                      '0)))
                                (let ((_%tl45444596%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885618857%_
                                          '1)))
                                      (_%target45424593%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885618857%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45444596%_)
                                      (_%__match1900019001%_
                                       _%e44674934%_
                                       _%hd44684938%_
                                       _%tl44694941%_
                                       _%e44744851%_
                                       _%hd44754855%_
                                       _%tl44764858%_
                                       _%e44774861%_
                                       _%hd44784865%_
                                       _%tl44794868%_
                                       _%__splice1885618857%_
                                       _%target45424593%_
                                       _%tl45444596%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44654556%_)))))
                              (let () (declare (not safe)) (_%g44654556%_))))))
                  (if (gx#stx-pair/null? _%tl44794868%_)
                      (let ((_%__splice1885618857%_
                             (gx#syntax-split-splice->vector
                              _%tl44794868%_
                              '0)))
                        (let ((_%tl45444596%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1885618857%_ '1)))
                              (_%target45424593%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1885618857%_ '0))))
                          (if (gx#stx-null? _%tl45444596%_)
                              (_%__match1900019001%_
                               _%e44674934%_
                               _%hd44684938%_
                               _%tl44694941%_
                               _%e44744851%_
                               _%hd44754855%_
                               _%tl44764858%_
                               _%e44774861%_
                               _%hd44784865%_
                               _%tl44794868%_
                               _%__splice1885618857%_
                               _%target45424593%_
                               _%tl45444596%_)
                              (let () (declare (not safe)) (_%g44654556%_)))))
                      (let () (declare (not safe)) (_%g44654556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44794868%_)
                                                  (_%__kont1885018851%_
                                                   _%tl44764858%_
                                                   _%hd44784865%_
                                                   _%hd44684938%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44794868%_)
                                                      (let ((_%e45234692%_
                                                             (gx#syntax-e
                                                              _%tl44794868%_)))
                                                        (let ((_%tl45254699%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e45234692%_)))
                      (_%hd45244696%_
                       (let () (declare (not safe)) (##car _%e45234692%_))))
                  (if (gx#identifier? _%hd45244696%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20955_|
                           _%hd45244696%_)
                          (if (gx#stx-pair? _%tl45254699%_)
                              (let ((_%e45264702%_
                                     (gx#syntax-e _%tl45254699%_)))
                                (let ((_%tl45284709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45264702%_)))
                                      (_%hd45274706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45264702%_))))
                                  (if (gx#stx-null? _%tl45284709%_)
                                      (_%__kont1885218853%_
                                       _%tl44764858%_
                                       _%hd45274706%_
                                       _%hd44784865%_
                                       _%hd44684938%_)
                                      (if (gx#stx-pair/null? _%tl44794868%_)
                                          (let ((_%__splice1885618857%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl44794868%_
                                                  '0)))
                                            (let ((_%tl45444596%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1885618857%_
                                                      '1)))
                                                  (_%target45424593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1885618857%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45444596%_)
                                                  (_%__match1900019001%_
                                                   _%e44674934%_
                                                   _%hd44684938%_
                                                   _%tl44694941%_
                                                   _%e44744851%_
                                                   _%hd44754855%_
                                                   _%tl44764858%_
                                                   _%e44774861%_
                                                   _%hd44784865%_
                                                   _%tl44794868%_
                                                   _%__splice1885618857%_
                                                   _%target45424593%_
                                                   _%tl45444596%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44654556%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44654556%_))))))
                              (if (gx#stx-pair/null? _%tl44794868%_)
                                  (let ((_%__splice1885618857%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44794868%_
                                          '0)))
                                    (let ((_%tl45444596%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885618857%_
                                              '1)))
                                          (_%target45424593%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885618857%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45444596%_)
                                          (_%__match1900019001%_
                                           _%e44674934%_
                                           _%hd44684938%_
                                           _%tl44694941%_
                                           _%e44744851%_
                                           _%hd44754855%_
                                           _%tl44764858%_
                                           _%e44774861%_
                                           _%hd44784865%_
                                           _%tl44794868%_
                                           _%__splice1885618857%_
                                           _%target45424593%_
                                           _%tl45444596%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44654556%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44654556%_))))
                          (if (gx#stx-pair/null? _%tl44794868%_)
                              (let ((_%__splice1885618857%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44794868%_
                                      '0)))
                                (let ((_%tl45444596%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885618857%_
                                          '1)))
                                      (_%target45424593%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885618857%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45444596%_)
                                      (_%__match1900019001%_
                                       _%e44674934%_
                                       _%hd44684938%_
                                       _%tl44694941%_
                                       _%e44744851%_
                                       _%hd44754855%_
                                       _%tl44764858%_
                                       _%e44774861%_
                                       _%hd44784865%_
                                       _%tl44794868%_
                                       _%__splice1885618857%_
                                       _%target45424593%_
                                       _%tl45444596%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44654556%_)))))
                              (let () (declare (not safe)) (_%g44654556%_))))
                      (if (gx#stx-pair/null? _%tl44794868%_)
                          (let ((_%__splice1885618857%_
                                 (gx#syntax-split-splice->vector
                                  _%tl44794868%_
                                  '0)))
                            (let ((_%tl45444596%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1885618857%_ '1)))
                                  (_%target45424593%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1885618857%_
                                      '0))))
                              (if (gx#stx-null? _%tl45444596%_)
                                  (_%__match1900019001%_
                                   _%e44674934%_
                                   _%hd44684938%_
                                   _%tl44694941%_
                                   _%e44744851%_
                                   _%hd44754855%_
                                   _%tl44764858%_
                                   _%e44774861%_
                                   _%hd44784865%_
                                   _%tl44794868%_
                                   _%__splice1885618857%_
                                   _%target45424593%_
                                   _%tl45444596%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44654556%_)))))
                          (let () (declare (not safe)) (_%g44654556%_))))))
              (if (gx#stx-pair/null? _%tl44794868%_)
                  (let ((_%__splice1885618857%_
                         (gx#syntax-split-splice->vector _%tl44794868%_ '0)))
                    (let ((_%tl45444596%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1885618857%_ '1)))
                          (_%target45424593%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1885618857%_ '0))))
                      (if (gx#stx-null? _%tl45444596%_)
                          (_%__match1900019001%_
                           _%e44674934%_
                           _%hd44684938%_
                           _%tl44694941%_
                           _%e44744851%_
                           _%hd44754855%_
                           _%tl44764858%_
                           _%e44774861%_
                           _%hd44784865%_
                           _%tl44794868%_
                           _%__splice1885618857%_
                           _%target45424593%_
                           _%tl45444596%_)
                          (let () (declare (not safe)) (_%g44654556%_)))))
                  (let () (declare (not safe)) (_%g44654556%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44654556%_)))))
                              (let () (declare (not safe)) (_%g44654556%_))))))
                  (let () (declare (not safe)) (_%g44654556%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4954%_)
        (let* ((_%g49584986%_
                (lambda (_%g49594982%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49594982%_)))
               (_%g49575083%_
                (lambda (_%g49594990%_)
                  (if (gx#stx-pair? _%g49594990%_)
                      (let ((_%e49634993%_ (gx#syntax-e _%g49594990%_)))
                        (let ((_%hd49644997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49634993%_)))
                              (_%tl49655000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49634993%_))))
                          (if (gx#stx-pair? _%tl49655000%_)
                              (let ((_%e49665003%_
                                     (gx#syntax-e _%tl49655000%_)))
                                (let ((_%hd49675007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49665003%_)))
                                      (_%tl49685010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49665003%_))))
                                  (if (gx#stx-pair? _%tl49685010%_)
                                      (let ((_%e49695013%_
                                             (gx#syntax-e _%tl49685010%_)))
                                        (let ((_%hd49705017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e49695013%_)))
                                              (_%tl49715020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e49695013%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl49715020%_)
                                              (let ((_g20956_
                                                     (gx#syntax-split-splice
                                                      _%tl49715020%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20956_)
                                                               (##values-length
                                                                _g20956_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20957_ 2)))
                (error "Context expects 2 values" _g20957_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target49725023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20956_
                                                            0)))
                                                        (_%tl49745026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20956_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl49745026%_)
                                                        (letrec ((_%loop49755029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd49735033%_ _%rest49795036%_)
                            (if (gx#stx-pair? _%hd49735033%_)
                                (let ((_%e49765038%_
                                       (gx#syntax-e _%hd49735033%_)))
                                  (let ((_%lp-hd49775042%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e49765038%_)))
                                        (_%lp-tl49785045%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e49765038%_))))
                                    (_%loop49755029%_
                                     _%lp-tl49785045%_
                                     (cons _%lp-hd49775042%_
                                           _%rest49795036%_))))
                                (let ((_%rest49805048%_
                                       (reverse _%rest49795036%_)))
                                  ((lambda (_%g49605051%_
                                            _%g49615053%_
                                            _%g49625054%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g49625054%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%g49615053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g50745077%_ _%g50755080%_)
                                    (cons _%g50745077%_ _%g50755080%_))
                                  '()
                                  _%g49605051%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest49805048%_
                                   _%hd49705017%_
                                   _%hd49675007%_))))))
                  (_%loop49755029%_ _%target49725023%_ '()))
                (_%g49584986%_ _%g49594990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g49584986%_ _%g49594990%_))))
                                      (_%g49584986%_ _%g49594990%_))))
                              (_%g49584986%_ _%g49594990%_))))
                      (_%g49584986%_ _%g49594990%_)))))
          (_%g49575083%_ _%$stx4954%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5088%_)
        (let* ((_%g50925120%_
                (lambda (_%g50935116%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50935116%_)))
               (_%g50915217%_
                (lambda (_%g50935124%_)
                  (if (gx#stx-pair? _%g50935124%_)
                      (let ((_%e50975127%_ (gx#syntax-e _%g50935124%_)))
                        (let ((_%hd50985131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50975127%_)))
                              (_%tl50995134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50975127%_))))
                          (if (gx#stx-pair? _%tl50995134%_)
                              (let ((_%e51005137%_
                                     (gx#syntax-e _%tl50995134%_)))
                                (let ((_%hd51015141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e51005137%_)))
                                      (_%tl51025144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e51005137%_))))
                                  (if (gx#stx-pair? _%tl51025144%_)
                                      (let ((_%e51035147%_
                                             (gx#syntax-e _%tl51025144%_)))
                                        (let ((_%hd51045151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e51035147%_)))
                                              (_%tl51055154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e51035147%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl51055154%_)
                                              (let ((_g20958_
                                                     (gx#syntax-split-splice
                                                      _%tl51055154%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20959_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20958_)
                                                               (##values-length
                                                                _g20958_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20959_ 2)))
                (error "Context expects 2 values" _g20959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target51065157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20958_
                                                            0)))
                                                        (_%tl51085160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20958_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl51085160%_)
                                                        (letrec ((_%loop51095163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd51075167%_ _%rest51135170%_)
                            (if (gx#stx-pair? _%hd51075167%_)
                                (let ((_%e51105172%_
                                       (gx#syntax-e _%hd51075167%_)))
                                  (let ((_%lp-hd51115176%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e51105172%_)))
                                        (_%lp-tl51125179%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e51105172%_))))
                                    (_%loop51095163%_
                                     _%lp-tl51125179%_
                                     (cons _%lp-hd51115176%_
                                           _%rest51135170%_))))
                                (let ((_%rest51145182%_
                                       (reverse _%rest51135170%_)))
                                  ((lambda (_%g50945185%_
                                            _%g50955187%_
                                            _%g50965188%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g50965188%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%g50955187%_
                                 (foldr (lambda (_%g52085211%_ _%g52095214%_)
                                          (cons _%g52085211%_ _%g52095214%_))
                                        '()
                                        _%g50945185%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest51145182%_
                                   _%hd51045151%_
                                   _%hd51015141%_))))))
                  (_%loop51095163%_ _%target51065157%_ '()))
                (_%g50925120%_ _%g50935124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g50925120%_ _%g50935124%_))))
                                      (_%g50925120%_ _%g50935124%_))))
                              (_%g50925120%_ _%g50935124%_))))
                      (_%g50925120%_ _%g50935124%_)))))
          (_%g50915217%_ _%$stx5088%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5222%_)
        (let* ((_%g52255249%_
                (lambda (_%g52265245%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52265245%_)))
               (_%g52245332%_
                (lambda (_%g52265253%_)
                  (if (gx#stx-pair? _%g52265253%_)
                      (let ((_%e52295256%_ (gx#syntax-e _%g52265253%_)))
                        (let ((_%hd52305260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52295256%_)))
                              (_%tl52315263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52295256%_))))
                          (if (gx#stx-pair? _%tl52315263%_)
                              (let ((_%e52325266%_
                                     (gx#syntax-e _%tl52315263%_)))
                                (let ((_%hd52335270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52325266%_)))
                                      (_%tl52345273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52325266%_))))
                                  (if (gx#stx-pair/null? _%tl52345273%_)
                                      (let ((_g20960_
                                             (gx#syntax-split-splice
                                              _%tl52345273%_
                                              '0)))
                                        (begin
                                          (let ((_g20961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20960_)
                                                       (##values-length
                                                        _g20960_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20961_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20961_)))
                                          (let ((_%target52355276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20960_ 0)))
                                                (_%tl52375279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20960_ 1))))
                                            (if (gx#stx-null? _%tl52375279%_)
                                                (letrec ((_%loop52385282%_
                                                          (lambda (_%hd52365286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail52425289%_)
                    (if (gx#stx-pair? _%hd52365286%_)
                        (let ((_%e52395291%_ (gx#syntax-e _%hd52365286%_)))
                          (let ((_%lp-hd52405295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e52395291%_)))
                                (_%lp-tl52415298%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e52395291%_))))
                            (_%loop52385282%_
                             _%lp-tl52415298%_
                             (cons _%lp-hd52405295%_ _%detail52425289%_))))
                        (let ((_%detail52435301%_
                               (reverse _%detail52425289%_)))
                          ((lambda (_%g52275304%_ _%g52285306%_)
                             (if (gx#stx-string? _%g52285306%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%g52285306%_)
                                        _%stx5222%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g53235326%_
                                                         _%g53245329%_)
                                                  (cons _%g53235326%_
                                                        _%g53245329%_))
                                                '()
                                                _%g52275304%_)))
                                 (_%g52255249%_ _%g52265253%_)))
                           _%detail52435301%_
                           _%hd52335270%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop52385282%_
                                                   _%target52355276%_
                                                   '()))
                                                (_%g52255249%_
                                                 _%g52265253%_)))))
                                      (_%g52255249%_ _%g52265253%_))))
                              (_%g52255249%_ _%g52265253%_))))
                      (_%g52255249%_ _%g52265253%_)))))
          (_%g52245332%_ _%stx5222%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5337%_)
        (let* ((_%g53415355%_
                (lambda (_%g53425351%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g53425351%_)))
               (_%g53405396%_
                (lambda (_%g53425359%_)
                  (if (gx#stx-pair? _%g53425359%_)
                      (let ((_%e53445362%_ (gx#syntax-e _%g53425359%_)))
                        (let ((_%hd53455366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e53445362%_)))
                              (_%tl53465369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e53445362%_))))
                          (if (gx#stx-pair? _%tl53465369%_)
                              (let ((_%e53475372%_
                                     (gx#syntax-e _%tl53465369%_)))
                                (let ((_%hd53485376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e53475372%_)))
                                      (_%tl53495379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e53475372%_))))
                                  (if (gx#stx-null? _%tl53495379%_)
                                      ((lambda (_%g53435382%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g53435382%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd53485376%_)
                                      (_%g53415355%_ _%g53425359%_))))
                              (_%g53415355%_ _%g53425359%_))))
                      (_%g53415355%_ _%g53425359%_)))))
          (_%g53405396%_ _%$stx5337%_))))))
