(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20954_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20955_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20958_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20959_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1927%_)
        (let* ((_%g19311959%_
                (lambda (_%g19321955%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19321955%_)))
               (_%g19302060%_
                (lambda (_%g19321963%_)
                  (if (gx#stx-pair? _%g19321963%_)
                      (let ((_%e19381966%_ (gx#syntax-e _%g19321963%_)))
                        (let ((_%hd19371970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19381966%_)))
                              (_%tl19361973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19381966%_))))
                          (if (gx#stx-pair? _%tl19361973%_)
                              (let ((_%e19411976%_
                                     (gx#syntax-e _%tl19361973%_)))
                                (let ((_%hd19401980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19411976%_)))
                                      (_%tl19391983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19411976%_))))
                                  (if (gx#stx-pair? _%tl19391983%_)
                                      (let ((_%e19441986%_
                                             (gx#syntax-e _%tl19391983%_)))
                                        (let ((_%hd19431990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19441986%_)))
                                              (_%tl19421993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19441986%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl19421993%_)
                                              (let ((_g20946_
                                                     (gx#syntax-split-splice
                                                      _%tl19421993%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20946_)
                                                               (##vector-length
                                                                _g20946_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20947_ 2)))
                (error "Context expects 2 values" _g20947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target19451996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20946_
                                                            0)))
                                                        (_%tl19471999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20946_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl19471999%_)
                                                        (letrec ((_%loop19482002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd19462006%_ _%clauses19522009%_)
                            (if (gx#stx-pair? _%hd19462006%_)
                                (let ((_%e19492012%_
                                       (gx#syntax-e _%hd19462006%_)))
                                  (let ((_%lp-hd19502016%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e19492012%_)))
                                        (_%lp-tl19512019%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e19492012%_))))
                                    (_%loop19482002%_
                                     _%lp-tl19512019%_
                                     (cons _%lp-hd19502016%_
                                           _%clauses19522009%_))))
                                (let ((_%clauses19532022%_
                                       (reverse _%clauses19522009%_)))
                                  ((lambda (_%L2026%_ _%L2028%_ _%L2029%_)
                                     (if (gx#identifier? _%L2029%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%L2029%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%L2028%_
                               (foldr (lambda (_%g20512054%_ _%g20522057%_)
                                        (cons _%g20512054%_ _%g20522057%_))
                                      '()
                                      _%L2026%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19311959%_ _%g19321963%_)))
                                   _%clauses19532022%_
                                   _%hd19431990%_
                                   _%hd19401980%_))))))
                  (_%loop19482002%_ _%target19451996%_ '()))
                (_%g19311959%_ _%g19321963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19311959%_ _%g19321963%_))))
                                      (_%g19311959%_ _%g19321963%_))))
                              (_%g19311959%_ _%g19321963%_))))
                      (_%g19311959%_ _%g19321963%_)))))
          (_%g19302060%_ _%$stx1927%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2065%_)
        (let* ((_%__stx1852718528%_ _%$stx2065%_)
               (_%g20702111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1852718528%_))))
          (let ((_%__kont1853018531%_
                 (lambda (_%L2241%_ _%L2243%_ _%L2244%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2244%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2243%_)
                     (cons _%L2241%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1853218533%_
                 (lambda (_%L2168%_ _%L2170%_ _%L2171%_ _%L2172%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2172%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2171%_)
                     (cons _%L2170%_ (cons _%L2168%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1859218593%_
                    (lambda (_%e20932118%_
                             _%hd20922122%_
                             _%tl20912125%_
                             _%e20962128%_
                             _%hd20952132%_
                             _%tl20942135%_
                             _%e20992138%_
                             _%hd20982142%_
                             _%tl20972145%_
                             _%e21022148%_
                             _%hd21012152%_
                             _%tl21002155%_
                             _%e21052158%_
                             _%hd21042162%_
                             _%tl21032165%_)
                      (let ((_%L2168%_ _%hd21042162%_)
                            (_%L2170%_ _%hd21012152%_)
                            (_%L2171%_ _%tl20972145%_)
                            (_%L2172%_ _%hd20982142%_))
                        (if (gx#identifier? _%L2172%_)
                            (_%__kont1853218533%_
                             _%L2168%_
                             _%L2170%_
                             _%L2171%_
                             _%L2172%_)
                            (let () (declare (not safe)) (_%g20702111%_))))))
                   (_%__match1856018561%_
                    (lambda (_%e20772201%_
                             _%hd20762205%_
                             _%tl20752208%_
                             _%e20802211%_
                             _%hd20792215%_
                             _%tl20782218%_
                             _%e20832221%_
                             _%hd20822225%_
                             _%tl20812228%_
                             _%e20862231%_
                             _%hd20852235%_
                             _%tl20842238%_)
                      (let ((_%L2241%_ _%hd20852235%_)
                            (_%L2243%_ _%tl20812228%_)
                            (_%L2244%_ _%hd20822225%_))
                        (if (gx#identifier? _%L2244%_)
                            (_%__kont1853018531%_
                             _%L2241%_
                             _%L2243%_
                             _%L2244%_)
                            (let () (declare (not safe)) (_%g20702111%_)))))))
              (if (gx#stx-pair? _%__stx1852718528%_)
                  (let ((_%e20772201%_ (gx#syntax-e _%__stx1852718528%_)))
                    (let ((_%tl20752208%_
                           (let () (declare (not safe)) (##cdr _%e20772201%_)))
                          (_%hd20762205%_
                           (let ()
                             (declare (not safe))
                             (##car _%e20772201%_))))
                      (if (gx#stx-pair? _%tl20752208%_)
                          (let ((_%e20802211%_ (gx#syntax-e _%tl20752208%_)))
                            (let ((_%tl20782218%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e20802211%_)))
                                  (_%hd20792215%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e20802211%_))))
                              (if (gx#stx-pair? _%hd20792215%_)
                                  (let ((_%e20832221%_
                                         (gx#syntax-e _%hd20792215%_)))
                                    (let ((_%tl20812228%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e20832221%_)))
                                          (_%hd20822225%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e20832221%_))))
                                      (if (gx#stx-pair? _%tl20782218%_)
                                          (let ((_%e20862231%_
                                                 (gx#syntax-e _%tl20782218%_)))
                                            (let ((_%tl20842238%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e20862231%_)))
                                                  (_%hd20852235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e20862231%_))))
                                              (if (gx#stx-null? _%tl20842238%_)
                                                  (_%__match1856018561%_
                                                   _%e20772201%_
                                                   _%hd20762205%_
                                                   _%tl20752208%_
                                                   _%e20802211%_
                                                   _%hd20792215%_
                                                   _%tl20782218%_
                                                   _%e20832221%_
                                                   _%hd20822225%_
                                                   _%tl20812228%_
                                                   _%e20862231%_
                                                   _%hd20852235%_
                                                   _%tl20842238%_)
                                                  (if (gx#stx-pair?
                                                       _%tl20842238%_)
                                                      (let ((_%e21052158%_
                                                             (gx#syntax-e
                                                              _%tl20842238%_)))
                                                        (let ((_%tl21032165%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21052158%_)))
                      (_%hd21042162%_
                       (let () (declare (not safe)) (##car _%e21052158%_))))
                  (if (gx#stx-null? _%tl21032165%_)
                      (_%__match1859218593%_
                       _%e20772201%_
                       _%hd20762205%_
                       _%tl20752208%_
                       _%e20802211%_
                       _%hd20792215%_
                       _%tl20782218%_
                       _%e20832221%_
                       _%hd20822225%_
                       _%tl20812228%_
                       _%e20862231%_
                       _%hd20852235%_
                       _%tl20842238%_
                       _%e21052158%_
                       _%hd21042162%_
                       _%tl21032165%_)
                      (let () (declare (not safe)) (_%g20702111%_)))))
              (let () (declare (not safe)) (_%g20702111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g20702111%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g20702111%_)))))
                          (let () (declare (not safe)) (_%g20702111%_)))))
                  (let () (declare (not safe)) (_%g20702111%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2266%_)
        (let* ((_%__stx1859518596%_ _%$stx2266%_)
               (_%g22712310%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1859518596%_))))
          (let ((_%__kont1859818599%_
                 (lambda (_%L2432%_ _%L2434%_ _%L2435%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2435%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2434%_
                                                 (foldr (lambda (_%g24542457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g24552460%_)
                  (cons _%g24542457%_ _%g24552460%_))
                '()
                _%L2432%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1860218603%_
                 (lambda (_%L2347%_ _%L2349%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2349%_ (cons _%L2347%_ '()))))))
            (let* ((_%__match1865018651%_
                    (lambda (_%e22982317%_
                             _%hd22972321%_
                             _%tl22962324%_
                             _%e23012327%_
                             _%hd23002331%_
                             _%tl22992334%_
                             _%e23042337%_
                             _%hd23032341%_
                             _%tl23022344%_)
                      (let ((_%L2347%_ _%hd23032341%_)
                            (_%L2349%_ _%hd23002331%_))
                        (if (gx#identifier? _%L2349%_)
                            (_%__kont1860218603%_ _%L2347%_ _%L2349%_)
                            (let () (declare (not safe)) (_%g22712310%_))))))
                   (_%__match1864218643%_
                    (lambda (_%e22982317%_
                             _%hd22972321%_
                             _%tl22962324%_
                             _%e23012327%_
                             _%hd23002331%_
                             _%tl22992334%_)
                      (if (gx#stx-pair? _%tl22992334%_)
                          (let ((_%e23042337%_ (gx#syntax-e _%tl22992334%_)))
                            (let ((_%tl23022344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23042337%_)))
                                  (_%hd23032341%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23042337%_))))
                              (if (gx#stx-null? _%tl23022344%_)
                                  (_%__match1865018651%_
                                   _%e22982317%_
                                   _%hd22972321%_
                                   _%tl22962324%_
                                   _%e23012327%_
                                   _%hd23002331%_
                                   _%tl22992334%_
                                   _%e23042337%_
                                   _%hd23032341%_
                                   _%tl23022344%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g22712310%_)))))
                          (let () (declare (not safe)) (_%g22712310%_)))))
                   (_%__match1863018631%_
                    (lambda (_%e22782372%_
                             _%hd22772376%_
                             _%tl22762379%_
                             _%e22812382%_
                             _%hd22802386%_
                             _%tl22792389%_
                             _%e22842392%_
                             _%hd22832396%_
                             _%tl22822399%_
                             _%__splice1860018601%_
                             _%target22852402%_
                             _%tl22872405%_)
                      (letrec ((_%loop22882408%_
                                (lambda (_%hd22862412%_ _%body22922415%_)
                                  (if (gx#stx-pair? _%hd22862412%_)
                                      (let ((_%e22892418%_
                                             (gx#syntax-e _%hd22862412%_)))
                                        (let ((_%lp-tl22912425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e22892418%_)))
                                              (_%lp-hd22902422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e22892418%_))))
                                          (_%loop22882408%_
                                           _%lp-tl22912425%_
                                           (cons _%lp-hd22902422%_
                                                 _%body22922415%_))))
                                      (let ((_%body22932428%_
                                             (reverse _%body22922415%_)))
                                        (let ((_%L2432%_ _%body22932428%_)
                                              (_%L2434%_ _%tl22822399%_)
                                              (_%L2435%_ _%hd22832396%_))
                                          (if (gx#identifier? _%L2435%_)
                                              (_%__kont1859818599%_
                                               _%L2432%_
                                               _%L2434%_
                                               _%L2435%_)
                                              (_%__match1864218643%_
                                               _%e22782372%_
                                               _%hd22772376%_
                                               _%tl22762379%_
                                               _%e22812382%_
                                               _%hd22802386%_
                                               _%tl22792389%_))))))))
                        (_%loop22882408%_ _%target22852402%_ '())))))
              (if (gx#stx-pair? _%__stx1859518596%_)
                  (let ((_%e22782372%_ (gx#syntax-e _%__stx1859518596%_)))
                    (let ((_%tl22762379%_
                           (let () (declare (not safe)) (##cdr _%e22782372%_)))
                          (_%hd22772376%_
                           (let ()
                             (declare (not safe))
                             (##car _%e22782372%_))))
                      (if (gx#stx-pair? _%tl22762379%_)
                          (let ((_%e22812382%_ (gx#syntax-e _%tl22762379%_)))
                            (let ((_%tl22792389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e22812382%_)))
                                  (_%hd22802386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e22812382%_))))
                              (if (gx#stx-pair? _%hd22802386%_)
                                  (let ((_%e22842392%_
                                         (gx#syntax-e _%hd22802386%_)))
                                    (let ((_%tl22822399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e22842392%_)))
                                          (_%hd22832396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e22842392%_))))
                                      (if (gx#stx-pair/null? _%tl22792389%_)
                                          (let ((_%__splice1860018601%_
                                                 (gx#syntax-split-splice
                                                  _%tl22792389%_
                                                  '0)))
                                            (let ((_%tl22872405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1860018601%_
                                                      '1)))
                                                  (_%target22852402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1860018601%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl22872405%_)
                                                  (_%__match1863018631%_
                                                   _%e22782372%_
                                                   _%hd22772376%_
                                                   _%tl22762379%_
                                                   _%e22812382%_
                                                   _%hd22802386%_
                                                   _%tl22792389%_
                                                   _%e22842392%_
                                                   _%hd22832396%_
                                                   _%tl22822399%_
                                                   _%__splice1860018601%_
                                                   _%target22852402%_
                                                   _%tl22872405%_)
                                                  (if (gx#stx-pair?
                                                       _%tl22792389%_)
                                                      (let ((_%e23042337%_
                                                             (gx#syntax-e
                                                              _%tl22792389%_)))
                                                        (let ((_%tl23022344%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23042337%_)))
                      (_%hd23032341%_
                       (let () (declare (not safe)) (##car _%e23042337%_))))
                  (if (gx#stx-null? _%tl23022344%_)
                      (_%__match1865018651%_
                       _%e22782372%_
                       _%hd22772376%_
                       _%tl22762379%_
                       _%e22812382%_
                       _%hd22802386%_
                       _%tl22792389%_
                       _%e23042337%_
                       _%hd23032341%_
                       _%tl23022344%_)
                      (let () (declare (not safe)) (_%g22712310%_)))))
              (let () (declare (not safe)) (_%g22712310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl22792389%_)
                                              (let ((_%e23042337%_
                                                     (gx#syntax-e
                                                      _%tl22792389%_)))
                                                (let ((_%tl23022344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23042337%_)))
                                                      (_%hd23032341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23042337%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23022344%_)
                                                      (_%__match1865018651%_
                                                       _%e22782372%_
                                                       _%hd22772376%_
                                                       _%tl22762379%_
                                                       _%e22812382%_
                                                       _%hd22802386%_
                                                       _%tl22792389%_
                                                       _%e23042337%_
                                                       _%hd23032341%_
                                                       _%tl23022344%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g22712310%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g22712310%_))))))
                                  (if (gx#stx-pair? _%tl22792389%_)
                                      (let ((_%e23042337%_
                                             (gx#syntax-e _%tl22792389%_)))
                                        (let ((_%tl23022344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23042337%_)))
                                              (_%hd23032341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23042337%_))))
                                          (if (gx#stx-null? _%tl23022344%_)
                                              (_%__match1865018651%_
                                               _%e22782372%_
                                               _%hd22772376%_
                                               _%tl22762379%_
                                               _%e22812382%_
                                               _%hd22802386%_
                                               _%tl22792389%_
                                               _%e23042337%_
                                               _%hd23032341%_
                                               _%tl23022344%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g22712310%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g22712310%_))))))
                          (let () (declare (not safe)) (_%g22712310%_)))))
                  (let () (declare (not safe)) (_%g22712310%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2468%_)
        (let* ((_%__stx1865318654%_ _%$stx2468%_)
               (_%g24732512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1865318654%_))))
          (let ((_%__kont1865618657%_
                 (lambda (_%L2634%_ _%L2636%_ _%L2637%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2637%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2636%_
                                                 (foldr (lambda (_%g26562659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g26572662%_)
                  (cons _%g26562659%_ _%g26572662%_))
                '()
                _%L2634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1866018661%_
                 (lambda (_%L2549%_ _%L2551%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2551%_ '()) (cons _%L2549%_ '()))))))
            (let* ((_%__match1870818709%_
                    (lambda (_%e25002519%_
                             _%hd24992523%_
                             _%tl24982526%_
                             _%e25032529%_
                             _%hd25022533%_
                             _%tl25012536%_
                             _%e25062539%_
                             _%hd25052543%_
                             _%tl25042546%_)
                      (let ((_%L2549%_ _%hd25052543%_)
                            (_%L2551%_ _%hd25022533%_))
                        (if (gx#identifier? _%L2551%_)
                            (_%__kont1866018661%_ _%L2549%_ _%L2551%_)
                            (let () (declare (not safe)) (_%g24732512%_))))))
                   (_%__match1870018701%_
                    (lambda (_%e25002519%_
                             _%hd24992523%_
                             _%tl24982526%_
                             _%e25032529%_
                             _%hd25022533%_
                             _%tl25012536%_)
                      (if (gx#stx-pair? _%tl25012536%_)
                          (let ((_%e25062539%_ (gx#syntax-e _%tl25012536%_)))
                            (let ((_%tl25042546%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25062539%_)))
                                  (_%hd25052543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25062539%_))))
                              (if (gx#stx-null? _%tl25042546%_)
                                  (_%__match1870818709%_
                                   _%e25002519%_
                                   _%hd24992523%_
                                   _%tl24982526%_
                                   _%e25032529%_
                                   _%hd25022533%_
                                   _%tl25012536%_
                                   _%e25062539%_
                                   _%hd25052543%_
                                   _%tl25042546%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g24732512%_)))))
                          (let () (declare (not safe)) (_%g24732512%_)))))
                   (_%__match1868818689%_
                    (lambda (_%e24802574%_
                             _%hd24792578%_
                             _%tl24782581%_
                             _%e24832584%_
                             _%hd24822588%_
                             _%tl24812591%_
                             _%e24862594%_
                             _%hd24852598%_
                             _%tl24842601%_
                             _%__splice1865818659%_
                             _%target24872604%_
                             _%tl24892607%_)
                      (letrec ((_%loop24902610%_
                                (lambda (_%hd24882614%_ _%body24942617%_)
                                  (if (gx#stx-pair? _%hd24882614%_)
                                      (let ((_%e24912620%_
                                             (gx#syntax-e _%hd24882614%_)))
                                        (let ((_%lp-tl24932627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e24912620%_)))
                                              (_%lp-hd24922624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e24912620%_))))
                                          (_%loop24902610%_
                                           _%lp-tl24932627%_
                                           (cons _%lp-hd24922624%_
                                                 _%body24942617%_))))
                                      (let ((_%body24952630%_
                                             (reverse _%body24942617%_)))
                                        (let ((_%L2634%_ _%body24952630%_)
                                              (_%L2636%_ _%tl24842601%_)
                                              (_%L2637%_ _%hd24852598%_))
                                          (if (gx#identifier? _%L2637%_)
                                              (_%__kont1865618657%_
                                               _%L2634%_
                                               _%L2636%_
                                               _%L2637%_)
                                              (_%__match1870018701%_
                                               _%e24802574%_
                                               _%hd24792578%_
                                               _%tl24782581%_
                                               _%e24832584%_
                                               _%hd24822588%_
                                               _%tl24812591%_))))))))
                        (_%loop24902610%_ _%target24872604%_ '())))))
              (if (gx#stx-pair? _%__stx1865318654%_)
                  (let ((_%e24802574%_ (gx#syntax-e _%__stx1865318654%_)))
                    (let ((_%tl24782581%_
                           (let () (declare (not safe)) (##cdr _%e24802574%_)))
                          (_%hd24792578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e24802574%_))))
                      (if (gx#stx-pair? _%tl24782581%_)
                          (let ((_%e24832584%_ (gx#syntax-e _%tl24782581%_)))
                            (let ((_%tl24812591%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e24832584%_)))
                                  (_%hd24822588%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e24832584%_))))
                              (if (gx#stx-pair? _%hd24822588%_)
                                  (let ((_%e24862594%_
                                         (gx#syntax-e _%hd24822588%_)))
                                    (let ((_%tl24842601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e24862594%_)))
                                          (_%hd24852598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e24862594%_))))
                                      (if (gx#stx-pair/null? _%tl24812591%_)
                                          (let ((_%__splice1865818659%_
                                                 (gx#syntax-split-splice
                                                  _%tl24812591%_
                                                  '0)))
                                            (let ((_%tl24892607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1865818659%_
                                                      '1)))
                                                  (_%target24872604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1865818659%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl24892607%_)
                                                  (_%__match1868818689%_
                                                   _%e24802574%_
                                                   _%hd24792578%_
                                                   _%tl24782581%_
                                                   _%e24832584%_
                                                   _%hd24822588%_
                                                   _%tl24812591%_
                                                   _%e24862594%_
                                                   _%hd24852598%_
                                                   _%tl24842601%_
                                                   _%__splice1865818659%_
                                                   _%target24872604%_
                                                   _%tl24892607%_)
                                                  (if (gx#stx-pair?
                                                       _%tl24812591%_)
                                                      (let ((_%e25062539%_
                                                             (gx#syntax-e
                                                              _%tl24812591%_)))
                                                        (let ((_%tl25042546%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25062539%_)))
                      (_%hd25052543%_
                       (let () (declare (not safe)) (##car _%e25062539%_))))
                  (if (gx#stx-null? _%tl25042546%_)
                      (_%__match1870818709%_
                       _%e24802574%_
                       _%hd24792578%_
                       _%tl24782581%_
                       _%e24832584%_
                       _%hd24822588%_
                       _%tl24812591%_
                       _%e25062539%_
                       _%hd25052543%_
                       _%tl25042546%_)
                      (let () (declare (not safe)) (_%g24732512%_)))))
              (let () (declare (not safe)) (_%g24732512%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl24812591%_)
                                              (let ((_%e25062539%_
                                                     (gx#syntax-e
                                                      _%tl24812591%_)))
                                                (let ((_%tl25042546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25062539%_)))
                                                      (_%hd25052543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25062539%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25042546%_)
                                                      (_%__match1870818709%_
                                                       _%e24802574%_
                                                       _%hd24792578%_
                                                       _%tl24782581%_
                                                       _%e24832584%_
                                                       _%hd24822588%_
                                                       _%tl24812591%_
                                                       _%e25062539%_
                                                       _%hd25052543%_
                                                       _%tl25042546%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g24732512%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g24732512%_))))))
                                  (if (gx#stx-pair? _%tl24812591%_)
                                      (let ((_%e25062539%_
                                             (gx#syntax-e _%tl24812591%_)))
                                        (let ((_%tl25042546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25062539%_)))
                                              (_%hd25052543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25062539%_))))
                                          (if (gx#stx-null? _%tl25042546%_)
                                              (_%__match1870818709%_
                                               _%e24802574%_
                                               _%hd24792578%_
                                               _%tl24782581%_
                                               _%e24832584%_
                                               _%hd24822588%_
                                               _%tl24812591%_
                                               _%e25062539%_
                                               _%hd25052543%_
                                               _%tl25042546%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g24732512%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g24732512%_))))))
                          (let () (declare (not safe)) (_%g24732512%_)))))
                  (let () (declare (not safe)) (_%g24732512%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2670%_)
        (let* ((_%__stx1871118712%_ _%$stx2670%_)
               (_%g26752720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1871118712%_))))
          (let ((_%__kont1871418715%_
                 (lambda (_%L2878%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g28942897%_ _%g28952900%_)
                                        (cons _%g28942897%_ _%g28952900%_))
                                      '()
                                      _%L2878%_)))))
                (_%__kont1871818719%_
                 (lambda (_%L2787%_ _%L2789%_ _%L2790%_ _%L2791%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%L2790%_ '())
                               (cons (cons _%L2791%_
                                           (cons _%L2789%_
                                                 (foldr (lambda (_%g28122815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28132818%_)
                  (cons _%g28122815%_ _%g28132818%_))
                '()
                _%L2787%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1877018771%_
                    (lambda (_%e26992727%_
                             _%hd26982731%_
                             _%tl26972734%_
                             _%e27022737%_
                             _%hd27012741%_
                             _%tl27002744%_
                             _%e27052747%_
                             _%hd27042751%_
                             _%tl27032754%_
                             _%__splice1872018721%_
                             _%target27062757%_
                             _%tl27082760%_)
                      (letrec ((_%loop27092763%_
                                (lambda (_%hd27072767%_ _%body27132770%_)
                                  (if (gx#stx-pair? _%hd27072767%_)
                                      (let ((_%e27102773%_
                                             (gx#syntax-e _%hd27072767%_)))
                                        (let ((_%lp-tl27122780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27102773%_)))
                                              (_%lp-hd27112777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27102773%_))))
                                          (_%loop27092763%_
                                           _%lp-tl27122780%_
                                           (cons _%lp-hd27112777%_
                                                 _%body27132770%_))))
                                      (let ((_%body27142783%_
                                             (reverse _%body27132770%_)))
                                        (_%__kont1871818719%_
                                         _%body27142783%_
                                         _%tl27032754%_
                                         _%hd27042751%_
                                         _%hd26982731%_))))))
                        (_%loop27092763%_ _%target27062757%_ '()))))
                   (_%__match1874418745%_
                    (lambda (_%e26802828%_
                             _%hd26792832%_
                             _%tl26782835%_
                             _%e26832838%_
                             _%hd26822842%_
                             _%tl26812845%_
                             _%__splice1871618717%_
                             _%target26842848%_
                             _%tl26862851%_)
                      (letrec ((_%loop26872854%_
                                (lambda (_%hd26852858%_ _%body26912861%_)
                                  (if (gx#stx-pair? _%hd26852858%_)
                                      (let ((_%e26882864%_
                                             (gx#syntax-e _%hd26852858%_)))
                                        (let ((_%lp-tl26902871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26882864%_)))
                                              (_%lp-hd26892868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26882864%_))))
                                          (_%loop26872854%_
                                           _%lp-tl26902871%_
                                           (cons _%lp-hd26892868%_
                                                 _%body26912861%_))))
                                      (let ((_%body26922874%_
                                             (reverse _%body26912861%_)))
                                        (_%__kont1871418715%_
                                         _%body26922874%_))))))
                        (_%loop26872854%_ _%target26842848%_ '())))))
              (if (gx#stx-pair? _%__stx1871118712%_)
                  (let ((_%e26802828%_ (gx#syntax-e _%__stx1871118712%_)))
                    (let ((_%tl26782835%_
                           (let () (declare (not safe)) (##cdr _%e26802828%_)))
                          (_%hd26792832%_
                           (let ()
                             (declare (not safe))
                             (##car _%e26802828%_))))
                      (if (gx#stx-pair? _%tl26782835%_)
                          (let ((_%e26832838%_ (gx#syntax-e _%tl26782835%_)))
                            (let ((_%tl26812845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e26832838%_)))
                                  (_%hd26822842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e26832838%_))))
                              (if (gx#stx-null? _%hd26822842%_)
                                  (if (gx#stx-pair/null? _%tl26812845%_)
                                      (let ((_%__splice1871618717%_
                                             (gx#syntax-split-splice
                                              _%tl26812845%_
                                              '0)))
                                        (let ((_%tl26862851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1871618717%_
                                                  '1)))
                                              (_%target26842848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1871618717%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl26862851%_)
                                              (_%__match1874418745%_
                                               _%e26802828%_
                                               _%hd26792832%_
                                               _%tl26782835%_
                                               _%e26832838%_
                                               _%hd26822842%_
                                               _%tl26812845%_
                                               _%__splice1871618717%_
                                               _%target26842848%_
                                               _%tl26862851%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g26752720%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26752720%_)))
                                  (if (gx#stx-pair? _%hd26822842%_)
                                      (let ((_%e27052747%_
                                             (gx#syntax-e _%hd26822842%_)))
                                        (let ((_%tl27032754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27052747%_)))
                                              (_%hd27042751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27052747%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl26812845%_)
                                              (let ((_%__splice1872018721%_
                                                     (gx#syntax-split-splice
                                                      _%tl26812845%_
                                                      '0)))
                                                (let ((_%tl27082760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1872018721%_
                                                          '1)))
                                                      (_%target27062757%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1872018721%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27082760%_)
                                                      (_%__match1877018771%_
                                                       _%e26802828%_
                                                       _%hd26792832%_
                                                       _%tl26782835%_
                                                       _%e26832838%_
                                                       _%hd26822842%_
                                                       _%tl26812845%_
                                                       _%e27052747%_
                                                       _%hd27042751%_
                                                       _%tl27032754%_
                                                       _%__splice1872018721%_
                                                       _%target27062757%_
                                                       _%tl27082760%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g26752720%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g26752720%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26752720%_))))))
                          (let () (declare (not safe)) (_%g26752720%_)))))
                  (let () (declare (not safe)) (_%g26752720%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2909%_)
        (let* ((_%__stx1877318774%_ _%$stx2909%_)
               (_%g29142978%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1877318774%_))))
          (let ((_%__kont1877618777%_
                 (lambda (_%L3184%_ _%L3186%_ _%L3187%_ _%L3188%_ _%L3189%_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _%L3189%_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_%g32183221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%g32193224%_)
                                    (cons _%g32183221%_ _%g32193224%_))
                                  _%L3186%_
                                  _%L3188%_)
                           (foldr (lambda (_%g32163227%_ _%g32173230%_)
                                    (cons _%g32163227%_ _%g32173230%_))
                                  '()
                                  _%L3184%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L3189%_ '())))
                         (foldr (lambda (_%g32143233%_ _%g32153236%_)
                                  (cons _%g32143233%_ _%g32153236%_))
                                '()
                                _%L3187%_))))
                (_%__kont1878218783%_
                 (lambda (_%L3035%_ _%L3037%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%L3037%_
                                     (foldr (lambda (_%g30543057%_
                                                     _%g30553060%_)
                                              (cons _%g30543057%_
                                                    _%g30553060%_))
                                            '()
                                            _%L3035%_)))))))
            (let* ((_%__match1883018831%_
                    (lambda (_%e29602985%_
                             _%hd29592989%_
                             _%tl29582992%_
                             _%e29632995%_
                             _%hd29622999%_
                             _%tl29613002%_
                             _%__splice1878418785%_
                             _%target29643005%_
                             _%tl29663008%_)
                      (letrec ((_%loop29673011%_
                                (lambda (_%hd29653015%_ _%body29713018%_)
                                  (if (gx#stx-pair? _%hd29653015%_)
                                      (let ((_%e29683021%_
                                             (gx#syntax-e _%hd29653015%_)))
                                        (let ((_%lp-tl29703028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29683021%_)))
                                              (_%lp-hd29693025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29683021%_))))
                                          (_%loop29673011%_
                                           _%lp-tl29703028%_
                                           (cons _%lp-hd29693025%_
                                                 _%body29713018%_))))
                                      (let ((_%body29723031%_
                                             (reverse _%body29713018%_)))
                                        (_%__kont1878218783%_
                                         _%body29723031%_
                                         _%hd29622999%_))))))
                        (_%loop29673011%_ _%target29643005%_ '()))))
                   (_%__match1882218823%_
                    (lambda (_%e29602985%_
                             _%hd29592989%_
                             _%tl29582992%_
                             _%e29632995%_
                             _%hd29622999%_
                             _%tl29613002%_)
                      (if (gx#stx-pair/null? _%tl29613002%_)
                          (let ((_%__splice1878418785%_
                                 (gx#syntax-split-splice _%tl29613002%_ '0)))
                            (let ((_%tl29663008%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1878418785%_ '1)))
                                  (_%target29643005%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1878418785%_
                                      '0))))
                              (if (gx#stx-null? _%tl29663008%_)
                                  (_%__match1883018831%_
                                   _%e29602985%_
                                   _%hd29592989%_
                                   _%tl29582992%_
                                   _%e29632995%_
                                   _%hd29622999%_
                                   _%tl29613002%_
                                   _%__splice1878418785%_
                                   _%target29643005%_
                                   _%tl29663008%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29142978%_)))))
                          (let () (declare (not safe)) (_%g29142978%_)))))
                   (_%__match1881018811%_
                    (lambda (_%e29233070%_
                             _%hd29223074%_
                             _%tl29213077%_
                             _%e29263080%_
                             _%hd29253084%_
                             _%tl29243087%_
                             _%e29293090%_
                             _%hd29283094%_
                             _%tl29273097%_
                             _%__splice1877818779%_
                             _%target29303100%_
                             _%tl29323103%_)
                      (letrec ((_%loop29333106%_
                                (lambda (_%hd29313110%_
                                         _%arg29373113%_
                                         _%var29383115%_)
                                  (if (gx#stx-pair? _%hd29313110%_)
                                      (let ((_%e29343118%_
                                             (gx#syntax-e _%hd29313110%_)))
                                        (let ((_%lp-tl29363125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29343118%_)))
                                              (_%lp-hd29353122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29343118%_))))
                                          (if (gx#stx-pair? _%lp-hd29353122%_)
                                              (let ((_%e29433128%_
                                                     (gx#syntax-e
                                                      _%lp-hd29353122%_)))
                                                (let ((_%tl29413135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29433128%_)))
                                                      (_%hd29423132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29433128%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29413135%_)
                                                      (let ((_%e29463138%_
                                                             (gx#syntax-e
                                                              _%tl29413135%_)))
                                                        (let ((_%tl29443145%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29463138%_)))
                      (_%hd29453142%_
                       (let () (declare (not safe)) (##car _%e29463138%_))))
                  (if (gx#stx-null? _%tl29443145%_)
                      (_%loop29333106%_
                       _%lp-tl29363125%_
                       (cons _%hd29453142%_ _%arg29373113%_)
                       (cons _%hd29423132%_ _%var29383115%_))
                      (_%__match1882218823%_
                       _%e29233070%_
                       _%hd29223074%_
                       _%tl29213077%_
                       _%e29263080%_
                       _%hd29253084%_
                       _%tl29243087%_))))
              (_%__match1882218823%_
               _%e29233070%_
               _%hd29223074%_
               _%tl29213077%_
               _%e29263080%_
               _%hd29253084%_
               _%tl29243087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1882218823%_
                                               _%e29233070%_
                                               _%hd29223074%_
                                               _%tl29213077%_
                                               _%e29263080%_
                                               _%hd29253084%_
                                               _%tl29243087%_))))
                                      (let ((_%var29403151%_
                                             (reverse _%var29383115%_))
                                            (_%arg29393148%_
                                             (reverse _%arg29373113%_)))
                                        (if (gx#stx-pair/null? _%tl29273097%_)
                                            (let ((_%__splice1878018781%_
                                                   (gx#syntax-split-splice
                                                    _%tl29273097%_
                                                    '0)))
                                              (let ((_%tl29493157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1878018781%_
                                                        '1)))
                                                    (_%target29473154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1878018781%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29493157%_)
                                                    (letrec ((_%loop29503160%_
                                                              (lambda (_%hd29483164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body29543167%_)
                        (if (gx#stx-pair? _%hd29483164%_)
                            (let ((_%e29513170%_ (gx#syntax-e _%hd29483164%_)))
                              (let ((_%lp-tl29533177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29513170%_)))
                                    (_%lp-hd29523174%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29513170%_))))
                                (_%loop29503160%_
                                 _%lp-tl29533177%_
                                 (cons _%lp-hd29523174%_ _%body29543167%_))))
                            (let ((_%body29553180%_
                                   (reverse _%body29543167%_)))
                              (let ((_%L3184%_ _%body29553180%_)
                                    (_%L3186%_ _%tl29323103%_)
                                    (_%L3187%_ _%arg29393148%_)
                                    (_%L3188%_ _%var29403151%_)
                                    (_%L3189%_ _%hd29253084%_))
                                (if (gx#identifier? _%L3189%_)
                                    (_%__kont1877618777%_
                                     _%L3184%_
                                     _%L3186%_
                                     _%L3187%_
                                     _%L3188%_
                                     _%L3189%_)
                                    (_%__match1882218823%_
                                     _%e29233070%_
                                     _%hd29223074%_
                                     _%tl29213077%_
                                     _%e29263080%_
                                     _%hd29253084%_
                                     _%tl29243087%_))))))))
              (_%loop29503160%_ _%target29473154%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1882218823%_
                                                     _%e29233070%_
                                                     _%hd29223074%_
                                                     _%tl29213077%_
                                                     _%e29263080%_
                                                     _%hd29253084%_
                                                     _%tl29243087%_))))
                                            (_%__match1882218823%_
                                             _%e29233070%_
                                             _%hd29223074%_
                                             _%tl29213077%_
                                             _%e29263080%_
                                             _%hd29253084%_
                                             _%tl29243087%_)))))))
                        (_%loop29333106%_ _%target29303100%_ '() '())))))
              (if (gx#stx-pair? _%__stx1877318774%_)
                  (let ((_%e29233070%_ (gx#syntax-e _%__stx1877318774%_)))
                    (let ((_%tl29213077%_
                           (let () (declare (not safe)) (##cdr _%e29233070%_)))
                          (_%hd29223074%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29233070%_))))
                      (if (gx#stx-pair? _%tl29213077%_)
                          (let ((_%e29263080%_ (gx#syntax-e _%tl29213077%_)))
                            (let ((_%tl29243087%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29263080%_)))
                                  (_%hd29253084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29263080%_))))
                              (if (gx#stx-pair? _%tl29243087%_)
                                  (let ((_%e29293090%_
                                         (gx#syntax-e _%tl29243087%_)))
                                    (let ((_%tl29273097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29293090%_)))
                                          (_%hd29283094%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29293090%_))))
                                      (if (gx#stx-pair/null? _%hd29283094%_)
                                          (let ((_%__splice1877818779%_
                                                 (gx#syntax-split-splice
                                                  _%hd29283094%_
                                                  '0)))
                                            (let ((_%tl29323103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1877818779%_
                                                      '1)))
                                                  (_%target29303100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1877818779%_
                                                      '0))))
                                              (_%__match1881018811%_
                                               _%e29233070%_
                                               _%hd29223074%_
                                               _%tl29213077%_
                                               _%e29263080%_
                                               _%hd29253084%_
                                               _%tl29243087%_
                                               _%e29293090%_
                                               _%hd29283094%_
                                               _%tl29273097%_
                                               _%__splice1877818779%_
                                               _%target29303100%_
                                               _%tl29323103%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29243087%_)
                                              (let ((_%__splice1878418785%_
                                                     (gx#syntax-split-splice
                                                      _%tl29243087%_
                                                      '0)))
                                                (let ((_%tl29663008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1878418785%_
                                                          '1)))
                                                      (_%target29643005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1878418785%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl29663008%_)
                                                      (_%__match1883018831%_
                                                       _%e29233070%_
                                                       _%hd29223074%_
                                                       _%tl29213077%_
                                                       _%e29263080%_
                                                       _%hd29253084%_
                                                       _%tl29243087%_
                                                       _%__splice1878418785%_
                                                       _%target29643005%_
                                                       _%tl29663008%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29142978%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29142978%_))))))
                                  (if (gx#stx-pair/null? _%tl29243087%_)
                                      (let ((_%__splice1878418785%_
                                             (gx#syntax-split-splice
                                              _%tl29243087%_
                                              '0)))
                                        (let ((_%tl29663008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1878418785%_
                                                  '1)))
                                              (_%target29643005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1878418785%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl29663008%_)
                                              (_%__match1883018831%_
                                               _%e29233070%_
                                               _%hd29223074%_
                                               _%tl29213077%_
                                               _%e29263080%_
                                               _%hd29253084%_
                                               _%tl29243087%_
                                               _%__splice1878418785%_
                                               _%target29643005%_
                                               _%tl29663008%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29142978%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29142978%_))))))
                          (let () (declare (not safe)) (_%g29142978%_)))))
                  (let () (declare (not safe)) (_%g29142978%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3246%_)
        (let* ((_%g32503274%_
                (lambda (_%g32513270%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32513270%_)))
               (_%g32493359%_
                (lambda (_%g32513278%_)
                  (if (gx#stx-pair? _%g32513278%_)
                      (let ((_%e32563281%_ (gx#syntax-e _%g32513278%_)))
                        (let ((_%hd32553285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32563281%_)))
                              (_%tl32543288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32563281%_))))
                          (if (gx#stx-pair? _%tl32543288%_)
                              (let ((_%e32593291%_
                                     (gx#syntax-e _%tl32543288%_)))
                                (let ((_%hd32583295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32593291%_)))
                                      (_%tl32573298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32593291%_))))
                                  (if (gx#stx-pair/null? _%tl32573298%_)
                                      (let ((_g20948_
                                             (gx#syntax-split-splice
                                              _%tl32573298%_
                                              '0)))
                                        (begin
                                          (let ((_g20949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20948_)
                                                       (##vector-length
                                                        _g20948_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20949_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20949_)))
                                          (let ((_%target32603301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20948_ 0)))
                                                (_%tl32623304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20948_ 1))))
                                            (if (gx#stx-null? _%tl32623304%_)
                                                (letrec ((_%loop32633307%_
                                                          (lambda (_%hd32613311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body32673314%_)
                    (if (gx#stx-pair? _%hd32613311%_)
                        (let ((_%e32643317%_ (gx#syntax-e _%hd32613311%_)))
                          (let ((_%lp-hd32653321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e32643317%_)))
                                (_%lp-tl32663324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e32643317%_))))
                            (_%loop32633307%_
                             _%lp-tl32663324%_
                             (cons _%lp-hd32653321%_ _%body32673314%_))))
                        (let ((_%body32683327%_ (reverse _%body32673314%_)))
                          ((lambda (_%L3331%_ _%L3333%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%L3333%_
                                               (foldr (lambda (_%g33503353%_
                                                               _%g33513356%_)
                                                        (cons _%g33503353%_
                                                              _%g33513356%_))
                                                      '()
                                                      _%L3331%_)))))
                           _%body32683327%_
                           _%hd32583295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop32633307%_
                                                   _%target32603301%_
                                                   '()))
                                                (_%g32503274%_
                                                 _%g32513278%_)))))
                                      (_%g32503274%_ _%g32513278%_))))
                              (_%g32503274%_ _%g32513278%_))))
                      (_%g32503274%_ _%g32513278%_)))))
          (_%g32493359%_ _%$stx3246%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3364%_)
        (let* ((_%g33683392%_
                (lambda (_%g33693388%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33693388%_)))
               (_%g33673477%_
                (lambda (_%g33693396%_)
                  (if (gx#stx-pair? _%g33693396%_)
                      (let ((_%e33743399%_ (gx#syntax-e _%g33693396%_)))
                        (let ((_%hd33733403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e33743399%_)))
                              (_%tl33723406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e33743399%_))))
                          (if (gx#stx-pair? _%tl33723406%_)
                              (let ((_%e33773409%_
                                     (gx#syntax-e _%tl33723406%_)))
                                (let ((_%hd33763413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e33773409%_)))
                                      (_%tl33753416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e33773409%_))))
                                  (if (gx#stx-pair/null? _%tl33753416%_)
                                      (let ((_g20950_
                                             (gx#syntax-split-splice
                                              _%tl33753416%_
                                              '0)))
                                        (begin
                                          (let ((_g20951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20950_)
                                                       (##vector-length
                                                        _g20950_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20951_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20951_)))
                                          (let ((_%target33783419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20950_ 0)))
                                                (_%tl33803422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20950_ 1))))
                                            (if (gx#stx-null? _%tl33803422%_)
                                                (letrec ((_%loop33813425%_
                                                          (lambda (_%hd33793429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33853432%_)
                    (if (gx#stx-pair? _%hd33793429%_)
                        (let ((_%e33823435%_ (gx#syntax-e _%hd33793429%_)))
                          (let ((_%lp-hd33833439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33823435%_)))
                                (_%lp-tl33843442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33823435%_))))
                            (_%loop33813425%_
                             _%lp-tl33843442%_
                             (cons _%lp-hd33833439%_ _%body33853432%_))))
                        (let ((_%body33863445%_ (reverse _%body33853432%_)))
                          ((lambda (_%L3449%_ _%L3451%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%L3451%_
                                               (foldr (lambda (_%g34683471%_
                                                               _%g34693474%_)
                                                        (cons _%g34683471%_
                                                              _%g34693474%_))
                                                      '()
                                                      _%L3449%_)))))
                           _%body33863445%_
                           _%hd33763413%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33813425%_
                                                   _%target33783419%_
                                                   '()))
                                                (_%g33683392%_
                                                 _%g33693396%_)))))
                                      (_%g33683392%_ _%g33693396%_))))
                              (_%g33683392%_ _%g33693396%_))))
                      (_%g33683392%_ _%g33693396%_)))))
          (_%g33673477%_ _%$stx3364%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3482%_)
        (let* ((_%g34863510%_
                (lambda (_%g34873506%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34873506%_)))
               (_%g34853595%_
                (lambda (_%g34873514%_)
                  (if (gx#stx-pair? _%g34873514%_)
                      (let ((_%e34923517%_ (gx#syntax-e _%g34873514%_)))
                        (let ((_%hd34913521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34923517%_)))
                              (_%tl34903524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34923517%_))))
                          (if (gx#stx-pair? _%tl34903524%_)
                              (let ((_%e34953527%_
                                     (gx#syntax-e _%tl34903524%_)))
                                (let ((_%hd34943531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34953527%_)))
                                      (_%tl34933534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34953527%_))))
                                  (if (gx#stx-pair/null? _%tl34933534%_)
                                      (let ((_g20952_
                                             (gx#syntax-split-splice
                                              _%tl34933534%_
                                              '0)))
                                        (begin
                                          (let ((_g20953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20952_)
                                                       (##vector-length
                                                        _g20952_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20953_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20953_)))
                                          (let ((_%target34963537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20952_ 0)))
                                                (_%tl34983540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20952_ 1))))
                                            (if (gx#stx-null? _%tl34983540%_)
                                                (letrec ((_%loop34993543%_
                                                          (lambda (_%hd34973547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35033550%_)
                    (if (gx#stx-pair? _%hd34973547%_)
                        (let ((_%e35003553%_ (gx#syntax-e _%hd34973547%_)))
                          (let ((_%lp-hd35013557%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e35003553%_)))
                                (_%lp-tl35023560%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e35003553%_))))
                            (_%loop34993543%_
                             _%lp-tl35023560%_
                             (cons _%lp-hd35013557%_ _%body35033550%_))))
                        (let ((_%body35043563%_ (reverse _%body35033550%_)))
                          ((lambda (_%L3567%_ _%L3569%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%L3569%_
                                               (foldr (lambda (_%g35863589%_
                                                               _%g35873592%_)
                                                        (cons _%g35863589%_
                                                              _%g35873592%_))
                                                      '()
                                                      _%L3567%_)))))
                           _%body35043563%_
                           _%hd34943531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop34993543%_
                                                   _%target34963537%_
                                                   '()))
                                                (_%g34863510%_
                                                 _%g34873514%_)))))
                                      (_%g34863510%_ _%g34873514%_))))
                              (_%g34863510%_ _%g34873514%_))))
                      (_%g34863510%_ _%g34873514%_)))))
          (_%g34853595%_ _%$stx3482%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3600%_)
        (letrec ((_%let-head?3603%_
                  (lambda (_%x4083%_)
                    (let* ((_%__stx1883318834%_ _%x4083%_)
                           (_%g40874098%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1883318834%_))))
                      (let ((_%__kont1883618837%_
                             (lambda (_%L4126%_)
                               (gx#stx-andmap gx#identifier? _%L4126%_)))
                            (_%__kont1883818839%_
                             (lambda () (gx#identifier? _%x4083%_))))
                        (if (gx#stx-pair? _%__stx1883318834%_)
                            (let ((_%e40924116%_
                                   (gx#syntax-e _%__stx1883318834%_)))
                              (let ((_%tl40904123%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40924116%_)))
                                    (_%hd40914120%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40924116%_))))
                                (if (gx#identifier? _%hd40914120%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20954_|
                                         _%hd40914120%_)
                                        (_%__kont1883618837%_ _%tl40904123%_)
                                        (_%__kont1883818839%_))
                                    (_%__kont1883818839%_))))
                            (_%__kont1883818839%_))))))
                 (_%let-head3605%_
                  (lambda (_%x4023%_)
                    (let* ((_%__stx1885318854%_ _%x4023%_)
                           (_%g40274038%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1885318854%_))))
                      (let ((_%__kont1885618857%_
                             (lambda (_%L4066%_) _%L4066%_))
                            (_%__kont1885818859%_
                             (lambda () (list _%x4023%_))))
                        (if (gx#stx-pair? _%__stx1885318854%_)
                            (let ((_%e40324056%_
                                   (gx#syntax-e _%__stx1885318854%_)))
                              (let ((_%tl40304063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40324056%_)))
                                    (_%hd40314060%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40324056%_))))
                                (if (gx#identifier? _%hd40314060%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20955_|
                                         _%hd40314060%_)
                                        (_%__kont1885618857%_ _%tl40304063%_)
                                        (_%__kont1885818859%_))
                                    (_%__kont1885818859%_))))
                            (_%__kont1885818859%_)))))))
          (let* ((_%__stx1887318874%_ _%stx3600%_)
                 (_%g36083674%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1887318874%_))))
            (let ((_%__kont1887618877%_
                   (lambda (_%L3992%_ _%L3994%_ _%L3995%_ _%L3996%_ _%L3997%_)
                     (cons _%L3997%_
                           (cons _%L3996%_
                                 (cons (cons (cons _%L3995%_
                                                   (cons _%L3994%_ '()))
                                             '())
                                       _%L3992%_)))))
                  (_%__kont1887818879%_
                   (lambda (_%L3795%_ _%L3797%_ _%L3798%_ _%L3799%_)
                     (let* ((_%g38343851%_
                             (lambda (_%g38353847%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38353847%_)))
                            (_%g38333923%_
                             (lambda (_%g38353855%_)
                               (if (gx#stx-pair/null? _%g38353855%_)
                                   (let ((_g20956_
                                          (gx#syntax-split-splice
                                           _%g38353855%_
                                           '0)))
                                     (begin
                                       (let ((_g20957_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20956_)
                                                    (##vector-length _g20956_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20957_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20957_)))
                                       (let ((_%target38373858%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20956_ 0)))
                                             (_%tl38393861%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20956_ 1))))
                                         (if (gx#stx-null? _%tl38393861%_)
                                             (letrec ((_%loop38403864%_
                                                       (lambda (_%hd38383868%_
                                                                _%hd-bind38443871%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38383868%_)
                                                             (let ((_%e38413874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38383868%_)))
                       (let ((_%lp-hd38423878%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38413874%_)))
                             (_%lp-tl38433881%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38413874%_))))
                         (_%loop38403864%_
                          _%lp-tl38433881%_
                          (cons _%lp-hd38423878%_ _%hd-bind38443871%_))))
                     (let ((_%hd-bind38453884%_ (reverse _%hd-bind38443871%_)))
                       ((lambda (_%L3888%_)
                          (let ()
                            (cons _%L3799%_
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _%L3797%_
                                           _%L3888%_)
                                          (foldr (lambda (_%g39053909%_
                                                          _%g39063912%_
                                                          _%g39073914%_)
                                                   (cons (cons _%g39063912%_
                                                               (cons _%g39053909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _%g39073914%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _%L3797%_
                                                 _%L3888%_))
                                        (foldr (lambda (_%g39033917%_
                                                        _%g39043920%_)
                                                 (cons _%g39033917%_
                                                       _%g39043920%_))
                                               '()
                                               _%L3795%_)))))
                        _%hd-bind38453884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38403864%_
                                                _%target38373858%_
                                                '()))
                                             (_%g38343851%_ _%g38353855%_)))))
                                   (_%g38343851%_ _%g38353855%_)))))
                       (_%g38333923%_
                        (gx#stx-map
                         _%let-head3605%_
                         (foldr (lambda (_%g39263929%_ _%g39273932%_)
                                  (cons _%g39263929%_ _%g39273932%_))
                                '()
                                _%L3798%_)))))))
              (let* ((_%__match1894218943%_
                      (lambda (_%e36363681%_
                               _%hd36353685%_
                               _%tl36343688%_
                               _%e36393691%_
                               _%hd36383695%_
                               _%tl36373698%_
                               _%e36423701%_
                               _%hd36413705%_
                               _%tl36403708%_
                               _%__splice1888018881%_
                               _%target36433711%_
                               _%tl36453714%_)
                        (letrec ((_%loop36463717%_
                                  (lambda (_%hd36443721%_
                                           _%e36503724%_
                                           _%hd36513726%_)
                                    (if (gx#stx-pair? _%hd36443721%_)
                                        (let ((_%e36473729%_
                                               (gx#syntax-e _%hd36443721%_)))
                                          (let ((_%lp-tl36493736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36473729%_)))
                                                (_%lp-hd36483733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36473729%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36483733%_)
                                                (let ((_%e36563739%_
                                                       (gx#syntax-e
                                                        _%lp-hd36483733%_)))
                                                  (let ((_%tl36543746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36563739%_)))
                                                        (_%hd36553743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36563739%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36543746%_)
                                                        (let ((_%e36593749%_
                                                               (gx#syntax-e
                                                                _%tl36543746%_)))
                                                          (let ((_%tl36573756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36593749%_)))
                        (_%hd36583753%_
                         (let () (declare (not safe)) (##car _%e36593749%_))))
                    (if (gx#stx-null? _%tl36573756%_)
                        (_%loop36463717%_
                         _%lp-tl36493736%_
                         (cons _%hd36583753%_ _%e36503724%_)
                         (cons _%hd36553743%_ _%hd36513726%_))
                        (let () (declare (not safe)) (_%g36083674%_)))))
                (let () (declare (not safe)) (_%g36083674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36083674%_)))))
                                        (let ((_%hd36533762%_
                                               (reverse _%hd36513726%_))
                                              (_%e36523759%_
                                               (reverse _%e36503724%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36403708%_)
                                              (let ((_%__splice1888218883%_
                                                     (gx#syntax-split-splice
                                                      _%tl36403708%_
                                                      '0)))
                                                (let ((_%tl36623768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1888218883%_
                                                          '1)))
                                                      (_%target36603765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1888218883%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36623768%_)
                                                      (letrec ((_%loop36633771%_
                                                                (lambda (_%hd36613775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body36673778%_)
                          (if (gx#stx-pair? _%hd36613775%_)
                              (let ((_%e36643781%_
                                     (gx#syntax-e _%hd36613775%_)))
                                (let ((_%lp-tl36663788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36643781%_)))
                                      (_%lp-hd36653785%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36643781%_))))
                                  (_%loop36633771%_
                                   _%lp-tl36663788%_
                                   (cons _%lp-hd36653785%_ _%body36673778%_))))
                              (let ((_%body36683791%_
                                     (reverse _%body36673778%_)))
                                (let ((_%L3795%_ _%body36683791%_)
                                      (_%L3797%_ _%e36523759%_)
                                      (_%L3798%_ _%hd36533762%_)
                                      (_%L3799%_ _%hd36383695%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3603%_
                                       (foldr (lambda (_%g38253828%_
                                                       _%g38263831%_)
                                                (cons _%g38253828%_
                                                      _%g38263831%_))
                                              '()
                                              _%L3798%_))
                                      (_%__kont1887818879%_
                                       _%L3795%_
                                       _%L3797%_
                                       _%L3798%_
                                       _%L3799%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36083674%_)))))))))
                (_%loop36633771%_ _%target36603765%_ '()))
              (let () (declare (not safe)) (_%g36083674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36083674%_))))))))
                          (_%loop36463717%_ _%target36433711%_ '() '()))))
                     (_%__match1891618917%_
                      (lambda (_%e36173942%_
                               _%hd36163946%_
                               _%tl36153949%_
                               _%e36203952%_
                               _%hd36193956%_
                               _%tl36183959%_
                               _%e36233962%_
                               _%hd36223966%_
                               _%tl36213969%_
                               _%e36263972%_
                               _%hd36253976%_
                               _%tl36243979%_
                               _%e36293982%_
                               _%hd36283986%_
                               _%tl36273989%_)
                        (let ((_%L3992%_ _%tl36213969%_)
                              (_%L3994%_ _%hd36283986%_)
                              (_%L3995%_ _%hd36253976%_)
                              (_%L3996%_ _%hd36193956%_)
                              (_%L3997%_ _%hd36163946%_))
                          (if (_%let-head?3603%_ _%L3995%_)
                              (_%__kont1887618877%_
                               _%L3992%_
                               _%L3994%_
                               _%L3995%_
                               _%L3996%_
                               _%L3997%_)
                              (if (gx#stx-pair/null? _%hd36223966%_)
                                  (let ((_%__splice1888018881%_
                                         (gx#syntax-split-splice
                                          _%hd36223966%_
                                          '0)))
                                    (let ((_%tl36453714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888018881%_
                                              '1)))
                                          (_%target36433711%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888018881%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36453714%_)
                                          (_%__match1894218943%_
                                           _%e36173942%_
                                           _%hd36163946%_
                                           _%tl36153949%_
                                           _%e36203952%_
                                           _%hd36193956%_
                                           _%tl36183959%_
                                           _%e36233962%_
                                           _%hd36223966%_
                                           _%tl36213969%_
                                           _%__splice1888018881%_
                                           _%target36433711%_
                                           _%tl36453714%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36083674%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36083674%_))))))))
                (if (gx#stx-pair? _%__stx1887318874%_)
                    (let ((_%e36173942%_ (gx#syntax-e _%__stx1887318874%_)))
                      (let ((_%tl36153949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36173942%_)))
                            (_%hd36163946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36173942%_))))
                        (if (gx#stx-pair? _%tl36153949%_)
                            (let ((_%e36203952%_ (gx#syntax-e _%tl36153949%_)))
                              (let ((_%tl36183959%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36203952%_)))
                                    (_%hd36193956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36203952%_))))
                                (if (gx#stx-pair? _%tl36183959%_)
                                    (let ((_%e36233962%_
                                           (gx#syntax-e _%tl36183959%_)))
                                      (let ((_%tl36213969%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36233962%_)))
                                            (_%hd36223966%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36233962%_))))
                                        (if (gx#stx-pair? _%hd36223966%_)
                                            (let ((_%e36263972%_
                                                   (gx#syntax-e
                                                    _%hd36223966%_)))
                                              (let ((_%tl36243979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36263972%_)))
                                                    (_%hd36253976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36263972%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36243979%_)
                                                    (let ((_%e36293982%_
                                                           (gx#syntax-e
                                                            _%tl36243979%_)))
                                                      (let ((_%tl36273989%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36293982%_)))
                    (_%hd36283986%_
                     (let () (declare (not safe)) (##car _%e36293982%_))))
                (if (gx#stx-null? _%tl36273989%_)
                    (_%__match1891618917%_
                     _%e36173942%_
                     _%hd36163946%_
                     _%tl36153949%_
                     _%e36203952%_
                     _%hd36193956%_
                     _%tl36183959%_
                     _%e36233962%_
                     _%hd36223966%_
                     _%tl36213969%_
                     _%e36263972%_
                     _%hd36253976%_
                     _%tl36243979%_
                     _%e36293982%_
                     _%hd36283986%_
                     _%tl36273989%_)
                    (if (gx#stx-pair/null? _%hd36223966%_)
                        (let ((_%__splice1888018881%_
                               (gx#syntax-split-splice _%hd36223966%_ '0)))
                          (let ((_%tl36453714%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1888018881%_ '1)))
                                (_%target36433711%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1888018881%_ '0))))
                            (if (gx#stx-null? _%tl36453714%_)
                                (_%__match1894218943%_
                                 _%e36173942%_
                                 _%hd36163946%_
                                 _%tl36153949%_
                                 _%e36203952%_
                                 _%hd36193956%_
                                 _%tl36183959%_
                                 _%e36233962%_
                                 _%hd36223966%_
                                 _%tl36213969%_
                                 _%__splice1888018881%_
                                 _%target36433711%_
                                 _%tl36453714%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36083674%_)))))
                        (let () (declare (not safe)) (_%g36083674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36223966%_)
                                                        (let ((_%__splice1888018881%_
                                                               (gx#syntax-split-splice
                                                                _%hd36223966%_
                                                                '0)))
                                                          (let ((_%tl36453714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1888018881%_ '1)))
                        (_%target36433711%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1888018881%_ '0))))
                    (if (gx#stx-null? _%tl36453714%_)
                        (_%__match1894218943%_
                         _%e36173942%_
                         _%hd36163946%_
                         _%tl36153949%_
                         _%e36203952%_
                         _%hd36193956%_
                         _%tl36183959%_
                         _%e36233962%_
                         _%hd36223966%_
                         _%tl36213969%_
                         _%__splice1888018881%_
                         _%target36433711%_
                         _%tl36453714%_)
                        (let () (declare (not safe)) (_%g36083674%_)))))
                (let () (declare (not safe)) (_%g36083674%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36223966%_)
                                                (let ((_%__splice1888018881%_
                                                       (gx#syntax-split-splice
                                                        _%hd36223966%_
                                                        '0)))
                                                  (let ((_%tl36453714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1888018881%_
                                                            '1)))
                                                        (_%target36433711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1888018881%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36453714%_)
                                                        (_%__match1894218943%_
                                                         _%e36173942%_
                                                         _%hd36163946%_
                                                         _%tl36153949%_
                                                         _%e36203952%_
                                                         _%hd36193956%_
                                                         _%tl36183959%_
                                                         _%e36233962%_
                                                         _%hd36223966%_
                                                         _%tl36213969%_
                                                         _%__splice1888018881%_
                                                         _%target36433711%_
                                                         _%tl36453714%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36083674%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36083674%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36083674%_)))))
                            (let () (declare (not safe)) (_%g36083674%_)))))
                    (let () (declare (not safe)) (_%g36083674%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4146%_)
        (let* ((_%__stx1894518946%_ _%$stx4146%_)
               (_%g41524178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1894518946%_))))
          (let ((_%__kont1894818949%_ (lambda () '#t))
                (_%__kont1895018951%_ (lambda (_%L4250%_) _%L4250%_))
                (_%__kont1895218953%_
                 (lambda (_%L4205%_ _%L4207%_ _%L4208%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4207%_
                               (cons (cons _%L4208%_ _%L4205%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1894518946%_)
                (let ((_%e41564270%_ (gx#syntax-e _%__stx1894518946%_)))
                  (let ((_%tl41544277%_
                         (let () (declare (not safe)) (##cdr _%e41564270%_)))
                        (_%hd41554274%_
                         (let () (declare (not safe)) (##car _%e41564270%_))))
                    (if (gx#stx-null? _%tl41544277%_)
                        (_%__kont1894818949%_)
                        (if (gx#stx-pair? _%tl41544277%_)
                            (let ((_%e41634240%_ (gx#syntax-e _%tl41544277%_)))
                              (let ((_%tl41614247%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41634240%_)))
                                    (_%hd41624244%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41634240%_))))
                                (if (gx#stx-null? _%tl41614247%_)
                                    (_%__kont1895018951%_ _%hd41624244%_)
                                    (_%__kont1895218953%_
                                     _%tl41614247%_
                                     _%hd41624244%_
                                     _%hd41554274%_))))
                            (let () (declare (not safe)) (_%g41524178%_))))))
                (let () (declare (not safe)) (_%g41524178%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4288%_)
        (let* ((_%__stx1899118992%_ _%$stx4288%_)
               (_%g42944320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1899118992%_))))
          (let ((_%__kont1899418995%_ (lambda () '#f))
                (_%__kont1899618997%_ (lambda (_%L4392%_) _%L4392%_))
                (_%__kont1899818999%_
                 (lambda (_%L4347%_ _%L4349%_ _%L4350%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4349%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4347%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1899118992%_)
                (let ((_%e42984412%_ (gx#syntax-e _%__stx1899118992%_)))
                  (let ((_%tl42964419%_
                         (let () (declare (not safe)) (##cdr _%e42984412%_)))
                        (_%hd42974416%_
                         (let () (declare (not safe)) (##car _%e42984412%_))))
                    (if (gx#stx-null? _%tl42964419%_)
                        (_%__kont1899418995%_)
                        (if (gx#stx-pair? _%tl42964419%_)
                            (let ((_%e43054382%_ (gx#syntax-e _%tl42964419%_)))
                              (let ((_%tl43034389%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43054382%_)))
                                    (_%hd43044386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43054382%_))))
                                (if (gx#stx-null? _%tl43034389%_)
                                    (_%__kont1899618997%_ _%hd43044386%_)
                                    (_%__kont1899818999%_
                                     _%tl43034389%_
                                     _%hd43044386%_
                                     _%hd42974416%_))))
                            (let () (declare (not safe)) (_%g42944320%_))))))
                (let () (declare (not safe)) (_%g42944320%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4430%_)
        (let* ((_%__stx1903719038%_ _%$stx4430%_)
               (_%g44394530%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1903719038%_))))
          (let ((_%__kont1904019041%_ (lambda () '#!void))
                (_%__kont1904219043%_
                 (lambda (_%L4877%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g48964899%_ _%g48974902%_)
                                        (cons _%g48964899%_ _%g48974902%_))
                                      '()
                                      _%L4877%_)))))
                (_%__kont1904619047%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1904819049%_
                 (lambda (_%L4750%_ _%L4752%_ _%L4753%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4752%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4750%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1905019051%_
                 (lambda (_%L4688%_ _%L4690%_ _%L4691%_ _%L4692%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4691%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%L4690%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%L4692%_ _%L4688%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1905219053%_
                 (lambda (_%L4597%_ _%L4599%_ _%L4600%_ _%L4601%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4600%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46224625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46234628%_)
                  (cons _%g46224625%_ _%g46234628%_))
                '()
                _%L4599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L4601%_ _%L4597%_)
                                           '())))))))
            (let* ((_%__match1919819199%_
                    (lambda (_%e45094537%_
                             _%hd45084541%_
                             _%tl45074544%_
                             _%e45124547%_
                             _%hd45114551%_
                             _%tl45104554%_
                             _%e45154557%_
                             _%hd45144561%_
                             _%tl45134564%_
                             _%__splice1905419055%_
                             _%target45164567%_
                             _%tl45184570%_)
                      (letrec ((_%loop45194573%_
                                (lambda (_%hd45174577%_ _%body45234580%_)
                                  (if (gx#stx-pair? _%hd45174577%_)
                                      (let ((_%e45204583%_
                                             (gx#syntax-e _%hd45174577%_)))
                                        (let ((_%lp-tl45224590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45204583%_)))
                                              (_%lp-hd45214587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45204583%_))))
                                          (_%loop45194573%_
                                           _%lp-tl45224590%_
                                           (cons _%lp-hd45214587%_
                                                 _%body45234580%_))))
                                      (let ((_%body45244593%_
                                             (reverse _%body45234580%_)))
                                        (_%__kont1905219053%_
                                         _%tl45104554%_
                                         _%body45244593%_
                                         _%hd45144561%_
                                         _%hd45084541%_))))))
                        (_%loop45194573%_ _%target45164567%_ '()))))
                   (_%__match1909419095%_
                    (lambda (_%e44474817%_
                             _%hd44464821%_
                             _%tl44454824%_
                             _%e44504827%_
                             _%hd44494831%_
                             _%tl44484834%_
                             _%e44534837%_
                             _%hd44524841%_
                             _%tl44514844%_
                             _%__splice1904419045%_
                             _%target44544847%_
                             _%tl44564850%_)
                      (letrec ((_%loop44574853%_
                                (lambda (_%hd44554857%_ _%body44614860%_)
                                  (if (gx#stx-pair? _%hd44554857%_)
                                      (let ((_%e44584863%_
                                             (gx#syntax-e _%hd44554857%_)))
                                        (let ((_%lp-tl44604870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44584863%_)))
                                              (_%lp-hd44594867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44584863%_))))
                                          (_%loop44574853%_
                                           _%lp-tl44604870%_
                                           (cons _%lp-hd44594867%_
                                                 _%body44614860%_))))
                                      (let ((_%body44624873%_
                                             (reverse _%body44614860%_)))
                                        (if (gx#stx-null? _%tl44484834%_)
                                            (_%__kont1904219043%_
                                             _%body44624873%_)
                                            (_%__kont1904619047%_)))))))
                        (_%loop44574853%_ _%target44544847%_ '())))))
              (if (gx#stx-pair? _%__stx1903719038%_)
                  (let ((_%e44434912%_ (gx#syntax-e _%__stx1903719038%_)))
                    (let ((_%tl44414919%_
                           (let () (declare (not safe)) (##cdr _%e44434912%_)))
                          (_%hd44424916%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44434912%_))))
                      (if (gx#stx-null? _%tl44414919%_)
                          (_%__kont1904019041%_)
                          (if (gx#stx-pair? _%tl44414919%_)
                              (let ((_%e44504827%_
                                     (gx#syntax-e _%tl44414919%_)))
                                (let ((_%tl44484834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44504827%_)))
                                      (_%hd44494831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44504827%_))))
                                  (if (gx#stx-pair? _%hd44494831%_)
                                      (let ((_%e44534837%_
                                             (gx#syntax-e _%hd44494831%_)))
                                        (let ((_%tl44514844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44534837%_)))
                                              (_%hd44524841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44534837%_))))
                                          (if (gx#identifier? _%hd44524841%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20958_|
                                                   _%hd44524841%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44514844%_)
                                                      (let ((_%__splice1904419045%_
                                                             (gx#syntax-split-splice
                                                              _%tl44514844%_
                                                              '0)))
                                                        (let ((_%tl44564850%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1904419045%_ '1)))
                      (_%target44544847%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1904419045%_ '0))))
                  (if (gx#stx-null? _%tl44564850%_)
                      (_%__match1909419095%_
                       _%e44434912%_
                       _%hd44424916%_
                       _%tl44414919%_
                       _%e44504827%_
                       _%hd44494831%_
                       _%tl44484834%_
                       _%e44534837%_
                       _%hd44524841%_
                       _%tl44514844%_
                       _%__splice1904419045%_
                       _%target44544847%_
                       _%tl44564850%_)
                      (_%__kont1904619047%_))))
              (_%__kont1904619047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44514844%_)
                                                      (_%__kont1904819049%_
                                                       _%tl44484834%_
                                                       _%hd44524841%_
                                                       _%hd44424916%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44514844%_)
                                                          (let ((_%e44994668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44514844%_)))
                    (let ((_%tl44974675%_
                           (let () (declare (not safe)) (##cdr _%e44994668%_)))
                          (_%hd44984672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44994668%_))))
                      (if (gx#identifier? _%hd44984672%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20959_|
                               _%hd44984672%_)
                              (if (gx#stx-pair? _%tl44974675%_)
                                  (let ((_%e45024678%_
                                         (gx#syntax-e _%tl44974675%_)))
                                    (let ((_%tl45004685%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e45024678%_)))
                                          (_%hd45014682%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e45024678%_))))
                                      (if (gx#stx-null? _%tl45004685%_)
                                          (_%__kont1905019051%_
                                           _%tl44484834%_
                                           _%hd45014682%_
                                           _%hd44524841%_
                                           _%hd44424916%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44514844%_)
                                              (let ((_%__splice1905419055%_
                                                     (gx#syntax-split-splice
                                                      _%tl44514844%_
                                                      '0)))
                                                (let ((_%tl45184570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1905419055%_
                                                          '1)))
                                                      (_%target45164567%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1905419055%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45184570%_)
                                                      (_%__match1919819199%_
                                                       _%e44434912%_
                                                       _%hd44424916%_
                                                       _%tl44414919%_
                                                       _%e44504827%_
                                                       _%hd44494831%_
                                                       _%tl44484834%_
                                                       _%e44534837%_
                                                       _%hd44524841%_
                                                       _%tl44514844%_
                                                       _%__splice1905419055%_
                                                       _%target45164567%_
                                                       _%tl45184570%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44394530%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44394530%_))))))
                                  (if (gx#stx-pair/null? _%tl44514844%_)
                                      (let ((_%__splice1905419055%_
                                             (gx#syntax-split-splice
                                              _%tl44514844%_
                                              '0)))
                                        (let ((_%tl45184570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1905419055%_
                                                  '1)))
                                              (_%target45164567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1905419055%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45184570%_)
                                              (_%__match1919819199%_
                                               _%e44434912%_
                                               _%hd44424916%_
                                               _%tl44414919%_
                                               _%e44504827%_
                                               _%hd44494831%_
                                               _%tl44484834%_
                                               _%e44534837%_
                                               _%hd44524841%_
                                               _%tl44514844%_
                                               _%__splice1905419055%_
                                               _%target45164567%_
                                               _%tl45184570%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44394530%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44394530%_))))
                              (if (gx#stx-pair/null? _%tl44514844%_)
                                  (let ((_%__splice1905419055%_
                                         (gx#syntax-split-splice
                                          _%tl44514844%_
                                          '0)))
                                    (let ((_%tl45184570%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905419055%_
                                              '1)))
                                          (_%target45164567%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905419055%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45184570%_)
                                          (_%__match1919819199%_
                                           _%e44434912%_
                                           _%hd44424916%_
                                           _%tl44414919%_
                                           _%e44504827%_
                                           _%hd44494831%_
                                           _%tl44484834%_
                                           _%e44534837%_
                                           _%hd44524841%_
                                           _%tl44514844%_
                                           _%__splice1905419055%_
                                           _%target45164567%_
                                           _%tl45184570%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44394530%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44394530%_))))
                          (if (gx#stx-pair/null? _%tl44514844%_)
                              (let ((_%__splice1905419055%_
                                     (gx#syntax-split-splice
                                      _%tl44514844%_
                                      '0)))
                                (let ((_%tl45184570%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905419055%_
                                          '1)))
                                      (_%target45164567%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905419055%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45184570%_)
                                      (_%__match1919819199%_
                                       _%e44434912%_
                                       _%hd44424916%_
                                       _%tl44414919%_
                                       _%e44504827%_
                                       _%hd44494831%_
                                       _%tl44484834%_
                                       _%e44534837%_
                                       _%hd44524841%_
                                       _%tl44514844%_
                                       _%__splice1905419055%_
                                       _%target45164567%_
                                       _%tl45184570%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44394530%_)))))
                              (let () (declare (not safe)) (_%g44394530%_))))))
                  (if (gx#stx-pair/null? _%tl44514844%_)
                      (let ((_%__splice1905419055%_
                             (gx#syntax-split-splice _%tl44514844%_ '0)))
                        (let ((_%tl45184570%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1905419055%_ '1)))
                              (_%target45164567%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1905419055%_ '0))))
                          (if (gx#stx-null? _%tl45184570%_)
                              (_%__match1919819199%_
                               _%e44434912%_
                               _%hd44424916%_
                               _%tl44414919%_
                               _%e44504827%_
                               _%hd44494831%_
                               _%tl44484834%_
                               _%e44534837%_
                               _%hd44524841%_
                               _%tl44514844%_
                               _%__splice1905419055%_
                               _%target45164567%_
                               _%tl45184570%_)
                              (let () (declare (not safe)) (_%g44394530%_)))))
                      (let () (declare (not safe)) (_%g44394530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44514844%_)
                                                  (_%__kont1904819049%_
                                                   _%tl44484834%_
                                                   _%hd44524841%_
                                                   _%hd44424916%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44514844%_)
                                                      (let ((_%e44994668%_
                                                             (gx#syntax-e
                                                              _%tl44514844%_)))
                                                        (let ((_%tl44974675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e44994668%_)))
                      (_%hd44984672%_
                       (let () (declare (not safe)) (##car _%e44994668%_))))
                  (if (gx#identifier? _%hd44984672%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20959_|
                           _%hd44984672%_)
                          (if (gx#stx-pair? _%tl44974675%_)
                              (let ((_%e45024678%_
                                     (gx#syntax-e _%tl44974675%_)))
                                (let ((_%tl45004685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45024678%_)))
                                      (_%hd45014682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45024678%_))))
                                  (if (gx#stx-null? _%tl45004685%_)
                                      (_%__kont1905019051%_
                                       _%tl44484834%_
                                       _%hd45014682%_
                                       _%hd44524841%_
                                       _%hd44424916%_)
                                      (if (gx#stx-pair/null? _%tl44514844%_)
                                          (let ((_%__splice1905419055%_
                                                 (gx#syntax-split-splice
                                                  _%tl44514844%_
                                                  '0)))
                                            (let ((_%tl45184570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1905419055%_
                                                      '1)))
                                                  (_%target45164567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1905419055%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45184570%_)
                                                  (_%__match1919819199%_
                                                   _%e44434912%_
                                                   _%hd44424916%_
                                                   _%tl44414919%_
                                                   _%e44504827%_
                                                   _%hd44494831%_
                                                   _%tl44484834%_
                                                   _%e44534837%_
                                                   _%hd44524841%_
                                                   _%tl44514844%_
                                                   _%__splice1905419055%_
                                                   _%target45164567%_
                                                   _%tl45184570%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44394530%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44394530%_))))))
                              (if (gx#stx-pair/null? _%tl44514844%_)
                                  (let ((_%__splice1905419055%_
                                         (gx#syntax-split-splice
                                          _%tl44514844%_
                                          '0)))
                                    (let ((_%tl45184570%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905419055%_
                                              '1)))
                                          (_%target45164567%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905419055%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45184570%_)
                                          (_%__match1919819199%_
                                           _%e44434912%_
                                           _%hd44424916%_
                                           _%tl44414919%_
                                           _%e44504827%_
                                           _%hd44494831%_
                                           _%tl44484834%_
                                           _%e44534837%_
                                           _%hd44524841%_
                                           _%tl44514844%_
                                           _%__splice1905419055%_
                                           _%target45164567%_
                                           _%tl45184570%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44394530%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44394530%_))))
                          (if (gx#stx-pair/null? _%tl44514844%_)
                              (let ((_%__splice1905419055%_
                                     (gx#syntax-split-splice
                                      _%tl44514844%_
                                      '0)))
                                (let ((_%tl45184570%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905419055%_
                                          '1)))
                                      (_%target45164567%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905419055%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45184570%_)
                                      (_%__match1919819199%_
                                       _%e44434912%_
                                       _%hd44424916%_
                                       _%tl44414919%_
                                       _%e44504827%_
                                       _%hd44494831%_
                                       _%tl44484834%_
                                       _%e44534837%_
                                       _%hd44524841%_
                                       _%tl44514844%_
                                       _%__splice1905419055%_
                                       _%target45164567%_
                                       _%tl45184570%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44394530%_)))))
                              (let () (declare (not safe)) (_%g44394530%_))))
                      (if (gx#stx-pair/null? _%tl44514844%_)
                          (let ((_%__splice1905419055%_
                                 (gx#syntax-split-splice _%tl44514844%_ '0)))
                            (let ((_%tl45184570%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1905419055%_ '1)))
                                  (_%target45164567%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1905419055%_
                                      '0))))
                              (if (gx#stx-null? _%tl45184570%_)
                                  (_%__match1919819199%_
                                   _%e44434912%_
                                   _%hd44424916%_
                                   _%tl44414919%_
                                   _%e44504827%_
                                   _%hd44494831%_
                                   _%tl44484834%_
                                   _%e44534837%_
                                   _%hd44524841%_
                                   _%tl44514844%_
                                   _%__splice1905419055%_
                                   _%target45164567%_
                                   _%tl45184570%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44394530%_)))))
                          (let () (declare (not safe)) (_%g44394530%_))))))
              (if (gx#stx-pair/null? _%tl44514844%_)
                  (let ((_%__splice1905419055%_
                         (gx#syntax-split-splice _%tl44514844%_ '0)))
                    (let ((_%tl45184570%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1905419055%_ '1)))
                          (_%target45164567%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1905419055%_ '0))))
                      (if (gx#stx-null? _%tl45184570%_)
                          (_%__match1919819199%_
                           _%e44434912%_
                           _%hd44424916%_
                           _%tl44414919%_
                           _%e44504827%_
                           _%hd44494831%_
                           _%tl44484834%_
                           _%e44534837%_
                           _%hd44524841%_
                           _%tl44514844%_
                           _%__splice1905419055%_
                           _%target45164567%_
                           _%tl45184570%_)
                          (let () (declare (not safe)) (_%g44394530%_)))))
                  (let () (declare (not safe)) (_%g44394530%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44394530%_)))))
                              (let () (declare (not safe)) (_%g44394530%_))))))
                  (let () (declare (not safe)) (_%g44394530%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4932%_)
        (let* ((_%g49364960%_
                (lambda (_%g49374956%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49374956%_)))
               (_%g49355045%_
                (lambda (_%g49374964%_)
                  (if (gx#stx-pair? _%g49374964%_)
                      (let ((_%e49424967%_ (gx#syntax-e _%g49374964%_)))
                        (let ((_%hd49414971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49424967%_)))
                              (_%tl49404974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49424967%_))))
                          (if (gx#stx-pair? _%tl49404974%_)
                              (let ((_%e49454977%_
                                     (gx#syntax-e _%tl49404974%_)))
                                (let ((_%hd49444981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49454977%_)))
                                      (_%tl49434984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49454977%_))))
                                  (if (gx#stx-pair/null? _%tl49434984%_)
                                      (let ((_g20960_
                                             (gx#syntax-split-splice
                                              _%tl49434984%_
                                              '0)))
                                        (begin
                                          (let ((_g20961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20960_)
                                                       (##vector-length
                                                        _g20960_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20961_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20961_)))
                                          (let ((_%target49464987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20960_ 0)))
                                                (_%tl49484990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20960_ 1))))
                                            (if (gx#stx-null? _%tl49484990%_)
                                                (letrec ((_%loop49494993%_
                                                          (lambda (_%hd49474997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr49535000%_)
                    (if (gx#stx-pair? _%hd49474997%_)
                        (let ((_%e49505003%_ (gx#syntax-e _%hd49474997%_)))
                          (let ((_%lp-hd49515007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e49505003%_)))
                                (_%lp-tl49525010%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e49505003%_))))
                            (_%loop49494993%_
                             _%lp-tl49525010%_
                             (cons _%lp-hd49515007%_ _%expr49535000%_))))
                        (let ((_%expr49545013%_ (reverse _%expr49535000%_)))
                          ((lambda (_%L5017%_ _%L5019%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _%L5019%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (foldr (lambda (_%g50365039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g50375042%_)
                      (cons _%g50365039%_ _%g50375042%_))
                    '()
                    _%L5017%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '#!void '())))))
                           _%expr49545013%_
                           _%hd49444981%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop49494993%_
                                                   _%target49464987%_
                                                   '()))
                                                (_%g49364960%_
                                                 _%g49374964%_)))))
                                      (_%g49364960%_ _%g49374964%_))))
                              (_%g49364960%_ _%g49374964%_))))
                      (_%g49364960%_ _%g49374964%_)))))
          (_%g49355045%_ _%$stx4932%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5050%_)
        (let* ((_%g50545078%_
                (lambda (_%g50555074%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50555074%_)))
               (_%g50535163%_
                (lambda (_%g50555082%_)
                  (if (gx#stx-pair? _%g50555082%_)
                      (let ((_%e50605085%_ (gx#syntax-e _%g50555082%_)))
                        (let ((_%hd50595089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50605085%_)))
                              (_%tl50585092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50605085%_))))
                          (if (gx#stx-pair? _%tl50585092%_)
                              (let ((_%e50635095%_
                                     (gx#syntax-e _%tl50585092%_)))
                                (let ((_%hd50625099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50635095%_)))
                                      (_%tl50615102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50635095%_))))
                                  (if (gx#stx-pair/null? _%tl50615102%_)
                                      (let ((_g20962_
                                             (gx#syntax-split-splice
                                              _%tl50615102%_
                                              '0)))
                                        (begin
                                          (let ((_g20963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20962_)
                                                       (##vector-length
                                                        _g20962_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20963_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20963_)))
                                          (let ((_%target50645105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20962_ 0)))
                                                (_%tl50665108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20962_ 1))))
                                            (if (gx#stx-null? _%tl50665108%_)
                                                (letrec ((_%loop50675111%_
                                                          (lambda (_%hd50655115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr50715118%_)
                    (if (gx#stx-pair? _%hd50655115%_)
                        (let ((_%e50685121%_ (gx#syntax-e _%hd50655115%_)))
                          (let ((_%lp-hd50695125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e50685121%_)))
                                (_%lp-tl50705128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e50685121%_))))
                            (_%loop50675111%_
                             _%lp-tl50705128%_
                             (cons _%lp-hd50695125%_ _%expr50715118%_))))
                        (let ((_%expr50725131%_ (reverse _%expr50715118%_)))
                          ((lambda (_%L5135%_ _%L5137%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _%L5137%_
                                         (cons '#!void
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (foldr (lambda (_%g51545157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g51555160%_)
                            (cons _%g51545157%_ _%g51555160%_))
                          '()
                          _%L5135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%expr50725131%_
                           _%hd50625099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop50675111%_
                                                   _%target50645105%_
                                                   '()))
                                                (_%g50545078%_
                                                 _%g50555082%_)))))
                                      (_%g50545078%_ _%g50555082%_))))
                              (_%g50545078%_ _%g50555082%_))))
                      (_%g50545078%_ _%g50555082%_)))))
          (_%g50535163%_ _%$stx5050%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5168%_)
        (let* ((_%g51715195%_
                (lambda (_%g51725191%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g51725191%_)))
               (_%g51705280%_
                (lambda (_%g51725199%_)
                  (if (gx#stx-pair? _%g51725199%_)
                      (let ((_%e51775202%_ (gx#syntax-e _%g51725199%_)))
                        (let ((_%hd51765206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e51775202%_)))
                              (_%tl51755209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e51775202%_))))
                          (if (gx#stx-pair? _%tl51755209%_)
                              (let ((_%e51805212%_
                                     (gx#syntax-e _%tl51755209%_)))
                                (let ((_%hd51795216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e51805212%_)))
                                      (_%tl51785219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e51805212%_))))
                                  (if (gx#stx-pair/null? _%tl51785219%_)
                                      (let ((_g20964_
                                             (gx#syntax-split-splice
                                              _%tl51785219%_
                                              '0)))
                                        (begin
                                          (let ((_g20965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20964_)
                                                       (##vector-length
                                                        _g20964_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20965_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20965_)))
                                          (let ((_%target51815222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20964_ 0)))
                                                (_%tl51835225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20964_ 1))))
                                            (if (gx#stx-null? _%tl51835225%_)
                                                (letrec ((_%loop51845228%_
                                                          (lambda (_%hd51825232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail51885235%_)
                    (if (gx#stx-pair? _%hd51825232%_)
                        (let ((_%e51855238%_ (gx#syntax-e _%hd51825232%_)))
                          (let ((_%lp-hd51865242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e51855238%_)))
                                (_%lp-tl51875245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e51855238%_))))
                            (_%loop51845228%_
                             _%lp-tl51875245%_
                             (cons _%lp-hd51865242%_ _%detail51885235%_))))
                        (let ((_%detail51895248%_
                               (reverse _%detail51885235%_)))
                          ((lambda (_%L5252%_ _%L5254%_)
                             (if (gx#stx-string? _%L5254%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%L5254%_)
                                        _%stx5168%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g52715274%_
                                                         _%g52725277%_)
                                                  (cons _%g52715274%_
                                                        _%g52725277%_))
                                                '()
                                                _%L5252%_)))
                                 (_%g51715195%_ _%g51725199%_)))
                           _%detail51895248%_
                           _%hd51795216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop51845228%_
                                                   _%target51815222%_
                                                   '()))
                                                (_%g51715195%_
                                                 _%g51725199%_)))))
                                      (_%g51715195%_ _%g51725199%_))))
                              (_%g51715195%_ _%g51725199%_))))
                      (_%g51715195%_ _%g51725199%_)))))
          (_%g51705280%_ _%stx5168%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defmutable|
      (lambda (_%$stx5285%_)
        (let* ((_%g52895307%_
                (lambda (_%g52905303%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52905303%_)))
               (_%g52885362%_
                (lambda (_%g52905311%_)
                  (if (gx#stx-pair? _%g52905311%_)
                      (let ((_%e52955314%_ (gx#syntax-e _%g52905311%_)))
                        (let ((_%hd52945318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52955314%_)))
                              (_%tl52935321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52955314%_))))
                          (if (gx#stx-pair? _%tl52935321%_)
                              (let ((_%e52985324%_
                                     (gx#syntax-e _%tl52935321%_)))
                                (let ((_%hd52975328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52985324%_)))
                                      (_%tl52965331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52985324%_))))
                                  (if (gx#stx-pair? _%tl52965331%_)
                                      (let ((_%e53015334%_
                                             (gx#syntax-e _%tl52965331%_)))
                                        (let ((_%hd53005338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e53015334%_)))
                                              (_%tl52995341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e53015334%_))))
                                          (if (gx#stx-null? _%tl52995341%_)
                                              ((lambda (_%L5344%_ _%L5346%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'def)
                           (cons _%L5346%_ (cons _%L5344%_ '())))
                     (cons (cons (gx#datum->syntax '#f '%#set!)
                                 (cons _%L5346%_ (cons _%L5346%_ '())))
                           (cons (cons (gx#datum->syntax '#f 'void) '())
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd53005338%_
                                               _%hd52975328%_)
                                              (_%g52895307%_ _%g52905311%_))))
                                      (_%g52895307%_ _%g52905311%_))))
                              (_%g52895307%_ _%g52905311%_))))
                      (_%g52895307%_ _%g52905311%_)))))
          (_%g52885362%_ _%$stx5285%_))))))
