(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20949_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20950_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20953_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20954_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1984%_)
        (let* ((_%g19882016%_
                (lambda (_%g19892012%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19892012%_)))
               (_%g19872115%_
                (lambda (_%g19892020%_)
                  (if (gx#stx-pair? _%g19892020%_)
                      (let ((_%e19932023%_ (gx#syntax-e _%g19892020%_)))
                        (let ((_%hd19942027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19932023%_)))
                              (_%tl19952030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19932023%_))))
                          (if (gx#stx-pair? _%tl19952030%_)
                              (let ((_%e19962033%_
                                     (gx#syntax-e _%tl19952030%_)))
                                (let ((_%hd19972037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19962033%_)))
                                      (_%tl19982040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19962033%_))))
                                  (if (gx#stx-pair? _%tl19982040%_)
                                      (let ((_%e19992043%_
                                             (gx#syntax-e _%tl19982040%_)))
                                        (let ((_%hd20002047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19992043%_)))
                                              (_%tl20012050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19992043%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl20012050%_)
                                              (let ((_g20941_
                                                     (gx#syntax-split-splice
                                                      _%tl20012050%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20942_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20941_)
                                                               (##values-length
                                                                _g20941_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20942_ 2)))
                (error "Context expects 2 values" _g20942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target20022053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20941_
                                                            0)))
                                                        (_%tl20042056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20941_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl20042056%_)
                                                        (letrec ((_%loop20052059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd20032063%_ _%clauses20092066%_)
                            (if (gx#stx-pair? _%hd20032063%_)
                                (let ((_%e20062068%_
                                       (gx#syntax-e _%hd20032063%_)))
                                  (let ((_%lp-hd20072072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e20062068%_)))
                                        (_%lp-tl20082075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e20062068%_))))
                                    (_%loop20052059%_
                                     _%lp-tl20082075%_
                                     (cons _%lp-hd20072072%_
                                           _%clauses20092066%_))))
                                (let ((_%clauses20102078%_
                                       (reverse _%clauses20092066%_)))
                                  ((lambda (_%g19902081%_
                                            _%g19912083%_
                                            _%g19922084%_)
                                     (if (gx#identifier? _%g19922084%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%g19922084%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%g19912083%_
                               (foldr (lambda (_%g21062109%_ _%g21072112%_)
                                        (cons _%g21062109%_ _%g21072112%_))
                                      '()
                                      _%g19902081%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19882016%_ _%g19892020%_)))
                                   _%clauses20102078%_
                                   _%hd20002047%_
                                   _%hd19972037%_))))))
                  (_%loop20052059%_ _%target20022053%_ '()))
                (_%g19882016%_ _%g19892020%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19882016%_ _%g19892020%_))))
                                      (_%g19882016%_ _%g19892020%_))))
                              (_%g19882016%_ _%g19892020%_))))
                      (_%g19882016%_ _%g19892020%_)))))
          (_%g19872115%_ _%$stx1984%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2120%_)
        (let* ((_%__stx1832818329%_ _%$stx2120%_)
               (_%g21252166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1832818329%_))))
          (let ((_%__kont1833118332%_
                 (lambda (_%g21272296%_ _%g21282298%_ _%g21292299%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21292299%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21282298%_)
                     (cons _%g21272296%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1833318334%_
                 (lambda (_%g21422223%_
                          _%g21432225%_
                          _%g21442226%_
                          _%g21452227%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g21452227%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%g21442226%_)
                     (cons _%g21432225%_ (cons _%g21422223%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1839318394%_
                    (lambda (_%e21462173%_
                             _%hd21472177%_
                             _%tl21482180%_
                             _%e21492183%_
                             _%hd21502187%_
                             _%tl21512190%_
                             _%e21522193%_
                             _%hd21532197%_
                             _%tl21542200%_
                             _%e21552203%_
                             _%hd21562207%_
                             _%tl21572210%_
                             _%e21582213%_
                             _%hd21592217%_
                             _%tl21602220%_)
                      (let ((_%g21422223%_ _%hd21592217%_)
                            (_%g21432225%_ _%hd21562207%_)
                            (_%g21442226%_ _%tl21542200%_)
                            (_%g21452227%_ _%hd21532197%_))
                        (if (gx#identifier? _%g21452227%_)
                            (_%__kont1833318334%_
                             _%g21422223%_
                             _%g21432225%_
                             _%g21442226%_
                             _%g21452227%_)
                            (let () (declare (not safe)) (_%g21252166%_))))))
                   (_%__match1836118362%_
                    (lambda (_%e21302256%_
                             _%hd21312260%_
                             _%tl21322263%_
                             _%e21332266%_
                             _%hd21342270%_
                             _%tl21352273%_
                             _%e21362276%_
                             _%hd21372280%_
                             _%tl21382283%_
                             _%e21392286%_
                             _%hd21402290%_
                             _%tl21412293%_)
                      (let ((_%g21272296%_ _%hd21402290%_)
                            (_%g21282298%_ _%tl21382283%_)
                            (_%g21292299%_ _%hd21372280%_))
                        (if (gx#identifier? _%g21292299%_)
                            (_%__kont1833118332%_
                             _%g21272296%_
                             _%g21282298%_
                             _%g21292299%_)
                            (let () (declare (not safe)) (_%g21252166%_)))))))
              (if (gx#stx-pair? _%__stx1832818329%_)
                  (let ((_%e21302256%_ (gx#syntax-e _%__stx1832818329%_)))
                    (let ((_%tl21322263%_
                           (let () (declare (not safe)) (##cdr _%e21302256%_)))
                          (_%hd21312260%_
                           (let ()
                             (declare (not safe))
                             (##car _%e21302256%_))))
                      (if (gx#stx-pair? _%tl21322263%_)
                          (let ((_%e21332266%_ (gx#syntax-e _%tl21322263%_)))
                            (let ((_%tl21352273%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e21332266%_)))
                                  (_%hd21342270%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e21332266%_))))
                              (if (gx#stx-pair? _%hd21342270%_)
                                  (let ((_%e21362276%_
                                         (gx#syntax-e _%hd21342270%_)))
                                    (let ((_%tl21382283%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e21362276%_)))
                                          (_%hd21372280%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e21362276%_))))
                                      (if (gx#stx-pair? _%tl21352273%_)
                                          (let ((_%e21392286%_
                                                 (gx#syntax-e _%tl21352273%_)))
                                            (let ((_%tl21412293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e21392286%_)))
                                                  (_%hd21402290%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e21392286%_))))
                                              (if (gx#stx-null? _%tl21412293%_)
                                                  (_%__match1836118362%_
                                                   _%e21302256%_
                                                   _%hd21312260%_
                                                   _%tl21322263%_
                                                   _%e21332266%_
                                                   _%hd21342270%_
                                                   _%tl21352273%_
                                                   _%e21362276%_
                                                   _%hd21372280%_
                                                   _%tl21382283%_
                                                   _%e21392286%_
                                                   _%hd21402290%_
                                                   _%tl21412293%_)
                                                  (if (gx#stx-pair?
                                                       _%tl21412293%_)
                                                      (let ((_%e21582213%_
                                                             (gx#syntax-e
                                                              _%tl21412293%_)))
                                                        (let ((_%tl21602220%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21582213%_)))
                      (_%hd21592217%_
                       (let () (declare (not safe)) (##car _%e21582213%_))))
                  (if (gx#stx-null? _%tl21602220%_)
                      (_%__match1839318394%_
                       _%e21302256%_
                       _%hd21312260%_
                       _%tl21322263%_
                       _%e21332266%_
                       _%hd21342270%_
                       _%tl21352273%_
                       _%e21362276%_
                       _%hd21372280%_
                       _%tl21382283%_
                       _%e21392286%_
                       _%hd21402290%_
                       _%tl21412293%_
                       _%e21582213%_
                       _%hd21592217%_
                       _%tl21602220%_)
                      (let () (declare (not safe)) (_%g21252166%_)))))
              (let () (declare (not safe)) (_%g21252166%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g21252166%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g21252166%_)))))
                          (let () (declare (not safe)) (_%g21252166%_)))))
                  (let () (declare (not safe)) (_%g21252166%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2321%_)
        (let* ((_%__stx1839618397%_ _%$stx2321%_)
               (_%g23262365%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1839618397%_))))
          (let ((_%__kont1839918400%_
                 (lambda (_%g23282485%_ _%g23292487%_ _%g23302488%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23302488%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g23292487%_
                                                 (foldr (lambda (_%g25072510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g25082513%_)
                  (cons _%g25072510%_ _%g25082513%_))
                '()
                _%g23282485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1840318404%_
                 (lambda (_%g23492402%_ _%g23502404%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%g23502404%_ (cons _%g23492402%_ '()))))))
            (let* ((_%__match1845118452%_
                    (lambda (_%e23512372%_
                             _%hd23522376%_
                             _%tl23532379%_
                             _%e23542382%_
                             _%hd23552386%_
                             _%tl23562389%_
                             _%e23572392%_
                             _%hd23582396%_
                             _%tl23592399%_)
                      (let ((_%g23492402%_ _%hd23582396%_)
                            (_%g23502404%_ _%hd23552386%_))
                        (if (gx#identifier? _%g23502404%_)
                            (_%__kont1840318404%_ _%g23492402%_ _%g23502404%_)
                            (let () (declare (not safe)) (_%g23262365%_))))))
                   (_%__match1844318444%_
                    (lambda (_%e23512372%_
                             _%hd23522376%_
                             _%tl23532379%_
                             _%e23542382%_
                             _%hd23552386%_
                             _%tl23562389%_)
                      (if (gx#stx-pair? _%tl23562389%_)
                          (let ((_%e23572392%_ (gx#syntax-e _%tl23562389%_)))
                            (let ((_%tl23592399%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23572392%_)))
                                  (_%hd23582396%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23572392%_))))
                              (if (gx#stx-null? _%tl23592399%_)
                                  (_%__match1845118452%_
                                   _%e23512372%_
                                   _%hd23522376%_
                                   _%tl23532379%_
                                   _%e23542382%_
                                   _%hd23552386%_
                                   _%tl23562389%_
                                   _%e23572392%_
                                   _%hd23582396%_
                                   _%tl23592399%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g23262365%_)))))
                          (let () (declare (not safe)) (_%g23262365%_)))))
                   (_%__match1843118432%_
                    (lambda (_%e23312427%_
                             _%hd23322431%_
                             _%tl23332434%_
                             _%e23342437%_
                             _%hd23352441%_
                             _%tl23362444%_
                             _%e23372447%_
                             _%hd23382451%_
                             _%tl23392454%_
                             _%__splice1840118402%_
                             _%target23402457%_
                             _%tl23422460%_)
                      (letrec ((_%loop23432463%_
                                (lambda (_%hd23412467%_ _%body23472470%_)
                                  (if (gx#stx-pair? _%hd23412467%_)
                                      (let ((_%e23442472%_
                                             (gx#syntax-e _%hd23412467%_)))
                                        (let ((_%lp-tl23462479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23442472%_)))
                                              (_%lp-hd23452476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23442472%_))))
                                          (_%loop23432463%_
                                           _%lp-tl23462479%_
                                           (cons _%lp-hd23452476%_
                                                 _%body23472470%_))))
                                      (let ((_%body23482482%_
                                             (reverse _%body23472470%_)))
                                        (let ((_%g23282485%_ _%body23482482%_)
                                              (_%g23292487%_ _%tl23392454%_)
                                              (_%g23302488%_ _%hd23382451%_))
                                          (if (gx#identifier? _%g23302488%_)
                                              (_%__kont1839918400%_
                                               _%g23282485%_
                                               _%g23292487%_
                                               _%g23302488%_)
                                              (_%__match1844318444%_
                                               _%e23312427%_
                                               _%hd23322431%_
                                               _%tl23332434%_
                                               _%e23342437%_
                                               _%hd23352441%_
                                               _%tl23362444%_))))))))
                        (_%loop23432463%_ _%target23402457%_ '())))))
              (if (gx#stx-pair? _%__stx1839618397%_)
                  (let ((_%e23312427%_ (gx#syntax-e _%__stx1839618397%_)))
                    (let ((_%tl23332434%_
                           (let () (declare (not safe)) (##cdr _%e23312427%_)))
                          (_%hd23322431%_
                           (let ()
                             (declare (not safe))
                             (##car _%e23312427%_))))
                      (if (gx#stx-pair? _%tl23332434%_)
                          (let ((_%e23342437%_ (gx#syntax-e _%tl23332434%_)))
                            (let ((_%tl23362444%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23342437%_)))
                                  (_%hd23352441%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23342437%_))))
                              (if (gx#stx-pair? _%hd23352441%_)
                                  (let ((_%e23372447%_
                                         (gx#syntax-e _%hd23352441%_)))
                                    (let ((_%tl23392454%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e23372447%_)))
                                          (_%hd23382451%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e23372447%_))))
                                      (if (gx#stx-pair/null? _%tl23362444%_)
                                          (let ((_%__splice1840118402%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl23362444%_
                                                  '0)))
                                            (let ((_%tl23422460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1840118402%_
                                                      '1)))
                                                  (_%target23402457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1840118402%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl23422460%_)
                                                  (_%__match1843118432%_
                                                   _%e23312427%_
                                                   _%hd23322431%_
                                                   _%tl23332434%_
                                                   _%e23342437%_
                                                   _%hd23352441%_
                                                   _%tl23362444%_
                                                   _%e23372447%_
                                                   _%hd23382451%_
                                                   _%tl23392454%_
                                                   _%__splice1840118402%_
                                                   _%target23402457%_
                                                   _%tl23422460%_)
                                                  (if (gx#stx-pair?
                                                       _%tl23362444%_)
                                                      (let ((_%e23572392%_
                                                             (gx#syntax-e
                                                              _%tl23362444%_)))
                                                        (let ((_%tl23592399%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23572392%_)))
                      (_%hd23582396%_
                       (let () (declare (not safe)) (##car _%e23572392%_))))
                  (if (gx#stx-null? _%tl23592399%_)
                      (_%__match1845118452%_
                       _%e23312427%_
                       _%hd23322431%_
                       _%tl23332434%_
                       _%e23342437%_
                       _%hd23352441%_
                       _%tl23362444%_
                       _%e23572392%_
                       _%hd23582396%_
                       _%tl23592399%_)
                      (let () (declare (not safe)) (_%g23262365%_)))))
              (let () (declare (not safe)) (_%g23262365%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl23362444%_)
                                              (let ((_%e23572392%_
                                                     (gx#syntax-e
                                                      _%tl23362444%_)))
                                                (let ((_%tl23592399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23572392%_)))
                                                      (_%hd23582396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23572392%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23592399%_)
                                                      (_%__match1845118452%_
                                                       _%e23312427%_
                                                       _%hd23322431%_
                                                       _%tl23332434%_
                                                       _%e23342437%_
                                                       _%hd23352441%_
                                                       _%tl23362444%_
                                                       _%e23572392%_
                                                       _%hd23582396%_
                                                       _%tl23592399%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g23262365%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g23262365%_))))))
                                  (if (gx#stx-pair? _%tl23362444%_)
                                      (let ((_%e23572392%_
                                             (gx#syntax-e _%tl23362444%_)))
                                        (let ((_%tl23592399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23572392%_)))
                                              (_%hd23582396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23572392%_))))
                                          (if (gx#stx-null? _%tl23592399%_)
                                              (_%__match1845118452%_
                                               _%e23312427%_
                                               _%hd23322431%_
                                               _%tl23332434%_
                                               _%e23342437%_
                                               _%hd23352441%_
                                               _%tl23362444%_
                                               _%e23572392%_
                                               _%hd23582396%_
                                               _%tl23592399%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g23262365%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g23262365%_))))))
                          (let () (declare (not safe)) (_%g23262365%_)))))
                  (let () (declare (not safe)) (_%g23262365%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2521%_)
        (let* ((_%__stx1845418455%_ _%$stx2521%_)
               (_%g25262565%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1845418455%_))))
          (let ((_%__kont1845718458%_
                 (lambda (_%g25282685%_ _%g25292687%_ _%g25302688%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25302688%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%g25292687%_
                                                 (foldr (lambda (_%g27072710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g27082713%_)
                  (cons _%g27072710%_ _%g27082713%_))
                '()
                _%g25282685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1846118462%_
                 (lambda (_%g25492602%_ _%g25502604%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g25502604%_ '())
                               (cons _%g25492602%_ '()))))))
            (let* ((_%__match1850918510%_
                    (lambda (_%e25512572%_
                             _%hd25522576%_
                             _%tl25532579%_
                             _%e25542582%_
                             _%hd25552586%_
                             _%tl25562589%_
                             _%e25572592%_
                             _%hd25582596%_
                             _%tl25592599%_)
                      (let ((_%g25492602%_ _%hd25582596%_)
                            (_%g25502604%_ _%hd25552586%_))
                        (if (gx#identifier? _%g25502604%_)
                            (_%__kont1846118462%_ _%g25492602%_ _%g25502604%_)
                            (let () (declare (not safe)) (_%g25262565%_))))))
                   (_%__match1850118502%_
                    (lambda (_%e25512572%_
                             _%hd25522576%_
                             _%tl25532579%_
                             _%e25542582%_
                             _%hd25552586%_
                             _%tl25562589%_)
                      (if (gx#stx-pair? _%tl25562589%_)
                          (let ((_%e25572592%_ (gx#syntax-e _%tl25562589%_)))
                            (let ((_%tl25592599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25572592%_)))
                                  (_%hd25582596%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25572592%_))))
                              (if (gx#stx-null? _%tl25592599%_)
                                  (_%__match1850918510%_
                                   _%e25512572%_
                                   _%hd25522576%_
                                   _%tl25532579%_
                                   _%e25542582%_
                                   _%hd25552586%_
                                   _%tl25562589%_
                                   _%e25572592%_
                                   _%hd25582596%_
                                   _%tl25592599%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g25262565%_)))))
                          (let () (declare (not safe)) (_%g25262565%_)))))
                   (_%__match1848918490%_
                    (lambda (_%e25312627%_
                             _%hd25322631%_
                             _%tl25332634%_
                             _%e25342637%_
                             _%hd25352641%_
                             _%tl25362644%_
                             _%e25372647%_
                             _%hd25382651%_
                             _%tl25392654%_
                             _%__splice1845918460%_
                             _%target25402657%_
                             _%tl25422660%_)
                      (letrec ((_%loop25432663%_
                                (lambda (_%hd25412667%_ _%body25472670%_)
                                  (if (gx#stx-pair? _%hd25412667%_)
                                      (let ((_%e25442672%_
                                             (gx#syntax-e _%hd25412667%_)))
                                        (let ((_%lp-tl25462679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25442672%_)))
                                              (_%lp-hd25452676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25442672%_))))
                                          (_%loop25432663%_
                                           _%lp-tl25462679%_
                                           (cons _%lp-hd25452676%_
                                                 _%body25472670%_))))
                                      (let ((_%body25482682%_
                                             (reverse _%body25472670%_)))
                                        (let ((_%g25282685%_ _%body25482682%_)
                                              (_%g25292687%_ _%tl25392654%_)
                                              (_%g25302688%_ _%hd25382651%_))
                                          (if (gx#identifier? _%g25302688%_)
                                              (_%__kont1845718458%_
                                               _%g25282685%_
                                               _%g25292687%_
                                               _%g25302688%_)
                                              (_%__match1850118502%_
                                               _%e25312627%_
                                               _%hd25322631%_
                                               _%tl25332634%_
                                               _%e25342637%_
                                               _%hd25352641%_
                                               _%tl25362644%_))))))))
                        (_%loop25432663%_ _%target25402657%_ '())))))
              (if (gx#stx-pair? _%__stx1845418455%_)
                  (let ((_%e25312627%_ (gx#syntax-e _%__stx1845418455%_)))
                    (let ((_%tl25332634%_
                           (let () (declare (not safe)) (##cdr _%e25312627%_)))
                          (_%hd25322631%_
                           (let ()
                             (declare (not safe))
                             (##car _%e25312627%_))))
                      (if (gx#stx-pair? _%tl25332634%_)
                          (let ((_%e25342637%_ (gx#syntax-e _%tl25332634%_)))
                            (let ((_%tl25362644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25342637%_)))
                                  (_%hd25352641%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25342637%_))))
                              (if (gx#stx-pair? _%hd25352641%_)
                                  (let ((_%e25372647%_
                                         (gx#syntax-e _%hd25352641%_)))
                                    (let ((_%tl25392654%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e25372647%_)))
                                          (_%hd25382651%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e25372647%_))))
                                      (if (gx#stx-pair/null? _%tl25362644%_)
                                          (let ((_%__splice1845918460%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl25362644%_
                                                  '0)))
                                            (let ((_%tl25422660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1845918460%_
                                                      '1)))
                                                  (_%target25402657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1845918460%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl25422660%_)
                                                  (_%__match1848918490%_
                                                   _%e25312627%_
                                                   _%hd25322631%_
                                                   _%tl25332634%_
                                                   _%e25342637%_
                                                   _%hd25352641%_
                                                   _%tl25362644%_
                                                   _%e25372647%_
                                                   _%hd25382651%_
                                                   _%tl25392654%_
                                                   _%__splice1845918460%_
                                                   _%target25402657%_
                                                   _%tl25422660%_)
                                                  (if (gx#stx-pair?
                                                       _%tl25362644%_)
                                                      (let ((_%e25572592%_
                                                             (gx#syntax-e
                                                              _%tl25362644%_)))
                                                        (let ((_%tl25592599%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25572592%_)))
                      (_%hd25582596%_
                       (let () (declare (not safe)) (##car _%e25572592%_))))
                  (if (gx#stx-null? _%tl25592599%_)
                      (_%__match1850918510%_
                       _%e25312627%_
                       _%hd25322631%_
                       _%tl25332634%_
                       _%e25342637%_
                       _%hd25352641%_
                       _%tl25362644%_
                       _%e25572592%_
                       _%hd25582596%_
                       _%tl25592599%_)
                      (let () (declare (not safe)) (_%g25262565%_)))))
              (let () (declare (not safe)) (_%g25262565%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl25362644%_)
                                              (let ((_%e25572592%_
                                                     (gx#syntax-e
                                                      _%tl25362644%_)))
                                                (let ((_%tl25592599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25572592%_)))
                                                      (_%hd25582596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25572592%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25592599%_)
                                                      (_%__match1850918510%_
                                                       _%e25312627%_
                                                       _%hd25322631%_
                                                       _%tl25332634%_
                                                       _%e25342637%_
                                                       _%hd25352641%_
                                                       _%tl25362644%_
                                                       _%e25572592%_
                                                       _%hd25582596%_
                                                       _%tl25592599%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g25262565%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g25262565%_))))))
                                  (if (gx#stx-pair? _%tl25362644%_)
                                      (let ((_%e25572592%_
                                             (gx#syntax-e _%tl25362644%_)))
                                        (let ((_%tl25592599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25572592%_)))
                                              (_%hd25582596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25572592%_))))
                                          (if (gx#stx-null? _%tl25592599%_)
                                              (_%__match1850918510%_
                                               _%e25312627%_
                                               _%hd25322631%_
                                               _%tl25332634%_
                                               _%e25342637%_
                                               _%hd25352641%_
                                               _%tl25362644%_
                                               _%e25572592%_
                                               _%hd25582596%_
                                               _%tl25592599%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g25262565%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g25262565%_))))))
                          (let () (declare (not safe)) (_%g25262565%_)))))
                  (let () (declare (not safe)) (_%g25262565%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2721%_)
        (let* ((_%__stx1851218513%_ _%$stx2721%_)
               (_%g27262771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1851218513%_))))
          (let ((_%__kont1851518516%_
                 (lambda (_%g27282925%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g29412944%_ _%g29422947%_)
                                        (cons _%g29412944%_ _%g29422947%_))
                                      '()
                                      _%g27282925%_)))))
                (_%__kont1851918520%_
                 (lambda (_%g27442836%_
                          _%g27452838%_
                          _%g27462839%_
                          _%g27472840%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%g27462839%_ '())
                               (cons (cons _%g27472840%_
                                           (cons _%g27452838%_
                                                 (foldr (lambda (_%g28612864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28622867%_)
                  (cons _%g28612864%_ _%g28622867%_))
                '()
                _%g27442836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1857118572%_
                    (lambda (_%e27482778%_
                             _%hd27492782%_
                             _%tl27502785%_
                             _%e27512788%_
                             _%hd27522792%_
                             _%tl27532795%_
                             _%e27542798%_
                             _%hd27552802%_
                             _%tl27562805%_
                             _%__splice1852118522%_
                             _%target27572808%_
                             _%tl27592811%_)
                      (letrec ((_%loop27602814%_
                                (lambda (_%hd27582818%_ _%body27642821%_)
                                  (if (gx#stx-pair? _%hd27582818%_)
                                      (let ((_%e27612823%_
                                             (gx#syntax-e _%hd27582818%_)))
                                        (let ((_%lp-tl27632830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27612823%_)))
                                              (_%lp-hd27622827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27612823%_))))
                                          (_%loop27602814%_
                                           _%lp-tl27632830%_
                                           (cons _%lp-hd27622827%_
                                                 _%body27642821%_))))
                                      (let ((_%body27652833%_
                                             (reverse _%body27642821%_)))
                                        (_%__kont1851918520%_
                                         _%body27652833%_
                                         _%tl27562805%_
                                         _%hd27552802%_
                                         _%hd27492782%_))))))
                        (_%loop27602814%_ _%target27572808%_ '()))))
                   (_%__match1854518546%_
                    (lambda (_%e27292877%_
                             _%hd27302881%_
                             _%tl27312884%_
                             _%e27322887%_
                             _%hd27332891%_
                             _%tl27342894%_
                             _%__splice1851718518%_
                             _%target27352897%_
                             _%tl27372900%_)
                      (letrec ((_%loop27382903%_
                                (lambda (_%hd27362907%_ _%body27422910%_)
                                  (if (gx#stx-pair? _%hd27362907%_)
                                      (let ((_%e27392912%_
                                             (gx#syntax-e _%hd27362907%_)))
                                        (let ((_%lp-tl27412919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27392912%_)))
                                              (_%lp-hd27402916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27392912%_))))
                                          (_%loop27382903%_
                                           _%lp-tl27412919%_
                                           (cons _%lp-hd27402916%_
                                                 _%body27422910%_))))
                                      (let ((_%body27432922%_
                                             (reverse _%body27422910%_)))
                                        (_%__kont1851518516%_
                                         _%body27432922%_))))))
                        (_%loop27382903%_ _%target27352897%_ '())))))
              (if (gx#stx-pair? _%__stx1851218513%_)
                  (let ((_%e27292877%_ (gx#syntax-e _%__stx1851218513%_)))
                    (let ((_%tl27312884%_
                           (let () (declare (not safe)) (##cdr _%e27292877%_)))
                          (_%hd27302881%_
                           (let ()
                             (declare (not safe))
                             (##car _%e27292877%_))))
                      (if (gx#stx-pair? _%tl27312884%_)
                          (let ((_%e27322887%_ (gx#syntax-e _%tl27312884%_)))
                            (let ((_%tl27342894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e27322887%_)))
                                  (_%hd27332891%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e27322887%_))))
                              (if (gx#stx-null? _%hd27332891%_)
                                  (if (gx#stx-pair/null? _%tl27342894%_)
                                      (let ((_%__splice1851718518%_
                                             (gx#syntax-split-splice->vector
                                              _%tl27342894%_
                                              '0)))
                                        (let ((_%tl27372900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1851718518%_
                                                  '1)))
                                              (_%target27352897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1851718518%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl27372900%_)
                                              (_%__match1854518546%_
                                               _%e27292877%_
                                               _%hd27302881%_
                                               _%tl27312884%_
                                               _%e27322887%_
                                               _%hd27332891%_
                                               _%tl27342894%_
                                               _%__splice1851718518%_
                                               _%target27352897%_
                                               _%tl27372900%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g27262771%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27262771%_)))
                                  (if (gx#stx-pair? _%hd27332891%_)
                                      (let ((_%e27542798%_
                                             (gx#syntax-e _%hd27332891%_)))
                                        (let ((_%tl27562805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27542798%_)))
                                              (_%hd27552802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27542798%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl27342894%_)
                                              (let ((_%__splice1852118522%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl27342894%_
                                                      '0)))
                                                (let ((_%tl27592811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1852118522%_
                                                          '1)))
                                                      (_%target27572808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1852118522%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27592811%_)
                                                      (_%__match1857118572%_
                                                       _%e27292877%_
                                                       _%hd27302881%_
                                                       _%tl27312884%_
                                                       _%e27322887%_
                                                       _%hd27332891%_
                                                       _%tl27342894%_
                                                       _%e27542798%_
                                                       _%hd27552802%_
                                                       _%tl27562805%_
                                                       _%__splice1852118522%_
                                                       _%target27572808%_
                                                       _%tl27592811%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g27262771%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g27262771%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g27262771%_))))))
                          (let () (declare (not safe)) (_%g27262771%_)))))
                  (let () (declare (not safe)) (_%g27262771%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2956%_)
        (let* ((_%__stx1857418575%_ _%$stx2956%_)
               (_%g29613025%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1857418575%_))))
          (let ((_%__kont1857718578%_
                 (lambda (_%g29633223%_
                          _%g29643225%_
                          _%g29653226%_
                          _%g29663227%_
                          _%g29673228%_)
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (gx#datum->syntax '#f '@loop)
                               (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _%g29673228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (foldr (lambda (_%g32533260%_
                                                             _%g32543263%_)
                                                      (cons _%g32533260%_
                                                            _%g32543263%_))
                                                    _%g29643225%_
                                                    _%g29663227%_)
                                             (foldr (lambda (_%g32553266%_
                                                             _%g32563269%_)
                                                      (cons _%g32553266%_
                                                            _%g32563269%_))
                                                    '()
                                                    _%g29633223%_)))
                                 '()))
                     '())
               (cons _%g29673228%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%g32573272%_
                                                           _%g32583275%_)
                                                    (cons _%g32573272%_
                                                          _%g32583275%_))
                                                  '()
                                                  _%g29653226%_))
                                     '())))))
                (_%__kont1858318584%_
                 (lambda (_%g30033080%_ _%g30043082%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%g30043082%_
                                     (foldr (lambda (_%g30993102%_
                                                     _%g31003105%_)
                                              (cons _%g30993102%_
                                                    _%g31003105%_))
                                            '()
                                            _%g30033080%_)))))))
            (let* ((_%__match1863118632%_
                    (lambda (_%e30053032%_
                             _%hd30063036%_
                             _%tl30073039%_
                             _%e30083042%_
                             _%hd30093046%_
                             _%tl30103049%_
                             _%__splice1858518586%_
                             _%target30113052%_
                             _%tl30133055%_)
                      (letrec ((_%loop30143058%_
                                (lambda (_%hd30123062%_ _%body30183065%_)
                                  (if (gx#stx-pair? _%hd30123062%_)
                                      (let ((_%e30153067%_
                                             (gx#syntax-e _%hd30123062%_)))
                                        (let ((_%lp-tl30173074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e30153067%_)))
                                              (_%lp-hd30163071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e30153067%_))))
                                          (_%loop30143058%_
                                           _%lp-tl30173074%_
                                           (cons _%lp-hd30163071%_
                                                 _%body30183065%_))))
                                      (let ((_%body30193077%_
                                             (reverse _%body30183065%_)))
                                        (_%__kont1858318584%_
                                         _%body30193077%_
                                         _%hd30093046%_))))))
                        (_%loop30143058%_ _%target30113052%_ '()))))
                   (_%__match1862318624%_
                    (lambda (_%e30053032%_
                             _%hd30063036%_
                             _%tl30073039%_
                             _%e30083042%_
                             _%hd30093046%_
                             _%tl30103049%_)
                      (if (gx#stx-pair/null? _%tl30103049%_)
                          (let ((_%__splice1858518586%_
                                 (gx#syntax-split-splice->vector
                                  _%tl30103049%_
                                  '0)))
                            (let ((_%tl30133055%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1858518586%_ '1)))
                                  (_%target30113052%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1858518586%_
                                      '0))))
                              (if (gx#stx-null? _%tl30133055%_)
                                  (_%__match1863118632%_
                                   _%e30053032%_
                                   _%hd30063036%_
                                   _%tl30073039%_
                                   _%e30083042%_
                                   _%hd30093046%_
                                   _%tl30103049%_
                                   _%__splice1858518586%_
                                   _%target30113052%_
                                   _%tl30133055%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29613025%_)))))
                          (let () (declare (not safe)) (_%g29613025%_)))))
                   (_%__match1861118612%_
                    (lambda (_%e29683115%_
                             _%hd29693119%_
                             _%tl29703122%_
                             _%e29713125%_
                             _%hd29723129%_
                             _%tl29733132%_
                             _%e29743135%_
                             _%hd29753139%_
                             _%tl29763142%_
                             _%__splice1857918580%_
                             _%target29773145%_
                             _%tl29793148%_)
                      (letrec ((_%loop29803151%_
                                (lambda (_%hd29783155%_
                                         _%arg29843158%_
                                         _%var29853159%_)
                                  (if (gx#stx-pair? _%hd29783155%_)
                                      (let ((_%e29813161%_
                                             (gx#syntax-e _%hd29783155%_)))
                                        (let ((_%lp-tl29833168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29813161%_)))
                                              (_%lp-hd29823165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29813161%_))))
                                          (if (gx#stx-pair? _%lp-hd29823165%_)
                                              (let ((_%e29883171%_
                                                     (gx#syntax-e
                                                      _%lp-hd29823165%_)))
                                                (let ((_%tl29903178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29883171%_)))
                                                      (_%hd29893175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29883171%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29903178%_)
                                                      (let ((_%e29913181%_
                                                             (gx#syntax-e
                                                              _%tl29903178%_)))
                                                        (let ((_%tl29933188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29913181%_)))
                      (_%hd29923185%_
                       (let () (declare (not safe)) (##car _%e29913181%_))))
                  (if (gx#stx-null? _%tl29933188%_)
                      (_%loop29803151%_
                       _%lp-tl29833168%_
                       (cons _%hd29923185%_ _%arg29843158%_)
                       (cons _%hd29893175%_ _%var29853159%_))
                      (_%__match1862318624%_
                       _%e29683115%_
                       _%hd29693119%_
                       _%tl29703122%_
                       _%e29713125%_
                       _%hd29723129%_
                       _%tl29733132%_))))
              (_%__match1862318624%_
               _%e29683115%_
               _%hd29693119%_
               _%tl29703122%_
               _%e29713125%_
               _%hd29723129%_
               _%tl29733132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1862318624%_
                                               _%e29683115%_
                                               _%hd29693119%_
                                               _%tl29703122%_
                                               _%e29713125%_
                                               _%hd29723129%_
                                               _%tl29733132%_))))
                                      (let ((_%var29873193%_
                                             (reverse _%var29853159%_))
                                            (_%arg29863191%_
                                             (reverse _%arg29843158%_)))
                                        (if (gx#stx-pair/null? _%tl29763142%_)
                                            (let ((_%__splice1858118582%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl29763142%_
                                                    '0)))
                                              (let ((_%tl29963198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1858118582%_
                                                        '1)))
                                                    (_%target29943195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1858118582%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29963198%_)
                                                    (letrec ((_%loop29973201%_
                                                              (lambda (_%hd29953205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body30013208%_)
                        (if (gx#stx-pair? _%hd29953205%_)
                            (let ((_%e29983210%_ (gx#syntax-e _%hd29953205%_)))
                              (let ((_%lp-tl30003217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29983210%_)))
                                    (_%lp-hd29993214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29983210%_))))
                                (_%loop29973201%_
                                 _%lp-tl30003217%_
                                 (cons _%lp-hd29993214%_ _%body30013208%_))))
                            (let ((_%body30023220%_
                                   (reverse _%body30013208%_)))
                              (let ((_%g29633223%_ _%body30023220%_)
                                    (_%g29643225%_ _%tl29793148%_)
                                    (_%g29653226%_ _%arg29863191%_)
                                    (_%g29663227%_ _%var29873193%_)
                                    (_%g29673228%_ _%hd29723129%_))
                                (if (gx#identifier? _%g29673228%_)
                                    (_%__kont1857718578%_
                                     _%g29633223%_
                                     _%g29643225%_
                                     _%g29653226%_
                                     _%g29663227%_
                                     _%g29673228%_)
                                    (_%__match1862318624%_
                                     _%e29683115%_
                                     _%hd29693119%_
                                     _%tl29703122%_
                                     _%e29713125%_
                                     _%hd29723129%_
                                     _%tl29733132%_))))))))
              (_%loop29973201%_ _%target29943195%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1862318624%_
                                                     _%e29683115%_
                                                     _%hd29693119%_
                                                     _%tl29703122%_
                                                     _%e29713125%_
                                                     _%hd29723129%_
                                                     _%tl29733132%_))))
                                            (_%__match1862318624%_
                                             _%e29683115%_
                                             _%hd29693119%_
                                             _%tl29703122%_
                                             _%e29713125%_
                                             _%hd29723129%_
                                             _%tl29733132%_)))))))
                        (_%loop29803151%_ _%target29773145%_ '() '())))))
              (if (gx#stx-pair? _%__stx1857418575%_)
                  (let ((_%e29683115%_ (gx#syntax-e _%__stx1857418575%_)))
                    (let ((_%tl29703122%_
                           (let () (declare (not safe)) (##cdr _%e29683115%_)))
                          (_%hd29693119%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29683115%_))))
                      (if (gx#stx-pair? _%tl29703122%_)
                          (let ((_%e29713125%_ (gx#syntax-e _%tl29703122%_)))
                            (let ((_%tl29733132%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29713125%_)))
                                  (_%hd29723129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29713125%_))))
                              (if (gx#stx-pair? _%tl29733132%_)
                                  (let ((_%e29743135%_
                                         (gx#syntax-e _%tl29733132%_)))
                                    (let ((_%tl29763142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29743135%_)))
                                          (_%hd29753139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29743135%_))))
                                      (if (gx#stx-pair/null? _%hd29753139%_)
                                          (let ((_%__splice1857918580%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd29753139%_
                                                  '0)))
                                            (let ((_%tl29793148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1857918580%_
                                                      '1)))
                                                  (_%target29773145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1857918580%_
                                                      '0))))
                                              (_%__match1861118612%_
                                               _%e29683115%_
                                               _%hd29693119%_
                                               _%tl29703122%_
                                               _%e29713125%_
                                               _%hd29723129%_
                                               _%tl29733132%_
                                               _%e29743135%_
                                               _%hd29753139%_
                                               _%tl29763142%_
                                               _%__splice1857918580%_
                                               _%target29773145%_
                                               _%tl29793148%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29733132%_)
                                              (let ((_%__splice1858518586%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl29733132%_
                                                      '0)))
                                                (let ((_%tl30133055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1858518586%_
                                                          '1)))
                                                      (_%target30113052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1858518586%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl30133055%_)
                                                      (_%__match1863118632%_
                                                       _%e29683115%_
                                                       _%hd29693119%_
                                                       _%tl29703122%_
                                                       _%e29713125%_
                                                       _%hd29723129%_
                                                       _%tl29733132%_
                                                       _%__splice1858518586%_
                                                       _%target30113052%_
                                                       _%tl30133055%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29613025%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29613025%_))))))
                                  (if (gx#stx-pair/null? _%tl29733132%_)
                                      (let ((_%__splice1858518586%_
                                             (gx#syntax-split-splice->vector
                                              _%tl29733132%_
                                              '0)))
                                        (let ((_%tl30133055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1858518586%_
                                                  '1)))
                                              (_%target30113052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1858518586%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl30133055%_)
                                              (_%__match1863118632%_
                                               _%e29683115%_
                                               _%hd29693119%_
                                               _%tl29703122%_
                                               _%e29713125%_
                                               _%hd29723129%_
                                               _%tl29733132%_
                                               _%__splice1858518586%_
                                               _%target30113052%_
                                               _%tl30133055%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29613025%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29613025%_))))))
                          (let () (declare (not safe)) (_%g29613025%_)))))
                  (let () (declare (not safe)) (_%g29613025%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3285%_)
        (let* ((_%g32893313%_
                (lambda (_%g32903309%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32903309%_)))
               (_%g32883396%_
                (lambda (_%g32903317%_)
                  (if (gx#stx-pair? _%g32903317%_)
                      (let ((_%e32933320%_ (gx#syntax-e _%g32903317%_)))
                        (let ((_%hd32943324%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32933320%_)))
                              (_%tl32953327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32933320%_))))
                          (if (gx#stx-pair? _%tl32953327%_)
                              (let ((_%e32963330%_
                                     (gx#syntax-e _%tl32953327%_)))
                                (let ((_%hd32973334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32963330%_)))
                                      (_%tl32983337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32963330%_))))
                                  (if (gx#stx-pair/null? _%tl32983337%_)
                                      (let ((_g20943_
                                             (gx#syntax-split-splice
                                              _%tl32983337%_
                                              '0)))
                                        (begin
                                          (let ((_g20944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20943_)
                                                       (##values-length
                                                        _g20943_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20944_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20944_)))
                                          (let ((_%target32993340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20943_ 0)))
                                                (_%tl33013343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20943_ 1))))
                                            (if (gx#stx-null? _%tl33013343%_)
                                                (letrec ((_%loop33023346%_
                                                          (lambda (_%hd33003350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33063353%_)
                    (if (gx#stx-pair? _%hd33003350%_)
                        (let ((_%e33033355%_ (gx#syntax-e _%hd33003350%_)))
                          (let ((_%lp-hd33043359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33033355%_)))
                                (_%lp-tl33053362%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33033355%_))))
                            (_%loop33023346%_
                             _%lp-tl33053362%_
                             (cons _%lp-hd33043359%_ _%body33063353%_))))
                        (let ((_%body33073365%_ (reverse _%body33063353%_)))
                          ((lambda (_%g32913368%_ _%g32923370%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%g32923370%_
                                               (foldr (lambda (_%g33873390%_
                                                               _%g33883393%_)
                                                        (cons _%g33873390%_
                                                              _%g33883393%_))
                                                      '()
                                                      _%g32913368%_)))))
                           _%body33073365%_
                           _%hd32973334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33023346%_
                                                   _%target32993340%_
                                                   '()))
                                                (_%g32893313%_
                                                 _%g32903317%_)))))
                                      (_%g32893313%_ _%g32903317%_))))
                              (_%g32893313%_ _%g32903317%_))))
                      (_%g32893313%_ _%g32903317%_)))))
          (_%g32883396%_ _%$stx3285%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3401%_)
        (let* ((_%g34053429%_
                (lambda (_%g34063425%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34063425%_)))
               (_%g34043512%_
                (lambda (_%g34063433%_)
                  (if (gx#stx-pair? _%g34063433%_)
                      (let ((_%e34093436%_ (gx#syntax-e _%g34063433%_)))
                        (let ((_%hd34103440%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34093436%_)))
                              (_%tl34113443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34093436%_))))
                          (if (gx#stx-pair? _%tl34113443%_)
                              (let ((_%e34123446%_
                                     (gx#syntax-e _%tl34113443%_)))
                                (let ((_%hd34133450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34123446%_)))
                                      (_%tl34143453%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34123446%_))))
                                  (if (gx#stx-pair/null? _%tl34143453%_)
                                      (let ((_g20945_
                                             (gx#syntax-split-splice
                                              _%tl34143453%_
                                              '0)))
                                        (begin
                                          (let ((_g20946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20945_)
                                                       (##values-length
                                                        _g20945_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20946_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20946_)))
                                          (let ((_%target34153456%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20945_ 0)))
                                                (_%tl34173459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20945_ 1))))
                                            (if (gx#stx-null? _%tl34173459%_)
                                                (letrec ((_%loop34183462%_
                                                          (lambda (_%hd34163466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body34223469%_)
                    (if (gx#stx-pair? _%hd34163466%_)
                        (let ((_%e34193471%_ (gx#syntax-e _%hd34163466%_)))
                          (let ((_%lp-hd34203475%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e34193471%_)))
                                (_%lp-tl34213478%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e34193471%_))))
                            (_%loop34183462%_
                             _%lp-tl34213478%_
                             (cons _%lp-hd34203475%_ _%body34223469%_))))
                        (let ((_%body34233481%_ (reverse _%body34223469%_)))
                          ((lambda (_%g34073484%_ _%g34083486%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%g34083486%_
                                               (foldr (lambda (_%g35033506%_
                                                               _%g35043509%_)
                                                        (cons _%g35033506%_
                                                              _%g35043509%_))
                                                      '()
                                                      _%g34073484%_)))))
                           _%body34233481%_
                           _%hd34133450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34183462%_
                                                   _%target34153456%_
                                                   '()))
                                                (_%g34053429%_
                                                 _%g34063433%_)))))
                                      (_%g34053429%_ _%g34063433%_))))
                              (_%g34053429%_ _%g34063433%_))))
                      (_%g34053429%_ _%g34063433%_)))))
          (_%g34043512%_ _%$stx3401%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3517%_)
        (let* ((_%g35213545%_
                (lambda (_%g35223541%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g35223541%_)))
               (_%g35203628%_
                (lambda (_%g35223549%_)
                  (if (gx#stx-pair? _%g35223549%_)
                      (let ((_%e35253552%_ (gx#syntax-e _%g35223549%_)))
                        (let ((_%hd35263556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e35253552%_)))
                              (_%tl35273559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e35253552%_))))
                          (if (gx#stx-pair? _%tl35273559%_)
                              (let ((_%e35283562%_
                                     (gx#syntax-e _%tl35273559%_)))
                                (let ((_%hd35293566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e35283562%_)))
                                      (_%tl35303569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e35283562%_))))
                                  (if (gx#stx-pair/null? _%tl35303569%_)
                                      (let ((_g20947_
                                             (gx#syntax-split-splice
                                              _%tl35303569%_
                                              '0)))
                                        (begin
                                          (let ((_g20948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20947_)
                                                       (##values-length
                                                        _g20947_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20948_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20948_)))
                                          (let ((_%target35313572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20947_ 0)))
                                                (_%tl35333575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20947_ 1))))
                                            (if (gx#stx-null? _%tl35333575%_)
                                                (letrec ((_%loop35343578%_
                                                          (lambda (_%hd35323582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35383585%_)
                    (if (gx#stx-pair? _%hd35323582%_)
                        (let ((_%e35353587%_ (gx#syntax-e _%hd35323582%_)))
                          (let ((_%lp-hd35363591%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e35353587%_)))
                                (_%lp-tl35373594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e35353587%_))))
                            (_%loop35343578%_
                             _%lp-tl35373594%_
                             (cons _%lp-hd35363591%_ _%body35383585%_))))
                        (let ((_%body35393597%_ (reverse _%body35383585%_)))
                          ((lambda (_%g35233600%_ _%g35243602%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%g35243602%_
                                               (foldr (lambda (_%g36193622%_
                                                               _%g36203625%_)
                                                        (cons _%g36193622%_
                                                              _%g36203625%_))
                                                      '()
                                                      _%g35233600%_)))))
                           _%body35393597%_
                           _%hd35293566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop35343578%_
                                                   _%target35313572%_
                                                   '()))
                                                (_%g35213545%_
                                                 _%g35223549%_)))))
                                      (_%g35213545%_ _%g35223549%_))))
                              (_%g35213545%_ _%g35223549%_))))
                      (_%g35213545%_ _%g35223549%_)))))
          (_%g35203628%_ _%$stx3517%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3633%_)
        (letrec ((_%let-head?3636%_
                  (lambda (_%x4108%_)
                    (let* ((_%__stx1863418635%_ _%x4108%_)
                           (_%g41124123%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1863418635%_))))
                      (let ((_%__kont1863718638%_
                             (lambda (_%g41144151%_)
                               (gx#stx-andmap gx#identifier? _%g41144151%_)))
                            (_%__kont1863918640%_
                             (lambda () (gx#identifier? _%x4108%_))))
                        (if (gx#stx-pair? _%__stx1863418635%_)
                            (let ((_%e41154141%_
                                   (gx#syntax-e _%__stx1863418635%_)))
                              (let ((_%tl41174148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41154141%_)))
                                    (_%hd41164145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41154141%_))))
                                (if (gx#identifier? _%hd41164145%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20949_|
                                         _%hd41164145%_)
                                        (_%__kont1863718638%_ _%tl41174148%_)
                                        (_%__kont1863918640%_))
                                    (_%__kont1863918640%_))))
                            (_%__kont1863918640%_))))))
                 (_%let-head3638%_
                  (lambda (_%x4048%_)
                    (let* ((_%__stx1865418655%_ _%x4048%_)
                           (_%g40524063%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1865418655%_))))
                      (let ((_%__kont1865718658%_
                             (lambda (_%g40544091%_) _%g40544091%_))
                            (_%__kont1865918660%_
                             (lambda () (list _%x4048%_))))
                        (if (gx#stx-pair? _%__stx1865418655%_)
                            (let ((_%e40554081%_
                                   (gx#syntax-e _%__stx1865418655%_)))
                              (let ((_%tl40574088%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40554081%_)))
                                    (_%hd40564085%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40554081%_))))
                                (if (gx#identifier? _%hd40564085%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20950_|
                                         _%hd40564085%_)
                                        (_%__kont1865718658%_ _%tl40574088%_)
                                        (_%__kont1865918660%_))
                                    (_%__kont1865918660%_))))
                            (_%__kont1865918660%_)))))))
          (let* ((_%__stx1867418675%_ _%stx3633%_)
                 (_%g36413707%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1867418675%_))))
            (let ((_%__kont1867718678%_
                   (lambda (_%g36434017%_
                            _%g36444019%_
                            _%g36454020%_
                            _%g36464021%_
                            _%g36474022%_)
                     (cons _%g36474022%_
                           (cons _%g36464021%_
                                 (cons (cons (cons _%g36454020%_
                                                   (cons _%g36444019%_ '()))
                                             '())
                                       _%g36434017%_)))))
                  (_%__kont1867918680%_
                   (lambda (_%g36633822%_
                            _%g36643824%_
                            _%g36653825%_
                            _%g36663826%_)
                     (let* ((_%g38613878%_
                             (lambda (_%g38623874%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38623874%_)))
                            (_%g38603948%_
                             (lambda (_%g38623882%_)
                               (if (gx#stx-pair/null? _%g38623882%_)
                                   (let ((_g20951_
                                          (gx#syntax-split-splice
                                           _%g38623882%_
                                           '0)))
                                     (begin
                                       (let ((_g20952_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20951_)
                                                    (##values-length _g20951_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20952_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20952_)))
                                       (let ((_%target38643885%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20951_ 0)))
                                             (_%tl38663888%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20951_ 1))))
                                         (if (gx#stx-null? _%tl38663888%_)
                                             (letrec ((_%loop38673891%_
                                                       (lambda (_%hd38653895%_
                                                                _%hd-bind38713898%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38653895%_)
                                                             (let ((_%e38683900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38653895%_)))
                       (let ((_%lp-hd38693904%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38683900%_)))
                             (_%lp-tl38703907%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38683900%_))))
                         (_%loop38673891%_
                          _%lp-tl38703907%_
                          (cons _%lp-hd38693904%_ _%hd-bind38713898%_))))
                     (let ((_%hd-bind38723910%_ (reverse _%hd-bind38713898%_)))
                       ((lambda (_%g38633913%_)
                          (cons _%g36663826%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%g36643824%_
                                         _%g38633913%_)
                                        (foldr (lambda (_%g39283934%_
                                                        _%g39293937%_
                                                        _%g39303939%_)
                                                 (cons (cons _%g39293937%_
                                                             (cons _%g39283934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39303939%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%g36643824%_
                                               _%g38633913%_))
                                      (foldr (lambda (_%g39313942%_
                                                      _%g39323945%_)
                                               (cons _%g39313942%_
                                                     _%g39323945%_))
                                             '()
                                             _%g36633822%_))))
                        _%hd-bind38723910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38673891%_
                                                _%target38643885%_
                                                '()))
                                             (_%g38613878%_ _%g38623882%_)))))
                                   (_%g38613878%_ _%g38623882%_)))))
                       (_%g38603948%_
                        (gx#stx-map
                         _%let-head3638%_
                         (foldr (lambda (_%g39513954%_ _%g39523957%_)
                                  (cons _%g39513954%_ _%g39523957%_))
                                '()
                                _%g36653825%_)))))))
              (let* ((_%__match1874318744%_
                      (lambda (_%e36673714%_
                               _%hd36683718%_
                               _%tl36693721%_
                               _%e36703724%_
                               _%hd36713728%_
                               _%tl36723731%_
                               _%e36733734%_
                               _%hd36743738%_
                               _%tl36753741%_
                               _%__splice1868118682%_
                               _%target36763744%_
                               _%tl36783747%_)
                        (letrec ((_%loop36793750%_
                                  (lambda (_%hd36773754%_
                                           _%e36833757%_
                                           _%hd36843758%_)
                                    (if (gx#stx-pair? _%hd36773754%_)
                                        (let ((_%e36803760%_
                                               (gx#syntax-e _%hd36773754%_)))
                                          (let ((_%lp-tl36823767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36803760%_)))
                                                (_%lp-hd36813764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36803760%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36813764%_)
                                                (let ((_%e36873770%_
                                                       (gx#syntax-e
                                                        _%lp-hd36813764%_)))
                                                  (let ((_%tl36893777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36873770%_)))
                                                        (_%hd36883774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36873770%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36893777%_)
                                                        (let ((_%e36903780%_
                                                               (gx#syntax-e
                                                                _%tl36893777%_)))
                                                          (let ((_%tl36923787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36903780%_)))
                        (_%hd36913784%_
                         (let () (declare (not safe)) (##car _%e36903780%_))))
                    (if (gx#stx-null? _%tl36923787%_)
                        (_%loop36793750%_
                         _%lp-tl36823767%_
                         (cons _%hd36913784%_ _%e36833757%_)
                         (cons _%hd36883774%_ _%hd36843758%_))
                        (let () (declare (not safe)) (_%g36413707%_)))))
                (let () (declare (not safe)) (_%g36413707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36413707%_)))))
                                        (let ((_%hd36863792%_
                                               (reverse _%hd36843758%_))
                                              (_%e36853790%_
                                               (reverse _%e36833757%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36753741%_)
                                              (let ((_%__splice1868318684%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl36753741%_
                                                      '0)))
                                                (let ((_%tl36953797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1868318684%_
                                                          '1)))
                                                      (_%target36933794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1868318684%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36953797%_)
                                                      (letrec ((_%loop36963800%_
                                                                (lambda (_%hd36943804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body37003807%_)
                          (if (gx#stx-pair? _%hd36943804%_)
                              (let ((_%e36973809%_
                                     (gx#syntax-e _%hd36943804%_)))
                                (let ((_%lp-tl36993816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36973809%_)))
                                      (_%lp-hd36983813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36973809%_))))
                                  (_%loop36963800%_
                                   _%lp-tl36993816%_
                                   (cons _%lp-hd36983813%_ _%body37003807%_))))
                              (let ((_%body37013819%_
                                     (reverse _%body37003807%_)))
                                (let ((_%g36633822%_ _%body37013819%_)
                                      (_%g36643824%_ _%e36853790%_)
                                      (_%g36653825%_ _%hd36863792%_)
                                      (_%g36663826%_ _%hd36713728%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3636%_
                                       (foldr (lambda (_%g38523855%_
                                                       _%g38533858%_)
                                                (cons _%g38523855%_
                                                      _%g38533858%_))
                                              '()
                                              _%g36653825%_))
                                      (_%__kont1867918680%_
                                       _%g36633822%_
                                       _%g36643824%_
                                       _%g36653825%_
                                       _%g36663826%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36413707%_)))))))))
                (_%loop36963800%_ _%target36933794%_ '()))
              (let () (declare (not safe)) (_%g36413707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36413707%_))))))))
                          (_%loop36793750%_ _%target36763744%_ '() '()))))
                     (_%__match1871718718%_
                      (lambda (_%e36483967%_
                               _%hd36493971%_
                               _%tl36503974%_
                               _%e36513977%_
                               _%hd36523981%_
                               _%tl36533984%_
                               _%e36543987%_
                               _%hd36553991%_
                               _%tl36563994%_
                               _%e36573997%_
                               _%hd36584001%_
                               _%tl36594004%_
                               _%e36604007%_
                               _%hd36614011%_
                               _%tl36624014%_)
                        (let ((_%g36434017%_ _%tl36563994%_)
                              (_%g36444019%_ _%hd36614011%_)
                              (_%g36454020%_ _%hd36584001%_)
                              (_%g36464021%_ _%hd36523981%_)
                              (_%g36474022%_ _%hd36493971%_))
                          (if (_%let-head?3636%_ _%g36454020%_)
                              (_%__kont1867718678%_
                               _%g36434017%_
                               _%g36444019%_
                               _%g36454020%_
                               _%g36464021%_
                               _%g36474022%_)
                              (if (gx#stx-pair/null? _%hd36553991%_)
                                  (let ((_%__splice1868118682%_
                                         (gx#syntax-split-splice->vector
                                          _%hd36553991%_
                                          '0)))
                                    (let ((_%tl36783747%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1868118682%_
                                              '1)))
                                          (_%target36763744%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1868118682%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36783747%_)
                                          (_%__match1874318744%_
                                           _%e36483967%_
                                           _%hd36493971%_
                                           _%tl36503974%_
                                           _%e36513977%_
                                           _%hd36523981%_
                                           _%tl36533984%_
                                           _%e36543987%_
                                           _%hd36553991%_
                                           _%tl36563994%_
                                           _%__splice1868118682%_
                                           _%target36763744%_
                                           _%tl36783747%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36413707%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36413707%_))))))))
                (if (gx#stx-pair? _%__stx1867418675%_)
                    (let ((_%e36483967%_ (gx#syntax-e _%__stx1867418675%_)))
                      (let ((_%tl36503974%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36483967%_)))
                            (_%hd36493971%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36483967%_))))
                        (if (gx#stx-pair? _%tl36503974%_)
                            (let ((_%e36513977%_ (gx#syntax-e _%tl36503974%_)))
                              (let ((_%tl36533984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36513977%_)))
                                    (_%hd36523981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36513977%_))))
                                (if (gx#stx-pair? _%tl36533984%_)
                                    (let ((_%e36543987%_
                                           (gx#syntax-e _%tl36533984%_)))
                                      (let ((_%tl36563994%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36543987%_)))
                                            (_%hd36553991%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36543987%_))))
                                        (if (gx#stx-pair? _%hd36553991%_)
                                            (let ((_%e36573997%_
                                                   (gx#syntax-e
                                                    _%hd36553991%_)))
                                              (let ((_%tl36594004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36573997%_)))
                                                    (_%hd36584001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36573997%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36594004%_)
                                                    (let ((_%e36604007%_
                                                           (gx#syntax-e
                                                            _%tl36594004%_)))
                                                      (let ((_%tl36624014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36604007%_)))
                    (_%hd36614011%_
                     (let () (declare (not safe)) (##car _%e36604007%_))))
                (if (gx#stx-null? _%tl36624014%_)
                    (_%__match1871718718%_
                     _%e36483967%_
                     _%hd36493971%_
                     _%tl36503974%_
                     _%e36513977%_
                     _%hd36523981%_
                     _%tl36533984%_
                     _%e36543987%_
                     _%hd36553991%_
                     _%tl36563994%_
                     _%e36573997%_
                     _%hd36584001%_
                     _%tl36594004%_
                     _%e36604007%_
                     _%hd36614011%_
                     _%tl36624014%_)
                    (if (gx#stx-pair/null? _%hd36553991%_)
                        (let ((_%__splice1868118682%_
                               (gx#syntax-split-splice->vector
                                _%hd36553991%_
                                '0)))
                          (let ((_%tl36783747%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1868118682%_ '1)))
                                (_%target36763744%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1868118682%_ '0))))
                            (if (gx#stx-null? _%tl36783747%_)
                                (_%__match1874318744%_
                                 _%e36483967%_
                                 _%hd36493971%_
                                 _%tl36503974%_
                                 _%e36513977%_
                                 _%hd36523981%_
                                 _%tl36533984%_
                                 _%e36543987%_
                                 _%hd36553991%_
                                 _%tl36563994%_
                                 _%__splice1868118682%_
                                 _%target36763744%_
                                 _%tl36783747%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36413707%_)))))
                        (let () (declare (not safe)) (_%g36413707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36553991%_)
                                                        (let ((_%__splice1868118682%_
                                                               (gx#syntax-split-splice->vector
                                                                _%hd36553991%_
                                                                '0)))
                                                          (let ((_%tl36783747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1868118682%_ '1)))
                        (_%target36763744%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1868118682%_ '0))))
                    (if (gx#stx-null? _%tl36783747%_)
                        (_%__match1874318744%_
                         _%e36483967%_
                         _%hd36493971%_
                         _%tl36503974%_
                         _%e36513977%_
                         _%hd36523981%_
                         _%tl36533984%_
                         _%e36543987%_
                         _%hd36553991%_
                         _%tl36563994%_
                         _%__splice1868118682%_
                         _%target36763744%_
                         _%tl36783747%_)
                        (let () (declare (not safe)) (_%g36413707%_)))))
                (let () (declare (not safe)) (_%g36413707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36553991%_)
                                                (let ((_%__splice1868118682%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd36553991%_
                                                        '0)))
                                                  (let ((_%tl36783747%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1868118682%_
                                                            '1)))
                                                        (_%target36763744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1868118682%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36783747%_)
                                                        (_%__match1874318744%_
                                                         _%e36483967%_
                                                         _%hd36493971%_
                                                         _%tl36503974%_
                                                         _%e36513977%_
                                                         _%hd36523981%_
                                                         _%tl36533984%_
                                                         _%e36543987%_
                                                         _%hd36553991%_
                                                         _%tl36563994%_
                                                         _%__splice1868118682%_
                                                         _%target36763744%_
                                                         _%tl36783747%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36413707%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36413707%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36413707%_)))))
                            (let () (declare (not safe)) (_%g36413707%_)))))
                    (let () (declare (not safe)) (_%g36413707%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4171%_)
        (let* ((_%__stx1874618747%_ _%$stx4171%_)
               (_%g41774203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1874618747%_))))
          (let ((_%__kont1874918750%_ (lambda () '#t))
                (_%__kont1875118752%_ (lambda (_%g41824275%_) _%g41824275%_))
                (_%__kont1875318754%_
                 (lambda (_%g41894230%_ _%g41904232%_ _%g41914233%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g41904232%_
                               (cons (cons _%g41914233%_ _%g41894230%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1874618747%_)
                (let ((_%e41794295%_ (gx#syntax-e _%__stx1874618747%_)))
                  (let ((_%tl41814302%_
                         (let () (declare (not safe)) (##cdr _%e41794295%_)))
                        (_%hd41804299%_
                         (let () (declare (not safe)) (##car _%e41794295%_))))
                    (if (gx#stx-null? _%tl41814302%_)
                        (_%__kont1874918750%_)
                        (if (gx#stx-pair? _%tl41814302%_)
                            (let ((_%e41864265%_ (gx#syntax-e _%tl41814302%_)))
                              (let ((_%tl41884272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41864265%_)))
                                    (_%hd41874269%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41864265%_))))
                                (if (gx#stx-null? _%tl41884272%_)
                                    (_%__kont1875118752%_ _%hd41874269%_)
                                    (_%__kont1875318754%_
                                     _%tl41884272%_
                                     _%hd41874269%_
                                     _%hd41804299%_))))
                            (let () (declare (not safe)) (_%g41774203%_))))))
                (let () (declare (not safe)) (_%g41774203%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4313%_)
        (let* ((_%__stx1879218793%_ _%$stx4313%_)
               (_%g43194345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1879218793%_))))
          (let ((_%__kont1879518796%_ (lambda () '#f))
                (_%__kont1879718798%_ (lambda (_%g43244417%_) _%g43244417%_))
                (_%__kont1879918800%_
                 (lambda (_%g43314372%_ _%g43324374%_ _%g43334375%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g43324374%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g43334375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g43314372%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1879218793%_)
                (let ((_%e43214437%_ (gx#syntax-e _%__stx1879218793%_)))
                  (let ((_%tl43234444%_
                         (let () (declare (not safe)) (##cdr _%e43214437%_)))
                        (_%hd43224441%_
                         (let () (declare (not safe)) (##car _%e43214437%_))))
                    (if (gx#stx-null? _%tl43234444%_)
                        (_%__kont1879518796%_)
                        (if (gx#stx-pair? _%tl43234444%_)
                            (let ((_%e43284407%_ (gx#syntax-e _%tl43234444%_)))
                              (let ((_%tl43304414%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43284407%_)))
                                    (_%hd43294411%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43284407%_))))
                                (if (gx#stx-null? _%tl43304414%_)
                                    (_%__kont1879718798%_ _%hd43294411%_)
                                    (_%__kont1879918800%_
                                     _%tl43304414%_
                                     _%hd43294411%_
                                     _%hd43224441%_))))
                            (let () (declare (not safe)) (_%g43194345%_))))))
                (let () (declare (not safe)) (_%g43194345%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4455%_)
        (let* ((_%__stx1883818839%_ _%$stx4455%_)
               (_%g44644555%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1883818839%_))))
          (let ((_%__kont1884118842%_ (lambda () '#!void))
                (_%__kont1884318844%_
                 (lambda (_%g44694898%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g49174920%_ _%g49184923%_)
                                        (cons _%g49174920%_ _%g49184923%_))
                                      '()
                                      _%g44694898%_)))))
                (_%__kont1884718848%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1884918850%_
                 (lambda (_%g44974773%_ _%g44984775%_ _%g44994776%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g44984775%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%g44994776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g44974773%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1885118852%_
                 (lambda (_%g45094711%_
                          _%g45104713%_
                          _%g45114714%_
                          _%g45124715%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%g45114714%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%g45104713%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%g45124715%_ _%g45094711%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1885318854%_
                 (lambda (_%g45284620%_
                          _%g45294622%_
                          _%g45304623%_
                          _%g45314624%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%g45304623%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46454648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46464651%_)
                  (cons _%g46454648%_ _%g46464651%_))
                '()
                _%g45294622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g45314624%_ _%g45284620%_)
                                           '())))))))
            (let* ((_%__match1899919000%_
                    (lambda (_%e45324562%_
                             _%hd45334566%_
                             _%tl45344569%_
                             _%e45354572%_
                             _%hd45364576%_
                             _%tl45374579%_
                             _%e45384582%_
                             _%hd45394586%_
                             _%tl45404589%_
                             _%__splice1885518856%_
                             _%target45414592%_
                             _%tl45434595%_)
                      (letrec ((_%loop45444598%_
                                (lambda (_%hd45424602%_ _%body45484605%_)
                                  (if (gx#stx-pair? _%hd45424602%_)
                                      (let ((_%e45454607%_
                                             (gx#syntax-e _%hd45424602%_)))
                                        (let ((_%lp-tl45474614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45454607%_)))
                                              (_%lp-hd45464611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45454607%_))))
                                          (_%loop45444598%_
                                           _%lp-tl45474614%_
                                           (cons _%lp-hd45464611%_
                                                 _%body45484605%_))))
                                      (let ((_%body45494617%_
                                             (reverse _%body45484605%_)))
                                        (_%__kont1885318854%_
                                         _%tl45374579%_
                                         _%body45494617%_
                                         _%hd45394586%_
                                         _%hd45334566%_))))))
                        (_%loop45444598%_ _%target45414592%_ '()))))
                   (_%__match1889518896%_
                    (lambda (_%e44704840%_
                             _%hd44714844%_
                             _%tl44724847%_
                             _%e44734850%_
                             _%hd44744854%_
                             _%tl44754857%_
                             _%e44764860%_
                             _%hd44774864%_
                             _%tl44784867%_
                             _%__splice1884518846%_
                             _%target44794870%_
                             _%tl44814873%_)
                      (letrec ((_%loop44824876%_
                                (lambda (_%hd44804880%_ _%body44864883%_)
                                  (if (gx#stx-pair? _%hd44804880%_)
                                      (let ((_%e44834885%_
                                             (gx#syntax-e _%hd44804880%_)))
                                        (let ((_%lp-tl44854892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44834885%_)))
                                              (_%lp-hd44844889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44834885%_))))
                                          (_%loop44824876%_
                                           _%lp-tl44854892%_
                                           (cons _%lp-hd44844889%_
                                                 _%body44864883%_))))
                                      (let ((_%body44874895%_
                                             (reverse _%body44864883%_)))
                                        (if (gx#stx-null? _%tl44754857%_)
                                            (_%__kont1884318844%_
                                             _%body44874895%_)
                                            (_%__kont1884718848%_)))))))
                        (_%loop44824876%_ _%target44794870%_ '())))))
              (if (gx#stx-pair? _%__stx1883818839%_)
                  (let ((_%e44664933%_ (gx#syntax-e _%__stx1883818839%_)))
                    (let ((_%tl44684940%_
                           (let () (declare (not safe)) (##cdr _%e44664933%_)))
                          (_%hd44674937%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44664933%_))))
                      (if (gx#stx-null? _%tl44684940%_)
                          (_%__kont1884118842%_)
                          (if (gx#stx-pair? _%tl44684940%_)
                              (let ((_%e44734850%_
                                     (gx#syntax-e _%tl44684940%_)))
                                (let ((_%tl44754857%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44734850%_)))
                                      (_%hd44744854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44734850%_))))
                                  (if (gx#stx-pair? _%hd44744854%_)
                                      (let ((_%e44764860%_
                                             (gx#syntax-e _%hd44744854%_)))
                                        (let ((_%tl44784867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44764860%_)))
                                              (_%hd44774864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44764860%_))))
                                          (if (gx#identifier? _%hd44774864%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20953_|
                                                   _%hd44774864%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44784867%_)
                                                      (let ((_%__splice1884518846%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl44784867%_
                                                              '0)))
                                                        (let ((_%tl44814873%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1884518846%_ '1)))
                      (_%target44794870%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1884518846%_ '0))))
                  (if (gx#stx-null? _%tl44814873%_)
                      (_%__match1889518896%_
                       _%e44664933%_
                       _%hd44674937%_
                       _%tl44684940%_
                       _%e44734850%_
                       _%hd44744854%_
                       _%tl44754857%_
                       _%e44764860%_
                       _%hd44774864%_
                       _%tl44784867%_
                       _%__splice1884518846%_
                       _%target44794870%_
                       _%tl44814873%_)
                      (_%__kont1884718848%_))))
              (_%__kont1884718848%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44784867%_)
                                                      (_%__kont1884918850%_
                                                       _%tl44754857%_
                                                       _%hd44774864%_
                                                       _%hd44674937%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44784867%_)
                                                          (let ((_%e45224691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44784867%_)))
                    (let ((_%tl45244698%_
                           (let () (declare (not safe)) (##cdr _%e45224691%_)))
                          (_%hd45234695%_
                           (let ()
                             (declare (not safe))
                             (##car _%e45224691%_))))
                      (if (gx#identifier? _%hd45234695%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20954_|
                               _%hd45234695%_)
                              (if (gx#stx-pair? _%tl45244698%_)
                                  (let ((_%e45254701%_
                                         (gx#syntax-e _%tl45244698%_)))
                                    (let ((_%tl45274708%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e45254701%_)))
                                          (_%hd45264705%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e45254701%_))))
                                      (if (gx#stx-null? _%tl45274708%_)
                                          (_%__kont1885118852%_
                                           _%tl44754857%_
                                           _%hd45264705%_
                                           _%hd44774864%_
                                           _%hd44674937%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44784867%_)
                                              (let ((_%__splice1885518856%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl44784867%_
                                                      '0)))
                                                (let ((_%tl45434595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1885518856%_
                                                          '1)))
                                                      (_%target45414592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1885518856%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45434595%_)
                                                      (_%__match1899919000%_
                                                       _%e44664933%_
                                                       _%hd44674937%_
                                                       _%tl44684940%_
                                                       _%e44734850%_
                                                       _%hd44744854%_
                                                       _%tl44754857%_
                                                       _%e44764860%_
                                                       _%hd44774864%_
                                                       _%tl44784867%_
                                                       _%__splice1885518856%_
                                                       _%target45414592%_
                                                       _%tl45434595%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44644555%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44644555%_))))))
                                  (if (gx#stx-pair/null? _%tl44784867%_)
                                      (let ((_%__splice1885518856%_
                                             (gx#syntax-split-splice->vector
                                              _%tl44784867%_
                                              '0)))
                                        (let ((_%tl45434595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1885518856%_
                                                  '1)))
                                              (_%target45414592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1885518856%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45434595%_)
                                              (_%__match1899919000%_
                                               _%e44664933%_
                                               _%hd44674937%_
                                               _%tl44684940%_
                                               _%e44734850%_
                                               _%hd44744854%_
                                               _%tl44754857%_
                                               _%e44764860%_
                                               _%hd44774864%_
                                               _%tl44784867%_
                                               _%__splice1885518856%_
                                               _%target45414592%_
                                               _%tl45434595%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44644555%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44644555%_))))
                              (if (gx#stx-pair/null? _%tl44784867%_)
                                  (let ((_%__splice1885518856%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44784867%_
                                          '0)))
                                    (let ((_%tl45434595%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885518856%_
                                              '1)))
                                          (_%target45414592%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885518856%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45434595%_)
                                          (_%__match1899919000%_
                                           _%e44664933%_
                                           _%hd44674937%_
                                           _%tl44684940%_
                                           _%e44734850%_
                                           _%hd44744854%_
                                           _%tl44754857%_
                                           _%e44764860%_
                                           _%hd44774864%_
                                           _%tl44784867%_
                                           _%__splice1885518856%_
                                           _%target45414592%_
                                           _%tl45434595%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44644555%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44644555%_))))
                          (if (gx#stx-pair/null? _%tl44784867%_)
                              (let ((_%__splice1885518856%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44784867%_
                                      '0)))
                                (let ((_%tl45434595%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885518856%_
                                          '1)))
                                      (_%target45414592%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885518856%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45434595%_)
                                      (_%__match1899919000%_
                                       _%e44664933%_
                                       _%hd44674937%_
                                       _%tl44684940%_
                                       _%e44734850%_
                                       _%hd44744854%_
                                       _%tl44754857%_
                                       _%e44764860%_
                                       _%hd44774864%_
                                       _%tl44784867%_
                                       _%__splice1885518856%_
                                       _%target45414592%_
                                       _%tl45434595%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44644555%_)))))
                              (let () (declare (not safe)) (_%g44644555%_))))))
                  (if (gx#stx-pair/null? _%tl44784867%_)
                      (let ((_%__splice1885518856%_
                             (gx#syntax-split-splice->vector
                              _%tl44784867%_
                              '0)))
                        (let ((_%tl45434595%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1885518856%_ '1)))
                              (_%target45414592%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1885518856%_ '0))))
                          (if (gx#stx-null? _%tl45434595%_)
                              (_%__match1899919000%_
                               _%e44664933%_
                               _%hd44674937%_
                               _%tl44684940%_
                               _%e44734850%_
                               _%hd44744854%_
                               _%tl44754857%_
                               _%e44764860%_
                               _%hd44774864%_
                               _%tl44784867%_
                               _%__splice1885518856%_
                               _%target45414592%_
                               _%tl45434595%_)
                              (let () (declare (not safe)) (_%g44644555%_)))))
                      (let () (declare (not safe)) (_%g44644555%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44784867%_)
                                                  (_%__kont1884918850%_
                                                   _%tl44754857%_
                                                   _%hd44774864%_
                                                   _%hd44674937%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44784867%_)
                                                      (let ((_%e45224691%_
                                                             (gx#syntax-e
                                                              _%tl44784867%_)))
                                                        (let ((_%tl45244698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e45224691%_)))
                      (_%hd45234695%_
                       (let () (declare (not safe)) (##car _%e45224691%_))))
                  (if (gx#identifier? _%hd45234695%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20954_|
                           _%hd45234695%_)
                          (if (gx#stx-pair? _%tl45244698%_)
                              (let ((_%e45254701%_
                                     (gx#syntax-e _%tl45244698%_)))
                                (let ((_%tl45274708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45254701%_)))
                                      (_%hd45264705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45254701%_))))
                                  (if (gx#stx-null? _%tl45274708%_)
                                      (_%__kont1885118852%_
                                       _%tl44754857%_
                                       _%hd45264705%_
                                       _%hd44774864%_
                                       _%hd44674937%_)
                                      (if (gx#stx-pair/null? _%tl44784867%_)
                                          (let ((_%__splice1885518856%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl44784867%_
                                                  '0)))
                                            (let ((_%tl45434595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1885518856%_
                                                      '1)))
                                                  (_%target45414592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1885518856%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45434595%_)
                                                  (_%__match1899919000%_
                                                   _%e44664933%_
                                                   _%hd44674937%_
                                                   _%tl44684940%_
                                                   _%e44734850%_
                                                   _%hd44744854%_
                                                   _%tl44754857%_
                                                   _%e44764860%_
                                                   _%hd44774864%_
                                                   _%tl44784867%_
                                                   _%__splice1885518856%_
                                                   _%target45414592%_
                                                   _%tl45434595%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44644555%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44644555%_))))))
                              (if (gx#stx-pair/null? _%tl44784867%_)
                                  (let ((_%__splice1885518856%_
                                         (gx#syntax-split-splice->vector
                                          _%tl44784867%_
                                          '0)))
                                    (let ((_%tl45434595%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885518856%_
                                              '1)))
                                          (_%target45414592%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1885518856%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45434595%_)
                                          (_%__match1899919000%_
                                           _%e44664933%_
                                           _%hd44674937%_
                                           _%tl44684940%_
                                           _%e44734850%_
                                           _%hd44744854%_
                                           _%tl44754857%_
                                           _%e44764860%_
                                           _%hd44774864%_
                                           _%tl44784867%_
                                           _%__splice1885518856%_
                                           _%target45414592%_
                                           _%tl45434595%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44644555%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44644555%_))))
                          (if (gx#stx-pair/null? _%tl44784867%_)
                              (let ((_%__splice1885518856%_
                                     (gx#syntax-split-splice->vector
                                      _%tl44784867%_
                                      '0)))
                                (let ((_%tl45434595%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885518856%_
                                          '1)))
                                      (_%target45414592%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1885518856%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45434595%_)
                                      (_%__match1899919000%_
                                       _%e44664933%_
                                       _%hd44674937%_
                                       _%tl44684940%_
                                       _%e44734850%_
                                       _%hd44744854%_
                                       _%tl44754857%_
                                       _%e44764860%_
                                       _%hd44774864%_
                                       _%tl44784867%_
                                       _%__splice1885518856%_
                                       _%target45414592%_
                                       _%tl45434595%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44644555%_)))))
                              (let () (declare (not safe)) (_%g44644555%_))))
                      (if (gx#stx-pair/null? _%tl44784867%_)
                          (let ((_%__splice1885518856%_
                                 (gx#syntax-split-splice->vector
                                  _%tl44784867%_
                                  '0)))
                            (let ((_%tl45434595%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1885518856%_ '1)))
                                  (_%target45414592%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1885518856%_
                                      '0))))
                              (if (gx#stx-null? _%tl45434595%_)
                                  (_%__match1899919000%_
                                   _%e44664933%_
                                   _%hd44674937%_
                                   _%tl44684940%_
                                   _%e44734850%_
                                   _%hd44744854%_
                                   _%tl44754857%_
                                   _%e44764860%_
                                   _%hd44774864%_
                                   _%tl44784867%_
                                   _%__splice1885518856%_
                                   _%target45414592%_
                                   _%tl45434595%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44644555%_)))))
                          (let () (declare (not safe)) (_%g44644555%_))))))
              (if (gx#stx-pair/null? _%tl44784867%_)
                  (let ((_%__splice1885518856%_
                         (gx#syntax-split-splice->vector _%tl44784867%_ '0)))
                    (let ((_%tl45434595%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1885518856%_ '1)))
                          (_%target45414592%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1885518856%_ '0))))
                      (if (gx#stx-null? _%tl45434595%_)
                          (_%__match1899919000%_
                           _%e44664933%_
                           _%hd44674937%_
                           _%tl44684940%_
                           _%e44734850%_
                           _%hd44744854%_
                           _%tl44754857%_
                           _%e44764860%_
                           _%hd44774864%_
                           _%tl44784867%_
                           _%__splice1885518856%_
                           _%target45414592%_
                           _%tl45434595%_)
                          (let () (declare (not safe)) (_%g44644555%_)))))
                  (let () (declare (not safe)) (_%g44644555%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44644555%_)))))
                              (let () (declare (not safe)) (_%g44644555%_))))))
                  (let () (declare (not safe)) (_%g44644555%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4953%_)
        (let* ((_%g49574985%_
                (lambda (_%g49584981%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49584981%_)))
               (_%g49565082%_
                (lambda (_%g49584989%_)
                  (if (gx#stx-pair? _%g49584989%_)
                      (let ((_%e49624992%_ (gx#syntax-e _%g49584989%_)))
                        (let ((_%hd49634996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49624992%_)))
                              (_%tl49644999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49624992%_))))
                          (if (gx#stx-pair? _%tl49644999%_)
                              (let ((_%e49655002%_
                                     (gx#syntax-e _%tl49644999%_)))
                                (let ((_%hd49665006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49655002%_)))
                                      (_%tl49675009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49655002%_))))
                                  (if (gx#stx-pair? _%tl49675009%_)
                                      (let ((_%e49685012%_
                                             (gx#syntax-e _%tl49675009%_)))
                                        (let ((_%hd49695016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e49685012%_)))
                                              (_%tl49705019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e49685012%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl49705019%_)
                                              (let ((_g20955_
                                                     (gx#syntax-split-splice
                                                      _%tl49705019%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20956_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20955_)
                                                               (##values-length
                                                                _g20955_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20956_ 2)))
                (error "Context expects 2 values" _g20956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target49715022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20955_
                                                            0)))
                                                        (_%tl49735025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20955_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl49735025%_)
                                                        (letrec ((_%loop49745028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd49725032%_ _%rest49785035%_)
                            (if (gx#stx-pair? _%hd49725032%_)
                                (let ((_%e49755037%_
                                       (gx#syntax-e _%hd49725032%_)))
                                  (let ((_%lp-hd49765041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e49755037%_)))
                                        (_%lp-tl49775044%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e49755037%_))))
                                    (_%loop49745028%_
                                     _%lp-tl49775044%_
                                     (cons _%lp-hd49765041%_
                                           _%rest49785035%_))))
                                (let ((_%rest49795047%_
                                       (reverse _%rest49785035%_)))
                                  ((lambda (_%g49595050%_
                                            _%g49605052%_
                                            _%g49615053%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g49615053%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (cons _%g49605052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g50735076%_ _%g50745079%_)
                                    (cons _%g50735076%_ _%g50745079%_))
                                  '()
                                  _%g49595050%_)))
               (cons '#!void '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest49795047%_
                                   _%hd49695016%_
                                   _%hd49665006%_))))))
                  (_%loop49745028%_ _%target49715022%_ '()))
                (_%g49574985%_ _%g49584989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g49574985%_ _%g49584989%_))))
                                      (_%g49574985%_ _%g49584989%_))))
                              (_%g49574985%_ _%g49584989%_))))
                      (_%g49574985%_ _%g49584989%_)))))
          (_%g49565082%_ _%$stx4953%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5087%_)
        (let* ((_%g50915119%_
                (lambda (_%g50925115%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50925115%_)))
               (_%g50905216%_
                (lambda (_%g50925123%_)
                  (if (gx#stx-pair? _%g50925123%_)
                      (let ((_%e50965126%_ (gx#syntax-e _%g50925123%_)))
                        (let ((_%hd50975130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50965126%_)))
                              (_%tl50985133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50965126%_))))
                          (if (gx#stx-pair? _%tl50985133%_)
                              (let ((_%e50995136%_
                                     (gx#syntax-e _%tl50985133%_)))
                                (let ((_%hd51005140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50995136%_)))
                                      (_%tl51015143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50995136%_))))
                                  (if (gx#stx-pair? _%tl51015143%_)
                                      (let ((_%e51025146%_
                                             (gx#syntax-e _%tl51015143%_)))
                                        (let ((_%hd51035150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e51025146%_)))
                                              (_%tl51045153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e51025146%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl51045153%_)
                                              (let ((_g20957_
                                                     (gx#syntax-split-splice
                                                      _%tl51045153%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20957_)
                                                               (##values-length
                                                                _g20957_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20958_ 2)))
                (error "Context expects 2 values" _g20958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target51055156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20957_
                                                            0)))
                                                        (_%tl51075159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g20957_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl51075159%_)
                                                        (letrec ((_%loop51085162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd51065166%_ _%rest51125169%_)
                            (if (gx#stx-pair? _%hd51065166%_)
                                (let ((_%e51095171%_
                                       (gx#syntax-e _%hd51065166%_)))
                                  (let ((_%lp-hd51105175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e51095171%_)))
                                        (_%lp-tl51115178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e51095171%_))))
                                    (_%loop51085162%_
                                     _%lp-tl51115178%_
                                     (cons _%lp-hd51105175%_
                                           _%rest51125169%_))))
                                (let ((_%rest51135181%_
                                       (reverse _%rest51125169%_)))
                                  ((lambda (_%g50935184%_
                                            _%g50945186%_
                                            _%g50955187%_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _%g50955187%_
                                                 (cons '#!void
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _%g50945186%_
                                 (foldr (lambda (_%g52075210%_ _%g52085213%_)
                                          (cons _%g52075210%_ _%g52085213%_))
                                        '()
                                        _%g50935184%_)))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest51135181%_
                                   _%hd51035150%_
                                   _%hd51005140%_))))))
                  (_%loop51085162%_ _%target51055156%_ '()))
                (_%g50915119%_ _%g50925123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g50915119%_ _%g50925123%_))))
                                      (_%g50915119%_ _%g50925123%_))))
                              (_%g50915119%_ _%g50925123%_))))
                      (_%g50915119%_ _%g50925123%_)))))
          (_%g50905216%_ _%$stx5087%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5221%_)
        (let* ((_%g52245248%_
                (lambda (_%g52255244%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52255244%_)))
               (_%g52235331%_
                (lambda (_%g52255252%_)
                  (if (gx#stx-pair? _%g52255252%_)
                      (let ((_%e52285255%_ (gx#syntax-e _%g52255252%_)))
                        (let ((_%hd52295259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52285255%_)))
                              (_%tl52305262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52285255%_))))
                          (if (gx#stx-pair? _%tl52305262%_)
                              (let ((_%e52315265%_
                                     (gx#syntax-e _%tl52305262%_)))
                                (let ((_%hd52325269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52315265%_)))
                                      (_%tl52335272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52315265%_))))
                                  (if (gx#stx-pair/null? _%tl52335272%_)
                                      (let ((_g20959_
                                             (gx#syntax-split-splice
                                              _%tl52335272%_
                                              '0)))
                                        (begin
                                          (let ((_g20960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20959_)
                                                       (##values-length
                                                        _g20959_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20960_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20960_)))
                                          (let ((_%target52345275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20959_ 0)))
                                                (_%tl52365278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20959_ 1))))
                                            (if (gx#stx-null? _%tl52365278%_)
                                                (letrec ((_%loop52375281%_
                                                          (lambda (_%hd52355285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail52415288%_)
                    (if (gx#stx-pair? _%hd52355285%_)
                        (let ((_%e52385290%_ (gx#syntax-e _%hd52355285%_)))
                          (let ((_%lp-hd52395294%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e52385290%_)))
                                (_%lp-tl52405297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e52385290%_))))
                            (_%loop52375281%_
                             _%lp-tl52405297%_
                             (cons _%lp-hd52395294%_ _%detail52415288%_))))
                        (let ((_%detail52425300%_
                               (reverse _%detail52415288%_)))
                          ((lambda (_%g52265303%_ _%g52275305%_)
                             (if (gx#stx-string? _%g52275305%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%g52275305%_)
                                        _%stx5221%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g53225325%_
                                                         _%g53235328%_)
                                                  (cons _%g53225325%_
                                                        _%g53235328%_))
                                                '()
                                                _%g52265303%_)))
                                 (_%g52245248%_ _%g52255252%_)))
                           _%detail52425300%_
                           _%hd52325269%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop52375281%_
                                                   _%target52345275%_
                                                   '()))
                                                (_%g52245248%_
                                                 _%g52255252%_)))))
                                      (_%g52245248%_ _%g52255252%_))))
                              (_%g52245248%_ _%g52255252%_))))
                      (_%g52245248%_ _%g52255252%_)))))
          (_%g52235331%_ _%stx5221%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5336%_)
        (let* ((_%g53405354%_
                (lambda (_%g53415350%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g53415350%_)))
               (_%g53395395%_
                (lambda (_%g53415358%_)
                  (if (gx#stx-pair? _%g53415358%_)
                      (let ((_%e53435361%_ (gx#syntax-e _%g53415358%_)))
                        (let ((_%hd53445365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e53435361%_)))
                              (_%tl53455368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e53435361%_))))
                          (if (gx#stx-pair? _%tl53455368%_)
                              (let ((_%e53465371%_
                                     (gx#syntax-e _%tl53455368%_)))
                                (let ((_%hd53475375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e53465371%_)))
                                      (_%tl53485378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e53465371%_))))
                                  (if (gx#stx-null? _%tl53485378%_)
                                      ((lambda (_%g53425381%_)
                                         (cons (gx#datum->syntax '#f 'eq?)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'current-compilation-target)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g53425381%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd53475375%_)
                                      (_%g53405354%_ _%g53415358%_))))
                              (_%g53405354%_ _%g53415358%_))))
                      (_%g53405354%_ _%g53415358%_)))))
          (_%g53395395%_ _%$stx5336%_))))))
