(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g20957_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20958_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20961_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g20962_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_%$stx1930%_)
        (let* ((_%g19341962%_
                (lambda (_%g19351958%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g19351958%_)))
               (_%g19332063%_
                (lambda (_%g19351966%_)
                  (if (gx#stx-pair? _%g19351966%_)
                      (let ((_%e19391969%_ (gx#syntax-e _%g19351966%_)))
                        (let ((_%hd19401973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e19391969%_)))
                              (_%tl19411976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e19391969%_))))
                          (if (gx#stx-pair? _%tl19411976%_)
                              (let ((_%e19421979%_
                                     (gx#syntax-e _%tl19411976%_)))
                                (let ((_%hd19431983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e19421979%_)))
                                      (_%tl19441986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e19421979%_))))
                                  (if (gx#stx-pair? _%tl19441986%_)
                                      (let ((_%e19451989%_
                                             (gx#syntax-e _%tl19441986%_)))
                                        (let ((_%hd19461993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e19451989%_)))
                                              (_%tl19471996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e19451989%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl19471996%_)
                                              (let ((_g20949_
                                                     (gx#syntax-split-splice
                                                      _%tl19471996%_
                                                      '0)))
                                                (begin
                                                  (let ((_g20950_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g20949_)
                                                               (##vector-length
                                                                _g20949_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g20950_ 2)))
                (error "Context expects 2 values" _g20950_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target19481999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20949_
                                                            0)))
                                                        (_%tl19502002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g20949_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl19502002%_)
                                                        (letrec ((_%loop19512005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd19492009%_ _%clauses19552012%_)
                            (if (gx#stx-pair? _%hd19492009%_)
                                (let ((_%e19522015%_
                                       (gx#syntax-e _%hd19492009%_)))
                                  (let ((_%lp-hd19532019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e19522015%_)))
                                        (_%lp-tl19542022%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e19522015%_))))
                                    (_%loop19512005%_
                                     _%lp-tl19542022%_
                                     (cons _%lp-hd19532019%_
                                           _%clauses19552012%_))))
                                (let ((_%clauses19562025%_
                                       (reverse _%clauses19552012%_)))
                                  ((lambda (_%L2029%_ _%L2031%_ _%L2032%_)
                                     (if (gx#identifier? _%L2032%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _%L2032%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _%L2031%_
                               (foldr (lambda (_%g20542057%_ _%g20552060%_)
                                        (cons _%g20542057%_ _%g20552060%_))
                                      '()
                                      _%L2029%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%g19341962%_ _%g19351966%_)))
                                   _%clauses19562025%_
                                   _%hd19461993%_
                                   _%hd19431983%_))))))
                  (_%loop19512005%_ _%target19481999%_ '()))
                (_%g19341962%_ _%g19351966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g19341962%_ _%g19351966%_))))
                                      (_%g19341962%_ _%g19351966%_))))
                              (_%g19341962%_ _%g19351966%_))))
                      (_%g19341962%_ _%g19351966%_)))))
          (_%g19332063%_ _%$stx1930%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrule|
      (lambda (_%$stx2068%_)
        (let* ((_%__stx1853018531%_ _%$stx2068%_)
               (_%g20732114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1853018531%_))))
          (let ((_%__kont1853318534%_
                 (lambda (_%L2244%_ _%L2246%_ _%L2247%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2247%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2246%_)
                     (cons _%L2244%_ '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1853518536%_
                 (lambda (_%L2171%_ _%L2173%_ _%L2174%_ _%L2175%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2175%_
                               (cons (cons (gx#datum->syntax '#f 'syntax-rules)
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           _%L2174%_)
                     (cons _%L2173%_ (cons _%L2171%_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1859518596%_
                    (lambda (_%e20942121%_
                             _%hd20952125%_
                             _%tl20962128%_
                             _%e20972131%_
                             _%hd20982135%_
                             _%tl20992138%_
                             _%e21002141%_
                             _%hd21012145%_
                             _%tl21022148%_
                             _%e21032151%_
                             _%hd21042155%_
                             _%tl21052158%_
                             _%e21062161%_
                             _%hd21072165%_
                             _%tl21082168%_)
                      (let ((_%L2171%_ _%hd21072165%_)
                            (_%L2173%_ _%hd21042155%_)
                            (_%L2174%_ _%tl21022148%_)
                            (_%L2175%_ _%hd21012145%_))
                        (if (gx#identifier? _%L2175%_)
                            (_%__kont1853518536%_
                             _%L2171%_
                             _%L2173%_
                             _%L2174%_
                             _%L2175%_)
                            (let () (declare (not safe)) (_%g20732114%_))))))
                   (_%__match1856318564%_
                    (lambda (_%e20782204%_
                             _%hd20792208%_
                             _%tl20802211%_
                             _%e20812214%_
                             _%hd20822218%_
                             _%tl20832221%_
                             _%e20842224%_
                             _%hd20852228%_
                             _%tl20862231%_
                             _%e20872234%_
                             _%hd20882238%_
                             _%tl20892241%_)
                      (let ((_%L2244%_ _%hd20882238%_)
                            (_%L2246%_ _%tl20862231%_)
                            (_%L2247%_ _%hd20852228%_))
                        (if (gx#identifier? _%L2247%_)
                            (_%__kont1853318534%_
                             _%L2244%_
                             _%L2246%_
                             _%L2247%_)
                            (let () (declare (not safe)) (_%g20732114%_)))))))
              (if (gx#stx-pair? _%__stx1853018531%_)
                  (let ((_%e20782204%_ (gx#syntax-e _%__stx1853018531%_)))
                    (let ((_%tl20802211%_
                           (let () (declare (not safe)) (##cdr _%e20782204%_)))
                          (_%hd20792208%_
                           (let ()
                             (declare (not safe))
                             (##car _%e20782204%_))))
                      (if (gx#stx-pair? _%tl20802211%_)
                          (let ((_%e20812214%_ (gx#syntax-e _%tl20802211%_)))
                            (let ((_%tl20832221%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e20812214%_)))
                                  (_%hd20822218%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e20812214%_))))
                              (if (gx#stx-pair? _%hd20822218%_)
                                  (let ((_%e20842224%_
                                         (gx#syntax-e _%hd20822218%_)))
                                    (let ((_%tl20862231%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e20842224%_)))
                                          (_%hd20852228%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e20842224%_))))
                                      (if (gx#stx-pair? _%tl20832221%_)
                                          (let ((_%e20872234%_
                                                 (gx#syntax-e _%tl20832221%_)))
                                            (let ((_%tl20892241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e20872234%_)))
                                                  (_%hd20882238%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e20872234%_))))
                                              (if (gx#stx-null? _%tl20892241%_)
                                                  (_%__match1856318564%_
                                                   _%e20782204%_
                                                   _%hd20792208%_
                                                   _%tl20802211%_
                                                   _%e20812214%_
                                                   _%hd20822218%_
                                                   _%tl20832221%_
                                                   _%e20842224%_
                                                   _%hd20852228%_
                                                   _%tl20862231%_
                                                   _%e20872234%_
                                                   _%hd20882238%_
                                                   _%tl20892241%_)
                                                  (if (gx#stx-pair?
                                                       _%tl20892241%_)
                                                      (let ((_%e21062161%_
                                                             (gx#syntax-e
                                                              _%tl20892241%_)))
                                                        (let ((_%tl21082168%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e21062161%_)))
                      (_%hd21072165%_
                       (let () (declare (not safe)) (##car _%e21062161%_))))
                  (if (gx#stx-null? _%tl21082168%_)
                      (_%__match1859518596%_
                       _%e20782204%_
                       _%hd20792208%_
                       _%tl20802211%_
                       _%e20812214%_
                       _%hd20822218%_
                       _%tl20832221%_
                       _%e20842224%_
                       _%hd20852228%_
                       _%tl20862231%_
                       _%e20872234%_
                       _%hd20882238%_
                       _%tl20892241%_
                       _%e21062161%_
                       _%hd21072165%_
                       _%tl21082168%_)
                      (let () (declare (not safe)) (_%g20732114%_)))))
              (let () (declare (not safe)) (_%g20732114%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%g20732114%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g20732114%_)))))
                          (let () (declare (not safe)) (_%g20732114%_)))))
                  (let () (declare (not safe)) (_%g20732114%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_%$stx2269%_)
        (let* ((_%__stx1859818599%_ _%$stx2269%_)
               (_%g22742313%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1859818599%_))))
          (let ((_%__kont1860118602%_
                 (lambda (_%L2435%_ _%L2437%_ _%L2438%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2438%_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2437%_
                                                 (foldr (lambda (_%g24572460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g24582463%_)
                  (cons _%g24572460%_ _%g24582463%_))
                '()
                _%L2435%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1860518606%_
                 (lambda (_%L2350%_ _%L2352%_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _%L2352%_ (cons _%L2350%_ '()))))))
            (let* ((_%__match1865318654%_
                    (lambda (_%e22992320%_
                             _%hd23002324%_
                             _%tl23012327%_
                             _%e23022330%_
                             _%hd23032334%_
                             _%tl23042337%_
                             _%e23052340%_
                             _%hd23062344%_
                             _%tl23072347%_)
                      (let ((_%L2350%_ _%hd23062344%_)
                            (_%L2352%_ _%hd23032334%_))
                        (if (gx#identifier? _%L2352%_)
                            (_%__kont1860518606%_ _%L2350%_ _%L2352%_)
                            (let () (declare (not safe)) (_%g22742313%_))))))
                   (_%__match1864518646%_
                    (lambda (_%e22992320%_
                             _%hd23002324%_
                             _%tl23012327%_
                             _%e23022330%_
                             _%hd23032334%_
                             _%tl23042337%_)
                      (if (gx#stx-pair? _%tl23042337%_)
                          (let ((_%e23052340%_ (gx#syntax-e _%tl23042337%_)))
                            (let ((_%tl23072347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e23052340%_)))
                                  (_%hd23062344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e23052340%_))))
                              (if (gx#stx-null? _%tl23072347%_)
                                  (_%__match1865318654%_
                                   _%e22992320%_
                                   _%hd23002324%_
                                   _%tl23012327%_
                                   _%e23022330%_
                                   _%hd23032334%_
                                   _%tl23042337%_
                                   _%e23052340%_
                                   _%hd23062344%_
                                   _%tl23072347%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g22742313%_)))))
                          (let () (declare (not safe)) (_%g22742313%_)))))
                   (_%__match1863318634%_
                    (lambda (_%e22792375%_
                             _%hd22802379%_
                             _%tl22812382%_
                             _%e22822385%_
                             _%hd22832389%_
                             _%tl22842392%_
                             _%e22852395%_
                             _%hd22862399%_
                             _%tl22872402%_
                             _%__splice1860318604%_
                             _%target22882405%_
                             _%tl22902408%_)
                      (letrec ((_%loop22912411%_
                                (lambda (_%hd22892415%_ _%body22952418%_)
                                  (if (gx#stx-pair? _%hd22892415%_)
                                      (let ((_%e22922421%_
                                             (gx#syntax-e _%hd22892415%_)))
                                        (let ((_%lp-tl22942428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e22922421%_)))
                                              (_%lp-hd22932425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e22922421%_))))
                                          (_%loop22912411%_
                                           _%lp-tl22942428%_
                                           (cons _%lp-hd22932425%_
                                                 _%body22952418%_))))
                                      (let ((_%body22962431%_
                                             (reverse _%body22952418%_)))
                                        (let ((_%L2435%_ _%body22962431%_)
                                              (_%L2437%_ _%tl22872402%_)
                                              (_%L2438%_ _%hd22862399%_))
                                          (if (gx#identifier? _%L2438%_)
                                              (_%__kont1860118602%_
                                               _%L2435%_
                                               _%L2437%_
                                               _%L2438%_)
                                              (_%__match1864518646%_
                                               _%e22792375%_
                                               _%hd22802379%_
                                               _%tl22812382%_
                                               _%e22822385%_
                                               _%hd22832389%_
                                               _%tl22842392%_))))))))
                        (_%loop22912411%_ _%target22882405%_ '())))))
              (if (gx#stx-pair? _%__stx1859818599%_)
                  (let ((_%e22792375%_ (gx#syntax-e _%__stx1859818599%_)))
                    (let ((_%tl22812382%_
                           (let () (declare (not safe)) (##cdr _%e22792375%_)))
                          (_%hd22802379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e22792375%_))))
                      (if (gx#stx-pair? _%tl22812382%_)
                          (let ((_%e22822385%_ (gx#syntax-e _%tl22812382%_)))
                            (let ((_%tl22842392%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e22822385%_)))
                                  (_%hd22832389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e22822385%_))))
                              (if (gx#stx-pair? _%hd22832389%_)
                                  (let ((_%e22852395%_
                                         (gx#syntax-e _%hd22832389%_)))
                                    (let ((_%tl22872402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e22852395%_)))
                                          (_%hd22862399%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e22852395%_))))
                                      (if (gx#stx-pair/null? _%tl22842392%_)
                                          (let ((_%__splice1860318604%_
                                                 (gx#syntax-split-splice
                                                  _%tl22842392%_
                                                  '0)))
                                            (let ((_%tl22902408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1860318604%_
                                                      '1)))
                                                  (_%target22882405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1860318604%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl22902408%_)
                                                  (_%__match1863318634%_
                                                   _%e22792375%_
                                                   _%hd22802379%_
                                                   _%tl22812382%_
                                                   _%e22822385%_
                                                   _%hd22832389%_
                                                   _%tl22842392%_
                                                   _%e22852395%_
                                                   _%hd22862399%_
                                                   _%tl22872402%_
                                                   _%__splice1860318604%_
                                                   _%target22882405%_
                                                   _%tl22902408%_)
                                                  (if (gx#stx-pair?
                                                       _%tl22842392%_)
                                                      (let ((_%e23052340%_
                                                             (gx#syntax-e
                                                              _%tl22842392%_)))
                                                        (let ((_%tl23072347%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e23052340%_)))
                      (_%hd23062344%_
                       (let () (declare (not safe)) (##car _%e23052340%_))))
                  (if (gx#stx-null? _%tl23072347%_)
                      (_%__match1865318654%_
                       _%e22792375%_
                       _%hd22802379%_
                       _%tl22812382%_
                       _%e22822385%_
                       _%hd22832389%_
                       _%tl22842392%_
                       _%e23052340%_
                       _%hd23062344%_
                       _%tl23072347%_)
                      (let () (declare (not safe)) (_%g22742313%_)))))
              (let () (declare (not safe)) (_%g22742313%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl22842392%_)
                                              (let ((_%e23052340%_
                                                     (gx#syntax-e
                                                      _%tl22842392%_)))
                                                (let ((_%tl23072347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e23052340%_)))
                                                      (_%hd23062344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e23052340%_))))
                                                  (if (gx#stx-null?
                                                       _%tl23072347%_)
                                                      (_%__match1865318654%_
                                                       _%e22792375%_
                                                       _%hd22802379%_
                                                       _%tl22812382%_
                                                       _%e22822385%_
                                                       _%hd22832389%_
                                                       _%tl22842392%_
                                                       _%e23052340%_
                                                       _%hd23062344%_
                                                       _%tl23072347%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g22742313%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g22742313%_))))))
                                  (if (gx#stx-pair? _%tl22842392%_)
                                      (let ((_%e23052340%_
                                             (gx#syntax-e _%tl22842392%_)))
                                        (let ((_%tl23072347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e23052340%_)))
                                              (_%hd23062344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e23052340%_))))
                                          (if (gx#stx-null? _%tl23072347%_)
                                              (_%__match1865318654%_
                                               _%e22792375%_
                                               _%hd22802379%_
                                               _%tl22812382%_
                                               _%e22822385%_
                                               _%hd22832389%_
                                               _%tl22842392%_
                                               _%e23052340%_
                                               _%hd23062344%_
                                               _%tl23072347%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g22742313%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g22742313%_))))))
                          (let () (declare (not safe)) (_%g22742313%_)))))
                  (let () (declare (not safe)) (_%g22742313%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_%$stx2471%_)
        (let* ((_%__stx1865618657%_ _%$stx2471%_)
               (_%g24762515%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1865618657%_))))
          (let ((_%__kont1865918660%_
                 (lambda (_%L2637%_ _%L2639%_ _%L2640%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2640%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _%L2639%_
                                                 (foldr (lambda (_%g26592662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g26602665%_)
                  (cons _%g26592662%_ _%g26602665%_))
                '()
                _%L2637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1866318664%_
                 (lambda (_%L2552%_ _%L2554%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L2554%_ '()) (cons _%L2552%_ '()))))))
            (let* ((_%__match1871118712%_
                    (lambda (_%e25012522%_
                             _%hd25022526%_
                             _%tl25032529%_
                             _%e25042532%_
                             _%hd25052536%_
                             _%tl25062539%_
                             _%e25072542%_
                             _%hd25082546%_
                             _%tl25092549%_)
                      (let ((_%L2552%_ _%hd25082546%_)
                            (_%L2554%_ _%hd25052536%_))
                        (if (gx#identifier? _%L2554%_)
                            (_%__kont1866318664%_ _%L2552%_ _%L2554%_)
                            (let () (declare (not safe)) (_%g24762515%_))))))
                   (_%__match1870318704%_
                    (lambda (_%e25012522%_
                             _%hd25022526%_
                             _%tl25032529%_
                             _%e25042532%_
                             _%hd25052536%_
                             _%tl25062539%_)
                      (if (gx#stx-pair? _%tl25062539%_)
                          (let ((_%e25072542%_ (gx#syntax-e _%tl25062539%_)))
                            (let ((_%tl25092549%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e25072542%_)))
                                  (_%hd25082546%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e25072542%_))))
                              (if (gx#stx-null? _%tl25092549%_)
                                  (_%__match1871118712%_
                                   _%e25012522%_
                                   _%hd25022526%_
                                   _%tl25032529%_
                                   _%e25042532%_
                                   _%hd25052536%_
                                   _%tl25062539%_
                                   _%e25072542%_
                                   _%hd25082546%_
                                   _%tl25092549%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g24762515%_)))))
                          (let () (declare (not safe)) (_%g24762515%_)))))
                   (_%__match1869118692%_
                    (lambda (_%e24812577%_
                             _%hd24822581%_
                             _%tl24832584%_
                             _%e24842587%_
                             _%hd24852591%_
                             _%tl24862594%_
                             _%e24872597%_
                             _%hd24882601%_
                             _%tl24892604%_
                             _%__splice1866118662%_
                             _%target24902607%_
                             _%tl24922610%_)
                      (letrec ((_%loop24932613%_
                                (lambda (_%hd24912617%_ _%body24972620%_)
                                  (if (gx#stx-pair? _%hd24912617%_)
                                      (let ((_%e24942623%_
                                             (gx#syntax-e _%hd24912617%_)))
                                        (let ((_%lp-tl24962630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e24942623%_)))
                                              (_%lp-hd24952627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e24942623%_))))
                                          (_%loop24932613%_
                                           _%lp-tl24962630%_
                                           (cons _%lp-hd24952627%_
                                                 _%body24972620%_))))
                                      (let ((_%body24982633%_
                                             (reverse _%body24972620%_)))
                                        (let ((_%L2637%_ _%body24982633%_)
                                              (_%L2639%_ _%tl24892604%_)
                                              (_%L2640%_ _%hd24882601%_))
                                          (if (gx#identifier? _%L2640%_)
                                              (_%__kont1865918660%_
                                               _%L2637%_
                                               _%L2639%_
                                               _%L2640%_)
                                              (_%__match1870318704%_
                                               _%e24812577%_
                                               _%hd24822581%_
                                               _%tl24832584%_
                                               _%e24842587%_
                                               _%hd24852591%_
                                               _%tl24862594%_))))))))
                        (_%loop24932613%_ _%target24902607%_ '())))))
              (if (gx#stx-pair? _%__stx1865618657%_)
                  (let ((_%e24812577%_ (gx#syntax-e _%__stx1865618657%_)))
                    (let ((_%tl24832584%_
                           (let () (declare (not safe)) (##cdr _%e24812577%_)))
                          (_%hd24822581%_
                           (let ()
                             (declare (not safe))
                             (##car _%e24812577%_))))
                      (if (gx#stx-pair? _%tl24832584%_)
                          (let ((_%e24842587%_ (gx#syntax-e _%tl24832584%_)))
                            (let ((_%tl24862594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e24842587%_)))
                                  (_%hd24852591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e24842587%_))))
                              (if (gx#stx-pair? _%hd24852591%_)
                                  (let ((_%e24872597%_
                                         (gx#syntax-e _%hd24852591%_)))
                                    (let ((_%tl24892604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e24872597%_)))
                                          (_%hd24882601%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e24872597%_))))
                                      (if (gx#stx-pair/null? _%tl24862594%_)
                                          (let ((_%__splice1866118662%_
                                                 (gx#syntax-split-splice
                                                  _%tl24862594%_
                                                  '0)))
                                            (let ((_%tl24922610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1866118662%_
                                                      '1)))
                                                  (_%target24902607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1866118662%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl24922610%_)
                                                  (_%__match1869118692%_
                                                   _%e24812577%_
                                                   _%hd24822581%_
                                                   _%tl24832584%_
                                                   _%e24842587%_
                                                   _%hd24852591%_
                                                   _%tl24862594%_
                                                   _%e24872597%_
                                                   _%hd24882601%_
                                                   _%tl24892604%_
                                                   _%__splice1866118662%_
                                                   _%target24902607%_
                                                   _%tl24922610%_)
                                                  (if (gx#stx-pair?
                                                       _%tl24862594%_)
                                                      (let ((_%e25072542%_
                                                             (gx#syntax-e
                                                              _%tl24862594%_)))
                                                        (let ((_%tl25092549%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e25072542%_)))
                      (_%hd25082546%_
                       (let () (declare (not safe)) (##car _%e25072542%_))))
                  (if (gx#stx-null? _%tl25092549%_)
                      (_%__match1871118712%_
                       _%e24812577%_
                       _%hd24822581%_
                       _%tl24832584%_
                       _%e24842587%_
                       _%hd24852591%_
                       _%tl24862594%_
                       _%e25072542%_
                       _%hd25082546%_
                       _%tl25092549%_)
                      (let () (declare (not safe)) (_%g24762515%_)))))
              (let () (declare (not safe)) (_%g24762515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl24862594%_)
                                              (let ((_%e25072542%_
                                                     (gx#syntax-e
                                                      _%tl24862594%_)))
                                                (let ((_%tl25092549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e25072542%_)))
                                                      (_%hd25082546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e25072542%_))))
                                                  (if (gx#stx-null?
                                                       _%tl25092549%_)
                                                      (_%__match1871118712%_
                                                       _%e24812577%_
                                                       _%hd24822581%_
                                                       _%tl24832584%_
                                                       _%e24842587%_
                                                       _%hd24852591%_
                                                       _%tl24862594%_
                                                       _%e25072542%_
                                                       _%hd25082546%_
                                                       _%tl25092549%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g24762515%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g24762515%_))))))
                                  (if (gx#stx-pair? _%tl24862594%_)
                                      (let ((_%e25072542%_
                                             (gx#syntax-e _%tl24862594%_)))
                                        (let ((_%tl25092549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e25072542%_)))
                                              (_%hd25082546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e25072542%_))))
                                          (if (gx#stx-null? _%tl25092549%_)
                                              (_%__match1871118712%_
                                               _%e24812577%_
                                               _%hd24822581%_
                                               _%tl24832584%_
                                               _%e24842587%_
                                               _%hd24852591%_
                                               _%tl24862594%_
                                               _%e25072542%_
                                               _%hd25082546%_
                                               _%tl25092549%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g24762515%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g24762515%_))))))
                          (let () (declare (not safe)) (_%g24762515%_)))))
                  (let () (declare (not safe)) (_%g24762515%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_%$stx2673%_)
        (let* ((_%__stx1871418715%_ _%$stx2673%_)
               (_%g26782723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1871418715%_))))
          (let ((_%__kont1871718718%_
                 (lambda (_%L2881%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g28972900%_ _%g28982903%_)
                                        (cons _%g28972900%_ _%g28982903%_))
                                      '()
                                      _%L2881%_)))))
                (_%__kont1872118722%_
                 (lambda (_%L2790%_ _%L2792%_ _%L2793%_ _%L2794%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _%L2793%_ '())
                               (cons (cons _%L2794%_
                                           (cons _%L2792%_
                                                 (foldr (lambda (_%g28152818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g28162821%_)
                  (cons _%g28152818%_ _%g28162821%_))
                '()
                _%L2790%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match1877318774%_
                    (lambda (_%e27002730%_
                             _%hd27012734%_
                             _%tl27022737%_
                             _%e27032740%_
                             _%hd27042744%_
                             _%tl27052747%_
                             _%e27062750%_
                             _%hd27072754%_
                             _%tl27082757%_
                             _%__splice1872318724%_
                             _%target27092760%_
                             _%tl27112763%_)
                      (letrec ((_%loop27122766%_
                                (lambda (_%hd27102770%_ _%body27162773%_)
                                  (if (gx#stx-pair? _%hd27102770%_)
                                      (let ((_%e27132776%_
                                             (gx#syntax-e _%hd27102770%_)))
                                        (let ((_%lp-tl27152783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27132776%_)))
                                              (_%lp-hd27142780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27132776%_))))
                                          (_%loop27122766%_
                                           _%lp-tl27152783%_
                                           (cons _%lp-hd27142780%_
                                                 _%body27162773%_))))
                                      (let ((_%body27172786%_
                                             (reverse _%body27162773%_)))
                                        (_%__kont1872118722%_
                                         _%body27172786%_
                                         _%tl27082757%_
                                         _%hd27072754%_
                                         _%hd27012734%_))))))
                        (_%loop27122766%_ _%target27092760%_ '()))))
                   (_%__match1874718748%_
                    (lambda (_%e26812831%_
                             _%hd26822835%_
                             _%tl26832838%_
                             _%e26842841%_
                             _%hd26852845%_
                             _%tl26862848%_
                             _%__splice1871918720%_
                             _%target26872851%_
                             _%tl26892854%_)
                      (letrec ((_%loop26902857%_
                                (lambda (_%hd26882861%_ _%body26942864%_)
                                  (if (gx#stx-pair? _%hd26882861%_)
                                      (let ((_%e26912867%_
                                             (gx#syntax-e _%hd26882861%_)))
                                        (let ((_%lp-tl26932874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e26912867%_)))
                                              (_%lp-hd26922871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e26912867%_))))
                                          (_%loop26902857%_
                                           _%lp-tl26932874%_
                                           (cons _%lp-hd26922871%_
                                                 _%body26942864%_))))
                                      (let ((_%body26952877%_
                                             (reverse _%body26942864%_)))
                                        (_%__kont1871718718%_
                                         _%body26952877%_))))))
                        (_%loop26902857%_ _%target26872851%_ '())))))
              (if (gx#stx-pair? _%__stx1871418715%_)
                  (let ((_%e26812831%_ (gx#syntax-e _%__stx1871418715%_)))
                    (let ((_%tl26832838%_
                           (let () (declare (not safe)) (##cdr _%e26812831%_)))
                          (_%hd26822835%_
                           (let ()
                             (declare (not safe))
                             (##car _%e26812831%_))))
                      (if (gx#stx-pair? _%tl26832838%_)
                          (let ((_%e26842841%_ (gx#syntax-e _%tl26832838%_)))
                            (let ((_%tl26862848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e26842841%_)))
                                  (_%hd26852845%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e26842841%_))))
                              (if (gx#stx-null? _%hd26852845%_)
                                  (if (gx#stx-pair/null? _%tl26862848%_)
                                      (let ((_%__splice1871918720%_
                                             (gx#syntax-split-splice
                                              _%tl26862848%_
                                              '0)))
                                        (let ((_%tl26892854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1871918720%_
                                                  '1)))
                                              (_%target26872851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1871918720%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl26892854%_)
                                              (_%__match1874718748%_
                                               _%e26812831%_
                                               _%hd26822835%_
                                               _%tl26832838%_
                                               _%e26842841%_
                                               _%hd26852845%_
                                               _%tl26862848%_
                                               _%__splice1871918720%_
                                               _%target26872851%_
                                               _%tl26892854%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g26782723%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26782723%_)))
                                  (if (gx#stx-pair? _%hd26852845%_)
                                      (let ((_%e27062750%_
                                             (gx#syntax-e _%hd26852845%_)))
                                        (let ((_%tl27082757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e27062750%_)))
                                              (_%hd27072754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e27062750%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl26862848%_)
                                              (let ((_%__splice1872318724%_
                                                     (gx#syntax-split-splice
                                                      _%tl26862848%_
                                                      '0)))
                                                (let ((_%tl27112763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1872318724%_
                                                          '1)))
                                                      (_%target27092760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1872318724%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl27112763%_)
                                                      (_%__match1877318774%_
                                                       _%e26812831%_
                                                       _%hd26822835%_
                                                       _%tl26832838%_
                                                       _%e26842841%_
                                                       _%hd26852845%_
                                                       _%tl26862848%_
                                                       _%e27062750%_
                                                       _%hd27072754%_
                                                       _%tl27082757%_
                                                       _%__splice1872318724%_
                                                       _%target27092760%_
                                                       _%tl27112763%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g26782723%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g26782723%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g26782723%_))))))
                          (let () (declare (not safe)) (_%g26782723%_)))))
                  (let () (declare (not safe)) (_%g26782723%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_%$stx2912%_)
        (let* ((_%__stx1877618777%_ _%$stx2912%_)
               (_%g29172981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1877618777%_))))
          (let ((_%__kont1877918780%_
                 (lambda (_%L3187%_ _%L3189%_ _%L3190%_ _%L3191%_ _%L3192%_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _%L3192%_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (foldr (lambda (_%g32213224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%g32223227%_)
                                    (cons _%g32213224%_ _%g32223227%_))
                                  _%L3189%_
                                  _%L3191%_)
                           (foldr (lambda (_%g32193230%_ _%g32203233%_)
                                    (cons _%g32193230%_ _%g32203233%_))
                                  '()
                                  _%L3187%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L3192%_ '())))
                         (foldr (lambda (_%g32173236%_ _%g32183239%_)
                                  (cons _%g32173236%_ _%g32183239%_))
                                '()
                                _%L3190%_))))
                (_%__kont1878518786%_
                 (lambda (_%L3038%_ _%L3040%_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _%L3040%_
                                     (foldr (lambda (_%g30573060%_
                                                     _%g30583063%_)
                                              (cons _%g30573060%_
                                                    _%g30583063%_))
                                            '()
                                            _%L3038%_)))))))
            (let* ((_%__match1883318834%_
                    (lambda (_%e29612988%_
                             _%hd29622992%_
                             _%tl29632995%_
                             _%e29642998%_
                             _%hd29653002%_
                             _%tl29663005%_
                             _%__splice1878718788%_
                             _%target29673008%_
                             _%tl29693011%_)
                      (letrec ((_%loop29703014%_
                                (lambda (_%hd29683018%_ _%body29743021%_)
                                  (if (gx#stx-pair? _%hd29683018%_)
                                      (let ((_%e29713024%_
                                             (gx#syntax-e _%hd29683018%_)))
                                        (let ((_%lp-tl29733031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29713024%_)))
                                              (_%lp-hd29723028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29713024%_))))
                                          (_%loop29703014%_
                                           _%lp-tl29733031%_
                                           (cons _%lp-hd29723028%_
                                                 _%body29743021%_))))
                                      (let ((_%body29753034%_
                                             (reverse _%body29743021%_)))
                                        (_%__kont1878518786%_
                                         _%body29753034%_
                                         _%hd29653002%_))))))
                        (_%loop29703014%_ _%target29673008%_ '()))))
                   (_%__match1882518826%_
                    (lambda (_%e29612988%_
                             _%hd29622992%_
                             _%tl29632995%_
                             _%e29642998%_
                             _%hd29653002%_
                             _%tl29663005%_)
                      (if (gx#stx-pair/null? _%tl29663005%_)
                          (let ((_%__splice1878718788%_
                                 (gx#syntax-split-splice _%tl29663005%_ '0)))
                            (let ((_%tl29693011%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1878718788%_ '1)))
                                  (_%target29673008%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1878718788%_
                                      '0))))
                              (if (gx#stx-null? _%tl29693011%_)
                                  (_%__match1883318834%_
                                   _%e29612988%_
                                   _%hd29622992%_
                                   _%tl29632995%_
                                   _%e29642998%_
                                   _%hd29653002%_
                                   _%tl29663005%_
                                   _%__splice1878718788%_
                                   _%target29673008%_
                                   _%tl29693011%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g29172981%_)))))
                          (let () (declare (not safe)) (_%g29172981%_)))))
                   (_%__match1881318814%_
                    (lambda (_%e29243073%_
                             _%hd29253077%_
                             _%tl29263080%_
                             _%e29273083%_
                             _%hd29283087%_
                             _%tl29293090%_
                             _%e29303093%_
                             _%hd29313097%_
                             _%tl29323100%_
                             _%__splice1878118782%_
                             _%target29333103%_
                             _%tl29353106%_)
                      (letrec ((_%loop29363109%_
                                (lambda (_%hd29343113%_
                                         _%arg29403116%_
                                         _%var29413118%_)
                                  (if (gx#stx-pair? _%hd29343113%_)
                                      (let ((_%e29373121%_
                                             (gx#syntax-e _%hd29343113%_)))
                                        (let ((_%lp-tl29393128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e29373121%_)))
                                              (_%lp-hd29383125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e29373121%_))))
                                          (if (gx#stx-pair? _%lp-hd29383125%_)
                                              (let ((_%e29533131%_
                                                     (gx#syntax-e
                                                      _%lp-hd29383125%_)))
                                                (let ((_%tl29553138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e29533131%_)))
                                                      (_%hd29543135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e29533131%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl29553138%_)
                                                      (let ((_%e29563141%_
                                                             (gx#syntax-e
                                                              _%tl29553138%_)))
                                                        (let ((_%tl29583148%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e29563141%_)))
                      (_%hd29573145%_
                       (let () (declare (not safe)) (##car _%e29563141%_))))
                  (if (gx#stx-null? _%tl29583148%_)
                      (_%loop29363109%_
                       _%lp-tl29393128%_
                       (cons _%hd29573145%_ _%arg29403116%_)
                       (cons _%hd29543135%_ _%var29413118%_))
                      (_%__match1882518826%_
                       _%e29243073%_
                       _%hd29253077%_
                       _%tl29263080%_
                       _%e29273083%_
                       _%hd29283087%_
                       _%tl29293090%_))))
              (_%__match1882518826%_
               _%e29243073%_
               _%hd29253077%_
               _%tl29263080%_
               _%e29273083%_
               _%hd29283087%_
               _%tl29293090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match1882518826%_
                                               _%e29243073%_
                                               _%hd29253077%_
                                               _%tl29263080%_
                                               _%e29273083%_
                                               _%hd29283087%_
                                               _%tl29293090%_))))
                                      (let ((_%var29433154%_
                                             (reverse _%var29413118%_))
                                            (_%arg29423151%_
                                             (reverse _%arg29403116%_)))
                                        (if (gx#stx-pair/null? _%tl29323100%_)
                                            (let ((_%__splice1878318784%_
                                                   (gx#syntax-split-splice
                                                    _%tl29323100%_
                                                    '0)))
                                              (let ((_%tl29463160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1878318784%_
                                                        '1)))
                                                    (_%target29443157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1878318784%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl29463160%_)
                                                    (letrec ((_%loop29473163%_
                                                              (lambda (_%hd29453167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body29513170%_)
                        (if (gx#stx-pair? _%hd29453167%_)
                            (let ((_%e29483173%_ (gx#syntax-e _%hd29453167%_)))
                              (let ((_%lp-tl29503180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e29483173%_)))
                                    (_%lp-hd29493177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e29483173%_))))
                                (_%loop29473163%_
                                 _%lp-tl29503180%_
                                 (cons _%lp-hd29493177%_ _%body29513170%_))))
                            (let ((_%body29523183%_
                                   (reverse _%body29513170%_)))
                              (let ((_%L3187%_ _%body29523183%_)
                                    (_%L3189%_ _%tl29353106%_)
                                    (_%L3190%_ _%arg29423151%_)
                                    (_%L3191%_ _%var29433154%_)
                                    (_%L3192%_ _%hd29283087%_))
                                (if (gx#identifier? _%L3192%_)
                                    (_%__kont1877918780%_
                                     _%L3187%_
                                     _%L3189%_
                                     _%L3190%_
                                     _%L3191%_
                                     _%L3192%_)
                                    (_%__match1882518826%_
                                     _%e29243073%_
                                     _%hd29253077%_
                                     _%tl29263080%_
                                     _%e29273083%_
                                     _%hd29283087%_
                                     _%tl29293090%_))))))))
              (_%loop29473163%_ _%target29443157%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match1882518826%_
                                                     _%e29243073%_
                                                     _%hd29253077%_
                                                     _%tl29263080%_
                                                     _%e29273083%_
                                                     _%hd29283087%_
                                                     _%tl29293090%_))))
                                            (_%__match1882518826%_
                                             _%e29243073%_
                                             _%hd29253077%_
                                             _%tl29263080%_
                                             _%e29273083%_
                                             _%hd29283087%_
                                             _%tl29293090%_)))))))
                        (_%loop29363109%_ _%target29333103%_ '() '())))))
              (if (gx#stx-pair? _%__stx1877618777%_)
                  (let ((_%e29243073%_ (gx#syntax-e _%__stx1877618777%_)))
                    (let ((_%tl29263080%_
                           (let () (declare (not safe)) (##cdr _%e29243073%_)))
                          (_%hd29253077%_
                           (let ()
                             (declare (not safe))
                             (##car _%e29243073%_))))
                      (if (gx#stx-pair? _%tl29263080%_)
                          (let ((_%e29273083%_ (gx#syntax-e _%tl29263080%_)))
                            (let ((_%tl29293090%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e29273083%_)))
                                  (_%hd29283087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e29273083%_))))
                              (if (gx#stx-pair? _%tl29293090%_)
                                  (let ((_%e29303093%_
                                         (gx#syntax-e _%tl29293090%_)))
                                    (let ((_%tl29323100%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e29303093%_)))
                                          (_%hd29313097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e29303093%_))))
                                      (if (gx#stx-pair/null? _%hd29313097%_)
                                          (let ((_%__splice1878118782%_
                                                 (gx#syntax-split-splice
                                                  _%hd29313097%_
                                                  '0)))
                                            (let ((_%tl29353106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1878118782%_
                                                      '1)))
                                                  (_%target29333103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1878118782%_
                                                      '0))))
                                              (_%__match1881318814%_
                                               _%e29243073%_
                                               _%hd29253077%_
                                               _%tl29263080%_
                                               _%e29273083%_
                                               _%hd29283087%_
                                               _%tl29293090%_
                                               _%e29303093%_
                                               _%hd29313097%_
                                               _%tl29323100%_
                                               _%__splice1878118782%_
                                               _%target29333103%_
                                               _%tl29353106%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl29293090%_)
                                              (let ((_%__splice1878718788%_
                                                     (gx#syntax-split-splice
                                                      _%tl29293090%_
                                                      '0)))
                                                (let ((_%tl29693011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1878718788%_
                                                          '1)))
                                                      (_%target29673008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1878718788%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl29693011%_)
                                                      (_%__match1883318834%_
                                                       _%e29243073%_
                                                       _%hd29253077%_
                                                       _%tl29263080%_
                                                       _%e29273083%_
                                                       _%hd29283087%_
                                                       _%tl29293090%_
                                                       _%__splice1878718788%_
                                                       _%target29673008%_
                                                       _%tl29693011%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g29172981%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g29172981%_))))))
                                  (if (gx#stx-pair/null? _%tl29293090%_)
                                      (let ((_%__splice1878718788%_
                                             (gx#syntax-split-splice
                                              _%tl29293090%_
                                              '0)))
                                        (let ((_%tl29693011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1878718788%_
                                                  '1)))
                                              (_%target29673008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1878718788%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl29693011%_)
                                              (_%__match1883318834%_
                                               _%e29243073%_
                                               _%hd29253077%_
                                               _%tl29263080%_
                                               _%e29273083%_
                                               _%hd29283087%_
                                               _%tl29293090%_
                                               _%__splice1878718788%_
                                               _%target29673008%_
                                               _%tl29693011%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g29172981%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g29172981%_))))))
                          (let () (declare (not safe)) (_%g29172981%_)))))
                  (let () (declare (not safe)) (_%g29172981%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_%$stx3249%_)
        (let* ((_%g32533277%_
                (lambda (_%g32543273%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g32543273%_)))
               (_%g32523362%_
                (lambda (_%g32543281%_)
                  (if (gx#stx-pair? _%g32543281%_)
                      (let ((_%e32573284%_ (gx#syntax-e _%g32543281%_)))
                        (let ((_%hd32583288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e32573284%_)))
                              (_%tl32593291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e32573284%_))))
                          (if (gx#stx-pair? _%tl32593291%_)
                              (let ((_%e32603294%_
                                     (gx#syntax-e _%tl32593291%_)))
                                (let ((_%hd32613298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e32603294%_)))
                                      (_%tl32623301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e32603294%_))))
                                  (if (gx#stx-pair/null? _%tl32623301%_)
                                      (let ((_g20951_
                                             (gx#syntax-split-splice
                                              _%tl32623301%_
                                              '0)))
                                        (begin
                                          (let ((_g20952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20951_)
                                                       (##vector-length
                                                        _g20951_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20952_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20952_)))
                                          (let ((_%target32633304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20951_ 0)))
                                                (_%tl32653307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20951_ 1))))
                                            (if (gx#stx-null? _%tl32653307%_)
                                                (letrec ((_%loop32663310%_
                                                          (lambda (_%hd32643314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body32703317%_)
                    (if (gx#stx-pair? _%hd32643314%_)
                        (let ((_%e32673320%_ (gx#syntax-e _%hd32643314%_)))
                          (let ((_%lp-hd32683324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e32673320%_)))
                                (_%lp-tl32693327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e32673320%_))))
                            (_%loop32663310%_
                             _%lp-tl32693327%_
                             (cons _%lp-hd32683324%_ _%body32703317%_))))
                        (let ((_%body32713330%_ (reverse _%body32703317%_)))
                          ((lambda (_%L3334%_ _%L3336%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _%L3336%_
                                               (foldr (lambda (_%g33533356%_
                                                               _%g33543359%_)
                                                        (cons _%g33533356%_
                                                              _%g33543359%_))
                                                      '()
                                                      _%L3334%_)))))
                           _%body32713330%_
                           _%hd32613298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop32663310%_
                                                   _%target32633304%_
                                                   '()))
                                                (_%g32533277%_
                                                 _%g32543281%_)))))
                                      (_%g32533277%_ _%g32543281%_))))
                              (_%g32533277%_ _%g32543281%_))))
                      (_%g32533277%_ _%g32543281%_)))))
          (_%g32523362%_ _%$stx3249%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_%$stx3367%_)
        (let* ((_%g33713395%_
                (lambda (_%g33723391%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g33723391%_)))
               (_%g33703480%_
                (lambda (_%g33723399%_)
                  (if (gx#stx-pair? _%g33723399%_)
                      (let ((_%e33753402%_ (gx#syntax-e _%g33723399%_)))
                        (let ((_%hd33763406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e33753402%_)))
                              (_%tl33773409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e33753402%_))))
                          (if (gx#stx-pair? _%tl33773409%_)
                              (let ((_%e33783412%_
                                     (gx#syntax-e _%tl33773409%_)))
                                (let ((_%hd33793416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e33783412%_)))
                                      (_%tl33803419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e33783412%_))))
                                  (if (gx#stx-pair/null? _%tl33803419%_)
                                      (let ((_g20953_
                                             (gx#syntax-split-splice
                                              _%tl33803419%_
                                              '0)))
                                        (begin
                                          (let ((_g20954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20953_)
                                                       (##vector-length
                                                        _g20953_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20954_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20954_)))
                                          (let ((_%target33813422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20953_ 0)))
                                                (_%tl33833425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20953_ 1))))
                                            (if (gx#stx-null? _%tl33833425%_)
                                                (letrec ((_%loop33843428%_
                                                          (lambda (_%hd33823432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body33883435%_)
                    (if (gx#stx-pair? _%hd33823432%_)
                        (let ((_%e33853438%_ (gx#syntax-e _%hd33823432%_)))
                          (let ((_%lp-hd33863442%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e33853438%_)))
                                (_%lp-tl33873445%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e33853438%_))))
                            (_%loop33843428%_
                             _%lp-tl33873445%_
                             (cons _%lp-hd33863442%_ _%body33883435%_))))
                        (let ((_%body33893448%_ (reverse _%body33883435%_)))
                          ((lambda (_%L3452%_ _%L3454%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _%L3454%_
                                               (foldr (lambda (_%g34713474%_
                                                               _%g34723477%_)
                                                        (cons _%g34713474%_
                                                              _%g34723477%_))
                                                      '()
                                                      _%L3452%_)))))
                           _%body33893448%_
                           _%hd33793416%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop33843428%_
                                                   _%target33813422%_
                                                   '()))
                                                (_%g33713395%_
                                                 _%g33723399%_)))))
                                      (_%g33713395%_ _%g33723399%_))))
                              (_%g33713395%_ _%g33723399%_))))
                      (_%g33713395%_ _%g33723399%_)))))
          (_%g33703480%_ _%$stx3367%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_%$stx3485%_)
        (let* ((_%g34893513%_
                (lambda (_%g34903509%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g34903509%_)))
               (_%g34883598%_
                (lambda (_%g34903517%_)
                  (if (gx#stx-pair? _%g34903517%_)
                      (let ((_%e34933520%_ (gx#syntax-e _%g34903517%_)))
                        (let ((_%hd34943524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e34933520%_)))
                              (_%tl34953527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e34933520%_))))
                          (if (gx#stx-pair? _%tl34953527%_)
                              (let ((_%e34963530%_
                                     (gx#syntax-e _%tl34953527%_)))
                                (let ((_%hd34973534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e34963530%_)))
                                      (_%tl34983537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e34963530%_))))
                                  (if (gx#stx-pair/null? _%tl34983537%_)
                                      (let ((_g20955_
                                             (gx#syntax-split-splice
                                              _%tl34983537%_
                                              '0)))
                                        (begin
                                          (let ((_g20956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20955_)
                                                       (##vector-length
                                                        _g20955_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20956_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20956_)))
                                          (let ((_%target34993540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20955_ 0)))
                                                (_%tl35013543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20955_ 1))))
                                            (if (gx#stx-null? _%tl35013543%_)
                                                (letrec ((_%loop35023546%_
                                                          (lambda (_%hd35003550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body35063553%_)
                    (if (gx#stx-pair? _%hd35003550%_)
                        (let ((_%e35033556%_ (gx#syntax-e _%hd35003550%_)))
                          (let ((_%lp-hd35043560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e35033556%_)))
                                (_%lp-tl35053563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e35033556%_))))
                            (_%loop35023546%_
                             _%lp-tl35053563%_
                             (cons _%lp-hd35043560%_ _%body35063553%_))))
                        (let ((_%body35073566%_ (reverse _%body35063553%_)))
                          ((lambda (_%L3570%_ _%L3572%_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _%L3572%_
                                               (foldr (lambda (_%g35893592%_
                                                               _%g35903595%_)
                                                        (cons _%g35893592%_
                                                              _%g35903595%_))
                                                      '()
                                                      _%L3570%_)))))
                           _%body35073566%_
                           _%hd34973534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop35023546%_
                                                   _%target34993540%_
                                                   '()))
                                                (_%g34893513%_
                                                 _%g34903517%_)))))
                                      (_%g34893513%_ _%g34903517%_))))
                              (_%g34893513%_ _%g34903517%_))))
                      (_%g34893513%_ _%g34903517%_)))))
          (_%g34883598%_ _%$stx3485%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_%stx3603%_)
        (letrec ((_%let-head?3606%_
                  (lambda (_%x4086%_)
                    (let* ((_%__stx1883618837%_ _%x4086%_)
                           (_%g40904101%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1883618837%_))))
                      (let ((_%__kont1883918840%_
                             (lambda (_%L4129%_)
                               (gx#stx-andmap gx#identifier? _%L4129%_)))
                            (_%__kont1884118842%_
                             (lambda () (gx#identifier? _%x4086%_))))
                        (if (gx#stx-pair? _%__stx1883618837%_)
                            (let ((_%e40934119%_
                                   (gx#syntax-e _%__stx1883618837%_)))
                              (let ((_%tl40954126%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40934119%_)))
                                    (_%hd40944123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40934119%_))))
                                (if (gx#identifier? _%hd40944123%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20957_|
                                         _%hd40944123%_)
                                        (_%__kont1883918840%_ _%tl40954126%_)
                                        (_%__kont1884118842%_))
                                    (_%__kont1884118842%_))))
                            (_%__kont1884118842%_))))))
                 (_%let-head3608%_
                  (lambda (_%x4026%_)
                    (let* ((_%__stx1885618857%_ _%x4026%_)
                           (_%g40304041%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1885618857%_))))
                      (let ((_%__kont1885918860%_
                             (lambda (_%L4069%_) _%L4069%_))
                            (_%__kont1886118862%_
                             (lambda () (list _%x4026%_))))
                        (if (gx#stx-pair? _%__stx1885618857%_)
                            (let ((_%e40334059%_
                                   (gx#syntax-e _%__stx1885618857%_)))
                              (let ((_%tl40354066%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e40334059%_)))
                                    (_%hd40344063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e40334059%_))))
                                (if (gx#identifier? _%hd40344063%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g20958_|
                                         _%hd40344063%_)
                                        (_%__kont1885918860%_ _%tl40354066%_)
                                        (_%__kont1886118862%_))
                                    (_%__kont1886118862%_))))
                            (_%__kont1886118862%_)))))))
          (let* ((_%__stx1887618877%_ _%stx3603%_)
                 (_%g36113677%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1887618877%_))))
            (let ((_%__kont1887918880%_
                   (lambda (_%L3995%_ _%L3997%_ _%L3998%_ _%L3999%_ _%L4000%_)
                     (cons _%L4000%_
                           (cons _%L3999%_
                                 (cons (cons (cons _%L3998%_
                                                   (cons _%L3997%_ '()))
                                             '())
                                       _%L3995%_)))))
                  (_%__kont1888118882%_
                   (lambda (_%L3798%_ _%L3800%_ _%L3801%_ _%L3802%_)
                     (let* ((_%g38373854%_
                             (lambda (_%g38383850%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g38383850%_)))
                            (_%g38363926%_
                             (lambda (_%g38383858%_)
                               (if (gx#stx-pair/null? _%g38383858%_)
                                   (let ((_g20959_
                                          (gx#syntax-split-splice
                                           _%g38383858%_
                                           '0)))
                                     (begin
                                       (let ((_g20960_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20959_)
                                                    (##vector-length _g20959_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20960_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20960_)))
                                       (let ((_%target38403861%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20959_ 0)))
                                             (_%tl38423864%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g20959_ 1))))
                                         (if (gx#stx-null? _%tl38423864%_)
                                             (letrec ((_%loop38433867%_
                                                       (lambda (_%hd38413871%_
                                                                _%hd-bind38473874%_)
                                                         (if (gx#stx-pair?
                                                              _%hd38413871%_)
                                                             (let ((_%e38443877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd38413871%_)))
                       (let ((_%lp-hd38453881%_
                              (let ()
                                (declare (not safe))
                                (##car _%e38443877%_)))
                             (_%lp-tl38463884%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e38443877%_))))
                         (_%loop38433867%_
                          _%lp-tl38463884%_
                          (cons _%lp-hd38453881%_ _%hd-bind38473874%_))))
                     (let ((_%hd-bind38483887%_ (reverse _%hd-bind38473874%_)))
                       ((lambda (_%L3891%_)
                          (cons _%L3802%_
                                (cons (begin
                                        (gx#syntax-check-splice-targets
                                         _%L3800%_
                                         _%L3891%_)
                                        (foldr (lambda (_%g39083912%_
                                                        _%g39093915%_
                                                        _%g39103917%_)
                                                 (cons (cons _%g39093915%_
                                                             (cons _%g39083912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%g39103917%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%L3800%_
                                               _%L3891%_))
                                      (foldr (lambda (_%g39063920%_
                                                      _%g39073923%_)
                                               (cons _%g39063920%_
                                                     _%g39073923%_))
                                             '()
                                             _%L3798%_))))
                        _%hd-bind38483887%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop38433867%_
                                                _%target38403861%_
                                                '()))
                                             (_%g38373854%_ _%g38383858%_)))))
                                   (_%g38373854%_ _%g38383858%_)))))
                       (_%g38363926%_
                        (gx#stx-map
                         _%let-head3608%_
                         (foldr (lambda (_%g39293932%_ _%g39303935%_)
                                  (cons _%g39293932%_ _%g39303935%_))
                                '()
                                _%L3801%_)))))))
              (let* ((_%__match1894518946%_
                      (lambda (_%e36373684%_
                               _%hd36383688%_
                               _%tl36393691%_
                               _%e36403694%_
                               _%hd36413698%_
                               _%tl36423701%_
                               _%e36433704%_
                               _%hd36443708%_
                               _%tl36453711%_
                               _%__splice1888318884%_
                               _%target36463714%_
                               _%tl36483717%_)
                        (letrec ((_%loop36493720%_
                                  (lambda (_%hd36473724%_
                                           _%e36533727%_
                                           _%hd36543729%_)
                                    (if (gx#stx-pair? _%hd36473724%_)
                                        (let ((_%e36503732%_
                                               (gx#syntax-e _%hd36473724%_)))
                                          (let ((_%lp-tl36523739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e36503732%_)))
                                                (_%lp-hd36513736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e36503732%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd36513736%_)
                                                (let ((_%e36663742%_
                                                       (gx#syntax-e
                                                        _%lp-hd36513736%_)))
                                                  (let ((_%tl36683749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e36663742%_)))
                                                        (_%hd36673746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e36663742%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl36683749%_)
                                                        (let ((_%e36693752%_
                                                               (gx#syntax-e
                                                                _%tl36683749%_)))
                                                          (let ((_%tl36713759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e36693752%_)))
                        (_%hd36703756%_
                         (let () (declare (not safe)) (##car _%e36693752%_))))
                    (if (gx#stx-null? _%tl36713759%_)
                        (_%loop36493720%_
                         _%lp-tl36523739%_
                         (cons _%hd36703756%_ _%e36533727%_)
                         (cons _%hd36673746%_ _%hd36543729%_))
                        (let () (declare (not safe)) (_%g36113677%_)))))
                (let () (declare (not safe)) (_%g36113677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36113677%_)))))
                                        (let ((_%hd36563765%_
                                               (reverse _%hd36543729%_))
                                              (_%e36553762%_
                                               (reverse _%e36533727%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl36453711%_)
                                              (let ((_%__splice1888518886%_
                                                     (gx#syntax-split-splice
                                                      _%tl36453711%_
                                                      '0)))
                                                (let ((_%tl36593771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1888518886%_
                                                          '1)))
                                                      (_%target36573768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1888518886%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl36593771%_)
                                                      (letrec ((_%loop36603774%_
                                                                (lambda (_%hd36583778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body36643781%_)
                          (if (gx#stx-pair? _%hd36583778%_)
                              (let ((_%e36613784%_
                                     (gx#syntax-e _%hd36583778%_)))
                                (let ((_%lp-tl36633791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e36613784%_)))
                                      (_%lp-hd36623788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e36613784%_))))
                                  (_%loop36603774%_
                                   _%lp-tl36633791%_
                                   (cons _%lp-hd36623788%_ _%body36643781%_))))
                              (let ((_%body36653794%_
                                     (reverse _%body36643781%_)))
                                (let ((_%L3798%_ _%body36653794%_)
                                      (_%L3800%_ _%e36553762%_)
                                      (_%L3801%_ _%hd36563765%_)
                                      (_%L3802%_ _%hd36413698%_))
                                  (if (gx#stx-andmap
                                       _%let-head?3606%_
                                       (foldr (lambda (_%g38283831%_
                                                       _%g38293834%_)
                                                (cons _%g38283831%_
                                                      _%g38293834%_))
                                              '()
                                              _%L3801%_))
                                      (_%__kont1888118882%_
                                       _%L3798%_
                                       _%L3800%_
                                       _%L3801%_
                                       _%L3802%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g36113677%_)))))))))
                (_%loop36603774%_ _%target36573768%_ '()))
              (let () (declare (not safe)) (_%g36113677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g36113677%_))))))))
                          (_%loop36493720%_ _%target36463714%_ '() '()))))
                     (_%__match1891918920%_
                      (lambda (_%e36183945%_
                               _%hd36193949%_
                               _%tl36203952%_
                               _%e36213955%_
                               _%hd36223959%_
                               _%tl36233962%_
                               _%e36243965%_
                               _%hd36253969%_
                               _%tl36263972%_
                               _%e36273975%_
                               _%hd36283979%_
                               _%tl36293982%_
                               _%e36303985%_
                               _%hd36313989%_
                               _%tl36323992%_)
                        (let ((_%L3995%_ _%tl36263972%_)
                              (_%L3997%_ _%hd36313989%_)
                              (_%L3998%_ _%hd36283979%_)
                              (_%L3999%_ _%hd36223959%_)
                              (_%L4000%_ _%hd36193949%_))
                          (if (_%let-head?3606%_ _%L3998%_)
                              (_%__kont1887918880%_
                               _%L3995%_
                               _%L3997%_
                               _%L3998%_
                               _%L3999%_
                               _%L4000%_)
                              (if (gx#stx-pair/null? _%hd36253969%_)
                                  (let ((_%__splice1888318884%_
                                         (gx#syntax-split-splice
                                          _%hd36253969%_
                                          '0)))
                                    (let ((_%tl36483717%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888318884%_
                                              '1)))
                                          (_%target36463714%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1888318884%_
                                              '0))))
                                      (if (gx#stx-null? _%tl36483717%_)
                                          (_%__match1894518946%_
                                           _%e36183945%_
                                           _%hd36193949%_
                                           _%tl36203952%_
                                           _%e36213955%_
                                           _%hd36223959%_
                                           _%tl36233962%_
                                           _%e36243965%_
                                           _%hd36253969%_
                                           _%tl36263972%_
                                           _%__splice1888318884%_
                                           _%target36463714%_
                                           _%tl36483717%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g36113677%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g36113677%_))))))))
                (if (gx#stx-pair? _%__stx1887618877%_)
                    (let ((_%e36183945%_ (gx#syntax-e _%__stx1887618877%_)))
                      (let ((_%tl36203952%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e36183945%_)))
                            (_%hd36193949%_
                             (let ()
                               (declare (not safe))
                               (##car _%e36183945%_))))
                        (if (gx#stx-pair? _%tl36203952%_)
                            (let ((_%e36213955%_ (gx#syntax-e _%tl36203952%_)))
                              (let ((_%tl36233962%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e36213955%_)))
                                    (_%hd36223959%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e36213955%_))))
                                (if (gx#stx-pair? _%tl36233962%_)
                                    (let ((_%e36243965%_
                                           (gx#syntax-e _%tl36233962%_)))
                                      (let ((_%tl36263972%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e36243965%_)))
                                            (_%hd36253969%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e36243965%_))))
                                        (if (gx#stx-pair? _%hd36253969%_)
                                            (let ((_%e36273975%_
                                                   (gx#syntax-e
                                                    _%hd36253969%_)))
                                              (let ((_%tl36293982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e36273975%_)))
                                                    (_%hd36283979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e36273975%_))))
                                                (if (gx#stx-pair?
                                                     _%tl36293982%_)
                                                    (let ((_%e36303985%_
                                                           (gx#syntax-e
                                                            _%tl36293982%_)))
                                                      (let ((_%tl36323992%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e36303985%_)))
                    (_%hd36313989%_
                     (let () (declare (not safe)) (##car _%e36303985%_))))
                (if (gx#stx-null? _%tl36323992%_)
                    (_%__match1891918920%_
                     _%e36183945%_
                     _%hd36193949%_
                     _%tl36203952%_
                     _%e36213955%_
                     _%hd36223959%_
                     _%tl36233962%_
                     _%e36243965%_
                     _%hd36253969%_
                     _%tl36263972%_
                     _%e36273975%_
                     _%hd36283979%_
                     _%tl36293982%_
                     _%e36303985%_
                     _%hd36313989%_
                     _%tl36323992%_)
                    (if (gx#stx-pair/null? _%hd36253969%_)
                        (let ((_%__splice1888318884%_
                               (gx#syntax-split-splice _%hd36253969%_ '0)))
                          (let ((_%tl36483717%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1888318884%_ '1)))
                                (_%target36463714%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1888318884%_ '0))))
                            (if (gx#stx-null? _%tl36483717%_)
                                (_%__match1894518946%_
                                 _%e36183945%_
                                 _%hd36193949%_
                                 _%tl36203952%_
                                 _%e36213955%_
                                 _%hd36223959%_
                                 _%tl36233962%_
                                 _%e36243965%_
                                 _%hd36253969%_
                                 _%tl36263972%_
                                 _%__splice1888318884%_
                                 _%target36463714%_
                                 _%tl36483717%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g36113677%_)))))
                        (let () (declare (not safe)) (_%g36113677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%hd36253969%_)
                                                        (let ((_%__splice1888318884%_
                                                               (gx#syntax-split-splice
                                                                _%hd36253969%_
                                                                '0)))
                                                          (let ((_%tl36483717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1888318884%_ '1)))
                        (_%target36463714%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice1888318884%_ '0))))
                    (if (gx#stx-null? _%tl36483717%_)
                        (_%__match1894518946%_
                         _%e36183945%_
                         _%hd36193949%_
                         _%tl36203952%_
                         _%e36213955%_
                         _%hd36223959%_
                         _%tl36233962%_
                         _%e36243965%_
                         _%hd36253969%_
                         _%tl36263972%_
                         _%__splice1888318884%_
                         _%target36463714%_
                         _%tl36483717%_)
                        (let () (declare (not safe)) (_%g36113677%_)))))
                (let () (declare (not safe)) (_%g36113677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%hd36253969%_)
                                                (let ((_%__splice1888318884%_
                                                       (gx#syntax-split-splice
                                                        _%hd36253969%_
                                                        '0)))
                                                  (let ((_%tl36483717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1888318884%_
                                                            '1)))
                                                        (_%target36463714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1888318884%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl36483717%_)
                                                        (_%__match1894518946%_
                                                         _%e36183945%_
                                                         _%hd36193949%_
                                                         _%tl36203952%_
                                                         _%e36213955%_
                                                         _%hd36223959%_
                                                         _%tl36233962%_
                                                         _%e36243965%_
                                                         _%hd36253969%_
                                                         _%tl36263972%_
                                                         _%__splice1888318884%_
                                                         _%target36463714%_
                                                         _%tl36483717%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g36113677%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g36113677%_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g36113677%_)))))
                            (let () (declare (not safe)) (_%g36113677%_)))))
                    (let () (declare (not safe)) (_%g36113677%_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_%$stx4149%_)
        (let* ((_%__stx1894818949%_ _%$stx4149%_)
               (_%g41554181%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1894818949%_))))
          (let ((_%__kont1895118952%_ (lambda () '#t))
                (_%__kont1895318954%_ (lambda (_%L4253%_) _%L4253%_))
                (_%__kont1895518956%_
                 (lambda (_%L4208%_ _%L4210%_ _%L4211%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4210%_
                               (cons (cons _%L4211%_ _%L4208%_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? _%__stx1894818949%_)
                (let ((_%e41574273%_ (gx#syntax-e _%__stx1894818949%_)))
                  (let ((_%tl41594280%_
                         (let () (declare (not safe)) (##cdr _%e41574273%_)))
                        (_%hd41584277%_
                         (let () (declare (not safe)) (##car _%e41574273%_))))
                    (if (gx#stx-null? _%tl41594280%_)
                        (_%__kont1895118952%_)
                        (if (gx#stx-pair? _%tl41594280%_)
                            (let ((_%e41644243%_ (gx#syntax-e _%tl41594280%_)))
                              (let ((_%tl41664250%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e41644243%_)))
                                    (_%hd41654247%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e41644243%_))))
                                (if (gx#stx-null? _%tl41664250%_)
                                    (_%__kont1895318954%_ _%hd41654247%_)
                                    (_%__kont1895518956%_
                                     _%tl41664250%_
                                     _%hd41654247%_
                                     _%hd41584277%_))))
                            (let () (declare (not safe)) (_%g41554181%_))))))
                (let () (declare (not safe)) (_%g41554181%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_%$stx4291%_)
        (let* ((_%__stx1899418995%_ _%$stx4291%_)
               (_%g42974323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1899418995%_))))
          (let ((_%__kont1899718998%_ (lambda () '#f))
                (_%__kont1899919000%_ (lambda (_%L4395%_) _%L4395%_))
                (_%__kont1900119002%_
                 (lambda (_%L4350%_ _%L4352%_ _%L4353%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4352%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4350%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? _%__stx1899418995%_)
                (let ((_%e42994415%_ (gx#syntax-e _%__stx1899418995%_)))
                  (let ((_%tl43014422%_
                         (let () (declare (not safe)) (##cdr _%e42994415%_)))
                        (_%hd43004419%_
                         (let () (declare (not safe)) (##car _%e42994415%_))))
                    (if (gx#stx-null? _%tl43014422%_)
                        (_%__kont1899718998%_)
                        (if (gx#stx-pair? _%tl43014422%_)
                            (let ((_%e43064385%_ (gx#syntax-e _%tl43014422%_)))
                              (let ((_%tl43084392%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e43064385%_)))
                                    (_%hd43074389%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e43064385%_))))
                                (if (gx#stx-null? _%tl43084392%_)
                                    (_%__kont1899919000%_ _%hd43074389%_)
                                    (_%__kont1900119002%_
                                     _%tl43084392%_
                                     _%hd43074389%_
                                     _%hd43004419%_))))
                            (let () (declare (not safe)) (_%g42974323%_))))))
                (let () (declare (not safe)) (_%g42974323%_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_%$stx4433%_)
        (let* ((_%__stx1904019041%_ _%$stx4433%_)
               (_%g44424533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1904019041%_))))
          (let ((_%__kont1904319044%_ (lambda () '#!void))
                (_%__kont1904519046%_
                 (lambda (_%L4880%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g48994902%_ _%g49004905%_)
                                        (cons _%g48994902%_ _%g49004905%_))
                                      '()
                                      _%L4880%_)))))
                (_%__kont1904919050%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (_%__kont1905119052%_
                 (lambda (_%L4753%_ _%L4755%_ _%L4756%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4755%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _%L4756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L4753%_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1905319054%_
                 (lambda (_%L4691%_ _%L4693%_ _%L4694%_ _%L4695%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _%L4694%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _%L4693%_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _%L4695%_ _%L4691%_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1905519056%_
                 (lambda (_%L4600%_ _%L4602%_ _%L4603%_ _%L4604%_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _%L4603%_
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (foldr (lambda (_%g46254628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g46264631%_)
                  (cons _%g46254628%_ _%g46264631%_))
                '()
                _%L4602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L4604%_ _%L4600%_)
                                           '())))))))
            (let* ((_%__match1920119202%_
                    (lambda (_%e45104540%_
                             _%hd45114544%_
                             _%tl45124547%_
                             _%e45134550%_
                             _%hd45144554%_
                             _%tl45154557%_
                             _%e45164560%_
                             _%hd45174564%_
                             _%tl45184567%_
                             _%__splice1905719058%_
                             _%target45194570%_
                             _%tl45214573%_)
                      (letrec ((_%loop45224576%_
                                (lambda (_%hd45204580%_ _%body45264583%_)
                                  (if (gx#stx-pair? _%hd45204580%_)
                                      (let ((_%e45234586%_
                                             (gx#syntax-e _%hd45204580%_)))
                                        (let ((_%lp-tl45254593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e45234586%_)))
                                              (_%lp-hd45244590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e45234586%_))))
                                          (_%loop45224576%_
                                           _%lp-tl45254593%_
                                           (cons _%lp-hd45244590%_
                                                 _%body45264583%_))))
                                      (let ((_%body45274596%_
                                             (reverse _%body45264583%_)))
                                        (_%__kont1905519056%_
                                         _%tl45154557%_
                                         _%body45274596%_
                                         _%hd45174564%_
                                         _%hd45114544%_))))))
                        (_%loop45224576%_ _%target45194570%_ '()))))
                   (_%__match1909719098%_
                    (lambda (_%e44484820%_
                             _%hd44494824%_
                             _%tl44504827%_
                             _%e44514830%_
                             _%hd44524834%_
                             _%tl44534837%_
                             _%e44544840%_
                             _%hd44554844%_
                             _%tl44564847%_
                             _%__splice1904719048%_
                             _%target44574850%_
                             _%tl44594853%_)
                      (letrec ((_%loop44604856%_
                                (lambda (_%hd44584860%_ _%body44644863%_)
                                  (if (gx#stx-pair? _%hd44584860%_)
                                      (let ((_%e44614866%_
                                             (gx#syntax-e _%hd44584860%_)))
                                        (let ((_%lp-tl44634873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44614866%_)))
                                              (_%lp-hd44624870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44614866%_))))
                                          (_%loop44604856%_
                                           _%lp-tl44634873%_
                                           (cons _%lp-hd44624870%_
                                                 _%body44644863%_))))
                                      (let ((_%body44654876%_
                                             (reverse _%body44644863%_)))
                                        (if (gx#stx-null? _%tl44534837%_)
                                            (_%__kont1904519046%_
                                             _%body44654876%_)
                                            (_%__kont1904919050%_)))))))
                        (_%loop44604856%_ _%target44574850%_ '())))))
              (if (gx#stx-pair? _%__stx1904019041%_)
                  (let ((_%e44444915%_ (gx#syntax-e _%__stx1904019041%_)))
                    (let ((_%tl44464922%_
                           (let () (declare (not safe)) (##cdr _%e44444915%_)))
                          (_%hd44454919%_
                           (let ()
                             (declare (not safe))
                             (##car _%e44444915%_))))
                      (if (gx#stx-null? _%tl44464922%_)
                          (_%__kont1904319044%_)
                          (if (gx#stx-pair? _%tl44464922%_)
                              (let ((_%e44514830%_
                                     (gx#syntax-e _%tl44464922%_)))
                                (let ((_%tl44534837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e44514830%_)))
                                      (_%hd44524834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e44514830%_))))
                                  (if (gx#stx-pair? _%hd44524834%_)
                                      (let ((_%e44544840%_
                                             (gx#syntax-e _%hd44524834%_)))
                                        (let ((_%tl44564847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e44544840%_)))
                                              (_%hd44554844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e44544840%_))))
                                          (if (gx#identifier? _%hd44554844%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g20961_|
                                                   _%hd44554844%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl44564847%_)
                                                      (let ((_%__splice1904719048%_
                                                             (gx#syntax-split-splice
                                                              _%tl44564847%_
                                                              '0)))
                                                        (let ((_%tl44594853%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1904719048%_ '1)))
                      (_%target44574850%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1904719048%_ '0))))
                  (if (gx#stx-null? _%tl44594853%_)
                      (_%__match1909719098%_
                       _%e44444915%_
                       _%hd44454919%_
                       _%tl44464922%_
                       _%e44514830%_
                       _%hd44524834%_
                       _%tl44534837%_
                       _%e44544840%_
                       _%hd44554844%_
                       _%tl44564847%_
                       _%__splice1904719048%_
                       _%target44574850%_
                       _%tl44594853%_)
                      (_%__kont1904919050%_))))
              (_%__kont1904919050%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _%tl44564847%_)
                                                      (_%__kont1905119052%_
                                                       _%tl44534837%_
                                                       _%hd44554844%_
                                                       _%hd44454919%_)
                                                      (if (gx#stx-pair?
                                                           _%tl44564847%_)
                                                          (let ((_%e45004671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl44564847%_)))
                    (let ((_%tl45024678%_
                           (let () (declare (not safe)) (##cdr _%e45004671%_)))
                          (_%hd45014675%_
                           (let ()
                             (declare (not safe))
                             (##car _%e45004671%_))))
                      (if (gx#identifier? _%hd45014675%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g20962_|
                               _%hd45014675%_)
                              (if (gx#stx-pair? _%tl45024678%_)
                                  (let ((_%e45034681%_
                                         (gx#syntax-e _%tl45024678%_)))
                                    (let ((_%tl45054688%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e45034681%_)))
                                          (_%hd45044685%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e45034681%_))))
                                      (if (gx#stx-null? _%tl45054688%_)
                                          (_%__kont1905319054%_
                                           _%tl44534837%_
                                           _%hd45044685%_
                                           _%hd44554844%_
                                           _%hd44454919%_)
                                          (if (gx#stx-pair/null?
                                               _%tl44564847%_)
                                              (let ((_%__splice1905719058%_
                                                     (gx#syntax-split-splice
                                                      _%tl44564847%_
                                                      '0)))
                                                (let ((_%tl45214573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1905719058%_
                                                          '1)))
                                                      (_%target45194570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1905719058%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl45214573%_)
                                                      (_%__match1920119202%_
                                                       _%e44444915%_
                                                       _%hd44454919%_
                                                       _%tl44464922%_
                                                       _%e44514830%_
                                                       _%hd44524834%_
                                                       _%tl44534837%_
                                                       _%e44544840%_
                                                       _%hd44554844%_
                                                       _%tl44564847%_
                                                       _%__splice1905719058%_
                                                       _%target45194570%_
                                                       _%tl45214573%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g44424533%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g44424533%_))))))
                                  (if (gx#stx-pair/null? _%tl44564847%_)
                                      (let ((_%__splice1905719058%_
                                             (gx#syntax-split-splice
                                              _%tl44564847%_
                                              '0)))
                                        (let ((_%tl45214573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1905719058%_
                                                  '1)))
                                              (_%target45194570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1905719058%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl45214573%_)
                                              (_%__match1920119202%_
                                               _%e44444915%_
                                               _%hd44454919%_
                                               _%tl44464922%_
                                               _%e44514830%_
                                               _%hd44524834%_
                                               _%tl44534837%_
                                               _%e44544840%_
                                               _%hd44554844%_
                                               _%tl44564847%_
                                               _%__splice1905719058%_
                                               _%target45194570%_
                                               _%tl45214573%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g44424533%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g44424533%_))))
                              (if (gx#stx-pair/null? _%tl44564847%_)
                                  (let ((_%__splice1905719058%_
                                         (gx#syntax-split-splice
                                          _%tl44564847%_
                                          '0)))
                                    (let ((_%tl45214573%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905719058%_
                                              '1)))
                                          (_%target45194570%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905719058%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45214573%_)
                                          (_%__match1920119202%_
                                           _%e44444915%_
                                           _%hd44454919%_
                                           _%tl44464922%_
                                           _%e44514830%_
                                           _%hd44524834%_
                                           _%tl44534837%_
                                           _%e44544840%_
                                           _%hd44554844%_
                                           _%tl44564847%_
                                           _%__splice1905719058%_
                                           _%target45194570%_
                                           _%tl45214573%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44424533%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44424533%_))))
                          (if (gx#stx-pair/null? _%tl44564847%_)
                              (let ((_%__splice1905719058%_
                                     (gx#syntax-split-splice
                                      _%tl44564847%_
                                      '0)))
                                (let ((_%tl45214573%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905719058%_
                                          '1)))
                                      (_%target45194570%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905719058%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45214573%_)
                                      (_%__match1920119202%_
                                       _%e44444915%_
                                       _%hd44454919%_
                                       _%tl44464922%_
                                       _%e44514830%_
                                       _%hd44524834%_
                                       _%tl44534837%_
                                       _%e44544840%_
                                       _%hd44554844%_
                                       _%tl44564847%_
                                       _%__splice1905719058%_
                                       _%target45194570%_
                                       _%tl45214573%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44424533%_)))))
                              (let () (declare (not safe)) (_%g44424533%_))))))
                  (if (gx#stx-pair/null? _%tl44564847%_)
                      (let ((_%__splice1905719058%_
                             (gx#syntax-split-splice _%tl44564847%_ '0)))
                        (let ((_%tl45214573%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1905719058%_ '1)))
                              (_%target45194570%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1905719058%_ '0))))
                          (if (gx#stx-null? _%tl45214573%_)
                              (_%__match1920119202%_
                               _%e44444915%_
                               _%hd44454919%_
                               _%tl44464922%_
                               _%e44514830%_
                               _%hd44524834%_
                               _%tl44534837%_
                               _%e44544840%_
                               _%hd44554844%_
                               _%tl44564847%_
                               _%__splice1905719058%_
                               _%target45194570%_
                               _%tl45214573%_)
                              (let () (declare (not safe)) (_%g44424533%_)))))
                      (let () (declare (not safe)) (_%g44424533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _%tl44564847%_)
                                                  (_%__kont1905119052%_
                                                   _%tl44534837%_
                                                   _%hd44554844%_
                                                   _%hd44454919%_)
                                                  (if (gx#stx-pair?
                                                       _%tl44564847%_)
                                                      (let ((_%e45004671%_
                                                             (gx#syntax-e
                                                              _%tl44564847%_)))
                                                        (let ((_%tl45024678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e45004671%_)))
                      (_%hd45014675%_
                       (let () (declare (not safe)) (##car _%e45004671%_))))
                  (if (gx#identifier? _%hd45014675%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g20962_|
                           _%hd45014675%_)
                          (if (gx#stx-pair? _%tl45024678%_)
                              (let ((_%e45034681%_
                                     (gx#syntax-e _%tl45024678%_)))
                                (let ((_%tl45054688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e45034681%_)))
                                      (_%hd45044685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e45034681%_))))
                                  (if (gx#stx-null? _%tl45054688%_)
                                      (_%__kont1905319054%_
                                       _%tl44534837%_
                                       _%hd45044685%_
                                       _%hd44554844%_
                                       _%hd44454919%_)
                                      (if (gx#stx-pair/null? _%tl44564847%_)
                                          (let ((_%__splice1905719058%_
                                                 (gx#syntax-split-splice
                                                  _%tl44564847%_
                                                  '0)))
                                            (let ((_%tl45214573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1905719058%_
                                                      '1)))
                                                  (_%target45194570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1905719058%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl45214573%_)
                                                  (_%__match1920119202%_
                                                   _%e44444915%_
                                                   _%hd44454919%_
                                                   _%tl44464922%_
                                                   _%e44514830%_
                                                   _%hd44524834%_
                                                   _%tl44534837%_
                                                   _%e44544840%_
                                                   _%hd44554844%_
                                                   _%tl44564847%_
                                                   _%__splice1905719058%_
                                                   _%target45194570%_
                                                   _%tl45214573%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g44424533%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g44424533%_))))))
                              (if (gx#stx-pair/null? _%tl44564847%_)
                                  (let ((_%__splice1905719058%_
                                         (gx#syntax-split-splice
                                          _%tl44564847%_
                                          '0)))
                                    (let ((_%tl45214573%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905719058%_
                                              '1)))
                                          (_%target45194570%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1905719058%_
                                              '0))))
                                      (if (gx#stx-null? _%tl45214573%_)
                                          (_%__match1920119202%_
                                           _%e44444915%_
                                           _%hd44454919%_
                                           _%tl44464922%_
                                           _%e44514830%_
                                           _%hd44524834%_
                                           _%tl44534837%_
                                           _%e44544840%_
                                           _%hd44554844%_
                                           _%tl44564847%_
                                           _%__splice1905719058%_
                                           _%target45194570%_
                                           _%tl45214573%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g44424533%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g44424533%_))))
                          (if (gx#stx-pair/null? _%tl44564847%_)
                              (let ((_%__splice1905719058%_
                                     (gx#syntax-split-splice
                                      _%tl44564847%_
                                      '0)))
                                (let ((_%tl45214573%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905719058%_
                                          '1)))
                                      (_%target45194570%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice1905719058%_
                                          '0))))
                                  (if (gx#stx-null? _%tl45214573%_)
                                      (_%__match1920119202%_
                                       _%e44444915%_
                                       _%hd44454919%_
                                       _%tl44464922%_
                                       _%e44514830%_
                                       _%hd44524834%_
                                       _%tl44534837%_
                                       _%e44544840%_
                                       _%hd44554844%_
                                       _%tl44564847%_
                                       _%__splice1905719058%_
                                       _%target45194570%_
                                       _%tl45214573%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g44424533%_)))))
                              (let () (declare (not safe)) (_%g44424533%_))))
                      (if (gx#stx-pair/null? _%tl44564847%_)
                          (let ((_%__splice1905719058%_
                                 (gx#syntax-split-splice _%tl44564847%_ '0)))
                            (let ((_%tl45214573%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1905719058%_ '1)))
                                  (_%target45194570%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1905719058%_
                                      '0))))
                              (if (gx#stx-null? _%tl45214573%_)
                                  (_%__match1920119202%_
                                   _%e44444915%_
                                   _%hd44454919%_
                                   _%tl44464922%_
                                   _%e44514830%_
                                   _%hd44524834%_
                                   _%tl44534837%_
                                   _%e44544840%_
                                   _%hd44554844%_
                                   _%tl44564847%_
                                   _%__splice1905719058%_
                                   _%target45194570%_
                                   _%tl45214573%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g44424533%_)))))
                          (let () (declare (not safe)) (_%g44424533%_))))))
              (if (gx#stx-pair/null? _%tl44564847%_)
                  (let ((_%__splice1905719058%_
                         (gx#syntax-split-splice _%tl44564847%_ '0)))
                    (let ((_%tl45214573%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1905719058%_ '1)))
                          (_%target45194570%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1905719058%_ '0))))
                      (if (gx#stx-null? _%tl45214573%_)
                          (_%__match1920119202%_
                           _%e44444915%_
                           _%hd44454919%_
                           _%tl44464922%_
                           _%e44514830%_
                           _%hd44524834%_
                           _%tl44534837%_
                           _%e44544840%_
                           _%hd44554844%_
                           _%tl44564847%_
                           _%__splice1905719058%_
                           _%target45194570%_
                           _%tl45214573%_)
                          (let () (declare (not safe)) (_%g44424533%_)))))
                  (let () (declare (not safe)) (_%g44424533%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%g44424533%_)))))
                              (let () (declare (not safe)) (_%g44424533%_))))))
                  (let () (declare (not safe)) (_%g44424533%_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_%$stx4935%_)
        (let* ((_%g49394963%_
                (lambda (_%g49404959%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g49404959%_)))
               (_%g49385048%_
                (lambda (_%g49404967%_)
                  (if (gx#stx-pair? _%g49404967%_)
                      (let ((_%e49434970%_ (gx#syntax-e _%g49404967%_)))
                        (let ((_%hd49444974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e49434970%_)))
                              (_%tl49454977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e49434970%_))))
                          (if (gx#stx-pair? _%tl49454977%_)
                              (let ((_%e49464980%_
                                     (gx#syntax-e _%tl49454977%_)))
                                (let ((_%hd49474984%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e49464980%_)))
                                      (_%tl49484987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e49464980%_))))
                                  (if (gx#stx-pair/null? _%tl49484987%_)
                                      (let ((_g20963_
                                             (gx#syntax-split-splice
                                              _%tl49484987%_
                                              '0)))
                                        (begin
                                          (let ((_g20964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20963_)
                                                       (##vector-length
                                                        _g20963_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20964_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20964_)))
                                          (let ((_%target49494990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20963_ 0)))
                                                (_%tl49514993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20963_ 1))))
                                            (if (gx#stx-null? _%tl49514993%_)
                                                (letrec ((_%loop49524996%_
                                                          (lambda (_%hd49505000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr49565003%_)
                    (if (gx#stx-pair? _%hd49505000%_)
                        (let ((_%e49535006%_ (gx#syntax-e _%hd49505000%_)))
                          (let ((_%lp-hd49545010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e49535006%_)))
                                (_%lp-tl49555013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e49535006%_))))
                            (_%loop49524996%_
                             _%lp-tl49555013%_
                             (cons _%lp-hd49545010%_ _%expr49565003%_))))
                        (let ((_%expr49575016%_ (reverse _%expr49565003%_)))
                          ((lambda (_%L5020%_ _%L5022%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _%L5022%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (foldr (lambda (_%g50395042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g50405045%_)
                      (cons _%g50395042%_ _%g50405045%_))
                    '()
                    _%L5020%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '#!void '())))))
                           _%expr49575016%_
                           _%hd49474984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop49524996%_
                                                   _%target49494990%_
                                                   '()))
                                                (_%g49394963%_
                                                 _%g49404967%_)))))
                                      (_%g49394963%_ _%g49404967%_))))
                              (_%g49394963%_ _%g49404967%_))))
                      (_%g49394963%_ _%g49404967%_)))))
          (_%g49385048%_ _%$stx4935%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_%$stx5053%_)
        (let* ((_%g50575081%_
                (lambda (_%g50585077%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g50585077%_)))
               (_%g50565166%_
                (lambda (_%g50585085%_)
                  (if (gx#stx-pair? _%g50585085%_)
                      (let ((_%e50615088%_ (gx#syntax-e _%g50585085%_)))
                        (let ((_%hd50625092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e50615088%_)))
                              (_%tl50635095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e50615088%_))))
                          (if (gx#stx-pair? _%tl50635095%_)
                              (let ((_%e50645098%_
                                     (gx#syntax-e _%tl50635095%_)))
                                (let ((_%hd50655102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e50645098%_)))
                                      (_%tl50665105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e50645098%_))))
                                  (if (gx#stx-pair/null? _%tl50665105%_)
                                      (let ((_g20965_
                                             (gx#syntax-split-splice
                                              _%tl50665105%_
                                              '0)))
                                        (begin
                                          (let ((_g20966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20965_)
                                                       (##vector-length
                                                        _g20965_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20966_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20966_)))
                                          (let ((_%target50675108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20965_ 0)))
                                                (_%tl50695111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20965_ 1))))
                                            (if (gx#stx-null? _%tl50695111%_)
                                                (letrec ((_%loop50705114%_
                                                          (lambda (_%hd50685118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr50745121%_)
                    (if (gx#stx-pair? _%hd50685118%_)
                        (let ((_%e50715124%_ (gx#syntax-e _%hd50685118%_)))
                          (let ((_%lp-hd50725128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e50715124%_)))
                                (_%lp-tl50735131%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e50715124%_))))
                            (_%loop50705114%_
                             _%lp-tl50735131%_
                             (cons _%lp-hd50725128%_ _%expr50745121%_))))
                        (let ((_%expr50755134%_ (reverse _%expr50745121%_)))
                          ((lambda (_%L5138%_ _%L5140%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _%L5140%_
                                         (cons '#!void
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (foldr (lambda (_%g51575160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g51585163%_)
                            (cons _%g51575160%_ _%g51585163%_))
                          '()
                          _%L5138%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%expr50755134%_
                           _%hd50655102%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop50705114%_
                                                   _%target50675108%_
                                                   '()))
                                                (_%g50575081%_
                                                 _%g50585085%_)))))
                                      (_%g50575081%_ _%g50585085%_))))
                              (_%g50575081%_ _%g50585085%_))))
                      (_%g50575081%_ _%g50585085%_)))))
          (_%g50565166%_ _%$stx5053%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_%stx5171%_)
        (let* ((_%g51745198%_
                (lambda (_%g51755194%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g51755194%_)))
               (_%g51735283%_
                (lambda (_%g51755202%_)
                  (if (gx#stx-pair? _%g51755202%_)
                      (let ((_%e51785205%_ (gx#syntax-e _%g51755202%_)))
                        (let ((_%hd51795209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e51785205%_)))
                              (_%tl51805212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e51785205%_))))
                          (if (gx#stx-pair? _%tl51805212%_)
                              (let ((_%e51815215%_
                                     (gx#syntax-e _%tl51805212%_)))
                                (let ((_%hd51825219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e51815215%_)))
                                      (_%tl51835222%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e51815215%_))))
                                  (if (gx#stx-pair/null? _%tl51835222%_)
                                      (let ((_g20967_
                                             (gx#syntax-split-splice
                                              _%tl51835222%_
                                              '0)))
                                        (begin
                                          (let ((_g20968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20967_)
                                                       (##vector-length
                                                        _g20967_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20968_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20968_)))
                                          (let ((_%target51845225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20967_ 0)))
                                                (_%tl51865228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20967_ 1))))
                                            (if (gx#stx-null? _%tl51865228%_)
                                                (letrec ((_%loop51875231%_
                                                          (lambda (_%hd51855235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%detail51915238%_)
                    (if (gx#stx-pair? _%hd51855235%_)
                        (let ((_%e51885241%_ (gx#syntax-e _%hd51855235%_)))
                          (let ((_%lp-hd51895245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e51885241%_)))
                                (_%lp-tl51905248%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e51885241%_))))
                            (_%loop51875231%_
                             _%lp-tl51905248%_
                             (cons _%lp-hd51895245%_ _%detail51915238%_))))
                        (let ((_%detail51925251%_
                               (reverse _%detail51915238%_)))
                          ((lambda (_%L5255%_ _%L5257%_)
                             (if (gx#stx-string? _%L5257%_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _%L5257%_)
                                        _%stx5171%_
                                        (gx#syntax->list
                                         (foldr (lambda (_%g52745277%_
                                                         _%g52755280%_)
                                                  (cons _%g52745277%_
                                                        _%g52755280%_))
                                                '()
                                                _%L5255%_)))
                                 (_%g51745198%_ _%g51755202%_)))
                           _%detail51925251%_
                           _%hd51825219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop51875231%_
                                                   _%target51845225%_
                                                   '()))
                                                (_%g51745198%_
                                                 _%g51755202%_)))))
                                      (_%g51745198%_ _%g51755202%_))))
                              (_%g51745198%_ _%g51755202%_))))
                      (_%g51745198%_ _%g51755202%_)))))
          (_%g51735283%_ _%stx5171%_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defmutable|
      (lambda (_%$stx5288%_)
        (let* ((_%g52925310%_
                (lambda (_%g52935306%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g52935306%_)))
               (_%g52915365%_
                (lambda (_%g52935314%_)
                  (if (gx#stx-pair? _%g52935314%_)
                      (let ((_%e52965317%_ (gx#syntax-e _%g52935314%_)))
                        (let ((_%hd52975321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e52965317%_)))
                              (_%tl52985324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e52965317%_))))
                          (if (gx#stx-pair? _%tl52985324%_)
                              (let ((_%e52995327%_
                                     (gx#syntax-e _%tl52985324%_)))
                                (let ((_%hd53005331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e52995327%_)))
                                      (_%tl53015334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e52995327%_))))
                                  (if (gx#stx-pair? _%tl53015334%_)
                                      (let ((_%e53025337%_
                                             (gx#syntax-e _%tl53015334%_)))
                                        (let ((_%hd53035341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e53025337%_)))
                                              (_%tl53045344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e53025337%_))))
                                          (if (gx#stx-null? _%tl53045344%_)
                                              ((lambda (_%L5347%_ _%L5349%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'def)
                           (cons _%L5349%_ (cons _%L5347%_ '())))
                     (cons (cons (gx#datum->syntax '#f '%#set!)
                                 (cons _%L5349%_ (cons _%L5349%_ '())))
                           (cons (cons (gx#datum->syntax '#f 'void) '())
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd53035341%_
                                               _%hd53005331%_)
                                              (_%g52925310%_ _%g52935314%_))))
                                      (_%g52925310%_ _%g52935314%_))))
                              (_%g52925310%_ _%g52935314%_))))
                      (_%g52925310%_ _%g52935314%_)))))
          (_%g52915365%_ _%$stx5288%_))))))
