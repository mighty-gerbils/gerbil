(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g21864_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g21865_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g21868_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g21869_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1989%_)
        (let* ((_%$%g19932021%_
                (lambda (_%$%g19942017%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g19942017%_)))
               (_%$%g19922120%_
                (lambda (_%$%g19942025%_)
                  (if (gx#stx-pair? _%$%g19942025%_)
                      (let ((_%$%e19982028%_ (gx#syntax-e _%$%g19942025%_)))
                        (let ((_%$%hd19992032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e19982028%_)))
                              (_%$%tl20002035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e19982028%_))))
                          (if (gx#stx-pair? _%$%tl20002035%_)
                              (let ((_%$%e20012038%_
                                     (gx#syntax-e _%$%tl20002035%_)))
                                (let ((_%$%hd20022042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e20012038%_)))
                                      (_%$%tl20032045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e20012038%_))))
                                  (if (gx#stx-pair? _%$%tl20032045%_)
                                      (let ((_%$%e20042048%_
                                             (gx#syntax-e _%$%tl20032045%_)))
                                        (let ((_%$%hd20052052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e20042048%_)))
                                              (_%$%tl20062055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e20042048%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl20062055%_)
                                              (let ((_g21856_
                                                     (gx#syntax-split-splice
                                                      _%$%tl20062055%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21856_)
                                                               (##values-length
                                                                _g21856_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21857_ 2)))
                (error "Context expects 2 values" _g21857_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target20072058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21856_
                                                            0)))
                                                        (_%$%tl20092061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21856_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl20092061%_)
                                                        (letrec ((_%$%loop20102064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd20082068%_ _%$%clauses20142071%_)
                            (if (gx#stx-pair? _%$%hd20082068%_)
                                (let ((_%$%e20112073%_
                                       (gx#syntax-e _%$%hd20082068%_)))
                                  (let ((_%$%lp-hd20122077%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e20112073%_)))
                                        (_%$%lp-tl20132080%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e20112073%_))))
                                    (_%$%loop20102064%_
                                     _%$%lp-tl20132080%_
                                     (cons _%$%lp-hd20122077%_
                                           _%$%clauses20142071%_))))
                                (let ((_%$%clauses20152083%_
                                       (reverse _%$%clauses20142071%_)))
                                  (if (gx#identifier? _%$%hd20022042%_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'define-syntax)
                                            (cons _%$%hd20022042%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              (cons _%$%hd20052052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_%$%g21112114%_ _%$%g21122117%_)
                                     (cons _%$%g21112114%_ _%$%g21122117%_))
                                   '()
                                   _%$%clauses20152083%_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g19932021%_ _%$%g19942025%_)))))))
                  (_%$%loop20102064%_ _%$%target20072058%_ '()))
                (_%$%g19932021%_ _%$%g19942025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g19932021%_
                                               _%$%g19942025%_))))
                                      (_%$%g19932021%_ _%$%g19942025%_))))
                              (_%$%g19932021%_ _%$%g19942025%_))))
                      (_%$%g19932021%_ _%$%g19942025%_)))))
          (_%$%g19922120%_ _%$stx1989%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2125%_)
        (let* ((_%__stx1906819069%_ _%$stx2125%_)
               (_%$%g21302171%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1906819069%_))))
          (let ((_%__kont1907119072%_
                 (lambda (_%$%g21322301%_ _%$%g21332303%_ _%$%g21342304%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%$%g21342304%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%$%g21332303%_)
                     (cons _%$%g21322301%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1907319074%_
                 (lambda (_%$%g21472228%_
                          _%$%g21482230%_
                          _%$%g21492231%_
                          _%$%g21502232%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%$%g21502232%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%$%g21492231%_)
                     (cons _%$%g21482230%_ (cons _%$%g21472228%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1913319134%_
                    (lambda (_%$%e21512178%_
                             _%$%hd21522182%_
                             _%$%tl21532185%_
                             _%$%e21542188%_
                             _%$%hd21552192%_
                             _%$%tl21562195%_
                             _%$%e21572198%_
                             _%$%hd21582202%_
                             _%$%tl21592205%_
                             _%$%e21602208%_
                             _%$%hd21612212%_
                             _%$%tl21622215%_
                             _%$%e21632218%_
                             _%$%hd21642222%_
                             _%$%tl21652225%_)
                      (let ((_%$%g21472228%_ _%$%hd21642222%_)
                            (_%$%g21482230%_ _%$%hd21612212%_)
                            (_%$%g21492231%_ _%$%tl21592205%_)
                            (_%$%g21502232%_ _%$%hd21582202%_))
                        (if (gx#identifier? _%$%g21502232%_)
                            (_%__kont1907319074%_
                             _%$%g21472228%_
                             _%$%g21482230%_
                             _%$%g21492231%_
                             _%$%g21502232%_)
                            (let () (declare (not safe)) (_%$%g21302171%_))))))
                   (_%__match1910119102%_
                    (lambda (_%$%e21352261%_
                             _%$%hd21362265%_
                             _%$%tl21372268%_
                             _%$%e21382271%_
                             _%$%hd21392275%_
                             _%$%tl21402278%_
                             _%$%e21412281%_
                             _%$%hd21422285%_
                             _%$%tl21432288%_
                             _%$%e21442291%_
                             _%$%hd21452295%_
                             _%$%tl21462298%_)
                      (let ((_%$%g21322301%_ _%$%hd21452295%_)
                            (_%$%g21332303%_ _%$%tl21432288%_)
                            (_%$%g21342304%_ _%$%hd21422285%_))
                        (if (gx#identifier? _%$%g21342304%_)
                            (_%__kont1907119072%_
                             _%$%g21322301%_
                             _%$%g21332303%_
                             _%$%g21342304%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g21302171%_)))))))
              (if (gx#stx-pair? _%__stx1906819069%_)
                  (let ((_%$%e21352261%_ (gx#syntax-e _%__stx1906819069%_)))
                    (let ((_%$%tl21372268%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e21352261%_)))
                          (_%$%hd21362265%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e21352261%_))))
                      (if (gx#stx-pair? _%$%tl21372268%_)
                          (let ((_%$%e21382271%_
                                 (gx#syntax-e _%$%tl21372268%_)))
                            (let ((_%$%tl21402278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e21382271%_)))
                                  (_%$%hd21392275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e21382271%_))))
                              (if (gx#stx-pair? _%$%hd21392275%_)
                                  (let ((_%$%e21412281%_
                                         (gx#syntax-e _%$%hd21392275%_)))
                                    (let ((_%$%tl21432288%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e21412281%_)))
                                          (_%$%hd21422285%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e21412281%_))))
                                      (if (gx#stx-pair? _%$%tl21402278%_)
                                          (let ((_%$%e21442291%_
                                                 (gx#syntax-e
                                                  _%$%tl21402278%_)))
                                            (let ((_%$%tl21462298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e21442291%_)))
                                                  (_%$%hd21452295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e21442291%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl21462298%_)
                                                  (_%__match1910119102%_
                                                   _%$%e21352261%_
                                                   _%$%hd21362265%_
                                                   _%$%tl21372268%_
                                                   _%$%e21382271%_
                                                   _%$%hd21392275%_
                                                   _%$%tl21402278%_
                                                   _%$%e21412281%_
                                                   _%$%hd21422285%_
                                                   _%$%tl21432288%_
                                                   _%$%e21442291%_
                                                   _%$%hd21452295%_
                                                   _%$%tl21462298%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl21462298%_)
                                                      (let ((_%$%e21632218%_
                                                             (gx#syntax-e
                                                              _%$%tl21462298%_)))
                                                        (let ((_%$%tl21652225%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e21632218%_)))
                      (_%$%hd21642222%_
                       (let () (declare (not safe)) (##car _%$%e21632218%_))))
                  (if (gx#stx-null? _%$%tl21652225%_)
                      (_%__match1913319134%_
                       _%$%e21352261%_
                       _%$%hd21362265%_
                       _%$%tl21372268%_
                       _%$%e21382271%_
                       _%$%hd21392275%_
                       _%$%tl21402278%_
                       _%$%e21412281%_
                       _%$%hd21422285%_
                       _%$%tl21432288%_
                       _%$%e21442291%_
                       _%$%hd21452295%_
                       _%$%tl21462298%_
                       _%$%e21632218%_
                       _%$%hd21642222%_
                       _%$%tl21652225%_)
                      (let () (declare (not safe)) (_%$%g21302171%_)))))
              (let () (declare (not safe)) (_%$%g21302171%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g21302171%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g21302171%_)))))
                          (let () (declare (not safe)) (_%$%g21302171%_)))))
                  (let () (declare (not safe)) (_%$%g21302171%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2326%_)
        (let* ((_%__stx1913619137%_ _%$stx2326%_)
               (_%$%g23312370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1913619137%_))))
          (let ((_%__kont1913919140%_
                 (lambda (_%$%g23332490%_ _%$%g23342492%_ _%$%g23352493%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%$%g23352493%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%$%g23342492%_
                                                 (foldr (lambda (_%$%g25122515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g25132518%_)
                  (cons _%$%g25122515%_ _%$%g25132518%_))
                '()
                _%$%g23332490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1914319144%_
                 (lambda (_%$%g23542407%_ _%$%g23552409%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%$%g23552409%_ (cons _%$%g23542407%_ '()))))))
            (let* ((_%__match1919119192%_
                    (lambda (_%$%e23562377%_
                             _%$%hd23572381%_
                             _%$%tl23582384%_
                             _%$%e23592387%_
                             _%$%hd23602391%_
                             _%$%tl23612394%_
                             _%$%e23622397%_
                             _%$%hd23632401%_
                             _%$%tl23642404%_)
                      (let ((_%$%g23542407%_ _%$%hd23632401%_)
                            (_%$%g23552409%_ _%$%hd23602391%_))
                        (if (gx#identifier? _%$%g23552409%_)
                            (_%__kont1914319144%_
                             _%$%g23542407%_
                             _%$%g23552409%_)
                            (let () (declare (not safe)) (_%$%g23312370%_))))))
                   (_%__match1918319184%_
                    (lambda (_%$%e23562377%_
                             _%$%hd23572381%_
                             _%$%tl23582384%_
                             _%$%e23592387%_
                             _%$%hd23602391%_
                             _%$%tl23612394%_)
                      (if (gx#stx-pair? _%$%tl23612394%_)
                          (let ((_%$%e23622397%_
                                 (gx#syntax-e _%$%tl23612394%_)))
                            (let ((_%$%tl23642404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e23622397%_)))
                                  (_%$%hd23632401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e23622397%_))))
                              (if (gx#stx-null? _%$%tl23642404%_)
                                  (_%__match1919119192%_
                                   _%$%e23562377%_
                                   _%$%hd23572381%_
                                   _%$%tl23582384%_
                                   _%$%e23592387%_
                                   _%$%hd23602391%_
                                   _%$%tl23612394%_
                                   _%$%e23622397%_
                                   _%$%hd23632401%_
                                   _%$%tl23642404%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g23312370%_)))))
                          (let () (declare (not safe)) (_%$%g23312370%_)))))
                   (_%__match1917119172%_
                    (lambda (_%$%e23362432%_
                             _%$%hd23372436%_
                             _%$%tl23382439%_
                             _%$%e23392442%_
                             _%$%hd23402446%_
                             _%$%tl23412449%_
                             _%$%e23422452%_
                             _%$%hd23432456%_
                             _%$%tl23442459%_
                             _%__splice1914119142%_
                             _%$%target23452462%_
                             _%$%tl23472465%_)
                      (letrec ((_%$%loop23482468%_
                                (lambda (_%$%hd23462472%_ _%$%body23522475%_)
                                  (if (gx#stx-pair? _%$%hd23462472%_)
                                      (let ((_%$%e23492477%_
                                             (gx#syntax-e _%$%hd23462472%_)))
                                        (let ((_%$%lp-tl23512484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e23492477%_)))
                                              (_%$%lp-hd23502481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e23492477%_))))
                                          (_%$%loop23482468%_
                                           _%$%lp-tl23512484%_
                                           (cons _%$%lp-hd23502481%_
                                                 _%$%body23522475%_))))
                                      (let ((_%$%body23532487%_
                                             (reverse _%$%body23522475%_)))
                                        (let ((_%$%g23332490%_
                                               _%$%body23532487%_)
                                              (_%$%g23342492%_
                                               _%$%tl23442459%_)
                                              (_%$%g23352493%_
                                               _%$%hd23432456%_))
                                          (if (gx#identifier? _%$%g23352493%_)
                                              (_%__kont1913919140%_
                                               _%$%g23332490%_
                                               _%$%g23342492%_
                                               _%$%g23352493%_)
                                              (_%__match1918319184%_
                                               _%$%e23362432%_
                                               _%$%hd23372436%_
                                               _%$%tl23382439%_
                                               _%$%e23392442%_
                                               _%$%hd23402446%_
                                               _%$%tl23412449%_))))))))
                        (_%$%loop23482468%_ _%$%target23452462%_ '())))))
              (if (gx#stx-pair? _%__stx1913619137%_)
                  (let ((_%$%e23362432%_ (gx#syntax-e _%__stx1913619137%_)))
                    (let ((_%$%tl23382439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e23362432%_)))
                          (_%$%hd23372436%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e23362432%_))))
                      (if (gx#stx-pair? _%$%tl23382439%_)
                          (let ((_%$%e23392442%_
                                 (gx#syntax-e _%$%tl23382439%_)))
                            (let ((_%$%tl23412449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e23392442%_)))
                                  (_%$%hd23402446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e23392442%_))))
                              (if (gx#stx-pair? _%$%hd23402446%_)
                                  (let ((_%$%e23422452%_
                                         (gx#syntax-e _%$%hd23402446%_)))
                                    (let ((_%$%tl23442459%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e23422452%_)))
                                          (_%$%hd23432456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e23422452%_))))
                                      (if (gx#stx-pair/null? _%$%tl23412449%_)
                                          (let ((_%__splice1914119142%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl23412449%_
                                                  '0)))
                                            (let ((_%$%tl23472465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1914119142%_
                                                      '1)))
                                                  (_%$%target23452462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1914119142%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl23472465%_)
                                                  (_%__match1917119172%_
                                                   _%$%e23362432%_
                                                   _%$%hd23372436%_
                                                   _%$%tl23382439%_
                                                   _%$%e23392442%_
                                                   _%$%hd23402446%_
                                                   _%$%tl23412449%_
                                                   _%$%e23422452%_
                                                   _%$%hd23432456%_
                                                   _%$%tl23442459%_
                                                   _%__splice1914119142%_
                                                   _%$%target23452462%_
                                                   _%$%tl23472465%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl23412449%_)
                                                      (let ((_%$%e23622397%_
                                                             (gx#syntax-e
                                                              _%$%tl23412449%_)))
                                                        (let ((_%$%tl23642404%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e23622397%_)))
                      (_%$%hd23632401%_
                       (let () (declare (not safe)) (##car _%$%e23622397%_))))
                  (if (gx#stx-null? _%$%tl23642404%_)
                      (_%__match1919119192%_
                       _%$%e23362432%_
                       _%$%hd23372436%_
                       _%$%tl23382439%_
                       _%$%e23392442%_
                       _%$%hd23402446%_
                       _%$%tl23412449%_
                       _%$%e23622397%_
                       _%$%hd23632401%_
                       _%$%tl23642404%_)
                      (let () (declare (not safe)) (_%$%g23312370%_)))))
              (let () (declare (not safe)) (_%$%g23312370%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%tl23412449%_)
                                              (let ((_%$%e23622397%_
                                                     (gx#syntax-e
                                                      _%$%tl23412449%_)))
                                                (let ((_%$%tl23642404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e23622397%_)))
                                                      (_%$%hd23632401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e23622397%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl23642404%_)
                                                      (_%__match1919119192%_
                                                       _%$%e23362432%_
                                                       _%$%hd23372436%_
                                                       _%$%tl23382439%_
                                                       _%$%e23392442%_
                                                       _%$%hd23402446%_
                                                       _%$%tl23412449%_
                                                       _%$%e23622397%_
                                                       _%$%hd23632401%_
                                                       _%$%tl23642404%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g23312370%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g23312370%_))))))
                                  (if (gx#stx-pair? _%$%tl23412449%_)
                                      (let ((_%$%e23622397%_
                                             (gx#syntax-e _%$%tl23412449%_)))
                                        (let ((_%$%tl23642404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e23622397%_)))
                                              (_%$%hd23632401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e23622397%_))))
                                          (if (gx#stx-null? _%$%tl23642404%_)
                                              (_%__match1919119192%_
                                               _%$%e23362432%_
                                               _%$%hd23372436%_
                                               _%$%tl23382439%_
                                               _%$%e23392442%_
                                               _%$%hd23402446%_
                                               _%$%tl23412449%_
                                               _%$%e23622397%_
                                               _%$%hd23632401%_
                                               _%$%tl23642404%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g23312370%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g23312370%_))))))
                          (let () (declare (not safe)) (_%$%g23312370%_)))))
                  (let () (declare (not safe)) (_%$%g23312370%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2526%_)
        (let* ((_%__stx1919419195%_ _%$stx2526%_)
               (_%$%g25312570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1919419195%_))))
          (let ((_%__kont1919719198%_
                 (lambda (_%$%g25332690%_ _%$%g25342692%_ _%$%g25352693%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%$%g25352693%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%$%g25342692%_
                                                 (foldr (lambda (_%$%g27122715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g27132718%_)
                  (cons _%$%g27122715%_ _%$%g27132718%_))
                '()
                _%$%g25332690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1920119202%_
                 (lambda (_%$%g25542607%_ _%$%g25552609%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%$%g25552609%_ '())
                               (cons _%$%g25542607%_ '()))))))
            (let* ((_%__match1924919250%_
                    (lambda (_%$%e25562577%_
                             _%$%hd25572581%_
                             _%$%tl25582584%_
                             _%$%e25592587%_
                             _%$%hd25602591%_
                             _%$%tl25612594%_
                             _%$%e25622597%_
                             _%$%hd25632601%_
                             _%$%tl25642604%_)
                      (let ((_%$%g25542607%_ _%$%hd25632601%_)
                            (_%$%g25552609%_ _%$%hd25602591%_))
                        (if (gx#identifier? _%$%g25552609%_)
                            (_%__kont1920119202%_
                             _%$%g25542607%_
                             _%$%g25552609%_)
                            (let () (declare (not safe)) (_%$%g25312570%_))))))
                   (_%__match1924119242%_
                    (lambda (_%$%e25562577%_
                             _%$%hd25572581%_
                             _%$%tl25582584%_
                             _%$%e25592587%_
                             _%$%hd25602591%_
                             _%$%tl25612594%_)
                      (if (gx#stx-pair? _%$%tl25612594%_)
                          (let ((_%$%e25622597%_
                                 (gx#syntax-e _%$%tl25612594%_)))
                            (let ((_%$%tl25642604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e25622597%_)))
                                  (_%$%hd25632601%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e25622597%_))))
                              (if (gx#stx-null? _%$%tl25642604%_)
                                  (_%__match1924919250%_
                                   _%$%e25562577%_
                                   _%$%hd25572581%_
                                   _%$%tl25582584%_
                                   _%$%e25592587%_
                                   _%$%hd25602591%_
                                   _%$%tl25612594%_
                                   _%$%e25622597%_
                                   _%$%hd25632601%_
                                   _%$%tl25642604%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g25312570%_)))))
                          (let () (declare (not safe)) (_%$%g25312570%_)))))
                   (_%__match1922919230%_
                    (lambda (_%$%e25362632%_
                             _%$%hd25372636%_
                             _%$%tl25382639%_
                             _%$%e25392642%_
                             _%$%hd25402646%_
                             _%$%tl25412649%_
                             _%$%e25422652%_
                             _%$%hd25432656%_
                             _%$%tl25442659%_
                             _%__splice1919919200%_
                             _%$%target25452662%_
                             _%$%tl25472665%_)
                      (letrec ((_%$%loop25482668%_
                                (lambda (_%$%hd25462672%_ _%$%body25522675%_)
                                  (if (gx#stx-pair? _%$%hd25462672%_)
                                      (let ((_%$%e25492677%_
                                             (gx#syntax-e _%$%hd25462672%_)))
                                        (let ((_%$%lp-tl25512684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e25492677%_)))
                                              (_%$%lp-hd25502681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e25492677%_))))
                                          (_%$%loop25482668%_
                                           _%$%lp-tl25512684%_
                                           (cons _%$%lp-hd25502681%_
                                                 _%$%body25522675%_))))
                                      (let ((_%$%body25532687%_
                                             (reverse _%$%body25522675%_)))
                                        (let ((_%$%g25332690%_
                                               _%$%body25532687%_)
                                              (_%$%g25342692%_
                                               _%$%tl25442659%_)
                                              (_%$%g25352693%_
                                               _%$%hd25432656%_))
                                          (if (gx#identifier? _%$%g25352693%_)
                                              (_%__kont1919719198%_
                                               _%$%g25332690%_
                                               _%$%g25342692%_
                                               _%$%g25352693%_)
                                              (_%__match1924119242%_
                                               _%$%e25362632%_
                                               _%$%hd25372636%_
                                               _%$%tl25382639%_
                                               _%$%e25392642%_
                                               _%$%hd25402646%_
                                               _%$%tl25412649%_))))))))
                        (_%$%loop25482668%_ _%$%target25452662%_ '())))))
              (if (gx#stx-pair? _%__stx1919419195%_)
                  (let ((_%$%e25362632%_ (gx#syntax-e _%__stx1919419195%_)))
                    (let ((_%$%tl25382639%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e25362632%_)))
                          (_%$%hd25372636%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e25362632%_))))
                      (if (gx#stx-pair? _%$%tl25382639%_)
                          (let ((_%$%e25392642%_
                                 (gx#syntax-e _%$%tl25382639%_)))
                            (let ((_%$%tl25412649%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e25392642%_)))
                                  (_%$%hd25402646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e25392642%_))))
                              (if (gx#stx-pair? _%$%hd25402646%_)
                                  (let ((_%$%e25422652%_
                                         (gx#syntax-e _%$%hd25402646%_)))
                                    (let ((_%$%tl25442659%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e25422652%_)))
                                          (_%$%hd25432656%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e25422652%_))))
                                      (if (gx#stx-pair/null? _%$%tl25412649%_)
                                          (let ((_%__splice1919919200%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl25412649%_
                                                  '0)))
                                            (let ((_%$%tl25472665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1919919200%_
                                                      '1)))
                                                  (_%$%target25452662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1919919200%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl25472665%_)
                                                  (_%__match1922919230%_
                                                   _%$%e25362632%_
                                                   _%$%hd25372636%_
                                                   _%$%tl25382639%_
                                                   _%$%e25392642%_
                                                   _%$%hd25402646%_
                                                   _%$%tl25412649%_
                                                   _%$%e25422652%_
                                                   _%$%hd25432656%_
                                                   _%$%tl25442659%_
                                                   _%__splice1919919200%_
                                                   _%$%target25452662%_
                                                   _%$%tl25472665%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl25412649%_)
                                                      (let ((_%$%e25622597%_
                                                             (gx#syntax-e
                                                              _%$%tl25412649%_)))
                                                        (let ((_%$%tl25642604%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e25622597%_)))
                      (_%$%hd25632601%_
                       (let () (declare (not safe)) (##car _%$%e25622597%_))))
                  (if (gx#stx-null? _%$%tl25642604%_)
                      (_%__match1924919250%_
                       _%$%e25362632%_
                       _%$%hd25372636%_
                       _%$%tl25382639%_
                       _%$%e25392642%_
                       _%$%hd25402646%_
                       _%$%tl25412649%_
                       _%$%e25622597%_
                       _%$%hd25632601%_
                       _%$%tl25642604%_)
                      (let () (declare (not safe)) (_%$%g25312570%_)))))
              (let () (declare (not safe)) (_%$%g25312570%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%tl25412649%_)
                                              (let ((_%$%e25622597%_
                                                     (gx#syntax-e
                                                      _%$%tl25412649%_)))
                                                (let ((_%$%tl25642604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e25622597%_)))
                                                      (_%$%hd25632601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e25622597%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl25642604%_)
                                                      (_%__match1924919250%_
                                                       _%$%e25362632%_
                                                       _%$%hd25372636%_
                                                       _%$%tl25382639%_
                                                       _%$%e25392642%_
                                                       _%$%hd25402646%_
                                                       _%$%tl25412649%_
                                                       _%$%e25622597%_
                                                       _%$%hd25632601%_
                                                       _%$%tl25642604%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g25312570%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g25312570%_))))))
                                  (if (gx#stx-pair? _%$%tl25412649%_)
                                      (let ((_%$%e25622597%_
                                             (gx#syntax-e _%$%tl25412649%_)))
                                        (let ((_%$%tl25642604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e25622597%_)))
                                              (_%$%hd25632601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e25622597%_))))
                                          (if (gx#stx-null? _%$%tl25642604%_)
                                              (_%__match1924919250%_
                                               _%$%e25362632%_
                                               _%$%hd25372636%_
                                               _%$%tl25382639%_
                                               _%$%e25392642%_
                                               _%$%hd25402646%_
                                               _%$%tl25412649%_
                                               _%$%e25622597%_
                                               _%$%hd25632601%_
                                               _%$%tl25642604%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g25312570%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g25312570%_))))))
                          (let () (declare (not safe)) (_%$%g25312570%_)))))
                  (let () (declare (not safe)) (_%$%g25312570%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2726%_)
        (let* ((_%__stx1925219253%_ _%$stx2726%_)
               (_%$%g27312776%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1925219253%_))))
          (let ((_%__kont1925519256%_
                 (lambda (_%$%g27332930%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%$%g29462949%_ _%$%g29472952%_)
                                        (cons _%$%g29462949%_ _%$%g29472952%_))
                                      '()
                                      _%$%g27332930%_)))))
                (_%__kont1925919260%_
                 (lambda (_%$%g27492841%_
                          _%$%g27502843%_
                          _%$%g27512844%_
                          _%$%g27522845%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%$%g27512844%_ '())
                               (cons (cons _%$%g27522845%_
                                           (cons _%$%g27502843%_
                                                 (foldr (lambda (_%$%g28662869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g28672872%_)
                  (cons _%$%g28662869%_ _%$%g28672872%_))
                '()
                _%$%g27492841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1931119312%_
                    (lambda (_%$%e27532783%_
                             _%$%hd27542787%_
                             _%$%tl27552790%_
                             _%$%e27562793%_
                             _%$%hd27572797%_
                             _%$%tl27582800%_
                             _%$%e27592803%_
                             _%$%hd27602807%_
                             _%$%tl27612810%_
                             _%__splice1926119262%_
                             _%$%target27622813%_
                             _%$%tl27642816%_)
                      (letrec ((_%$%loop27652819%_
                                (lambda (_%$%hd27632823%_ _%$%body27692826%_)
                                  (if (gx#stx-pair? _%$%hd27632823%_)
                                      (let ((_%$%e27662828%_
                                             (gx#syntax-e _%$%hd27632823%_)))
                                        (let ((_%$%lp-tl27682835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e27662828%_)))
                                              (_%$%lp-hd27672832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e27662828%_))))
                                          (_%$%loop27652819%_
                                           _%$%lp-tl27682835%_
                                           (cons _%$%lp-hd27672832%_
                                                 _%$%body27692826%_))))
                                      (let ((_%$%body27702838%_
                                             (reverse _%$%body27692826%_)))
                                        (_%__kont1925919260%_
                                         _%$%body27702838%_
                                         _%$%tl27612810%_
                                         _%$%hd27602807%_
                                         _%$%hd27542787%_))))))
                        (_%$%loop27652819%_ _%$%target27622813%_ '()))))
                   (_%__match1928519286%_
                    (lambda (_%$%e27342882%_
                             _%$%hd27352886%_
                             _%$%tl27362889%_
                             _%$%e27372892%_
                             _%$%hd27382896%_
                             _%$%tl27392899%_
                             _%__splice1925719258%_
                             _%$%target27402902%_
                             _%$%tl27422905%_)
                      (letrec ((_%$%loop27432908%_
                                (lambda (_%$%hd27412912%_ _%$%body27472915%_)
                                  (if (gx#stx-pair? _%$%hd27412912%_)
                                      (let ((_%$%e27442917%_
                                             (gx#syntax-e _%$%hd27412912%_)))
                                        (let ((_%$%lp-tl27462924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e27442917%_)))
                                              (_%$%lp-hd27452921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e27442917%_))))
                                          (_%$%loop27432908%_
                                           _%$%lp-tl27462924%_
                                           (cons _%$%lp-hd27452921%_
                                                 _%$%body27472915%_))))
                                      (let ((_%$%body27482927%_
                                             (reverse _%$%body27472915%_)))
                                        (_%__kont1925519256%_
                                         _%$%body27482927%_))))))
                        (_%$%loop27432908%_ _%$%target27402902%_ '())))))
              (if (gx#stx-pair? _%__stx1925219253%_)
                  (let ((_%$%e27342882%_ (gx#syntax-e _%__stx1925219253%_)))
                    (let ((_%$%tl27362889%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e27342882%_)))
                          (_%$%hd27352886%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e27342882%_))))
                      (if (gx#stx-pair? _%$%tl27362889%_)
                          (let ((_%$%e27372892%_
                                 (gx#syntax-e _%$%tl27362889%_)))
                            (let ((_%$%tl27392899%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e27372892%_)))
                                  (_%$%hd27382896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e27372892%_))))
                              (if (gx#stx-null? _%$%hd27382896%_)
                                  (if (gx#stx-pair/null? _%$%tl27392899%_)
                                      (let ((_%__splice1925719258%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl27392899%_
                                              '0)))
                                        (let ((_%$%tl27422905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1925719258%_
                                                  '1)))
                                              (_%$%target27402902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1925719258%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl27422905%_)
                                              (_%__match1928519286%_
                                               _%$%e27342882%_
                                               _%$%hd27352886%_
                                               _%$%tl27362889%_
                                               _%$%e27372892%_
                                               _%$%hd27382896%_
                                               _%$%tl27392899%_
                                               _%__splice1925719258%_
                                               _%$%target27402902%_
                                               _%$%tl27422905%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g27312776%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g27312776%_)))
                                  (if (gx#stx-pair? _%$%hd27382896%_)
                                      (let ((_%$%e27592803%_
                                             (gx#syntax-e _%$%hd27382896%_)))
                                        (let ((_%$%tl27612810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e27592803%_)))
                                              (_%$%hd27602807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e27592803%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl27392899%_)
                                              (let ((_%__splice1926119262%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl27392899%_
                                                      '0)))
                                                (let ((_%$%tl27642816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1926119262%_
                                                          '1)))
                                                      (_%$%target27622813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1926119262%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl27642816%_)
                                                      (_%__match1931119312%_
                                                       _%$%e27342882%_
                                                       _%$%hd27352886%_
                                                       _%$%tl27362889%_
                                                       _%$%e27372892%_
                                                       _%$%hd27382896%_
                                                       _%$%tl27392899%_
                                                       _%$%e27592803%_
                                                       _%$%hd27602807%_
                                                       _%$%tl27612810%_
                                                       _%__splice1926119262%_
                                                       _%$%target27622813%_
                                                       _%$%tl27642816%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g27312776%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g27312776%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g27312776%_))))))
                          (let () (declare (not safe)) (_%$%g27312776%_)))))
                  (let () (declare (not safe)) (_%$%g27312776%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2961%_)
        (let* ((_%__stx1931419315%_ _%$stx2961%_)
               (_%$%g29663030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1931419315%_))))
          (let ((_%__kont1931719318%_
                 (lambda (_%$%g29683228%_
                          _%$%g29693230%_
                          _%$%g29703231%_
                          _%$%g29713232%_
                          _%$%g29723233%_)
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (gx#datum->syntax '#f '@loop)
                               (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _%$%g29723233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (foldr (lambda (_%$%g32583265%_
                                                             _%$%g32593268%_)
                                                      (cons _%$%g32583265%_
                                                            _%$%g32593268%_))
                                                    _%$%g29693230%_
                                                    _%$%g29713232%_)
                                             (foldr (lambda (_%$%g32603271%_
                                                             _%$%g32613274%_)
                                                      (cons _%$%g32603271%_
                                                            _%$%g32613274%_))
                                                    '()
                                                    _%$%g29683228%_)))
                                 '()))
                     '())
               (cons _%$%g29723233%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (foldr (lambda (_%$%g32623277%_
                                                           _%$%g32633280%_)
                                                    (cons _%$%g32623277%_
                                                          _%$%g32633280%_))
                                                  '()
                                                  _%$%g29703231%_))
                                     '())))))
                (_%__kont1932319324%_
                 (lambda (_%$%g30083085%_ _%$%g30093087%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%$%g30093087%_
                                     (foldr (lambda (_%$%g31043107%_
                                                     _%$%g31053110%_)
                                              (cons _%$%g31043107%_
                                                    _%$%g31053110%_))
                                            '()
                                            _%$%g30083085%_)))))))
            (let* ((_%__match1937119372%_
                    (lambda (_%$%e30103037%_
                             _%$%hd30113041%_
                             _%$%tl30123044%_
                             _%$%e30133047%_
                             _%$%hd30143051%_
                             _%$%tl30153054%_
                             _%__splice1932519326%_
                             _%$%target30163057%_
                             _%$%tl30183060%_)
                      (letrec ((_%$%loop30193063%_
                                (lambda (_%$%hd30173067%_ _%$%body30233070%_)
                                  (if (gx#stx-pair? _%$%hd30173067%_)
                                      (let ((_%$%e30203072%_
                                             (gx#syntax-e _%$%hd30173067%_)))
                                        (let ((_%$%lp-tl30223079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e30203072%_)))
                                              (_%$%lp-hd30213076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e30203072%_))))
                                          (_%$%loop30193063%_
                                           _%$%lp-tl30223079%_
                                           (cons _%$%lp-hd30213076%_
                                                 _%$%body30233070%_))))
                                      (let ((_%$%body30243082%_
                                             (reverse _%$%body30233070%_)))
                                        (_%__kont1932319324%_
                                         _%$%body30243082%_
                                         _%$%hd30143051%_))))))
                        (_%$%loop30193063%_ _%$%target30163057%_ '()))))
                   (_%__match1936319364%_
                    (lambda (_%$%e30103037%_
                             _%$%hd30113041%_
                             _%$%tl30123044%_
                             _%$%e30133047%_
                             _%$%hd30143051%_
                             _%$%tl30153054%_)
                      (if (gx#stx-pair/null? _%$%tl30153054%_)
                          (let ((_%__splice1932519326%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl30153054%_
                                  '0)))
                            (let ((_%$%tl30183060%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1932519326%_ '1)))
                                  (_%$%target30163057%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1932519326%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl30183060%_)
                                  (_%__match1937119372%_
                                   _%$%e30103037%_
                                   _%$%hd30113041%_
                                   _%$%tl30123044%_
                                   _%$%e30133047%_
                                   _%$%hd30143051%_
                                   _%$%tl30153054%_
                                   _%__splice1932519326%_
                                   _%$%target30163057%_
                                   _%$%tl30183060%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g29663030%_)))))
                          (let () (declare (not safe)) (_%$%g29663030%_)))))
                   (_%__match1935119352%_
                    (lambda (_%$%e29733120%_
                             _%$%hd29743124%_
                             _%$%tl29753127%_
                             _%$%e29763130%_
                             _%$%hd29773134%_
                             _%$%tl29783137%_
                             _%$%e29793140%_
                             _%$%hd29803144%_
                             _%$%tl29813147%_
                             _%__splice1931919320%_
                             _%$%target29823150%_
                             _%$%tl29843153%_)
                      (letrec ((_%$%loop29853156%_
                                (lambda (_%$%hd29833160%_
                                         _%$%arg29893163%_
                                         _%$%var29903164%_)
                                  (if (gx#stx-pair? _%$%hd29833160%_)
                                      (let ((_%$%e29863166%_
                                             (gx#syntax-e _%$%hd29833160%_)))
                                        (let ((_%$%lp-tl29883173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e29863166%_)))
                                              (_%$%lp-hd29873170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e29863166%_))))
                                          (if (gx#stx-pair?
                                               _%$%lp-hd29873170%_)
                                              (let ((_%$%e29933176%_
                                                     (gx#syntax-e
                                                      _%$%lp-hd29873170%_)))
                                                (let ((_%$%tl29953183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e29933176%_)))
                                                      (_%$%hd29943180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e29933176%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl29953183%_)
                                                      (let ((_%$%e29963186%_
                                                             (gx#syntax-e
                                                              _%$%tl29953183%_)))
                                                        (let ((_%$%tl29983193%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e29963186%_)))
                      (_%$%hd29973190%_
                       (let () (declare (not safe)) (##car _%$%e29963186%_))))
                  (if (gx#stx-null? _%$%tl29983193%_)
                      (_%$%loop29853156%_
                       _%$%lp-tl29883173%_
                       (cons _%$%hd29973190%_ _%$%arg29893163%_)
                       (cons _%$%hd29943180%_ _%$%var29903164%_))
                      (_%__match1936319364%_
                       _%$%e29733120%_
                       _%$%hd29743124%_
                       _%$%tl29753127%_
                       _%$%e29763130%_
                       _%$%hd29773134%_
                       _%$%tl29783137%_))))
              (_%__match1936319364%_
               _%$%e29733120%_
               _%$%hd29743124%_
               _%$%tl29753127%_
               _%$%e29763130%_
               _%$%hd29773134%_
               _%$%tl29783137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1936319364%_
                                               _%$%e29733120%_
                                               _%$%hd29743124%_
                                               _%$%tl29753127%_
                                               _%$%e29763130%_
                                               _%$%hd29773134%_
                                               _%$%tl29783137%_))))
                                      (let ((_%$%var29923198%_
                                             (reverse _%$%var29903164%_))
                                            (_%$%arg29913196%_
                                             (reverse _%$%arg29893163%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl29813147%_)
                                            (let ((_%__splice1932119322%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl29813147%_
                                                    '0)))
                                              (let ((_%$%tl30013203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1932119322%_
                                                        '1)))
                                                    (_%$%target29993200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1932119322%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl30013203%_)
                                                    (letrec ((_%$%loop30023206%_
                                                              (lambda (_%$%hd30003210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body30063213%_)
                        (if (gx#stx-pair? _%$%hd30003210%_)
                            (let ((_%$%e30033215%_
                                   (gx#syntax-e _%$%hd30003210%_)))
                              (let ((_%$%lp-tl30053222%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e30033215%_)))
                                    (_%$%lp-hd30043219%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e30033215%_))))
                                (_%$%loop30023206%_
                                 _%$%lp-tl30053222%_
                                 (cons _%$%lp-hd30043219%_
                                       _%$%body30063213%_))))
                            (let ((_%$%body30073225%_
                                   (reverse _%$%body30063213%_)))
                              (let ((_%$%g29683228%_ _%$%body30073225%_)
                                    (_%$%g29693230%_ _%$%tl29843153%_)
                                    (_%$%g29703231%_ _%$%arg29913196%_)
                                    (_%$%g29713232%_ _%$%var29923198%_)
                                    (_%$%g29723233%_ _%$%hd29773134%_))
                                (if (gx#identifier? _%$%g29723233%_)
                                    (_%__kont1931719318%_
                                     _%$%g29683228%_
                                     _%$%g29693230%_
                                     _%$%g29703231%_
                                     _%$%g29713232%_
                                     _%$%g29723233%_)
                                    (_%__match1936319364%_
                                     _%$%e29733120%_
                                     _%$%hd29743124%_
                                     _%$%tl29753127%_
                                     _%$%e29763130%_
                                     _%$%hd29773134%_
                                     _%$%tl29783137%_))))))))
              (_%$%loop30023206%_ _%$%target29993200%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1936319364%_
                                                     _%$%e29733120%_
                                                     _%$%hd29743124%_
                                                     _%$%tl29753127%_
                                                     _%$%e29763130%_
                                                     _%$%hd29773134%_
                                                     _%$%tl29783137%_))))
                                            (_%__match1936319364%_
                                             _%$%e29733120%_
                                             _%$%hd29743124%_
                                             _%$%tl29753127%_
                                             _%$%e29763130%_
                                             _%$%hd29773134%_
                                             _%$%tl29783137%_)))))))
                        (_%$%loop29853156%_ _%$%target29823150%_ '() '())))))
              (if (gx#stx-pair? _%__stx1931419315%_)
                  (let ((_%$%e29733120%_ (gx#syntax-e _%__stx1931419315%_)))
                    (let ((_%$%tl29753127%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e29733120%_)))
                          (_%$%hd29743124%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e29733120%_))))
                      (if (gx#stx-pair? _%$%tl29753127%_)
                          (let ((_%$%e29763130%_
                                 (gx#syntax-e _%$%tl29753127%_)))
                            (let ((_%$%tl29783137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e29763130%_)))
                                  (_%$%hd29773134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e29763130%_))))
                              (if (gx#stx-pair? _%$%tl29783137%_)
                                  (let ((_%$%e29793140%_
                                         (gx#syntax-e _%$%tl29783137%_)))
                                    (let ((_%$%tl29813147%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e29793140%_)))
                                          (_%$%hd29803144%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e29793140%_))))
                                      (if (gx#stx-pair/null? _%$%hd29803144%_)
                                          (let ((_%__splice1931919320%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd29803144%_
                                                  '0)))
                                            (let ((_%$%tl29843153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1931919320%_
                                                      '1)))
                                                  (_%$%target29823150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1931919320%_
                                                      '0))))
                                              (_%__match1935119352%_
                                               _%$%e29733120%_
                                               _%$%hd29743124%_
                                               _%$%tl29753127%_
                                               _%$%e29763130%_
                                               _%$%hd29773134%_
                                               _%$%tl29783137%_
                                               _%$%e29793140%_
                                               _%$%hd29803144%_
                                               _%$%tl29813147%_
                                               _%__splice1931919320%_
                                               _%$%target29823150%_
                                               _%$%tl29843153%_)))
                                          (if (gx#stx-pair/null?
                                               _%$%tl29783137%_)
                                              (let ((_%__splice1932519326%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl29783137%_
                                                      '0)))
                                                (let ((_%$%tl30183060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1932519326%_
                                                          '1)))
                                                      (_%$%target30163057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1932519326%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl30183060%_)
                                                      (_%__match1937119372%_
                                                       _%$%e29733120%_
                                                       _%$%hd29743124%_
                                                       _%$%tl29753127%_
                                                       _%$%e29763130%_
                                                       _%$%hd29773134%_
                                                       _%$%tl29783137%_
                                                       _%__splice1932519326%_
                                                       _%$%target30163057%_
                                                       _%$%tl30183060%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g29663030%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g29663030%_))))))
                                  (if (gx#stx-pair/null? _%$%tl29783137%_)
                                      (let ((_%__splice1932519326%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl29783137%_
                                              '0)))
                                        (let ((_%$%tl30183060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1932519326%_
                                                  '1)))
                                              (_%$%target30163057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1932519326%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl30183060%_)
                                              (_%__match1937119372%_
                                               _%$%e29733120%_
                                               _%$%hd29743124%_
                                               _%$%tl29753127%_
                                               _%$%e29763130%_
                                               _%$%hd29773134%_
                                               _%$%tl29783137%_
                                               _%__splice1932519326%_
                                               _%$%target30163057%_
                                               _%$%tl30183060%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g29663030%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g29663030%_))))))
                          (let () (declare (not safe)) (_%$%g29663030%_)))))
                  (let () (declare (not safe)) (_%$%g29663030%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3290%_)
        (let* ((_%$%g32943318%_
                (lambda (_%$%g32953314%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g32953314%_)))
               (_%$%g32933401%_
                (lambda (_%$%g32953322%_)
                  (if (gx#stx-pair? _%$%g32953322%_)
                      (let ((_%$%e32983325%_ (gx#syntax-e _%$%g32953322%_)))
                        (let ((_%$%hd32993329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e32983325%_)))
                              (_%$%tl33003332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e32983325%_))))
                          (if (gx#stx-pair? _%$%tl33003332%_)
                              (let ((_%$%e33013335%_
                                     (gx#syntax-e _%$%tl33003332%_)))
                                (let ((_%$%hd33023339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e33013335%_)))
                                      (_%$%tl33033342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e33013335%_))))
                                  (if (gx#stx-pair/null? _%$%tl33033342%_)
                                      (let ((_g21858_
                                             (gx#syntax-split-splice
                                              _%$%tl33033342%_
                                              '0)))
                                        (begin
                                          (let ((_g21859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21858_)
                                                       (##values-length
                                                        _g21858_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21859_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21859_)))
                                          (let ((_%$%target33043345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21858_ 0)))
                                                (_%$%tl33063348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21858_ 1))))
                                            (if (gx#stx-null? _%$%tl33063348%_)
                                                (letrec ((_%$%loop33073351%_
                                                          (lambda (_%$%hd33053355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body33113358%_)
                    (if (gx#stx-pair? _%$%hd33053355%_)
                        (let ((_%$%e33083360%_ (gx#syntax-e _%$%hd33053355%_)))
                          (let ((_%$%lp-hd33093364%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e33083360%_)))
                                (_%$%lp-tl33103367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e33083360%_))))
                            (_%$%loop33073351%_
                             _%$%lp-tl33103367%_
                             (cons _%$%lp-hd33093364%_ _%$%body33113358%_))))
                        (let ((_%$%body33123370%_
                               (reverse _%$%body33113358%_)))
                          (cons (gx#datum->syntax '#f '~let)
                                (cons (gx#datum->syntax '#f 'let*-values)
                                      (cons _%$%hd33023339%_
                                            (foldr (lambda (_%$%g33923395%_
                                                            _%$%g33933398%_)
                                                     (cons _%$%g33923395%_
                                                           _%$%g33933398%_))
                                                   '()
                                                   _%$%body33123370%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop33073351%_
                                                   _%$%target33043345%_
                                                   '()))
                                                (_%$%g32943318%_
                                                 _%$%g32953322%_)))))
                                      (_%$%g32943318%_ _%$%g32953322%_))))
                              (_%$%g32943318%_ _%$%g32953322%_))))
                      (_%$%g32943318%_ _%$%g32953322%_)))))
          (_%$%g32933401%_ _%$stx3290%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3406%_)
        (let* ((_%$%g34103434%_
                (lambda (_%$%g34113430%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g34113430%_)))
               (_%$%g34093517%_
                (lambda (_%$%g34113438%_)
                  (if (gx#stx-pair? _%$%g34113438%_)
                      (let ((_%$%e34143441%_ (gx#syntax-e _%$%g34113438%_)))
                        (let ((_%$%hd34153445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e34143441%_)))
                              (_%$%tl34163448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e34143441%_))))
                          (if (gx#stx-pair? _%$%tl34163448%_)
                              (let ((_%$%e34173451%_
                                     (gx#syntax-e _%$%tl34163448%_)))
                                (let ((_%$%hd34183455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e34173451%_)))
                                      (_%$%tl34193458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e34173451%_))))
                                  (if (gx#stx-pair/null? _%$%tl34193458%_)
                                      (let ((_g21860_
                                             (gx#syntax-split-splice
                                              _%$%tl34193458%_
                                              '0)))
                                        (begin
                                          (let ((_g21861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21860_)
                                                       (##values-length
                                                        _g21860_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21861_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21861_)))
                                          (let ((_%$%target34203461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21860_ 0)))
                                                (_%$%tl34223464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21860_ 1))))
                                            (if (gx#stx-null? _%$%tl34223464%_)
                                                (letrec ((_%$%loop34233467%_
                                                          (lambda (_%$%hd34213471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body34273474%_)
                    (if (gx#stx-pair? _%$%hd34213471%_)
                        (let ((_%$%e34243476%_ (gx#syntax-e _%$%hd34213471%_)))
                          (let ((_%$%lp-hd34253480%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e34243476%_)))
                                (_%$%lp-tl34263483%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e34243476%_))))
                            (_%$%loop34233467%_
                             _%$%lp-tl34263483%_
                             (cons _%$%lp-hd34253480%_ _%$%body34273474%_))))
                        (let ((_%$%body34283486%_
                               (reverse _%$%body34273474%_)))
                          (cons (gx#datum->syntax '#f '~let)
                                (cons (gx#datum->syntax '#f 'letrec-values)
                                      (cons _%$%hd34183455%_
                                            (foldr (lambda (_%$%g35083511%_
                                                            _%$%g35093514%_)
                                                     (cons _%$%g35083511%_
                                                           _%$%g35093514%_))
                                                   '()
                                                   _%$%body34283486%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop34233467%_
                                                   _%$%target34203461%_
                                                   '()))
                                                (_%$%g34103434%_
                                                 _%$%g34113438%_)))))
                                      (_%$%g34103434%_ _%$%g34113438%_))))
                              (_%$%g34103434%_ _%$%g34113438%_))))
                      (_%$%g34103434%_ _%$%g34113438%_)))))
          (_%$%g34093517%_ _%$stx3406%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3522%_)
        (let* ((_%$%g35263550%_
                (lambda (_%$%g35273546%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g35273546%_)))
               (_%$%g35253633%_
                (lambda (_%$%g35273554%_)
                  (if (gx#stx-pair? _%$%g35273554%_)
                      (let ((_%$%e35303557%_ (gx#syntax-e _%$%g35273554%_)))
                        (let ((_%$%hd35313561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e35303557%_)))
                              (_%$%tl35323564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e35303557%_))))
                          (if (gx#stx-pair? _%$%tl35323564%_)
                              (let ((_%$%e35333567%_
                                     (gx#syntax-e _%$%tl35323564%_)))
                                (let ((_%$%hd35343571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e35333567%_)))
                                      (_%$%tl35353574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e35333567%_))))
                                  (if (gx#stx-pair/null? _%$%tl35353574%_)
                                      (let ((_g21862_
                                             (gx#syntax-split-splice
                                              _%$%tl35353574%_
                                              '0)))
                                        (begin
                                          (let ((_g21863_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21862_)
                                                       (##values-length
                                                        _g21862_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21863_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21863_)))
                                          (let ((_%$%target35363577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21862_ 0)))
                                                (_%$%tl35383580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21862_ 1))))
                                            (if (gx#stx-null? _%$%tl35383580%_)
                                                (letrec ((_%$%loop35393583%_
                                                          (lambda (_%$%hd35373587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body35433590%_)
                    (if (gx#stx-pair? _%$%hd35373587%_)
                        (let ((_%$%e35403592%_ (gx#syntax-e _%$%hd35373587%_)))
                          (let ((_%$%lp-hd35413596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e35403592%_)))
                                (_%$%lp-tl35423599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e35403592%_))))
                            (_%$%loop35393583%_
                             _%$%lp-tl35423599%_
                             (cons _%$%lp-hd35413596%_ _%$%body35433590%_))))
                        (let ((_%$%body35443602%_
                               (reverse _%$%body35433590%_)))
                          (cons (gx#datum->syntax '#f '~let)
                                (cons (gx#datum->syntax '#f 'letrec*-values)
                                      (cons _%$%hd35343571%_
                                            (foldr (lambda (_%$%g36243627%_
                                                            _%$%g36253630%_)
                                                     (cons _%$%g36243627%_
                                                           _%$%g36253630%_))
                                                   '()
                                                   _%$%body35443602%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop35393583%_
                                                   _%$%target35363577%_
                                                   '()))
                                                (_%$%g35263550%_
                                                 _%$%g35273554%_)))))
                                      (_%$%g35263550%_ _%$%g35273554%_))))
                              (_%$%g35263550%_ _%$%g35273554%_))))
                      (_%$%g35263550%_ _%$%g35273554%_)))))
          (_%$%g35253633%_ _%$stx3522%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3638%_)
        (letrec ((_%let-head?3641%_
                  (lambda (_%x4113%_)
                    (let* ((_%__stx1937419375%_ _%x4113%_)
                           (_%$%g41174128%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1937419375%_))))
                      (let ((_%__kont1937719378%_
                             (lambda (_%$%g41194156%_)
                               (gx#stx-andmap gx#identifier? _%$%g41194156%_)))
                            (_%__kont1937919380%_
                             (lambda () (gx#identifier? _%x4113%_))))
                        (if (gx#stx-pair? _%__stx1937419375%_)
                            (let ((_%$%e41204146%_
                                   (gx#syntax-e _%__stx1937419375%_)))
                              (let ((_%$%tl41224153%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e41204146%_)))
                                    (_%$%hd41214150%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e41204146%_))))
                                (if (gx#identifier? _%$%hd41214150%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g21864_|
                                         _%$%hd41214150%_)
                                        (_%__kont1937719378%_ _%$%tl41224153%_)
                                        (_%__kont1937919380%_))
                                    (_%__kont1937919380%_))))
                            (_%__kont1937919380%_))))))
                 (_%let-head3643%_
                  (lambda (_%x4053%_)
                    (let* ((_%__stx1939419395%_ _%x4053%_)
                           (_%$%g40574068%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1939419395%_))))
                      (let ((_%__kont1939719398%_
                             (lambda (_%$%g40594096%_) _%$%g40594096%_))
                            (_%__kont1939919400%_
                             (lambda () (list _%x4053%_))))
                        (if (gx#stx-pair? _%__stx1939419395%_)
                            (let ((_%$%e40604086%_
                                   (gx#syntax-e _%__stx1939419395%_)))
                              (let ((_%$%tl40624093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e40604086%_)))
                                    (_%$%hd40614090%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e40604086%_))))
                                (if (gx#identifier? _%$%hd40614090%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g21865_|
                                         _%$%hd40614090%_)
                                        (_%__kont1939719398%_ _%$%tl40624093%_)
                                        (_%__kont1939919400%_))
                                    (_%__kont1939919400%_))))
                            (_%__kont1939919400%_)))))))
          (let* ((_%__stx1941419415%_ _%stx3638%_)
                 (_%$%g36463712%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1941419415%_))))
            (let ((_%__kont1941719418%_
                   (lambda (_%$%g36484022%_
                            _%$%g36494024%_
                            _%$%g36504025%_
                            _%$%g36514026%_
                            _%$%g36524027%_)
                     (cons _%$%g36524027%_
                           (cons _%$%g36514026%_
                                 (cons (cons (cons _%$%g36504025%_
                                                   (cons _%$%g36494024%_ '()))
                                             '())
                                       _%$%g36484022%_)))))
                  (_%__kont1941919420%_
                   (lambda (_%$%g36683827%_
                            _%$%g36693829%_
                            _%$%g36703830%_
                            _%$%g36713831%_)
                     (let* ((_%$%g38663883%_
                             (lambda (_%$%g38673879%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g38673879%_)))
                            (_%$%g38653953%_
                             (lambda (_%$%g38673887%_)
                               (if (gx#stx-pair/null? _%$%g38673887%_)
                                   (let ((_g21866_
                                          (gx#syntax-split-splice
                                           _%$%g38673887%_
                                           '0)))
                                     (begin
                                       (let ((_g21867_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21866_)
                                                    (##values-length _g21866_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21867_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21867_)))
                                       (let ((_%$%target38693890%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21866_ 0)))
                                             (_%$%tl38713893%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21866_ 1))))
                                         (if (gx#stx-null? _%$%tl38713893%_)
                                             (letrec ((_%$%loop38723896%_
                                                       (lambda (_%$%hd38703900%_
                                                                _%$%hd-bind38763903%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd38703900%_)
                                                             (let ((_%$%e38733905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd38703900%_)))
                       (let ((_%$%lp-hd38743909%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e38733905%_)))
                             (_%$%lp-tl38753912%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e38733905%_))))
                         (_%$%loop38723896%_
                          _%$%lp-tl38753912%_
                          (cons _%$%lp-hd38743909%_ _%$%hd-bind38763903%_))))
                     (let ((_%$%hd-bind38773915%_
                            (reverse _%$%hd-bind38763903%_)))
                       (cons _%$%g36713831%_
                             (cons (begin
                                     (gx#syntax-check-splice-targets
                                      _%$%g36693829%_
                                      _%$%hd-bind38773915%_)
                                     (foldr (lambda (_%$%g39333939%_
                                                     _%$%g39343942%_
                                                     _%$%g39353944%_)
                                              (cons (cons _%$%g39343942%_
                                                          (cons _%$%g39333939%_
                                                                '()))
                                                    _%$%g39353944%_))
                                            '()
                                            _%$%g36693829%_
                                            _%$%hd-bind38773915%_))
                                   (foldr (lambda (_%$%g39363947%_
                                                   _%$%g39373950%_)
                                            (cons _%$%g39363947%_
                                                  _%$%g39373950%_))
                                          '()
                                          _%$%g36683827%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop38723896%_
                                                _%$%target38693890%_
                                                '()))
                                             (_%$%g38663883%_
                                              _%$%g38673887%_)))))
                                   (_%$%g38663883%_ _%$%g38673887%_)))))
                       (_%$%g38653953%_
                        (gx#stx-map
                         _%let-head3643%_
                         (foldr (lambda (_%$%g39563959%_ _%$%g39573962%_)
                                  (cons _%$%g39563959%_ _%$%g39573962%_))
                                '()
                                _%$%g36703830%_)))))))
              (let* ((_%__match1948319484%_
                      (lambda (_%$%e36723719%_
                               _%$%hd36733723%_
                               _%$%tl36743726%_
                               _%$%e36753729%_
                               _%$%hd36763733%_
                               _%$%tl36773736%_
                               _%$%e36783739%_
                               _%$%hd36793743%_
                               _%$%tl36803746%_
                               _%__splice1942119422%_
                               _%$%target36813749%_
                               _%$%tl36833752%_)
                        (letrec ((_%$%loop36843755%_
                                  (lambda (_%$%hd36823759%_
                                           _%$%e36883762%_
                                           _%$%hd36893763%_)
                                    (if (gx#stx-pair? _%$%hd36823759%_)
                                        (let ((_%$%e36853765%_
                                               (gx#syntax-e _%$%hd36823759%_)))
                                          (let ((_%$%lp-tl36873772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e36853765%_)))
                                                (_%$%lp-hd36863769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e36853765%_))))
                                            (if (gx#stx-pair?
                                                 _%$%lp-hd36863769%_)
                                                (let ((_%$%e36923775%_
                                                       (gx#syntax-e
                                                        _%$%lp-hd36863769%_)))
                                                  (let ((_%$%tl36943782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e36923775%_)))
                                                        (_%$%hd36933779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e36923775%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl36943782%_)
                                                        (let ((_%$%e36953785%_
                                                               (gx#syntax-e
                                                                _%$%tl36943782%_)))
                                                          (let ((_%$%tl36973792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%$%e36953785%_)))
                        (_%$%hd36963789%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e36953785%_))))
                    (if (gx#stx-null? _%$%tl36973792%_)
                        (_%$%loop36843755%_
                         _%$%lp-tl36873772%_
                         (cons _%$%hd36963789%_ _%$%e36883762%_)
                         (cons _%$%hd36933779%_ _%$%hd36893763%_))
                        (let () (declare (not safe)) (_%$%g36463712%_)))))
                (let () (declare (not safe)) (_%$%g36463712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g36463712%_)))))
                                        (let ((_%$%hd36913797%_
                                               (reverse _%$%hd36893763%_))
                                              (_%$%e36903795%_
                                               (reverse _%$%e36883762%_)))
                                          (if (gx#stx-pair/null?
                                               _%$%tl36803746%_)
                                              (let ((_%__splice1942319424%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl36803746%_
                                                      '0)))
                                                (let ((_%$%tl37003802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1942319424%_
                                                          '1)))
                                                      (_%$%target36983799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1942319424%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl37003802%_)
                                                      (letrec ((_%$%loop37013805%_
                                                                (lambda (_%$%hd36993809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%body37053812%_)
                          (if (gx#stx-pair? _%$%hd36993809%_)
                              (let ((_%$%e37023814%_
                                     (gx#syntax-e _%$%hd36993809%_)))
                                (let ((_%$%lp-tl37043821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e37023814%_)))
                                      (_%$%lp-hd37033818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e37023814%_))))
                                  (_%$%loop37013805%_
                                   _%$%lp-tl37043821%_
                                   (cons _%$%lp-hd37033818%_
                                         _%$%body37053812%_))))
                              (let ((_%$%body37063824%_
                                     (reverse _%$%body37053812%_)))
                                (let ((_%$%g36683827%_ _%$%body37063824%_)
                                      (_%$%g36693829%_ _%$%e36903795%_)
                                      (_%$%g36703830%_ _%$%hd36913797%_)
                                      (_%$%g36713831%_ _%$%hd36763733%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3641%_
                                       (foldr (lambda (_%$%g38573860%_
                                                       _%$%g38583863%_)
                                                (cons _%$%g38573860%_
                                                      _%$%g38583863%_))
                                              '()
                                              _%$%g36703830%_))
                                      (_%__kont1941919420%_
                                       _%$%g36683827%_
                                       _%$%g36693829%_
                                       _%$%g36703830%_
                                       _%$%g36713831%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g36463712%_)))))))))
                (_%$%loop37013805%_ _%$%target36983799%_ '()))
              (let () (declare (not safe)) (_%$%g36463712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g36463712%_))))))))
                          (_%$%loop36843755%_ _%$%target36813749%_ '() '()))))
                     (_%__match1945719458%_
                      (lambda (_%$%e36533972%_
                               _%$%hd36543976%_
                               _%$%tl36553979%_
                               _%$%e36563982%_
                               _%$%hd36573986%_
                               _%$%tl36583989%_
                               _%$%e36593992%_
                               _%$%hd36603996%_
                               _%$%tl36613999%_
                               _%$%e36624002%_
                               _%$%hd36634006%_
                               _%$%tl36644009%_
                               _%$%e36654012%_
                               _%$%hd36664016%_
                               _%$%tl36674019%_)
                        (let ((_%$%g36484022%_ _%$%tl36613999%_)
                              (_%$%g36494024%_ _%$%hd36664016%_)
                              (_%$%g36504025%_ _%$%hd36634006%_)
                              (_%$%g36514026%_ _%$%hd36573986%_)
                              (_%$%g36524027%_ _%$%hd36543976%_))
                          (if (_%let-head?3641%_ _%$%g36504025%_)
                              (_%__kont1941719418%_
                               _%$%g36484022%_
                               _%$%g36494024%_
                               _%$%g36504025%_
                               _%$%g36514026%_
                               _%$%g36524027%_)
                              (if (gx#stx-pair/null? _%$%hd36603996%_)
                                  (let ((_%__splice1942119422%_
                                         (gx#syntax-split-splice->vector
                                          _%$%hd36603996%_
                                          '0)))
                                    (let ((_%$%tl36833752%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1942119422%_
                                              '1)))
                                          (_%$%target36813749%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1942119422%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl36833752%_)
                                          (_%__match1948319484%_
                                           _%$%e36533972%_
                                           _%$%hd36543976%_
                                           _%$%tl36553979%_
                                           _%$%e36563982%_
                                           _%$%hd36573986%_
                                           _%$%tl36583989%_
                                           _%$%e36593992%_
                                           _%$%hd36603996%_
                                           _%$%tl36613999%_
                                           _%__splice1942119422%_
                                           _%$%target36813749%_
                                           _%$%tl36833752%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g36463712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g36463712%_))))))))
                (if (gx#stx-pair? _%__stx1941419415%_)
                    (let ((_%$%e36533972%_ (gx#syntax-e _%__stx1941419415%_)))
                      (let ((_%$%tl36553979%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e36533972%_)))
                            (_%$%hd36543976%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e36533972%_))))
                        (if (gx#stx-pair? _%$%tl36553979%_)
                            (let ((_%$%e36563982%_
                                   (gx#syntax-e _%$%tl36553979%_)))
                              (let ((_%$%tl36583989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e36563982%_)))
                                    (_%$%hd36573986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e36563982%_))))
                                (if (gx#stx-pair? _%$%tl36583989%_)
                                    (let ((_%$%e36593992%_
                                           (gx#syntax-e _%$%tl36583989%_)))
                                      (let ((_%$%tl36613999%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e36593992%_)))
                                            (_%$%hd36603996%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e36593992%_))))
                                        (if (gx#stx-pair? _%$%hd36603996%_)
                                            (let ((_%$%e36624002%_
                                                   (gx#syntax-e
                                                    _%$%hd36603996%_)))
                                              (let ((_%$%tl36644009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e36624002%_)))
                                                    (_%$%hd36634006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e36624002%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl36644009%_)
                                                    (let ((_%$%e36654012%_
                                                           (gx#syntax-e
                                                            _%$%tl36644009%_)))
                                                      (let ((_%$%tl36674019%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e36654012%_)))
                    (_%$%hd36664016%_
                     (let () (declare (not safe)) (##car _%$%e36654012%_))))
                (if (gx#stx-null? _%$%tl36674019%_)
                    (_%__match1945719458%_
                     _%$%e36533972%_
                     _%$%hd36543976%_
                     _%$%tl36553979%_
                     _%$%e36563982%_
                     _%$%hd36573986%_
                     _%$%tl36583989%_
                     _%$%e36593992%_
                     _%$%hd36603996%_
                     _%$%tl36613999%_
                     _%$%e36624002%_
                     _%$%hd36634006%_
                     _%$%tl36644009%_
                     _%$%e36654012%_
                     _%$%hd36664016%_
                     _%$%tl36674019%_)
                    (if (gx#stx-pair/null? _%$%hd36603996%_)
                        (let ((_%__splice1942119422%_
                               (gx#syntax-split-splice->vector
                                _%$%hd36603996%_
                                '0)))
                          (let ((_%$%tl36833752%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1942119422%_ '1)))
                                (_%$%target36813749%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1942119422%_ '0))))
                            (if (gx#stx-null? _%$%tl36833752%_)
                                (_%__match1948319484%_
                                 _%$%e36533972%_
                                 _%$%hd36543976%_
                                 _%$%tl36553979%_
                                 _%$%e36563982%_
                                 _%$%hd36573986%_
                                 _%$%tl36583989%_
                                 _%$%e36593992%_
                                 _%$%hd36603996%_
                                 _%$%tl36613999%_
                                 _%__splice1942119422%_
                                 _%$%target36813749%_
                                 _%$%tl36833752%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g36463712%_)))))
                        (let () (declare (not safe)) (_%$%g36463712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%hd36603996%_)
                                                        (let ((_%__splice1942119422%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%hd36603996%_
                                                                '0)))
                                                          (let ((_%$%tl36833752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1942119422%_ '1)))
                        (_%$%target36813749%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1942119422%_ '0))))
                    (if (gx#stx-null? _%$%tl36833752%_)
                        (_%__match1948319484%_
                         _%$%e36533972%_
                         _%$%hd36543976%_
                         _%$%tl36553979%_
                         _%$%e36563982%_
                         _%$%hd36573986%_
                         _%$%tl36583989%_
                         _%$%e36593992%_
                         _%$%hd36603996%_
                         _%$%tl36613999%_
                         _%__splice1942119422%_
                         _%$%target36813749%_
                         _%$%tl36833752%_)
                        (let () (declare (not safe)) (_%$%g36463712%_)))))
                (let () (declare (not safe)) (_%$%g36463712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%$%hd36603996%_)
                                                (let ((_%__splice1942119422%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%hd36603996%_
                                                        '0)))
                                                  (let ((_%$%tl36833752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1942119422%_
                                                            '1)))
                                                        (_%$%target36813749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1942119422%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl36833752%_)
                                                        (_%__match1948319484%_
                                                         _%$%e36533972%_
                                                         _%$%hd36543976%_
                                                         _%$%tl36553979%_
                                                         _%$%e36563982%_
                                                         _%$%hd36573986%_
                                                         _%$%tl36583989%_
                                                         _%$%e36593992%_
                                                         _%$%hd36603996%_
                                                         _%$%tl36613999%_
                                                         _%__splice1942119422%_
                                                         _%$%target36813749%_
                                                         _%$%tl36833752%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g36463712%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g36463712%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g36463712%_)))))
                            (let () (declare (not safe)) (_%$%g36463712%_)))))
                    (let () (declare (not safe)) (_%$%g36463712%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4176%_)
        (let* ((_%__stx1948619487%_ _%$stx4176%_)
               (_%$%g41824208%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1948619487%_))))
          (let ((_%__kont1948919490%_ (lambda () '#t))
                (_%__kont1949119492%_
                 (lambda (_%$%g41874280%_) _%$%g41874280%_))
                (_%__kont1949319494%_
                 (lambda (_%$%g41944235%_ _%$%g41954237%_ _%$%g41964238%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%$%g41954237%_
                               (cons (cons _%$%g41964238%_ _%$%g41944235%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1948619487%_)
                (let ((_%$%e41844300%_ (gx#syntax-e _%__stx1948619487%_)))
                  (let ((_%$%tl41864307%_
                         (let () (declare (not safe)) (##cdr _%$%e41844300%_)))
                        (_%$%hd41854304%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e41844300%_))))
                    (if (gx#stx-null? _%$%tl41864307%_)
                        (_%__kont1948919490%_)
                        (if (gx#stx-pair? _%$%tl41864307%_)
                            (let ((_%$%e41914270%_
                                   (gx#syntax-e _%$%tl41864307%_)))
                              (let ((_%$%tl41934277%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e41914270%_)))
                                    (_%$%hd41924274%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e41914270%_))))
                                (if (gx#stx-null? _%$%tl41934277%_)
                                    (_%__kont1949119492%_ _%$%hd41924274%_)
                                    (_%__kont1949319494%_
                                     _%$%tl41934277%_
                                     _%$%hd41924274%_
                                     _%$%hd41854304%_))))
                            (let () (declare (not safe)) (_%$%g41824208%_))))))
                (let () (declare (not safe)) (_%$%g41824208%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4318%_)
        (let* ((_%__stx1953219533%_ _%$stx4318%_)
               (_%$%g43244350%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1953219533%_))))
          (let ((_%__kont1953519536%_ (lambda () '#f))
                (_%__kont1953719538%_
                 (lambda (_%$%g43294422%_) _%$%g43294422%_))
                (_%__kont1953919540%_
                 (lambda (_%$%g43364377%_ _%$%g43374379%_ _%$%g43384380%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%$%g43374379%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%$%g43384380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g43364377%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1953219533%_)
                (let ((_%$%e43264442%_ (gx#syntax-e _%__stx1953219533%_)))
                  (let ((_%$%tl43284449%_
                         (let () (declare (not safe)) (##cdr _%$%e43264442%_)))
                        (_%$%hd43274446%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e43264442%_))))
                    (if (gx#stx-null? _%$%tl43284449%_)
                        (_%__kont1953519536%_)
                        (if (gx#stx-pair? _%$%tl43284449%_)
                            (let ((_%$%e43334412%_
                                   (gx#syntax-e _%$%tl43284449%_)))
                              (let ((_%$%tl43354419%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e43334412%_)))
                                    (_%$%hd43344416%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e43334412%_))))
                                (if (gx#stx-null? _%$%tl43354419%_)
                                    (_%__kont1953719538%_ _%$%hd43344416%_)
                                    (_%__kont1953919540%_
                                     _%$%tl43354419%_
                                     _%$%hd43344416%_
                                     _%$%hd43274446%_))))
                            (let () (declare (not safe)) (_%$%g43244350%_))))))
                (let () (declare (not safe)) (_%$%g43244350%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4460%_)
        (let* ((_%__stx1957819579%_ _%$stx4460%_)
               (_%$%g44694560%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1957819579%_))))
          (let ((_%__kont1958119582%_ (lambda () '#!void))
                (_%__kont1958319584%_
                 (lambda (_%$%g44744903%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g49224925%_ _%$%g49234928%_)
                                        (cons _%$%g49224925%_ _%$%g49234928%_))
                                      '()
                                      _%$%g44744903%_)))))
                (_%__kont1958719588%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1958919590%_
                 (lambda (_%$%g45024778%_ _%$%g45034780%_ _%$%g45044781%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%$%g45034780%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%$%g45044781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g45024778%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1959119592%_
                 (lambda (_%$%g45144716%_
                          _%$%g45154718%_
                          _%$%g45164719%_
                          _%$%g45174720%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%$%g45164719%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%$%g45154718%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%$%g45174720%_ _%$%g45144716%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1959319594%_
                 (lambda (_%$%g45334625%_
                          _%$%g45344627%_
                          _%$%g45354628%_
                          _%$%g45364629%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%$%g45354628%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%$%g46504653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g46514656%_)
                  (cons _%$%g46504653%_ _%$%g46514656%_))
                '()
                _%$%g45344627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%$%g45364629%_
                                                 _%$%g45334625%_)
                                           '())))))))
            (let* ((_%__match1973919740%_
                    (lambda (_%$%e45374567%_
                             _%$%hd45384571%_
                             _%$%tl45394574%_
                             _%$%e45404577%_
                             _%$%hd45414581%_
                             _%$%tl45424584%_
                             _%$%e45434587%_
                             _%$%hd45444591%_
                             _%$%tl45454594%_
                             _%__splice1959519596%_
                             _%$%target45464597%_
                             _%$%tl45484600%_)
                      (letrec ((_%$%loop45494603%_
                                (lambda (_%$%hd45474607%_ _%$%body45534610%_)
                                  (if (gx#stx-pair? _%$%hd45474607%_)
                                      (let ((_%$%e45504612%_
                                             (gx#syntax-e _%$%hd45474607%_)))
                                        (let ((_%$%lp-tl45524619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e45504612%_)))
                                              (_%$%lp-hd45514616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e45504612%_))))
                                          (_%$%loop45494603%_
                                           _%$%lp-tl45524619%_
                                           (cons _%$%lp-hd45514616%_
                                                 _%$%body45534610%_))))
                                      (let ((_%$%body45544622%_
                                             (reverse _%$%body45534610%_)))
                                        (_%__kont1959319594%_
                                         _%$%tl45424584%_
                                         _%$%body45544622%_
                                         _%$%hd45444591%_
                                         _%$%hd45384571%_))))))
                        (_%$%loop45494603%_ _%$%target45464597%_ '()))))
                   (_%__match1963519636%_
                    (lambda (_%$%e44754845%_
                             _%$%hd44764849%_
                             _%$%tl44774852%_
                             _%$%e44784855%_
                             _%$%hd44794859%_
                             _%$%tl44804862%_
                             _%$%e44814865%_
                             _%$%hd44824869%_
                             _%$%tl44834872%_
                             _%__splice1958519586%_
                             _%$%target44844875%_
                             _%$%tl44864878%_)
                      (letrec ((_%$%loop44874881%_
                                (lambda (_%$%hd44854885%_ _%$%body44914888%_)
                                  (if (gx#stx-pair? _%$%hd44854885%_)
                                      (let ((_%$%e44884890%_
                                             (gx#syntax-e _%$%hd44854885%_)))
                                        (let ((_%$%lp-tl44904897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e44884890%_)))
                                              (_%$%lp-hd44894894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e44884890%_))))
                                          (_%$%loop44874881%_
                                           _%$%lp-tl44904897%_
                                           (cons _%$%lp-hd44894894%_
                                                 _%$%body44914888%_))))
                                      (let ((_%$%body44924900%_
                                             (reverse _%$%body44914888%_)))
                                        (if (gx#stx-null? _%$%tl44804862%_)
                                            (_%__kont1958319584%_
                                             _%$%body44924900%_)
                                            (_%__kont1958719588%_)))))))
                        (_%$%loop44874881%_ _%$%target44844875%_ '())))))
              (if (gx#stx-pair? _%__stx1957819579%_)
                  (let ((_%$%e44714938%_ (gx#syntax-e _%__stx1957819579%_)))
                    (let ((_%$%tl44734945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e44714938%_)))
                          (_%$%hd44724942%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e44714938%_))))
                      (if (gx#stx-null? _%$%tl44734945%_)
                          (_%__kont1958119582%_)
                          (if (gx#stx-pair? _%$%tl44734945%_)
                              (let ((_%$%e44784855%_
                                     (gx#syntax-e _%$%tl44734945%_)))
                                (let ((_%$%tl44804862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e44784855%_)))
                                      (_%$%hd44794859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e44784855%_))))
                                  (if (gx#stx-pair? _%$%hd44794859%_)
                                      (let ((_%$%e44814865%_
                                             (gx#syntax-e _%$%hd44794859%_)))
                                        (let ((_%$%tl44834872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e44814865%_)))
                                              (_%$%hd44824869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e44814865%_))))
                                          (if (gx#identifier? _%$%hd44824869%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g21868_|
                                                   _%$%hd44824869%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl44834872%_)
                                                      (let ((_%__splice1958519586%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl44834872%_
                                                              '0)))
                                                        (let ((_%$%tl44864878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1958519586%_ '1)))
                      (_%$%target44844875%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1958519586%_ '0))))
                  (if (gx#stx-null? _%$%tl44864878%_)
                      (_%__match1963519636%_
                       _%$%e44714938%_
                       _%$%hd44724942%_
                       _%$%tl44734945%_
                       _%$%e44784855%_
                       _%$%hd44794859%_
                       _%$%tl44804862%_
                       _%$%e44814865%_
                       _%$%hd44824869%_
                       _%$%tl44834872%_
                       _%__splice1958519586%_
                       _%$%target44844875%_
                       _%$%tl44864878%_)
                      (_%__kont1958719588%_))))
              (_%__kont1958719588%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%$%tl44834872%_)
                                                      (_%__kont1958919590%_
                                                       _%$%tl44804862%_
                                                       _%$%hd44824869%_
                                                       _%$%hd44724942%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl44834872%_)
                                                          (let ((_%$%e45274696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl44834872%_)))
                    (let ((_%$%tl45294703%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e45274696%_)))
                          (_%$%hd45284700%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e45274696%_))))
                      (if (gx#identifier? _%$%hd45284700%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g21869_|
                               _%$%hd45284700%_)
                              (if (gx#stx-pair? _%$%tl45294703%_)
                                  (let ((_%$%e45304706%_
                                         (gx#syntax-e _%$%tl45294703%_)))
                                    (let ((_%$%tl45324713%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e45304706%_)))
                                          (_%$%hd45314710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e45304706%_))))
                                      (if (gx#stx-null? _%$%tl45324713%_)
                                          (_%__kont1959119592%_
                                           _%$%tl44804862%_
                                           _%$%hd45314710%_
                                           _%$%hd44824869%_
                                           _%$%hd44724942%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl44834872%_)
                                              (let ((_%__splice1959519596%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl44834872%_
                                                      '0)))
                                                (let ((_%$%tl45484600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1959519596%_
                                                          '1)))
                                                      (_%$%target45464597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1959519596%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl45484600%_)
                                                      (_%__match1973919740%_
                                                       _%$%e44714938%_
                                                       _%$%hd44724942%_
                                                       _%$%tl44734945%_
                                                       _%$%e44784855%_
                                                       _%$%hd44794859%_
                                                       _%$%tl44804862%_
                                                       _%$%e44814865%_
                                                       _%$%hd44824869%_
                                                       _%$%tl44834872%_
                                                       _%__splice1959519596%_
                                                       _%$%target45464597%_
                                                       _%$%tl45484600%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g44694560%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g44694560%_))))))
                                  (if (gx#stx-pair/null? _%$%tl44834872%_)
                                      (let ((_%__splice1959519596%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl44834872%_
                                              '0)))
                                        (let ((_%$%tl45484600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1959519596%_
                                                  '1)))
                                              (_%$%target45464597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1959519596%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl45484600%_)
                                              (_%__match1973919740%_
                                               _%$%e44714938%_
                                               _%$%hd44724942%_
                                               _%$%tl44734945%_
                                               _%$%e44784855%_
                                               _%$%hd44794859%_
                                               _%$%tl44804862%_
                                               _%$%e44814865%_
                                               _%$%hd44824869%_
                                               _%$%tl44834872%_
                                               _%__splice1959519596%_
                                               _%$%target45464597%_
                                               _%$%tl45484600%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g44694560%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g44694560%_))))
                              (if (gx#stx-pair/null? _%$%tl44834872%_)
                                  (let ((_%__splice1959519596%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl44834872%_
                                          '0)))
                                    (let ((_%$%tl45484600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1959519596%_
                                              '1)))
                                          (_%$%target45464597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1959519596%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl45484600%_)
                                          (_%__match1973919740%_
                                           _%$%e44714938%_
                                           _%$%hd44724942%_
                                           _%$%tl44734945%_
                                           _%$%e44784855%_
                                           _%$%hd44794859%_
                                           _%$%tl44804862%_
                                           _%$%e44814865%_
                                           _%$%hd44824869%_
                                           _%$%tl44834872%_
                                           _%__splice1959519596%_
                                           _%$%target45464597%_
                                           _%$%tl45484600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g44694560%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g44694560%_))))
                          (if (gx#stx-pair/null? _%$%tl44834872%_)
                              (let ((_%__splice1959519596%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl44834872%_
                                      '0)))
                                (let ((_%$%tl45484600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1959519596%_
                                          '1)))
                                      (_%$%target45464597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1959519596%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl45484600%_)
                                      (_%__match1973919740%_
                                       _%$%e44714938%_
                                       _%$%hd44724942%_
                                       _%$%tl44734945%_
                                       _%$%e44784855%_
                                       _%$%hd44794859%_
                                       _%$%tl44804862%_
                                       _%$%e44814865%_
                                       _%$%hd44824869%_
                                       _%$%tl44834872%_
                                       _%__splice1959519596%_
                                       _%$%target45464597%_
                                       _%$%tl45484600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g44694560%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g44694560%_))))))
                  (if (gx#stx-pair/null? _%$%tl44834872%_)
                      (let ((_%__splice1959519596%_
                             (gx#syntax-split-splice->vector
                              _%$%tl44834872%_
                              '0)))
                        (let ((_%$%tl45484600%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1959519596%_ '1)))
                              (_%$%target45464597%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1959519596%_ '0))))
                          (if (gx#stx-null? _%$%tl45484600%_)
                              (_%__match1973919740%_
                               _%$%e44714938%_
                               _%$%hd44724942%_
                               _%$%tl44734945%_
                               _%$%e44784855%_
                               _%$%hd44794859%_
                               _%$%tl44804862%_
                               _%$%e44814865%_
                               _%$%hd44824869%_
                               _%$%tl44834872%_
                               _%__splice1959519596%_
                               _%$%target45464597%_
                               _%$%tl45484600%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g44694560%_)))))
                      (let () (declare (not safe)) (_%$%g44694560%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null?
                                                   _%$%tl44834872%_)
                                                  (_%__kont1958919590%_
                                                   _%$%tl44804862%_
                                                   _%$%hd44824869%_
                                                   _%$%hd44724942%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl44834872%_)
                                                      (let ((_%$%e45274696%_
                                                             (gx#syntax-e
                                                              _%$%tl44834872%_)))
                                                        (let ((_%$%tl45294703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e45274696%_)))
                      (_%$%hd45284700%_
                       (let () (declare (not safe)) (##car _%$%e45274696%_))))
                  (if (gx#identifier? _%$%hd45284700%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g21869_|
                           _%$%hd45284700%_)
                          (if (gx#stx-pair? _%$%tl45294703%_)
                              (let ((_%$%e45304706%_
                                     (gx#syntax-e _%$%tl45294703%_)))
                                (let ((_%$%tl45324713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e45304706%_)))
                                      (_%$%hd45314710%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e45304706%_))))
                                  (if (gx#stx-null? _%$%tl45324713%_)
                                      (_%__kont1959119592%_
                                       _%$%tl44804862%_
                                       _%$%hd45314710%_
                                       _%$%hd44824869%_
                                       _%$%hd44724942%_)
                                      (if (gx#stx-pair/null? _%$%tl44834872%_)
                                          (let ((_%__splice1959519596%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl44834872%_
                                                  '0)))
                                            (let ((_%$%tl45484600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1959519596%_
                                                      '1)))
                                                  (_%$%target45464597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1959519596%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl45484600%_)
                                                  (_%__match1973919740%_
                                                   _%$%e44714938%_
                                                   _%$%hd44724942%_
                                                   _%$%tl44734945%_
                                                   _%$%e44784855%_
                                                   _%$%hd44794859%_
                                                   _%$%tl44804862%_
                                                   _%$%e44814865%_
                                                   _%$%hd44824869%_
                                                   _%$%tl44834872%_
                                                   _%__splice1959519596%_
                                                   _%$%target45464597%_
                                                   _%$%tl45484600%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g44694560%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g44694560%_))))))
                              (if (gx#stx-pair/null? _%$%tl44834872%_)
                                  (let ((_%__splice1959519596%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl44834872%_
                                          '0)))
                                    (let ((_%$%tl45484600%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1959519596%_
                                              '1)))
                                          (_%$%target45464597%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1959519596%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl45484600%_)
                                          (_%__match1973919740%_
                                           _%$%e44714938%_
                                           _%$%hd44724942%_
                                           _%$%tl44734945%_
                                           _%$%e44784855%_
                                           _%$%hd44794859%_
                                           _%$%tl44804862%_
                                           _%$%e44814865%_
                                           _%$%hd44824869%_
                                           _%$%tl44834872%_
                                           _%__splice1959519596%_
                                           _%$%target45464597%_
                                           _%$%tl45484600%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g44694560%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g44694560%_))))
                          (if (gx#stx-pair/null? _%$%tl44834872%_)
                              (let ((_%__splice1959519596%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl44834872%_
                                      '0)))
                                (let ((_%$%tl45484600%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1959519596%_
                                          '1)))
                                      (_%$%target45464597%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1959519596%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl45484600%_)
                                      (_%__match1973919740%_
                                       _%$%e44714938%_
                                       _%$%hd44724942%_
                                       _%$%tl44734945%_
                                       _%$%e44784855%_
                                       _%$%hd44794859%_
                                       _%$%tl44804862%_
                                       _%$%e44814865%_
                                       _%$%hd44824869%_
                                       _%$%tl44834872%_
                                       _%__splice1959519596%_
                                       _%$%target45464597%_
                                       _%$%tl45484600%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g44694560%_)))))
                              (let () (declare (not safe)) (_%$%g44694560%_))))
                      (if (gx#stx-pair/null? _%$%tl44834872%_)
                          (let ((_%__splice1959519596%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl44834872%_
                                  '0)))
                            (let ((_%$%tl45484600%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1959519596%_ '1)))
                                  (_%$%target45464597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1959519596%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl45484600%_)
                                  (_%__match1973919740%_
                                   _%$%e44714938%_
                                   _%$%hd44724942%_
                                   _%$%tl44734945%_
                                   _%$%e44784855%_
                                   _%$%hd44794859%_
                                   _%$%tl44804862%_
                                   _%$%e44814865%_
                                   _%$%hd44824869%_
                                   _%$%tl44834872%_
                                   _%__splice1959519596%_
                                   _%$%target45464597%_
                                   _%$%tl45484600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g44694560%_)))))
                          (let () (declare (not safe)) (_%$%g44694560%_))))))
              (if (gx#stx-pair/null? _%$%tl44834872%_)
                  (let ((_%__splice1959519596%_
                         (gx#syntax-split-splice->vector _%$%tl44834872%_ '0)))
                    (let ((_%$%tl45484600%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1959519596%_ '1)))
                          (_%$%target45464597%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1959519596%_ '0))))
                      (if (gx#stx-null? _%$%tl45484600%_)
                          (_%__match1973919740%_
                           _%$%e44714938%_
                           _%$%hd44724942%_
                           _%$%tl44734945%_
                           _%$%e44784855%_
                           _%$%hd44794859%_
                           _%$%tl44804862%_
                           _%$%e44814865%_
                           _%$%hd44824869%_
                           _%$%tl44834872%_
                           _%__splice1959519596%_
                           _%$%target45464597%_
                           _%$%tl45484600%_)
                          (let () (declare (not safe)) (_%$%g44694560%_)))))
                  (let () (declare (not safe)) (_%$%g44694560%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g44694560%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g44694560%_))))))
                  (let () (declare (not safe)) (_%$%g44694560%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4958%_)
        (let* ((_%$%g49624990%_
                (lambda (_%$%g49634986%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g49634986%_)))
               (_%$%g49615087%_
                (lambda (_%$%g49634994%_)
                  (if (gx#stx-pair? _%$%g49634994%_)
                      (let ((_%$%e49674997%_ (gx#syntax-e _%$%g49634994%_)))
                        (let ((_%$%hd49685001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e49674997%_)))
                              (_%$%tl49695004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e49674997%_))))
                          (if (gx#stx-pair? _%$%tl49695004%_)
                              (let ((_%$%e49705007%_
                                     (gx#syntax-e _%$%tl49695004%_)))
                                (let ((_%$%hd49715011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e49705007%_)))
                                      (_%$%tl49725014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e49705007%_))))
                                  (if (gx#stx-pair? _%$%tl49725014%_)
                                      (let ((_%$%e49735017%_
                                             (gx#syntax-e _%$%tl49725014%_)))
                                        (let ((_%$%hd49745021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e49735017%_)))
                                              (_%$%tl49755024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e49735017%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl49755024%_)
                                              (let ((_g21870_
                                                     (gx#syntax-split-splice
                                                      _%$%tl49755024%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21871_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21870_)
                                                               (##values-length
                                                                _g21870_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21871_ 2)))
                (error "Context expects 2 values" _g21871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target49765027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21870_
                                                            0)))
                                                        (_%$%tl49785030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21870_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl49785030%_)
                                                        (letrec ((_%$%loop49795033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd49775037%_ _%$%rest49835040%_)
                            (if (gx#stx-pair? _%$%hd49775037%_)
                                (let ((_%$%e49805042%_
                                       (gx#syntax-e _%$%hd49775037%_)))
                                  (let ((_%$%lp-hd49815046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e49805042%_)))
                                        (_%$%lp-tl49825049%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e49805042%_))))
                                    (_%$%loop49795033%_
                                     _%$%lp-tl49825049%_
                                     (cons _%$%lp-hd49815046%_
                                           _%$%rest49835040%_))))
                                (let ((_%$%rest49845052%_
                                       (reverse _%$%rest49835040%_)))
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _%$%hd49715011%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons _%$%hd49745021%_
                                                                (foldr (lambda (_%$%g50785081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g50795084%_)
                                 (cons _%$%g50785081%_ _%$%g50795084%_))
                               '()
                               _%$%rest49845052%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))))))
                  (_%$%loop49795033%_ _%$%target49765027%_ '()))
                (_%$%g49624990%_ _%$%g49634994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g49624990%_
                                               _%$%g49634994%_))))
                                      (_%$%g49624990%_ _%$%g49634994%_))))
                              (_%$%g49624990%_ _%$%g49634994%_))))
                      (_%$%g49624990%_ _%$%g49634994%_)))))
          (_%$%g49615087%_ _%$stx4958%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5092%_)
        (let* ((_%$%g50965124%_
                (lambda (_%$%g50975120%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g50975120%_)))
               (_%$%g50955221%_
                (lambda (_%$%g50975128%_)
                  (if (gx#stx-pair? _%$%g50975128%_)
                      (let ((_%$%e51015131%_ (gx#syntax-e _%$%g50975128%_)))
                        (let ((_%$%hd51025135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e51015131%_)))
                              (_%$%tl51035138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e51015131%_))))
                          (if (gx#stx-pair? _%$%tl51035138%_)
                              (let ((_%$%e51045141%_
                                     (gx#syntax-e _%$%tl51035138%_)))
                                (let ((_%$%hd51055145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e51045141%_)))
                                      (_%$%tl51065148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e51045141%_))))
                                  (if (gx#stx-pair? _%$%tl51065148%_)
                                      (let ((_%$%e51075151%_
                                             (gx#syntax-e _%$%tl51065148%_)))
                                        (let ((_%$%hd51085155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e51075151%_)))
                                              (_%$%tl51095158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e51075151%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl51095158%_)
                                              (let ((_g21872_
                                                     (gx#syntax-split-splice
                                                      _%$%tl51095158%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21873_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21872_)
                                                               (##values-length
                                                                _g21872_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21873_ 2)))
                (error "Context expects 2 values" _g21873_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target51105161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21872_
                                                            0)))
                                                        (_%$%tl51125164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21872_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl51125164%_)
                                                        (letrec ((_%$%loop51135167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd51115171%_ _%$%rest51175174%_)
                            (if (gx#stx-pair? _%$%hd51115171%_)
                                (let ((_%$%e51145176%_
                                       (gx#syntax-e _%$%hd51115171%_)))
                                  (let ((_%$%lp-hd51155180%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e51145176%_)))
                                        (_%$%lp-tl51165183%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e51145176%_))))
                                    (_%$%loop51135167%_
                                     _%$%lp-tl51165183%_
                                     (cons _%$%lp-hd51155180%_
                                           _%$%rest51175174%_))))
                                (let ((_%$%rest51185186%_
                                       (reverse _%$%rest51175174%_)))
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _%$%hd51055145%_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _%$%hd51085155%_
                              (foldr (lambda (_%$%g52125215%_ _%$%g52135218%_)
                                       (cons _%$%g52125215%_ _%$%g52135218%_))
                                     '()
                                     _%$%rest51185186%_)))
                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  (_%$%loop51135167%_ _%$%target51105161%_ '()))
                (_%$%g50965124%_ _%$%g50975128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g50965124%_
                                               _%$%g50975128%_))))
                                      (_%$%g50965124%_ _%$%g50975128%_))))
                              (_%$%g50965124%_ _%$%g50975128%_))))
                      (_%$%g50965124%_ _%$%g50975128%_)))))
          (_%$%g50955221%_ _%$stx5092%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5226%_)
        (let* ((_%$%g52295253%_
                (lambda (_%$%g52305249%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g52305249%_)))
               (_%$%g52285336%_
                (lambda (_%$%g52305257%_)
                  (if (gx#stx-pair? _%$%g52305257%_)
                      (let ((_%$%e52335260%_ (gx#syntax-e _%$%g52305257%_)))
                        (let ((_%$%hd52345264%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e52335260%_)))
                              (_%$%tl52355267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e52335260%_))))
                          (if (gx#stx-pair? _%$%tl52355267%_)
                              (let ((_%$%e52365270%_
                                     (gx#syntax-e _%$%tl52355267%_)))
                                (let ((_%$%hd52375274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e52365270%_)))
                                      (_%$%tl52385277%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e52365270%_))))
                                  (if (gx#stx-pair/null? _%$%tl52385277%_)
                                      (let ((_g21874_
                                             (gx#syntax-split-splice
                                              _%$%tl52385277%_
                                              '0)))
                                        (begin
                                          (let ((_g21875_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21874_)
                                                       (##values-length
                                                        _g21874_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21875_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21875_)))
                                          (let ((_%$%target52395280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21874_ 0)))
                                                (_%$%tl52415283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21874_ 1))))
                                            (if (gx#stx-null? _%$%tl52415283%_)
                                                (letrec ((_%$%loop52425286%_
                                                          (lambda (_%$%hd52405290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%detail52465293%_)
                    (if (gx#stx-pair? _%$%hd52405290%_)
                        (let ((_%$%e52435295%_ (gx#syntax-e _%$%hd52405290%_)))
                          (let ((_%$%lp-hd52445299%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e52435295%_)))
                                (_%$%lp-tl52455302%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e52435295%_))))
                            (_%$%loop52425286%_
                             _%$%lp-tl52455302%_
                             (cons _%$%lp-hd52445299%_ _%$%detail52465293%_))))
                        (let ((_%$%detail52475305%_
                               (reverse _%$%detail52465293%_)))
                          (if (gx#stx-string? _%$%hd52375274%_)
                              (apply gx#raise-syntax-error
                                     '#f
                                     (gx#stx-e _%$%hd52375274%_)
                                     _%stx5226%_
                                     (gx#syntax->list
                                      (foldr (lambda (_%$%g53275330%_
                                                      _%$%g53285333%_)
                                               (cons _%$%g53275330%_
                                                     _%$%g53285333%_))
                                             '()
                                             _%$%detail52475305%_)))
                              (_%$%g52295253%_ _%$%g52305257%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop52425286%_
                                                   _%$%target52395280%_
                                                   '()))
                                                (_%$%g52295253%_
                                                 _%$%g52305257%_)))))
                                      (_%$%g52295253%_ _%$%g52305257%_))))
                              (_%$%g52295253%_ _%$%g52305257%_))))
                      (_%$%g52295253%_ _%$%g52305257%_)))))
          (_%$%g52285336%_ _%stx5226%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#compilation-target?|
      (lambda (_%$stx5341%_)
        (let* ((_%$%g53455359%_
                (lambda (_%$%g53465355%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g53465355%_)))
               (_%$%g53445400%_
                (lambda (_%$%g53465363%_)
                  (if (gx#stx-pair? _%$%g53465363%_)
                      (let ((_%$%e53485366%_ (gx#syntax-e _%$%g53465363%_)))
                        (let ((_%$%hd53495370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e53485366%_)))
                              (_%$%tl53505373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e53485366%_))))
                          (if (gx#stx-pair? _%$%tl53505373%_)
                              (let ((_%$%e53515376%_
                                     (gx#syntax-e _%$%tl53505373%_)))
                                (let ((_%$%hd53525380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e53515376%_)))
                                      (_%$%tl53535383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e53515376%_))))
                                  (if (gx#stx-null? _%$%tl53535383%_)
                                      (cons (gx#datum->syntax '#f 'eq?)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'current-compilation-target)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%$%hd53525380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g53455359%_ _%$%g53465363%_))))
                              (_%$%g53455359%_ _%$%g53465363%_))))
                      (_%$%g53455359%_ _%$%g53465363%_)))))
          (_%$%g53445400%_ _%$stx5341%_))))))
