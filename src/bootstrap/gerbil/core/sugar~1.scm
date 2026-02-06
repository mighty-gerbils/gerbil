(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20993_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20994_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20997_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20998_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1977%_)
        (let* ((_%g19812009%_
                (lambda (_%g19822005%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19822005%_)))
               (_%g19802108%_
                (lambda (_%g19822013%_)
                  (if (gx#stx-pair? _%g19822013%_)
                      (let ((_%e19862016%_ (gx#syntax-e _%g19822013%_)))
                        (let ((_%hd19872020%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19862016%_)))
                              (_%tl19882023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19862016%_))))
                          (if (gx#stx-pair? _%tl19882023%_)
                              (let ((_%e19892026%_
                                     (gx#syntax-e _%tl19882023%_)))
                                (let ((_%hd19902030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19892026%_)))
                                      (_%tl19912033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19892026%_))))
                                  (if (gx#stx-pair? _%tl19912033%_)
                                      (let ((_%e19922036%_
                                             (gx#syntax-e _%tl19912033%_)))
                                        (let ((_%hd19932040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19922036%_)))
                                              (_%tl19942043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19922036%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl19942043%_)
                                              (let ((_g20985_
                                                     (gx#syntax-split-splice
                                                      _%tl19942043%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20985_)
                                                               (##values-length
                                                                _g20985_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20986_ 2)))
                (error "Context expects 2 values" _g20986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target19952046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20985_
                                                            0)))
                                                        (_%tl19972049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20985_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl19972049%_)
                                                        (letrec ((_%loop19982052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd19962056%_ _%clauses20022059%_)
                            (if (gx#stx-pair? _%hd19962056%_)
                                (let ((_%e19992061%_
                                       (gx#syntax-e _%hd19962056%_)))
                                  (let ((_%lp-hd20002065%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e19992061%_)))
                                        (_%lp-tl20012068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e19992061%_))))
                                    (_%loop19982052%_
                                     _%lp-tl20012068%_
                                     (cons _%lp-hd20002065%_
                                           _%clauses20022059%_))))
                                (let ((_%clauses20032071%_
                                       (reverse _%clauses20022059%_)))
                                  ((lambda (_%g19832074%_
                                            _%g19842076%_
                                            _%g19852077%_)
                                     (if (gx#identifier? _%g19852077%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%g19852077%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%g19842076%_
                               (foldr (lambda (_%g20992102%_ _%g21002105%_)
                                        (cons _%g20992102%_ _%g21002105%_))
                                      '()
                                      _%g19832074%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19812009%_ _%g19822013%_)))
                                   _%clauses20032071%_
                                   _%hd19932040%_
                                   _%hd19902030%_))))))
                  (_%loop19982052%_ _%target19952046%_ '()))
                (_%g19812009%_ _%g19822013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19812009%_ _%g19822013%_))))
                                      (_%g19812009%_ _%g19822013%_))))
                              (_%g19812009%_ _%g19822013%_))))
                      (_%g19812009%_ _%g19822013%_)))))
          (_%g19802108%_ _%$stx1977%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2113%_)
        (let* ((_%__stx1846018461%_ _%$stx2113%_)
               (_%g21182159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1846018461%_))))
          (let ((_%__kont1846318464%_
                 (lambda (_%g21202289%_ _%g21212291%_ _%g21222292%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21222292%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21212291%_)
                     (cons _%g21202289%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1846518466%_
                 (lambda (_%g21352216%_
                          _%g21362218%_
                          _%g21372219%_
                          _%g21382220%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21382220%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21372219%_)
                     (cons _%g21362218%_ (cons _%g21352216%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1852518526%_
                    (lambda (_%e21392166%_
                             _%hd21402170%_
                             _%tl21412173%_
                             _%e21422176%_
                             _%hd21432180%_
                             _%tl21442183%_
                             _%e21452186%_
                             _%hd21462190%_
                             _%tl21472193%_
                             _%e21482196%_
                             _%hd21492200%_
                             _%tl21502203%_
                             _%e21512206%_
                             _%hd21522210%_
                             _%tl21532213%_)
                      (let ((_%g21352216%_ _%hd21522210%_)
                            (_%g21362218%_ _%hd21492200%_)
                            (_%g21372219%_ _%tl21472193%_)
                            (_%g21382220%_ _%hd21462190%_))
                        (if (gx#identifier? _%g21382220%_)
                            (_%__kont1846518466%_
                             _%g21352216%_
                             _%g21362218%_
                             _%g21372219%_
                             _%g21382220%_)
                            (let () (declare (not safe)) (_%g21182159%_))))))
                   (_%__match1849318494%_
                    (lambda (_%e21232249%_
                             _%hd21242253%_
                             _%tl21252256%_
                             _%e21262259%_
                             _%hd21272263%_
                             _%tl21282266%_
                             _%e21292269%_
                             _%hd21302273%_
                             _%tl21312276%_
                             _%e21322279%_
                             _%hd21332283%_
                             _%tl21342286%_)
                      (let ((_%g21202289%_ _%hd21332283%_)
                            (_%g21212291%_ _%tl21312276%_)
                            (_%g21222292%_ _%hd21302273%_))
                        (if (gx#identifier? _%g21222292%_)
                            (_%__kont1846318464%_
                             _%g21202289%_
                             _%g21212291%_
                             _%g21222292%_)
                            (let () (declare (not safe)) (_%g21182159%_)))))))
              (if (gx#stx-pair? _%__stx1846018461%_)
                  (let ((_%e21232249%_ (gx#syntax-e _%__stx1846018461%_)))
                    (let ((_%tl21252256%_
                           (let () (declare (not safe)) (##cdr _%e21232249%_)))
                          (_%hd21242253%_
                           (let ()
                             (declare (not safe))
                             (##car _%e21232249%_))))
                      (if (gx#stx-pair? _%tl21252256%_)
                          (let ((_%e21262259%_ (gx#syntax-e _%tl21252256%_)))
                            (let ((_%tl21282266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e21262259%_)))
                                  (_%hd21272263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e21262259%_))))
                              (if (gx#stx-pair? _%hd21272263%_)
                                  (let ((_%e21292269%_
                                         (gx#syntax-e _%hd21272263%_)))
                                    (let ((_%tl21312276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e21292269%_)))
                                          (_%hd21302273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e21292269%_))))
                                      (if (gx#stx-pair? _%tl21282266%_)
                                          (let ((_%e21322279%_
                                                 (gx#syntax-e _%tl21282266%_)))
                                            (let ((_%tl21342286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e21322279%_)))
                                                  (_%hd21332283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e21322279%_))))
                                              (if (gx#stx-null? _%tl21342286%_)
                                                  (_%__match1849318494%_
                                                   _%e21232249%_
                                                   _%hd21242253%_
                                                   _%tl21252256%_
                                                   _%e21262259%_
                                                   _%hd21272263%_
                                                   _%tl21282266%_
                                                   _%e21292269%_
                                                   _%hd21302273%_
                                                   _%tl21312276%_
                                                   _%e21322279%_
                                                   _%hd21332283%_
                                                   _%tl21342286%_)
                                                  (if (gx#stx-pair?
                                                       _%tl21342286%_)
                                                      (let ((_%e21512206%_
                                                             (gx#syntax-e
                                                              _%tl21342286%_)))
                                                        (let ((_%tl21532213%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21512206%_)))
                      (_%hd21522210%_
                       (let () (declare (not safe)) (##car _%e21512206%_))))
                  (if (gx#stx-null? _%tl21532213%_)
                      (_%__match1852518526%_
                       _%e21232249%_
                       _%hd21242253%_
                       _%tl21252256%_
                       _%e21262259%_
                       _%hd21272263%_
                       _%tl21282266%_
                       _%e21292269%_
                       _%hd21302273%_
                       _%tl21312276%_
                       _%e21322279%_
                       _%hd21332283%_
                       _%tl21342286%_
                       _%e21512206%_
                       _%hd21522210%_
                       _%tl21532213%_)
                      (let () (declare (not safe)) (_%g21182159%_)))))
              (let () (declare (not safe)) (_%g21182159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g21182159%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g21182159%_)))))
                          (let () (declare (not safe)) (_%g21182159%_)))))
                  (let () (declare (not safe)) (_%g21182159%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2314%_)
        (let* ((_%__stx1852818529%_ _%$stx2314%_)
               (_%g23192358%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1852818529%_))))
          (let ((_%__kont1853118532%_
                 (lambda (_%g23212478%_ _%g23222480%_ _%g23232481%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23232481%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g23222480%_
                                                 (foldr (lambda (_%g25002503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g25012506%_)
                  (cons _%g25002503%_ _%g25012506%_))
                '()
                _%g23212478%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1853518536%_
                 (lambda (_%g23422395%_ _%g23432397%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23432397%_ (cons _%g23422395%_ '()))))))
            (let* ((_%__match1858318584%_
                    (lambda (_%e23442365%_
                             _%hd23452369%_
                             _%tl23462372%_
                             _%e23472375%_
                             _%hd23482379%_
                             _%tl23492382%_
                             _%e23502385%_
                             _%hd23512389%_
                             _%tl23522392%_)
                      (let ((_%g23422395%_ _%hd23512389%_)
                            (_%g23432397%_ _%hd23482379%_))
                        (if (gx#identifier? _%g23432397%_)
                            (_%__kont1853518536%_ _%g23422395%_ _%g23432397%_)
                            (let () (declare (not safe)) (_%g23192358%_))))))
                   (_%__match1857518576%_
                    (lambda (_%e23442365%_
                             _%hd23452369%_
                             _%tl23462372%_
                             _%e23472375%_
                             _%hd23482379%_
                             _%tl23492382%_)
                      (if (gx#stx-pair? _%tl23492382%_)
                          (let ((_%e23502385%_ (gx#syntax-e _%tl23492382%_)))
                            (let ((_%tl23522392%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23502385%_)))
                                  (_%hd23512389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23502385%_))))
                              (if (gx#stx-null? _%tl23522392%_)
                                  (_%__match1858318584%_
                                   _%e23442365%_
                                   _%hd23452369%_
                                   _%tl23462372%_
                                   _%e23472375%_
                                   _%hd23482379%_
                                   _%tl23492382%_
                                   _%e23502385%_
                                   _%hd23512389%_
                                   _%tl23522392%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g23192358%_)))))
                          (let () (declare (not safe)) (_%g23192358%_)))))
                   (_%__match1856318564%_
                    (lambda (_%e23242420%_
                             _%hd23252424%_
                             _%tl23262427%_
                             _%e23272430%_
                             _%hd23282434%_
                             _%tl23292437%_
                             _%e23302440%_
                             _%hd23312444%_
                             _%tl23322447%_
                             _%__splice1853318534%_
                             _%target23332450%_
                             _%tl23352453%_)
                      (letrec ((_%loop23362456%_
                                (lambda (_%hd23342460%_ _%body23402463%_)
                                  (if (gx#stx-pair? _%hd23342460%_)
                                      (let ((_%e23372465%_
                                             (gx#syntax-e _%hd23342460%_)))
                                        (let ((_%lp-tl23392472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23372465%_)))
                                              (_%lp-hd23382469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23372465%_))))
                                          (_%loop23362456%_
                                           _%lp-tl23392472%_
                                           (cons _%lp-hd23382469%_
                                                 _%body23402463%_))))
                                      (let ((_%body23412475%_
                                             (reverse _%body23402463%_)))
                                        (let ((_%g23212478%_ _%body23412475%_)
                                              (_%g23222480%_ _%tl23322447%_)
                                              (_%g23232481%_ _%hd23312444%_))
                                          (if (gx#identifier? _%g23232481%_)
                                              (_%__kont1853118532%_
                                               _%g23212478%_
                                               _%g23222480%_
                                               _%g23232481%_)
                                              (_%__match1857518576%_
                                               _%e23242420%_
                                               _%hd23252424%_
                                               _%tl23262427%_
                                               _%e23272430%_
                                               _%hd23282434%_
                                               _%tl23292437%_))))))))
                        (_%loop23362456%_ _%target23332450%_ '())))))
              (if (gx#stx-pair? _%__stx1852818529%_)
                  (let ((_%e23242420%_ (gx#syntax-e _%__stx1852818529%_)))
                    (let ((_%tl23262427%_
                           (let () (declare (not safe)) (##cdr _%e23242420%_)))
                          (_%hd23252424%_
                           (let ()
                             (declare (not safe))
                             (##car _%e23242420%_))))
                      (if (gx#stx-pair? _%tl23262427%_)
                          (let ((_%e23272430%_ (gx#syntax-e _%tl23262427%_)))
                            (let ((_%tl23292437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23272430%_)))
                                  (_%hd23282434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23272430%_))))
                              (if (gx#stx-pair? _%hd23282434%_)
                                  (let ((_%e23302440%_
                                         (gx#syntax-e _%hd23282434%_)))
                                    (let ((_%tl23322447%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e23302440%_)))
                                          (_%hd23312444%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e23302440%_))))
                                      (if (gx#stx-pair/null? _%tl23292437%_)
                                          (let ((_%__splice1853318534%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl23292437%_
                                                  '0)))
                                            (let ((_%tl23352453%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1853318534%_
                                                      '1)))
                                                  (_%target23332450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1853318534%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl23352453%_)
                                                  (_%__match1856318564%_
                                                   _%e23242420%_
                                                   _%hd23252424%_
                                                   _%tl23262427%_
                                                   _%e23272430%_
                                                   _%hd23282434%_
                                                   _%tl23292437%_
                                                   _%e23302440%_
                                                   _%hd23312444%_
                                                   _%tl23322447%_
                                                   _%__splice1853318534%_
                                                   _%target23332450%_
                                                   _%tl23352453%_)
                                                  (if (gx#stx-pair?
                                                       _%tl23292437%_)
                                                      (let ((_%e23502385%_
                                                             (gx#syntax-e
                                                              _%tl23292437%_)))
                                                        (let ((_%tl23522392%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23502385%_)))
                      (_%hd23512389%_
                       (let () (declare (not safe)) (##car _%e23502385%_))))
                  (if (gx#stx-null? _%tl23522392%_)
                      (_%__match1858318584%_
                       _%e23242420%_
                       _%hd23252424%_
                       _%tl23262427%_
                       _%e23272430%_
                       _%hd23282434%_
                       _%tl23292437%_
                       _%e23502385%_
                       _%hd23512389%_
                       _%tl23522392%_)
                      (let () (declare (not safe)) (_%g23192358%_)))))
              (let () (declare (not safe)) (_%g23192358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl23292437%_)
                                              (let ((_%e23502385%_
                                                     (gx#syntax-e
                                                      _%tl23292437%_)))
                                                (let ((_%tl23522392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23502385%_)))
                                                      (_%hd23512389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23502385%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23522392%_)
                                                      (_%__match1858318584%_
                                                       _%e23242420%_
                                                       _%hd23252424%_
                                                       _%tl23262427%_
                                                       _%e23272430%_
                                                       _%hd23282434%_
                                                       _%tl23292437%_
                                                       _%e23502385%_
                                                       _%hd23512389%_
                                                       _%tl23522392%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g23192358%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g23192358%_))))))
                                  (if (gx#stx-pair? _%tl23292437%_)
                                      (let ((_%e23502385%_
                                             (gx#syntax-e _%tl23292437%_)))
                                        (let ((_%tl23522392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23502385%_)))
                                              (_%hd23512389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23502385%_))))
                                          (if (gx#stx-null? _%tl23522392%_)
                                              (_%__match1858318584%_
                                               _%e23242420%_
                                               _%hd23252424%_
                                               _%tl23262427%_
                                               _%e23272430%_
                                               _%hd23282434%_
                                               _%tl23292437%_
                                               _%e23502385%_
                                               _%hd23512389%_
                                               _%tl23522392%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g23192358%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g23192358%_))))))
                          (let () (declare (not safe)) (_%g23192358%_)))))
                  (let () (declare (not safe)) (_%g23192358%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2514%_)
        (let* ((_%__stx1858618587%_ _%$stx2514%_)
               (_%g25192558%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1858618587%_))))
          (let ((_%__kont1858918590%_
                 (lambda (_%g25212678%_ _%g25222680%_ _%g25232681%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25232681%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g25222680%_
                                                 (foldr (lambda (_%g27002703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g27012706%_)
                  (cons _%g27002703%_ _%g27012706%_))
                '()
                _%g25212678%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1859318594%_
                 (lambda (_%g25422595%_ _%g25432597%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25432597%_ '())
                               (cons _%g25422595%_ '()))))))
            (let* ((_%__match1864118642%_
                    (lambda (_%e25442565%_
                             _%hd25452569%_
                             _%tl25462572%_
                             _%e25472575%_
                             _%hd25482579%_
                             _%tl25492582%_
                             _%e25502585%_
                             _%hd25512589%_
                             _%tl25522592%_)
                      (let ((_%g25422595%_ _%hd25512589%_)
                            (_%g25432597%_ _%hd25482579%_))
                        (if (gx#identifier? _%g25432597%_)
                            (_%__kont1859318594%_ _%g25422595%_ _%g25432597%_)
                            (let () (declare (not safe)) (_%g25192558%_))))))
                   (_%__match1863318634%_
                    (lambda (_%e25442565%_
                             _%hd25452569%_
                             _%tl25462572%_
                             _%e25472575%_
                             _%hd25482579%_
                             _%tl25492582%_)
                      (if (gx#stx-pair? _%tl25492582%_)
                          (let ((_%e25502585%_ (gx#syntax-e _%tl25492582%_)))
                            (let ((_%tl25522592%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25502585%_)))
                                  (_%hd25512589%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25502585%_))))
                              (if (gx#stx-null? _%tl25522592%_)
                                  (_%__match1864118642%_
                                   _%e25442565%_
                                   _%hd25452569%_
                                   _%tl25462572%_
                                   _%e25472575%_
                                   _%hd25482579%_
                                   _%tl25492582%_
                                   _%e25502585%_
                                   _%hd25512589%_
                                   _%tl25522592%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g25192558%_)))))
                          (let () (declare (not safe)) (_%g25192558%_)))))
                   (_%__match1862118622%_
                    (lambda (_%e25242620%_
                             _%hd25252624%_
                             _%tl25262627%_
                             _%e25272630%_
                             _%hd25282634%_
                             _%tl25292637%_
                             _%e25302640%_
                             _%hd25312644%_
                             _%tl25322647%_
                             _%__splice1859118592%_
                             _%target25332650%_
                             _%tl25352653%_)
                      (letrec ((_%loop25362656%_
                                (lambda (_%hd25342660%_ _%body25402663%_)
                                  (if (gx#stx-pair? _%hd25342660%_)
                                      (let ((_%e25372665%_
                                             (gx#syntax-e _%hd25342660%_)))
                                        (let ((_%lp-tl25392672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25372665%_)))
                                              (_%lp-hd25382669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25372665%_))))
                                          (_%loop25362656%_
                                           _%lp-tl25392672%_
                                           (cons _%lp-hd25382669%_
                                                 _%body25402663%_))))
                                      (let ((_%body25412675%_
                                             (reverse _%body25402663%_)))
                                        (let ((_%g25212678%_ _%body25412675%_)
                                              (_%g25222680%_ _%tl25322647%_)
                                              (_%g25232681%_ _%hd25312644%_))
                                          (if (gx#identifier? _%g25232681%_)
                                              (_%__kont1858918590%_
                                               _%g25212678%_
                                               _%g25222680%_
                                               _%g25232681%_)
                                              (_%__match1863318634%_
                                               _%e25242620%_
                                               _%hd25252624%_
                                               _%tl25262627%_
                                               _%e25272630%_
                                               _%hd25282634%_
                                               _%tl25292637%_))))))))
                        (_%loop25362656%_ _%target25332650%_ '())))))
              (if (gx#stx-pair? _%__stx1858618587%_)
                  (let ((_%e25242620%_ (gx#syntax-e _%__stx1858618587%_)))
                    (let ((_%tl25262627%_
                           (let () (declare (not safe)) (##cdr _%e25242620%_)))
                          (_%hd25252624%_
                           (let ()
                             (declare (not safe))
                             (##car _%e25242620%_))))
                      (if (gx#stx-pair? _%tl25262627%_)
                          (let ((_%e25272630%_ (gx#syntax-e _%tl25262627%_)))
                            (let ((_%tl25292637%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25272630%_)))
                                  (_%hd25282634%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25272630%_))))
                              (if (gx#stx-pair? _%hd25282634%_)
                                  (let ((_%e25302640%_
                                         (gx#syntax-e _%hd25282634%_)))
                                    (let ((_%tl25322647%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e25302640%_)))
                                          (_%hd25312644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e25302640%_))))
                                      (if (gx#stx-pair/null? _%tl25292637%_)
                                          (let ((_%__splice1859118592%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl25292637%_
                                                  '0)))
                                            (let ((_%tl25352653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1859118592%_
                                                      '1)))
                                                  (_%target25332650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1859118592%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl25352653%_)
                                                  (_%__match1862118622%_
                                                   _%e25242620%_
                                                   _%hd25252624%_
                                                   _%tl25262627%_
                                                   _%e25272630%_
                                                   _%hd25282634%_
                                                   _%tl25292637%_
                                                   _%e25302640%_
                                                   _%hd25312644%_
                                                   _%tl25322647%_
                                                   _%__splice1859118592%_
                                                   _%target25332650%_
                                                   _%tl25352653%_)
                                                  (if (gx#stx-pair?
                                                       _%tl25292637%_)
                                                      (let ((_%e25502585%_
                                                             (gx#syntax-e
                                                              _%tl25292637%_)))
                                                        (let ((_%tl25522592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25502585%_)))
                      (_%hd25512589%_
                       (let () (declare (not safe)) (##car _%e25502585%_))))
                  (if (gx#stx-null? _%tl25522592%_)
                      (_%__match1864118642%_
                       _%e25242620%_
                       _%hd25252624%_
                       _%tl25262627%_
                       _%e25272630%_
                       _%hd25282634%_
                       _%tl25292637%_
                       _%e25502585%_
                       _%hd25512589%_
                       _%tl25522592%_)
                      (let () (declare (not safe)) (_%g25192558%_)))))
              (let () (declare (not safe)) (_%g25192558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl25292637%_)
                                              (let ((_%e25502585%_
                                                     (gx#syntax-e
                                                      _%tl25292637%_)))
                                                (let ((_%tl25522592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25502585%_)))
                                                      (_%hd25512589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25502585%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25522592%_)
                                                      (_%__match1864118642%_
                                                       _%e25242620%_
                                                       _%hd25252624%_
                                                       _%tl25262627%_
                                                       _%e25272630%_
                                                       _%hd25282634%_
                                                       _%tl25292637%_
                                                       _%e25502585%_
                                                       _%hd25512589%_
                                                       _%tl25522592%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g25192558%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g25192558%_))))))
                                  (if (gx#stx-pair? _%tl25292637%_)
                                      (let ((_%e25502585%_
                                             (gx#syntax-e _%tl25292637%_)))
                                        (let ((_%tl25522592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25502585%_)))
                                              (_%hd25512589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25502585%_))))
                                          (if (gx#stx-null? _%tl25522592%_)
                                              (_%__match1864118642%_
                                               _%e25242620%_
                                               _%hd25252624%_
                                               _%tl25262627%_
                                               _%e25272630%_
                                               _%hd25282634%_
                                               _%tl25292637%_
                                               _%e25502585%_
                                               _%hd25512589%_
                                               _%tl25522592%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g25192558%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g25192558%_))))))
                          (let () (declare (not safe)) (_%g25192558%_)))))
                  (let () (declare (not safe)) (_%g25192558%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2714%_)
        (let* ((_%__stx1864418645%_ _%$stx2714%_)
               (_%g27192764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1864418645%_))))
          (let ((_%__kont1864718648%_
                 (lambda (_%g27212918%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g29342937%_ _%g29352940%_)
                                        (cons _%g29342937%_ _%g29352940%_))
                                      '()
                                      _%g27212918%_)))))
                (_%__kont1865118652%_
                 (lambda (_%g27372829%_
                          _%g27382831%_
                          _%g27392832%_
                          _%g27402833%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%g27392832%_ '())
                               (cons (cons _%g27402833%_
                                           (cons _%g27382831%_
                                                 (foldr (lambda (_%g28542857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28552860%_)
                  (cons _%g28542857%_ _%g28552860%_))
                '()
                _%g27372829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1870318704%_
                    (lambda (_%e27412771%_
                             _%hd27422775%_
                             _%tl27432778%_
                             _%e27442781%_
                             _%hd27452785%_
                             _%tl27462788%_
                             _%e27472791%_
                             _%hd27482795%_
                             _%tl27492798%_
                             _%__splice1865318654%_
                             _%target27502801%_
                             _%tl27522804%_)
                      (letrec ((_%loop27532807%_
                                (lambda (_%hd27512811%_ _%body27572814%_)
                                  (if (gx#stx-pair? _%hd27512811%_)
                                      (let ((_%e27542816%_
                                             (gx#syntax-e _%hd27512811%_)))
                                        (let ((_%lp-tl27562823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27542816%_)))
                                              (_%lp-hd27552820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27542816%_))))
                                          (_%loop27532807%_
                                           _%lp-tl27562823%_
                                           (cons _%lp-hd27552820%_
                                                 _%body27572814%_))))
                                      (let ((_%body27582826%_
                                             (reverse _%body27572814%_)))
                                        (_%__kont1865118652%_
                                         _%body27582826%_
                                         _%tl27492798%_
                                         _%hd27482795%_
                                         _%hd27422775%_))))))
                        (_%loop27532807%_ _%target27502801%_ '()))))
                   (_%__match1867718678%_
                    (lambda (_%e27222870%_
                             _%hd27232874%_
                             _%tl27242877%_
                             _%e27252880%_
                             _%hd27262884%_
                             _%tl27272887%_
                             _%__splice1864918650%_
                             _%target27282890%_
                             _%tl27302893%_)
                      (letrec ((_%loop27312896%_
                                (lambda (_%hd27292900%_ _%body27352903%_)
                                  (if (gx#stx-pair? _%hd27292900%_)
                                      (let ((_%e27322905%_
                                             (gx#syntax-e _%hd27292900%_)))
                                        (let ((_%lp-tl27342912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27322905%_)))
                                              (_%lp-hd27332909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27322905%_))))
                                          (_%loop27312896%_
                                           _%lp-tl27342912%_
                                           (cons _%lp-hd27332909%_
                                                 _%body27352903%_))))
                                      (let ((_%body27362915%_
                                             (reverse _%body27352903%_)))
                                        (_%__kont1864718648%_
                                         _%body27362915%_))))))
                        (_%loop27312896%_ _%target27282890%_ '())))))
              (if (gx#stx-pair? _%__stx1864418645%_)
                  (let ((_%e27222870%_ (gx#syntax-e _%__stx1864418645%_)))
                    (let ((_%tl27242877%_
                           (let () (declare (not safe)) (##cdr _%e27222870%_)))
                          (_%hd27232874%_
                           (let ()
                             (declare (not safe))
                             (##car _%e27222870%_))))
                      (if (gx#stx-pair? _%tl27242877%_)
                          (let ((_%e27252880%_ (gx#syntax-e _%tl27242877%_)))
                            (let ((_%tl27272887%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e27252880%_)))
                                  (_%hd27262884%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e27252880%_))))
                              (if (gx#stx-null? _%hd27262884%_)
                                  (if (gx#stx-pair/null? _%tl27272887%_)
                                      (let ((_%__splice1864918650%_
                                             (gx#syntax-split-splice->vector
                                              _%tl27272887%_
                                              '0)))
                                        (let ((_%tl27302893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1864918650%_
                                                  '1)))
                                              (_%target27282890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1864918650%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl27302893%_)
                                              (_%__match1867718678%_
                                               _%e27222870%_
                                               _%hd27232874%_
                                               _%tl27242877%_
                                               _%e27252880%_
                                               _%hd27262884%_
                                               _%tl27272887%_
                                               _%__splice1864918650%_
                                               _%target27282890%_
                                               _%tl27302893%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g27192764%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27192764%_)))
                                  (if (gx#stx-pair? _%hd27262884%_)
                                      (let ((_%e27472791%_
                                             (gx#syntax-e _%hd27262884%_)))
                                        (let ((_%tl27492798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27472791%_)))
                                              (_%hd27482795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27472791%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl27272887%_)
                                              (let ((_%__splice1865318654%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl27272887%_
                                                      '0)))
                                                (let ((_%tl27522804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1865318654%_
                                                          '1)))
                                                      (_%target27502801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1865318654%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27522804%_)
                                                      (_%__match1870318704%_
                                                       _%e27222870%_
                                                       _%hd27232874%_
                                                       _%tl27242877%_
                                                       _%e27252880%_
                                                       _%hd27262884%_
                                                       _%tl27272887%_
                                                       _%e27472791%_
                                                       _%hd27482795%_
                                                       _%tl27492798%_
                                                       _%__splice1865318654%_
                                                       _%target27502801%_
                                                       _%tl27522804%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g27192764%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g27192764%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27192764%_))))))
                          (let () (declare (not safe)) (_%g27192764%_)))))
                  (let () (declare (not safe)) (_%g27192764%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2949%_)
        (let* ((_%__stx1870618707%_ _%$stx2949%_)
               (_%g29543018%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1870618707%_))))
          (let ((_%__kont1870918710%_
                 (lambda (_%g29563216%_
                          _%g29573218%_
                          _%g29583219%_
                          _%g29593220%_
                          _%g29603221%_)
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (gx#datum->syntax '#f '@loop)
                               (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _%g29603221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (foldr (lambda (_%g32463253%_
                                                             _%g32473256%_)
                                                      (cons _%g32463253%_
                                                            _%g32473256%_))
                                                    _%g29573218%_
                                                    _%g29593220%_)
                                             (foldr (lambda (_%g32483259%_
                                                             _%g32493262%_)
                                                      (cons _%g32483259%_
                                                            _%g32493262%_))
                                                    '()
                                                    _%g29563216%_)))
                                 '()))
                     '())
               (cons _%g29603221%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%g32503265%_
                                                           _%g32513268%_)
                                                    (cons _%g32503265%_
                                                          _%g32513268%_))
                                                  '()
                                                  _%g29583219%_))
                                     '())))))
                (_%__kont1871518716%_
                 (lambda (_%g29963073%_ _%g29973075%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%g29973075%_
                                     (foldr (lambda (_%g30923095%_
                                                     _%g30933098%_)
                                              (cons _%g30923095%_
                                                    _%g30933098%_))
                                            '()
                                            _%g29963073%_)))))))
            (let* ((_%__match1876318764%_
                    (lambda (_%e29983025%_
                             _%hd29993029%_
                             _%tl30003032%_
                             _%e30013035%_
                             _%hd30023039%_
                             _%tl30033042%_
                             _%__splice1871718718%_
                             _%target30043045%_
                             _%tl30063048%_)
                      (letrec ((_%loop30073051%_
                                (lambda (_%hd30053055%_ _%body30113058%_)
                                  (if (gx#stx-pair? _%hd30053055%_)
                                      (let ((_%e30083060%_
                                             (gx#syntax-e _%hd30053055%_)))
                                        (let ((_%lp-tl30103067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e30083060%_)))
                                              (_%lp-hd30093064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e30083060%_))))
                                          (_%loop30073051%_
                                           _%lp-tl30103067%_
                                           (cons _%lp-hd30093064%_
                                                 _%body30113058%_))))
                                      (let ((_%body30123070%_
                                             (reverse _%body30113058%_)))
                                        (_%__kont1871518716%_
                                         _%body30123070%_
                                         _%hd30023039%_))))))
                        (_%loop30073051%_ _%target30043045%_ '()))))
                   (_%__match1875518756%_
                    (lambda (_%e29983025%_
                             _%hd29993029%_
                             _%tl30003032%_
                             _%e30013035%_
                             _%hd30023039%_
                             _%tl30033042%_)
                      (if (gx#stx-pair/null? _%tl30033042%_)
                          (let ((_%__splice1871718718%_
                                 (gx#syntax-split-splice->vector
                                  _%tl30033042%_
                                  '0)))
                            (let ((_%tl30063048%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1871718718%_ '1)))
                                  (_%target30043045%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1871718718%_
                                      '0))))
                              (if (gx#stx-null? _%tl30063048%_)
                                  (_%__match1876318764%_
                                   _%e29983025%_
                                   _%hd29993029%_
                                   _%tl30003032%_
                                   _%e30013035%_
                                   _%hd30023039%_
                                   _%tl30033042%_
                                   _%__splice1871718718%_
                                   _%target30043045%_
                                   _%tl30063048%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29543018%_)))))
                          (let () (declare (not safe)) (_%g29543018%_)))))
                   (_%__match1874318744%_
                    (lambda (_%e29613108%_
                             _%hd29623112%_
                             _%tl29633115%_
                             _%e29643118%_
                             _%hd29653122%_
                             _%tl29663125%_
                             _%e29673128%_
                             _%hd29683132%_
                             _%tl29693135%_
                             _%__splice1871118712%_
                             _%target29703138%_
                             _%tl29723141%_)
                      (letrec ((_%loop29733144%_
                                (lambda (_%hd29713148%_
                                         _%arg29773151%_
                                         _%var29783152%_)
                                  (if (gx#stx-pair? _%hd29713148%_)
                                      (let ((_%e29743154%_
                                             (gx#syntax-e _%hd29713148%_)))
                                        (let ((_%lp-tl29763161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29743154%_)))
                                              (_%lp-hd29753158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29743154%_))))
                                          (if (gx#stx-pair? _%lp-hd29753158%_)
                                              (let ((_%e29813164%_
                                                     (gx#syntax-e
                                                      _%lp-hd29753158%_)))
                                                (let ((_%tl29833171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29813164%_)))
                                                      (_%hd29823168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29813164%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29833171%_)
                                                      (let ((_%e29843174%_
                                                             (gx#syntax-e
                                                              _%tl29833171%_)))
                                                        (let ((_%tl29863181%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29843174%_)))
                      (_%hd29853178%_
                       (let () (declare (not safe)) (##car _%e29843174%_))))
                  (if (gx#stx-null? _%tl29863181%_)
                      (_%loop29733144%_
                       _%lp-tl29763161%_
                       (cons _%hd29853178%_ _%arg29773151%_)
                       (cons _%hd29823168%_ _%var29783152%_))
                      (_%__match1875518756%_
                       _%e29613108%_
                       _%hd29623112%_
                       _%tl29633115%_
                       _%e29643118%_
                       _%hd29653122%_
                       _%tl29663125%_))))
              (_%__match1875518756%_
               _%e29613108%_
               _%hd29623112%_
               _%tl29633115%_
               _%e29643118%_
               _%hd29653122%_
               _%tl29663125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1875518756%_
                                               _%e29613108%_
                                               _%hd29623112%_
                                               _%tl29633115%_
                                               _%e29643118%_
                                               _%hd29653122%_
                                               _%tl29663125%_))))
                                      (let ((_%var29803186%_
                                             (reverse _%var29783152%_))
                                            (_%arg29793184%_
                                             (reverse _%arg29773151%_)))
                                        (if (gx#stx-pair/null? _%tl29693135%_)
                                            (let ((_%__splice1871318714%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl29693135%_
                                                    '0)))
                                              (let ((_%tl29893191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1871318714%_
                                                        '1)))
                                                    (_%target29873188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1871318714%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29893191%_)
                                                    (letrec ((_%loop29903194%_
                                                              (lambda (_%hd29883198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body29943201%_)
                        (if (gx#stx-pair? _%hd29883198%_)
                            (let ((_%e29913203%_ (gx#syntax-e _%hd29883198%_)))
                              (let ((_%lp-tl29933210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29913203%_)))
                                    (_%lp-hd29923207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29913203%_))))
                                (_%loop29903194%_
                                 _%lp-tl29933210%_
                                 (cons _%lp-hd29923207%_ _%body29943201%_))))
                            (let ((_%body29953213%_
                                   (reverse _%body29943201%_)))
                              (let ((_%g29563216%_ _%body29953213%_)
                                    (_%g29573218%_ _%tl29723141%_)
                                    (_%g29583219%_ _%arg29793184%_)
                                    (_%g29593220%_ _%var29803186%_)
                                    (_%g29603221%_ _%hd29653122%_))
                                (if (gx#identifier? _%g29603221%_)
                                    (_%__kont1870918710%_
                                     _%g29563216%_
                                     _%g29573218%_
                                     _%g29583219%_
                                     _%g29593220%_
                                     _%g29603221%_)
                                    (_%__match1875518756%_
                                     _%e29613108%_
                                     _%hd29623112%_
                                     _%tl29633115%_
                                     _%e29643118%_
                                     _%hd29653122%_
                                     _%tl29663125%_))))))))
              (_%loop29903194%_ _%target29873188%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1875518756%_
                                                     _%e29613108%_
                                                     _%hd29623112%_
                                                     _%tl29633115%_
                                                     _%e29643118%_
                                                     _%hd29653122%_
                                                     _%tl29663125%_))))
                                            (_%__match1875518756%_
                                             _%e29613108%_
                                             _%hd29623112%_
                                             _%tl29633115%_
                                             _%e29643118%_
                                             _%hd29653122%_
                                             _%tl29663125%_)))))))
                        (_%loop29733144%_ _%target29703138%_ '() '())))))
              (if (gx#stx-pair? _%__stx1870618707%_)
                  (let ((_%e29613108%_ (gx#syntax-e _%__stx1870618707%_)))
                    (let ((_%tl29633115%_
                           (let () (declare (not safe)) (##cdr _%e29613108%_)))
                          (_%hd29623112%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29613108%_))))
                      (if (gx#stx-pair? _%tl29633115%_)
                          (let ((_%e29643118%_ (gx#syntax-e _%tl29633115%_)))
                            (let ((_%tl29663125%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29643118%_)))
                                  (_%hd29653122%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29643118%_))))
                              (if (gx#stx-pair? _%tl29663125%_)
                                  (let ((_%e29673128%_
                                         (gx#syntax-e _%tl29663125%_)))
                                    (let ((_%tl29693135%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29673128%_)))
                                          (_%hd29683132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29673128%_))))
                                      (if (gx#stx-pair/null? _%hd29683132%_)
                                          (let ((_%__splice1871118712%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd29683132%_
                                                  '0)))
                                            (let ((_%tl29723141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1871118712%_
                                                      '1)))
                                                  (_%target29703138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1871118712%_
                                                      '0))))
                                              (_%__match1874318744%_
                                               _%e29613108%_
                                               _%hd29623112%_
                                               _%tl29633115%_
                                               _%e29643118%_
                                               _%hd29653122%_
                                               _%tl29663125%_
                                               _%e29673128%_
                                               _%hd29683132%_
                                               _%tl29693135%_
                                               _%__splice1871118712%_
                                               _%target29703138%_
                                               _%tl29723141%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29663125%_)
                                              (let ((_%__splice1871718718%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl29663125%_
                                                      '0)))
                                                (let ((_%tl30063048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1871718718%_
                                                          '1)))
                                                      (_%target30043045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1871718718%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl30063048%_)
                                                      (_%__match1876318764%_
                                                       _%e29613108%_
                                                       _%hd29623112%_
                                                       _%tl29633115%_
                                                       _%e29643118%_
                                                       _%hd29653122%_
                                                       _%tl29663125%_
                                                       _%__splice1871718718%_
                                                       _%target30043045%_
                                                       _%tl30063048%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29543018%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29543018%_))))))
                                  (if (gx#stx-pair/null? _%tl29663125%_)
                                      (let ((_%__splice1871718718%_
                                             (gx#syntax-split-splice->vector
                                              _%tl29663125%_
                                              '0)))
                                        (let ((_%tl30063048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1871718718%_
                                                  '1)))
                                              (_%target30043045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1871718718%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl30063048%_)
                                              (_%__match1876318764%_
                                               _%e29613108%_
                                               _%hd29623112%_
                                               _%tl29633115%_
                                               _%e29643118%_
                                               _%hd29653122%_
                                               _%tl29663125%_
                                               _%__splice1871718718%_
                                               _%target30043045%_
                                               _%tl30063048%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29543018%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29543018%_))))))
                          (let () (declare (not safe)) (_%g29543018%_)))))
                  (let () (declare (not safe)) (_%g29543018%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3278%_)
        (let* ((_%g32823306%_
                (lambda (_%g32833302%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32833302%_)))
               (_%g32813389%_
                (lambda (_%g32833310%_)
                  (if (gx#stx-pair? _%g32833310%_)
                      (let ((_%e32863313%_ (gx#syntax-e _%g32833310%_)))
                        (let ((_%hd32873317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32863313%_)))
                              (_%tl32883320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32863313%_))))
                          (if (gx#stx-pair? _%tl32883320%_)
                              (let ((_%e32893323%_
                                     (gx#syntax-e _%tl32883320%_)))
                                (let ((_%hd32903327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32893323%_)))
                                      (_%tl32913330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32893323%_))))
                                  (if (gx#stx-pair/null? _%tl32913330%_)
                                      (let ((_g20987_
                                             (gx#syntax-split-splice
                                              _%tl32913330%_
                                              '0)))
                                        (begin
                                          (let ((_g20988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20987_)
                                                       (##values-length
                                                        _g20987_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20988_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20988_)))
                                          (let ((_%target32923333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20987_ 0)))
                                                (_%tl32943336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20987_ 1))))
                                            (if (gx#stx-null? _%tl32943336%_)
                                                (letrec ((_%loop32953339%_
                                                          (lambda (_%hd32933343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body32993346%_)
                    (if (gx#stx-pair? _%hd32933343%_)
                        (let ((_%e32963348%_ (gx#syntax-e _%hd32933343%_)))
                          (let ((_%lp-hd32973352%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e32963348%_)))
                                (_%lp-tl32983355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e32963348%_))))
                            (_%loop32953339%_
                             _%lp-tl32983355%_
                             (cons _%lp-hd32973352%_ _%body32993346%_))))
                        (let ((_%body33003358%_ (reverse _%body32993346%_)))
                          ((lambda (_%g32843361%_ _%g32853363%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%g32853363%_
                                               (foldr (lambda (_%g33803383%_
                                                               _%g33813386%_)
                                                        (cons _%g33803383%_
                                                              _%g33813386%_))
                                                      '()
                                                      _%g32843361%_)))))
                           _%body33003358%_
                           _%hd32903327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop32953339%_
                                                   _%target32923333%_
                                                   '()))
                                                (_%g32823306%_
                                                 _%g32833310%_)))))
                                      (_%g32823306%_ _%g32833310%_))))
                              (_%g32823306%_ _%g32833310%_))))
                      (_%g32823306%_ _%g32833310%_)))))
          (_%g32813389%_ _%$stx3278%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3394%_)
        (let* ((_%g33983422%_
                (lambda (_%g33993418%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33993418%_)))
               (_%g33973505%_
                (lambda (_%g33993426%_)
                  (if (gx#stx-pair? _%g33993426%_)
                      (let ((_%e34023429%_ (gx#syntax-e _%g33993426%_)))
                        (let ((_%hd34033433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34023429%_)))
                              (_%tl34043436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34023429%_))))
                          (if (gx#stx-pair? _%tl34043436%_)
                              (let ((_%e34053439%_
                                     (gx#syntax-e _%tl34043436%_)))
                                (let ((_%hd34063443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34053439%_)))
                                      (_%tl34073446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34053439%_))))
                                  (if (gx#stx-pair/null? _%tl34073446%_)
                                      (let ((_g20989_
                                             (gx#syntax-split-splice
                                              _%tl34073446%_
                                              '0)))
                                        (begin
                                          (let ((_g20990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20989_)
                                                       (##values-length
                                                        _g20989_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20990_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20990_)))
                                          (let ((_%target34083449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20989_ 0)))
                                                (_%tl34103452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20989_ 1))))
                                            (if (gx#stx-null? _%tl34103452%_)
                                                (letrec ((_%loop34113455%_
                                                          (lambda (_%hd34093459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body34153462%_)
                    (if (gx#stx-pair? _%hd34093459%_)
                        (let ((_%e34123464%_ (gx#syntax-e _%hd34093459%_)))
                          (let ((_%lp-hd34133468%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34123464%_)))
                                (_%lp-tl34143471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34123464%_))))
                            (_%loop34113455%_
                             _%lp-tl34143471%_
                             (cons _%lp-hd34133468%_ _%body34153462%_))))
                        (let ((_%body34163474%_ (reverse _%body34153462%_)))
                          ((lambda (_%g34003477%_ _%g34013479%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%g34013479%_
                                               (foldr (lambda (_%g34963499%_
                                                               _%g34973502%_)
                                                        (cons _%g34963499%_
                                                              _%g34973502%_))
                                                      '()
                                                      _%g34003477%_)))))
                           _%body34163474%_
                           _%hd34063443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34113455%_
                                                   _%target34083449%_
                                                   '()))
                                                (_%g33983422%_
                                                 _%g33993426%_)))))
                                      (_%g33983422%_ _%g33993426%_))))
                              (_%g33983422%_ _%g33993426%_))))
                      (_%g33983422%_ _%g33993426%_)))))
          (_%g33973505%_ _%$stx3394%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3510%_)
        (let* ((_%g35143538%_
                (lambda (_%g35153534%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g35153534%_)))
               (_%g35133621%_
                (lambda (_%g35153542%_)
                  (if (gx#stx-pair? _%g35153542%_)
                      (let ((_%e35183545%_ (gx#syntax-e _%g35153542%_)))
                        (let ((_%hd35193549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e35183545%_)))
                              (_%tl35203552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e35183545%_))))
                          (if (gx#stx-pair? _%tl35203552%_)
                              (let ((_%e35213555%_
                                     (gx#syntax-e _%tl35203552%_)))
                                (let ((_%hd35223559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e35213555%_)))
                                      (_%tl35233562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e35213555%_))))
                                  (if (gx#stx-pair/null? _%tl35233562%_)
                                      (let ((_g20991_
                                             (gx#syntax-split-splice
                                              _%tl35233562%_
                                              '0)))
                                        (begin
                                          (let ((_g20992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20991_)
                                                       (##values-length
                                                        _g20991_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20992_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20992_)))
                                          (let ((_%target35243565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20991_ 0)))
                                                (_%tl35263568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20991_ 1))))
                                            (if (gx#stx-null? _%tl35263568%_)
                                                (letrec ((_%loop35273571%_
                                                          (lambda (_%hd35253575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35313578%_)
                    (if (gx#stx-pair? _%hd35253575%_)
                        (let ((_%e35283580%_ (gx#syntax-e _%hd35253575%_)))
                          (let ((_%lp-hd35293584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e35283580%_)))
                                (_%lp-tl35303587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e35283580%_))))
                            (_%loop35273571%_
                             _%lp-tl35303587%_
                             (cons _%lp-hd35293584%_ _%body35313578%_))))
                        (let ((_%body35323590%_ (reverse _%body35313578%_)))
                          ((lambda (_%g35163593%_ _%g35173595%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%g35173595%_
                                               (foldr (lambda (_%g36123615%_
                                                               _%g36133618%_)
                                                        (cons _%g36123615%_
                                                              _%g36133618%_))
                                                      '()
                                                      _%g35163593%_)))))
                           _%body35323590%_
                           _%hd35223559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop35273571%_
                                                   _%target35243565%_
                                                   '()))
                                                (_%g35143538%_
                                                 _%g35153542%_)))))
                                      (_%g35143538%_ _%g35153542%_))))
                              (_%g35143538%_ _%g35153542%_))))
                      (_%g35143538%_ _%g35153542%_)))))
          (_%g35133621%_ _%$stx3510%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3626%_)
        (letrec ((_%let-head?3629%_
                  (lambda (_%x4101%_)
                    (let* ((_%__stx1876618767%_ _%x4101%_)
                           (_%g41054116%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1876618767%_))))
                      (let ((_%__kont1876918770%_
                             (lambda (_%g41074144%_)
                               (gx#stx-andmap gx#identifier? _%g41074144%_)))
                            (_%__kont1877118772%_
                             (lambda () (gx#identifier? _%x4101%_))))
                        (if (gx#stx-pair? _%__stx1876618767%_)
                            (let ((_%e41084134%_
                                   (gx#syntax-e _%__stx1876618767%_)))
                              (let ((_%tl41104141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41084134%_)))
                                    (_%hd41094138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41084134%_))))
                                (if (gx#identifier? _%hd41094138%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20993_|
                                         _%hd41094138%_)
                                        (_%__kont1876918770%_ _%tl41104141%_)
                                        (_%__kont1877118772%_))
                                    (_%__kont1877118772%_))))
                            (_%__kont1877118772%_))))))
                 (_%let-head3631%_
                  (lambda (_%x4041%_)
                    (let* ((_%__stx1878618787%_ _%x4041%_)
                           (_%g40454056%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1878618787%_))))
                      (let ((_%__kont1878918790%_
                             (lambda (_%g40474084%_) _%g40474084%_))
                            (_%__kont1879118792%_
                             (lambda () (list _%x4041%_))))
                        (if (gx#stx-pair? _%__stx1878618787%_)
                            (let ((_%e40484074%_
                                   (gx#syntax-e _%__stx1878618787%_)))
                              (let ((_%tl40504081%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40484074%_)))
                                    (_%hd40494078%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40484074%_))))
                                (if (gx#identifier? _%hd40494078%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20994_|
                                         _%hd40494078%_)
                                        (_%__kont1878918790%_ _%tl40504081%_)
                                        (_%__kont1879118792%_))
                                    (_%__kont1879118792%_))))
                            (_%__kont1879118792%_)))))))
          (let* ((_%__stx1880618807%_ _%stx3626%_)
                 (_%g36343700%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1880618807%_))))
            (let ((_%__kont1880918810%_
                   (lambda (_%g36364010%_
                            _%g36374012%_
                            _%g36384013%_
                            _%g36394014%_
                            _%g36404015%_)
                     (cons _%g36404015%_
                           (cons _%g36394014%_
                                 (cons (cons (cons _%g36384013%_
                                                   (cons _%g36374012%_ '()))
                                             '())
                                       _%g36364010%_)))))
                  (_%__kont1881118812%_
                   (lambda (_%g36563815%_
                            _%g36573817%_
                            _%g36583818%_
                            _%g36593819%_)
                     (let* ((_%g38543871%_
                             (lambda (_%g38553867%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38553867%_)))
                            (_%g38533941%_
                             (lambda (_%g38553875%_)
                               (if (gx#stx-pair/null? _%g38553875%_)
                                   (let ((_g20995_
                                          (gx#syntax-split-splice
                                           _%g38553875%_
                                           '0)))
                                     (begin
                                       (let ((_g20996_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20995_)
                                                    (##values-length _g20995_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20996_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20996_)))
                                       (let ((_%target38573878%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20995_ 0)))
                                             (_%tl38593881%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20995_ 1))))
                                         (if (gx#stx-null? _%tl38593881%_)
                                             (letrec ((_%loop38603884%_
                                                       (lambda (_%hd38583888%_
                                                                _%hd-bind38643891%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38583888%_)
                                                             (let ((_%e38613893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38583888%_)))
                       (let ((_%lp-hd38623897%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38613893%_)))
                             (_%lp-tl38633900%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38613893%_))))
                         (_%loop38603884%_
                          _%lp-tl38633900%_
                          (cons _%lp-hd38623897%_ _%hd-bind38643891%_))))
                     (let ((_%hd-bind38653903%_ (reverse _%hd-bind38643891%_)))
                       ((lambda (_%g38563906%_)
                          (cons _%g36593819%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%g36573817%_
                                         _%g38563906%_)
                                        (foldr (lambda (_%g39213927%_
                                                        _%g39223930%_
                                                        _%g39233932%_)
                                                 (cons (cons _%g39223930%_
                                                             (cons _%g39213927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39233932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%g36573817%_
                                               _%g38563906%_))
                                      (foldr (lambda (_%g39243935%_
                                                      _%g39253938%_)
                                               (cons _%g39243935%_
                                                     _%g39253938%_))
                                             '()
                                             _%g36563815%_))))
                        _%hd-bind38653903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38603884%_
                                                _%target38573878%_
                                                '()))
                                             (_%g38543871%_ _%g38553875%_)))))
                                   (_%g38543871%_ _%g38553875%_)))))
                       (_%g38533941%_
                        (gx#stx-map
                         _%let-head3631%_
                         (foldr (lambda (_%g39443947%_ _%g39453950%_)
                                  (cons _%g39443947%_ _%g39453950%_))
                                '()
                                _%g36583818%_)))))))
              (let* ((_%__match1887518876%_
                      (lambda (_%e36603707%_
                               _%hd36613711%_
                               _%tl36623714%_
                               _%e36633717%_
                               _%hd36643721%_
                               _%tl36653724%_
                               _%e36663727%_
                               _%hd36673731%_
                               _%tl36683734%_
                               _%__splice1881318814%_
                               _%target36693737%_
                               _%tl36713740%_)
                        (letrec ((_%loop36723743%_
                                  (lambda (_%hd36703747%_
                                           _%e36763750%_
                                           _%hd36773751%_)
                                    (if (gx#stx-pair? _%hd36703747%_)
                                        (let ((_%e36733753%_
                                               (gx#syntax-e _%hd36703747%_)))
                                          (let ((_%lp-tl36753760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36733753%_)))
                                                (_%lp-hd36743757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36733753%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36743757%_)
                                                (let ((_%e36803763%_
                                                       (gx#syntax-e
                                                        _%lp-hd36743757%_)))
                                                  (let ((_%tl36823770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36803763%_)))
                                                        (_%hd36813767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36803763%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36823770%_)
                                                        (let ((_%e36833773%_
                                                               (gx#syntax-e
                                                                _%tl36823770%_)))
                                                          (let ((_%tl36853780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36833773%_)))
                        (_%hd36843777%_
                         (let () (declare (not safe)) (##car _%e36833773%_))))
                    (if (gx#stx-null? _%tl36853780%_)
                        (_%loop36723743%_
                         _%lp-tl36753760%_
                         (cons _%hd36843777%_ _%e36763750%_)
                         (cons _%hd36813767%_ _%hd36773751%_))
                        (let () (declare (not safe)) (_%g36343700%_)))))
                (let () (declare (not safe)) (_%g36343700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36343700%_)))))
                                        (let ((_%hd36793785%_
                                               (reverse _%hd36773751%_))
                                              (_%e36783783%_
                                               (reverse _%e36763750%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36683734%_)
                                              (let ((_%__splice1881518816%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl36683734%_
                                                      '0)))
                                                (let ((_%tl36883790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1881518816%_
                                                          '1)))
                                                      (_%target36863787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1881518816%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36883790%_)
                                                      (letrec ((_%loop36893793%_
                                                                (lambda (_%hd36873797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body36933800%_)
                          (if (gx#stx-pair? _%hd36873797%_)
                              (let ((_%e36903802%_
                                     (gx#syntax-e _%hd36873797%_)))
                                (let ((_%lp-tl36923809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36903802%_)))
                                      (_%lp-hd36913806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36903802%_))))
                                  (_%loop36893793%_
                                   _%lp-tl36923809%_
                                   (cons _%lp-hd36913806%_ _%body36933800%_))))
                              (let ((_%body36943812%_
                                     (reverse _%body36933800%_)))
                                (let ((_%g36563815%_ _%body36943812%_)
                                      (_%g36573817%_ _%e36783783%_)
                                      (_%g36583818%_ _%hd36793785%_)
                                      (_%g36593819%_ _%hd36643721%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3629%_
                                       (foldr (lambda (_%g38453848%_
                                                       _%g38463851%_)
                                                (cons _%g38453848%_
                                                      _%g38463851%_))
                                              '()
                                              _%g36583818%_))
                                      (_%__kont1881118812%_
                                       _%g36563815%_
                                       _%g36573817%_
                                       _%g36583818%_
                                       _%g36593819%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36343700%_)))))))))
                (_%loop36893793%_ _%target36863787%_ '()))
              (let () (declare (not safe)) (_%g36343700%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36343700%_))))))))
                          (_%loop36723743%_ _%target36693737%_ '() '()))))
                     (_%__match1884918850%_
                      (lambda (_%e36413960%_
                               _%hd36423964%_
                               _%tl36433967%_
                               _%e36443970%_
                               _%hd36453974%_
                               _%tl36463977%_
                               _%e36473980%_
                               _%hd36483984%_
                               _%tl36493987%_
                               _%e36503990%_
                               _%hd36513994%_
                               _%tl36523997%_
                               _%e36534000%_
                               _%hd36544004%_
                               _%tl36554007%_)
                        (let ((_%g36364010%_ _%tl36493987%_)
                              (_%g36374012%_ _%hd36544004%_)
                              (_%g36384013%_ _%hd36513994%_)
                              (_%g36394014%_ _%hd36453974%_)
                              (_%g36404015%_ _%hd36423964%_))
                          (if (_%let-head?3629%_ _%g36384013%_)
                              (_%__kont1880918810%_
                               _%g36364010%_
                               _%g36374012%_
                               _%g36384013%_
                               _%g36394014%_
                               _%g36404015%_)
                              (if (gx#stx-pair/null? _%hd36483984%_)
                                  (let ((_%__splice1881318814%_
                                         (gx#syntax-split-splice->vector
                                          _%hd36483984%_
                                          '0)))
                                    (let ((_%tl36713740%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1881318814%_
                                              '1)))
                                          (_%target36693737%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1881318814%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36713740%_)
                                          (_%__match1887518876%_
                                           _%e36413960%_
                                           _%hd36423964%_
                                           _%tl36433967%_
                                           _%e36443970%_
                                           _%hd36453974%_
                                           _%tl36463977%_
                                           _%e36473980%_
                                           _%hd36483984%_
                                           _%tl36493987%_
                                           _%__splice1881318814%_
                                           _%target36693737%_
                                           _%tl36713740%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36343700%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36343700%_))))))))
                (if (gx#stx-pair? _%__stx1880618807%_)
                    (let ((_%e36413960%_ (gx#syntax-e _%__stx1880618807%_)))
                      (let ((_%tl36433967%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36413960%_)))
                            (_%hd36423964%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36413960%_))))
                        (if (gx#stx-pair? _%tl36433967%_)
                            (let ((_%e36443970%_ (gx#syntax-e _%tl36433967%_)))
                              (let ((_%tl36463977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36443970%_)))
                                    (_%hd36453974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36443970%_))))
                                (if (gx#stx-pair? _%tl36463977%_)
                                    (let ((_%e36473980%_
                                           (gx#syntax-e _%tl36463977%_)))
                                      (let ((_%tl36493987%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36473980%_)))
                                            (_%hd36483984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36473980%_))))
                                        (if (gx#stx-pair? _%hd36483984%_)
                                            (let ((_%e36503990%_
                                                   (gx#syntax-e
                                                    _%hd36483984%_)))
                                              (let ((_%tl36523997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36503990%_)))
                                                    (_%hd36513994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36503990%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36523997%_)
                                                    (let ((_%e36534000%_
                                                           (gx#syntax-e
                                                            _%tl36523997%_)))
                                                      (let ((_%tl36554007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36534000%_)))
                    (_%hd36544004%_
                     (let () (declare (not safe)) (##car _%e36534000%_))))
                (if (gx#stx-null? _%tl36554007%_)
                    (_%__match1884918850%_
                     _%e36413960%_
                     _%hd36423964%_
                     _%tl36433967%_
                     _%e36443970%_
                     _%hd36453974%_
                     _%tl36463977%_
                     _%e36473980%_
                     _%hd36483984%_
                     _%tl36493987%_
                     _%e36503990%_
                     _%hd36513994%_
                     _%tl36523997%_
                     _%e36534000%_
                     _%hd36544004%_
                     _%tl36554007%_)
                    (if (gx#stx-pair/null? _%hd36483984%_)
                        (let ((_%__splice1881318814%_
                               (gx#syntax-split-splice->vector
                                _%hd36483984%_
                                '0)))
                          (let ((_%tl36713740%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1881318814%_ '1)))
                                (_%target36693737%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1881318814%_ '0))))
                            (if (gx#stx-null? _%tl36713740%_)
                                (_%__match1887518876%_
                                 _%e36413960%_
                                 _%hd36423964%_
                                 _%tl36433967%_
                                 _%e36443970%_
                                 _%hd36453974%_
                                 _%tl36463977%_
                                 _%e36473980%_
                                 _%hd36483984%_
                                 _%tl36493987%_
                                 _%__splice1881318814%_
                                 _%target36693737%_
                                 _%tl36713740%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36343700%_)))))
                        (let () (declare (not safe)) (_%g36343700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36483984%_)
                                                        (let ((_%__splice1881318814%_
                                                               (gx#syntax-split-splice->vector
                                                                _%hd36483984%_
                                                                '0)))
                                                          (let ((_%tl36713740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1881318814%_ '1)))
                        (_%target36693737%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1881318814%_ '0))))
                    (if (gx#stx-null? _%tl36713740%_)
                        (_%__match1887518876%_
                         _%e36413960%_
                         _%hd36423964%_
                         _%tl36433967%_
                         _%e36443970%_
                         _%hd36453974%_
                         _%tl36463977%_
                         _%e36473980%_
                         _%hd36483984%_
                         _%tl36493987%_
                         _%__splice1881318814%_
                         _%target36693737%_
                         _%tl36713740%_)
                        (let () (declare (not safe)) (_%g36343700%_)))))
                (let () (declare (not safe)) (_%g36343700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36483984%_)
                                                (let ((_%__splice1881318814%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd36483984%_
                                                        '0)))
                                                  (let ((_%tl36713740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1881318814%_
                                                            '1)))
                                                        (_%target36693737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1881318814%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36713740%_)
                                                        (_%__match1887518876%_
                                                         _%e36413960%_
                                                         _%hd36423964%_
                                                         _%tl36433967%_
                                                         _%e36443970%_
                                                         _%hd36453974%_
                                                         _%tl36463977%_
                                                         _%e36473980%_
                                                         _%hd36483984%_
                                                         _%tl36493987%_
                                                         _%__splice1881318814%_
                                                         _%target36693737%_
                                                         _%tl36713740%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36343700%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36343700%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36343700%_)))))
                            (let () (declare (not safe)) (_%g36343700%_)))))
                    (let () (declare (not safe)) (_%g36343700%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4164%_)
        (let* ((_%__stx1887818879%_ _%$stx4164%_)
               (_%g41704196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1887818879%_))))
          (let ((_%__kont1888118882%_ (lambda () '#t))
                (_%__kont1888318884%_ (lambda (_%g41754268%_) _%g41754268%_))
                (_%__kont1888518886%_
                 (lambda (_%g41824223%_ _%g41834225%_ _%g41844226%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g41834225%_
                               (cons (cons _%g41844226%_ _%g41824223%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1887818879%_)
                (let ((_%e41724288%_ (gx#syntax-e _%__stx1887818879%_)))
                  (let ((_%tl41744295%_
                         (let () (declare (not safe)) (##cdr _%e41724288%_)))
                        (_%hd41734292%_
                         (let () (declare (not safe)) (##car _%e41724288%_))))
                    (if (gx#stx-null? _%tl41744295%_)
                        (_%__kont1888118882%_)
                        (if (gx#stx-pair? _%tl41744295%_)
                            (let ((_%e41794258%_ (gx#syntax-e _%tl41744295%_)))
                              (let ((_%tl41814265%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41794258%_)))
                                    (_%hd41804262%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41794258%_))))
                                (if (gx#stx-null? _%tl41814265%_)
                                    (_%__kont1888318884%_ _%hd41804262%_)
                                    (_%__kont1888518886%_
                                     _%tl41814265%_
                                     _%hd41804262%_
                                     _%hd41734292%_))))
                            (let () (declare (not safe)) (_%g41704196%_))))))
                (let () (declare (not safe)) (_%g41704196%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4306%_)
        (let* ((_%__stx1892418925%_ _%$stx4306%_)
               (_%g43124338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1892418925%_))))
          (let ((_%__kont1892718928%_ (lambda () '#f))
                (_%__kont1892918930%_ (lambda (_%g43174410%_) _%g43174410%_))
                (_%__kont1893118932%_
                 (lambda (_%g43244365%_ _%g43254367%_ _%g43264368%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g43254367%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g43264368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g43244365%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1892418925%_)
                (let ((_%e43144430%_ (gx#syntax-e _%__stx1892418925%_)))
                  (let ((_%tl43164437%_
                         (let () (declare (not safe)) (##cdr _%e43144430%_)))
                        (_%hd43154434%_
                         (let () (declare (not safe)) (##car _%e43144430%_))))
                    (if (gx#stx-null? _%tl43164437%_)
                        (_%__kont1892718928%_)
                        (if (gx#stx-pair? _%tl43164437%_)
                            (let ((_%e43214400%_ (gx#syntax-e _%tl43164437%_)))
                              (let ((_%tl43234407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43214400%_)))
                                    (_%hd43224404%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43214400%_))))
                                (if (gx#stx-null? _%tl43234407%_)
                                    (_%__kont1892918930%_ _%hd43224404%_)
                                    (_%__kont1893118932%_
                                     _%tl43234407%_
                                     _%hd43224404%_
                                     _%hd43154434%_))))
                            (let () (declare (not safe)) (_%g43124338%_))))))
                (let () (declare (not safe)) (_%g43124338%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4448%_)
        (let* ((_%__stx1897018971%_ _%$stx4448%_)
               (_%g44574548%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1897018971%_))))
          (let ((_%__kont1897318974%_ (lambda () '#!void))
                (_%__kont1897518976%_
                 (lambda (_%g44624891%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g49104913%_ _%g49114916%_)
                                        (cons _%g49104913%_ _%g49114916%_))
                                      '()
                                      _%g44624891%_)))))
                (_%__kont1897918980%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1898118982%_
                 (lambda (_%g44904766%_ _%g44914768%_ _%g44924769%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g44914768%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g44924769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g44904766%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1898318984%_
                 (lambda (_%g45024704%_
                          _%g45034706%_
                          _%g45044707%_
                          _%g45054708%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g45044707%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%g45034706%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%g45054708%_ _%g45024704%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1898518986%_
                 (lambda (_%g45214613%_
                          _%g45224615%_
                          _%g45234616%_
                          _%g45244617%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g45234616%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46384641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46394644%_)
                  (cons _%g46384641%_ _%g46394644%_))
                '()
                _%g45224615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g45244617%_ _%g45214613%_)
                                           '())))))))
            (let* ((_%__match1913119132%_
                    (lambda (_%e45254555%_
                             _%hd45264559%_
                             _%tl45274562%_
                             _%e45284565%_
                             _%hd45294569%_
                             _%tl45304572%_
                             _%e45314575%_
                             _%hd45324579%_
                             _%tl45334582%_
                             _%__splice1898718988%_
                             _%target45344585%_
                             _%tl45364588%_)
                      (letrec ((_%loop45374591%_
                                (lambda (_%hd45354595%_ _%body45414598%_)
                                  (if (gx#stx-pair? _%hd45354595%_)
                                      (let ((_%e45384600%_
                                             (gx#syntax-e _%hd45354595%_)))
                                        (let ((_%lp-tl45404607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45384600%_)))
                                              (_%lp-hd45394604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45384600%_))))
                                          (_%loop45374591%_
                                           _%lp-tl45404607%_
                                           (cons _%lp-hd45394604%_
                                                 _%body45414598%_))))
                                      (let ((_%body45424610%_
                                             (reverse _%body45414598%_)))
                                        (_%__kont1898518986%_
                                         _%tl45304572%_
                                         _%body45424610%_
                                         _%hd45324579%_
                                         _%hd45264559%_))))))
                        (_%loop45374591%_ _%target45344585%_ '()))))
                   (_%__match1902719028%_
                    (lambda (_%e44634833%_
                             _%hd44644837%_
                             _%tl44654840%_
                             _%e44664843%_
                             _%hd44674847%_
                             _%tl44684850%_
                             _%e44694853%_
                             _%hd44704857%_
                             _%tl44714860%_
                             _%__splice1897718978%_
                             _%target44724863%_
                             _%tl44744866%_)
                      (letrec ((_%loop44754869%_
                                (lambda (_%hd44734873%_ _%body44794876%_)
                                  (if (gx#stx-pair? _%hd44734873%_)
                                      (let ((_%e44764878%_
                                             (gx#syntax-e _%hd44734873%_)))
                                        (let ((_%lp-tl44784885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44764878%_)))
                                              (_%lp-hd44774882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44764878%_))))
                                          (_%loop44754869%_
                                           _%lp-tl44784885%_
                                           (cons _%lp-hd44774882%_
                                                 _%body44794876%_))))
                                      (let ((_%body44804888%_
                                             (reverse _%body44794876%_)))
                                        (if (gx#stx-null? _%tl44684850%_)
                                            (_%__kont1897518976%_
                                             _%body44804888%_)
                                            (_%__kont1897918980%_)))))))
                        (_%loop44754869%_ _%target44724863%_ '())))))
              (if (gx#stx-pair? _%__stx1897018971%_)
                  (let ((_%e44594926%_ (gx#syntax-e _%__stx1897018971%_)))
                    (let ((_%tl44614933%_
                           (let () (declare (not safe)) (##cdr _%e44594926%_)))
                          (_%hd44604930%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44594926%_))))
                      (if (gx#stx-null? _%tl44614933%_)
                          (_%__kont1897318974%_)
                          (if (gx#stx-pair? _%tl44614933%_)
                              (let ((_%e44664843%_
                                     (gx#syntax-e _%tl44614933%_)))
                                (let ((_%tl44684850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44664843%_)))
                                      (_%hd44674847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44664843%_))))
                                  (if (gx#stx-pair? _%hd44674847%_)
                                      (let ((_%e44694853%_
                                             (gx#syntax-e _%hd44674847%_)))
                                        (let ((_%tl44714860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44694853%_)))
                                              (_%hd44704857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44694853%_))))
                                          (if (gx#identifier? _%hd44704857%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20997_|
                                                   _%hd44704857%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44714860%_)
                                                      (let ((_%__splice1897718978%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl44714860%_
                                                              '0)))
                                                        (let ((_%tl44744866%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1897718978%_ '1)))
                      (_%target44724863%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1897718978%_ '0))))
                  (if (gx#stx-null? _%tl44744866%_)
                      (_%__match1902719028%_
                       _%e44594926%_
                       _%hd44604930%_
                       _%tl44614933%_
                       _%e44664843%_
                       _%hd44674847%_
                       _%tl44684850%_
                       _%e44694853%_
                       _%hd44704857%_
                       _%tl44714860%_
                       _%__splice1897718978%_
                       _%target44724863%_
                       _%tl44744866%_)
                      (_%__kont1897918980%_))))
              (_%__kont1897918980%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44714860%_)
                                                      (_%__kont1898118982%_
                                                       _%tl44684850%_
                                                       _%hd44704857%_
                                                       _%hd44604930%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44714860%_)
                                                          (let ((_%e45154684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44714860%_)))
                    (let ((_%tl45174691%_
                           (let () (declare (not safe)) (##cdr _%e45154684%_)))
                          (_%hd45164688%_
                           (let ()
                             (declare (not safe))
                             (##car _%e45154684%_))))
                      (if (gx#identifier? _%hd45164688%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20998_|
                               _%hd45164688%_)
                              (if (gx#stx-pair? _%tl45174691%_)
                                  (let ((_%e45184694%_
                                         (gx#syntax-e _%tl45174691%_)))
                                    (let ((_%tl45204701%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e45184694%_)))
                                          (_%hd45194698%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e45184694%_))))
                                      (if (gx#stx-null? _%tl45204701%_)
                                          (_%__kont1898318984%_
                                           _%tl44684850%_
                                           _%hd45194698%_
                                           _%hd44704857%_
                                           _%hd44604930%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44714860%_)
                                              (let ((_%__splice1898718988%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl44714860%_
                                                      '0)))
                                                (let ((_%tl45364588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1898718988%_
                                                          '1)))
                                                      (_%target45344585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1898718988%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45364588%_)
                                                      (_%__match1913119132%_
                                                       _%e44594926%_
                                                       _%hd44604930%_
                                                       _%tl44614933%_
                                                       _%e44664843%_
                                                       _%hd44674847%_
                                                       _%tl44684850%_
                                                       _%e44694853%_
                                                       _%hd44704857%_
                                                       _%tl44714860%_
                                                       _%__splice1898718988%_
                                                       _%target45344585%_
                                                       _%tl45364588%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44574548%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44574548%_))))))
                                  (if (gx#stx-pair/null? _%tl44714860%_)
                                      (let ((_%__splice1898718988%_
                                             (gx#syntax-split-splice->vector
                                              _%tl44714860%_
                                              '0)))
                                        (let ((_%tl45364588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1898718988%_
                                                  '1)))
                                              (_%target45344585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1898718988%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45364588%_)
                                              (_%__match1913119132%_
                                               _%e44594926%_
                                               _%hd44604930%_
                                               _%tl44614933%_
                                               _%e44664843%_
                                               _%hd44674847%_
                                               _%tl44684850%_
                                               _%e44694853%_
                                               _%hd44704857%_
                                               _%tl44714860%_
                                               _%__splice1898718988%_
                                               _%target45344585%_
                                               _%tl45364588%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44574548%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44574548%_))))
                              (if (gx#stx-pair/null? _%tl44714860%_)
                                  (let ((_%__splice1898718988%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44714860%_
                                          '0)))
                                    (let ((_%tl45364588%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1898718988%_
                                              '1)))
                                          (_%target45344585%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1898718988%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45364588%_)
                                          (_%__match1913119132%_
                                           _%e44594926%_
                                           _%hd44604930%_
                                           _%tl44614933%_
                                           _%e44664843%_
                                           _%hd44674847%_
                                           _%tl44684850%_
                                           _%e44694853%_
                                           _%hd44704857%_
                                           _%tl44714860%_
                                           _%__splice1898718988%_
                                           _%target45344585%_
                                           _%tl45364588%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44574548%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44574548%_))))
                          (if (gx#stx-pair/null? _%tl44714860%_)
                              (let ((_%__splice1898718988%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44714860%_
                                      '0)))
                                (let ((_%tl45364588%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1898718988%_
                                          '1)))
                                      (_%target45344585%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1898718988%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45364588%_)
                                      (_%__match1913119132%_
                                       _%e44594926%_
                                       _%hd44604930%_
                                       _%tl44614933%_
                                       _%e44664843%_
                                       _%hd44674847%_
                                       _%tl44684850%_
                                       _%e44694853%_
                                       _%hd44704857%_
                                       _%tl44714860%_
                                       _%__splice1898718988%_
                                       _%target45344585%_
                                       _%tl45364588%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44574548%_)))))
                              (let () (declare (not safe)) (_%g44574548%_))))))
                  (if (gx#stx-pair/null? _%tl44714860%_)
                      (let ((_%__splice1898718988%_
                             (gx#syntax-split-splice->vector
                              _%tl44714860%_
                              '0)))
                        (let ((_%tl45364588%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1898718988%_ '1)))
                              (_%target45344585%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1898718988%_ '0))))
                          (if (gx#stx-null? _%tl45364588%_)
                              (_%__match1913119132%_
                               _%e44594926%_
                               _%hd44604930%_
                               _%tl44614933%_
                               _%e44664843%_
                               _%hd44674847%_
                               _%tl44684850%_
                               _%e44694853%_
                               _%hd44704857%_
                               _%tl44714860%_
                               _%__splice1898718988%_
                               _%target45344585%_
                               _%tl45364588%_)
                              (let () (declare (not safe)) (_%g44574548%_)))))
                      (let () (declare (not safe)) (_%g44574548%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44714860%_)
                                                  (_%__kont1898118982%_
                                                   _%tl44684850%_
                                                   _%hd44704857%_
                                                   _%hd44604930%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44714860%_)
                                                      (let ((_%e45154684%_
                                                             (gx#syntax-e
                                                              _%tl44714860%_)))
                                                        (let ((_%tl45174691%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e45154684%_)))
                      (_%hd45164688%_
                       (let () (declare (not safe)) (##car _%e45154684%_))))
                  (if (gx#identifier? _%hd45164688%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20998_|
                           _%hd45164688%_)
                          (if (gx#stx-pair? _%tl45174691%_)
                              (let ((_%e45184694%_
                                     (gx#syntax-e _%tl45174691%_)))
                                (let ((_%tl45204701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45184694%_)))
                                      (_%hd45194698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45184694%_))))
                                  (if (gx#stx-null? _%tl45204701%_)
                                      (_%__kont1898318984%_
                                       _%tl44684850%_
                                       _%hd45194698%_
                                       _%hd44704857%_
                                       _%hd44604930%_)
                                      (if (gx#stx-pair/null? _%tl44714860%_)
                                          (let ((_%__splice1898718988%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl44714860%_
                                                  '0)))
                                            (let ((_%tl45364588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1898718988%_
                                                      '1)))
                                                  (_%target45344585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1898718988%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45364588%_)
                                                  (_%__match1913119132%_
                                                   _%e44594926%_
                                                   _%hd44604930%_
                                                   _%tl44614933%_
                                                   _%e44664843%_
                                                   _%hd44674847%_
                                                   _%tl44684850%_
                                                   _%e44694853%_
                                                   _%hd44704857%_
                                                   _%tl44714860%_
                                                   _%__splice1898718988%_
                                                   _%target45344585%_
                                                   _%tl45364588%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44574548%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44574548%_))))))
                              (if (gx#stx-pair/null? _%tl44714860%_)
                                  (let ((_%__splice1898718988%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44714860%_
                                          '0)))
                                    (let ((_%tl45364588%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1898718988%_
                                              '1)))
                                          (_%target45344585%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1898718988%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45364588%_)
                                          (_%__match1913119132%_
                                           _%e44594926%_
                                           _%hd44604930%_
                                           _%tl44614933%_
                                           _%e44664843%_
                                           _%hd44674847%_
                                           _%tl44684850%_
                                           _%e44694853%_
                                           _%hd44704857%_
                                           _%tl44714860%_
                                           _%__splice1898718988%_
                                           _%target45344585%_
                                           _%tl45364588%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44574548%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44574548%_))))
                          (if (gx#stx-pair/null? _%tl44714860%_)
                              (let ((_%__splice1898718988%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44714860%_
                                      '0)))
                                (let ((_%tl45364588%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1898718988%_
                                          '1)))
                                      (_%target45344585%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1898718988%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45364588%_)
                                      (_%__match1913119132%_
                                       _%e44594926%_
                                       _%hd44604930%_
                                       _%tl44614933%_
                                       _%e44664843%_
                                       _%hd44674847%_
                                       _%tl44684850%_
                                       _%e44694853%_
                                       _%hd44704857%_
                                       _%tl44714860%_
                                       _%__splice1898718988%_
                                       _%target45344585%_
                                       _%tl45364588%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44574548%_)))))
                              (let () (declare (not safe)) (_%g44574548%_))))
                      (if (gx#stx-pair/null? _%tl44714860%_)
                          (let ((_%__splice1898718988%_
                                 (gx#syntax-split-splice->vector
                                  _%tl44714860%_
                                  '0)))
                            (let ((_%tl45364588%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1898718988%_ '1)))
                                  (_%target45344585%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1898718988%_
                                      '0))))
                              (if (gx#stx-null? _%tl45364588%_)
                                  (_%__match1913119132%_
                                   _%e44594926%_
                                   _%hd44604930%_
                                   _%tl44614933%_
                                   _%e44664843%_
                                   _%hd44674847%_
                                   _%tl44684850%_
                                   _%e44694853%_
                                   _%hd44704857%_
                                   _%tl44714860%_
                                   _%__splice1898718988%_
                                   _%target45344585%_
                                   _%tl45364588%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44574548%_)))))
                          (let () (declare (not safe)) (_%g44574548%_))))))
              (if (gx#stx-pair/null? _%tl44714860%_)
                  (let ((_%__splice1898718988%_
                         (gx#syntax-split-splice->vector _%tl44714860%_ '0)))
                    (let ((_%tl45364588%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1898718988%_ '1)))
                          (_%target45344585%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1898718988%_ '0))))
                      (if (gx#stx-null? _%tl45364588%_)
                          (_%__match1913119132%_
                           _%e44594926%_
                           _%hd44604930%_
                           _%tl44614933%_
                           _%e44664843%_
                           _%hd44674847%_
                           _%tl44684850%_
                           _%e44694853%_
                           _%hd44704857%_
                           _%tl44714860%_
                           _%__splice1898718988%_
                           _%target45344585%_
                           _%tl45364588%_)
                          (let () (declare (not safe)) (_%g44574548%_)))))
                  (let () (declare (not safe)) (_%g44574548%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44574548%_)))))
                              (let () (declare (not safe)) (_%g44574548%_))))))
                  (let () (declare (not safe)) (_%g44574548%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4946%_)
        (let* ((_%g49504978%_
                (lambda (_%g49514974%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49514974%_)))
               (_%g49495075%_
                (lambda (_%g49514982%_)
                  (if (gx#stx-pair? _%g49514982%_)
                      (let ((_%e49554985%_ (gx#syntax-e _%g49514982%_)))
                        (let ((_%hd49564989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49554985%_)))
                              (_%tl49574992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49554985%_))))
                          (if (gx#stx-pair? _%tl49574992%_)
                              (let ((_%e49584995%_
                                     (gx#syntax-e _%tl49574992%_)))
                                (let ((_%hd49594999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49584995%_)))
                                      (_%tl49605002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49584995%_))))
                                  (if (gx#stx-pair? _%tl49605002%_)
                                      (let ((_%e49615005%_
                                             (gx#syntax-e _%tl49605002%_)))
                                        (let ((_%hd49625009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e49615005%_)))
                                              (_%tl49635012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e49615005%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl49635012%_)
                                              (let ((_g20999_
                                                     (gx#syntax-split-splice
                                                      _%tl49635012%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20999_)
                                                               (##values-length
                                                                _g20999_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21000_ 2)))
                (error "Context expects 2 values" _g21000_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target49645015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20999_
                                                            0)))
                                                        (_%tl49665018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20999_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl49665018%_)
                                                        (letrec ((_%loop49675021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd49655025%_ _%rest49715028%_)
                            (if (gx#stx-pair? _%hd49655025%_)
                                (let ((_%e49685030%_
                                       (gx#syntax-e _%hd49655025%_)))
                                  (let ((_%lp-hd49695034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e49685030%_)))
                                        (_%lp-tl49705037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e49685030%_))))
                                    (_%loop49675021%_
                                     _%lp-tl49705037%_
                                     (cons _%lp-hd49695034%_
                                           _%rest49715028%_))))
                                (let ((_%rest49725040%_
                                       (reverse _%rest49715028%_)))
                                  ((lambda (_%g49525043%_
                                            _%g49535045%_
                                            _%g49545046%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g49545046%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%g49535045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g50665069%_ _%g50675072%_)
                                    (cons _%g50665069%_ _%g50675072%_))
                                  '()
                                  _%g49525043%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest49725040%_
                                   _%hd49625009%_
                                   _%hd49594999%_))))))
                  (_%loop49675021%_ _%target49645015%_ '()))
                (_%g49504978%_ _%g49514982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g49504978%_ _%g49514982%_))))
                                      (_%g49504978%_ _%g49514982%_))))
                              (_%g49504978%_ _%g49514982%_))))
                      (_%g49504978%_ _%g49514982%_)))))
          (_%g49495075%_ _%$stx4946%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5080%_)
        (let* ((_%g50845112%_
                (lambda (_%g50855108%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50855108%_)))
               (_%g50835209%_
                (lambda (_%g50855116%_)
                  (if (gx#stx-pair? _%g50855116%_)
                      (let ((_%e50895119%_ (gx#syntax-e _%g50855116%_)))
                        (let ((_%hd50905123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50895119%_)))
                              (_%tl50915126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50895119%_))))
                          (if (gx#stx-pair? _%tl50915126%_)
                              (let ((_%e50925129%_
                                     (gx#syntax-e _%tl50915126%_)))
                                (let ((_%hd50935133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50925129%_)))
                                      (_%tl50945136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50925129%_))))
                                  (if (gx#stx-pair? _%tl50945136%_)
                                      (let ((_%e50955139%_
                                             (gx#syntax-e _%tl50945136%_)))
                                        (let ((_%hd50965143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e50955139%_)))
                                              (_%tl50975146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e50955139%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl50975146%_)
                                              (let ((_g21001_
                                                     (gx#syntax-split-splice
                                                      _%tl50975146%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21001_)
                                                               (##values-length
                                                                _g21001_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21002_ 2)))
                (error "Context expects 2 values" _g21002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target50985149%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21001_
                                                            0)))
                                                        (_%tl51005152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21001_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl51005152%_)
                                                        (letrec ((_%loop51015155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd50995159%_ _%rest51055162%_)
                            (if (gx#stx-pair? _%hd50995159%_)
                                (let ((_%e51025164%_
                                       (gx#syntax-e _%hd50995159%_)))
                                  (let ((_%lp-hd51035168%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e51025164%_)))
                                        (_%lp-tl51045171%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e51025164%_))))
                                    (_%loop51015155%_
                                     _%lp-tl51045171%_
                                     (cons _%lp-hd51035168%_
                                           _%rest51055162%_))))
                                (let ((_%rest51065174%_
                                       (reverse _%rest51055162%_)))
                                  ((lambda (_%g50865177%_
                                            _%g50875179%_
                                            _%g50885180%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g50885180%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%g50875179%_
                                 (foldr (lambda (_%g52005203%_ _%g52015206%_)
                                          (cons _%g52005203%_ _%g52015206%_))
                                        '()
                                        _%g50865177%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest51065174%_
                                   _%hd50965143%_
                                   _%hd50935133%_))))))
                  (_%loop51015155%_ _%target50985149%_ '()))
                (_%g50845112%_ _%g50855116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g50845112%_ _%g50855116%_))))
                                      (_%g50845112%_ _%g50855116%_))))
                              (_%g50845112%_ _%g50855116%_))))
                      (_%g50845112%_ _%g50855116%_)))))
          (_%g50835209%_ _%$stx5080%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5214%_)
        (let* ((_%g52175241%_
                (lambda (_%g52185237%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52185237%_)))
               (_%g52165324%_
                (lambda (_%g52185245%_)
                  (if (gx#stx-pair? _%g52185245%_)
                      (let ((_%e52215248%_ (gx#syntax-e _%g52185245%_)))
                        (let ((_%hd52225252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52215248%_)))
                              (_%tl52235255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52215248%_))))
                          (if (gx#stx-pair? _%tl52235255%_)
                              (let ((_%e52245258%_
                                     (gx#syntax-e _%tl52235255%_)))
                                (let ((_%hd52255262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52245258%_)))
                                      (_%tl52265265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52245258%_))))
                                  (if (gx#stx-pair/null? _%tl52265265%_)
                                      (let ((_g21003_
                                             (gx#syntax-split-splice
                                              _%tl52265265%_
                                              '0)))
                                        (begin
                                          (let ((_g21004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21003_)
                                                       (##values-length
                                                        _g21003_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21004_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21004_)))
                                          (let ((_%target52275268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21003_ 0)))
                                                (_%tl52295271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21003_ 1))))
                                            (if (gx#stx-null? _%tl52295271%_)
                                                (letrec ((_%loop52305274%_
                                                          (lambda (_%hd52285278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail52345281%_)
                    (if (gx#stx-pair? _%hd52285278%_)
                        (let ((_%e52315283%_ (gx#syntax-e _%hd52285278%_)))
                          (let ((_%lp-hd52325287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e52315283%_)))
                                (_%lp-tl52335290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e52315283%_))))
                            (_%loop52305274%_
                             _%lp-tl52335290%_
                             (cons _%lp-hd52325287%_ _%detail52345281%_))))
                        (let ((_%detail52355293%_
                               (reverse _%detail52345281%_)))
                          ((lambda (_%g52195296%_ _%g52205298%_)
                             (if (gx#stx-string? _%g52205298%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%g52205298%_)
                                        _%stx5214%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g53155318%_
                                                         _%g53165321%_)
                                                  (cons _%g53155318%_
                                                        _%g53165321%_))
                                                '()
                                                _%g52195296%_)))
                                 (_%g52175241%_ _%g52185245%_)))
                           _%detail52355293%_
                           _%hd52255262%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop52305274%_
                                                   _%target52275268%_
                                                   '()))
                                                (_%g52175241%_
                                                 _%g52185245%_)))))
                                      (_%g52175241%_ _%g52185245%_))))
                              (_%g52175241%_ _%g52185245%_))))
                      (_%g52175241%_ _%g52185245%_)))))
          (_%g52165324%_ _%stx5214%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5329%_)
        (let* ((_%g53335347%_
                (lambda (_%g53345343%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g53345343%_)))
               (_%g53325388%_
                (lambda (_%g53345351%_)
                  (if (gx#stx-pair? _%g53345351%_)
                      (let ((_%e53365354%_ (gx#syntax-e _%g53345351%_)))
                        (let ((_%hd53375358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e53365354%_)))
                              (_%tl53385361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e53365354%_))))
                          (if (gx#stx-pair? _%tl53385361%_)
                              (let ((_%e53395364%_
                                     (gx#syntax-e _%tl53385361%_)))
                                (let ((_%hd53405368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e53395364%_)))
                                      (_%tl53415371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e53395364%_))))
                                  (if (gx#stx-null? _%tl53415371%_)
                                      ((lambda (_%g53355374%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g53355374%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd53405368%_)
                                      (_%g53335347%_ _%g53345351%_))))
                              (_%g53335347%_ _%g53345351%_))))
                      (_%g53335347%_ _%g53345351%_)))))
          (_%g53325388%_ _%$stx5329%_))))))
