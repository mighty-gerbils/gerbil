(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx94964%_)
      (let* ((_%__stx101471101472%_ _%$stx94964%_)
             (_%g9496994998%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx101471101472%_))))
        (let ((_%__kont101474101475%_
               (lambda (_%L95091%_ _%L95093%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95093%_ (cons _%L95091%_ '())))
                             (cons _%L95091%_ '())))))
              (_%__kont101476101477%_
               (lambda (_%L95035%_ _%L95037%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95035%_ (cons _%L95035%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95037%_
                                                           (cons _%L95035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95035%_ '())))
                                   '()))))))
          (let ((_%__match101498101499%_
                 (lambda (_%e9497395061%_
                          _%hd9497495065%_
                          _%tl9497595068%_
                          _%e9497695071%_
                          _%hd9497795075%_
                          _%tl9497895078%_
                          _%e9497995081%_
                          _%hd9498095085%_
                          _%tl9498195088%_)
                   (let ((_%L95091%_ _%hd9498095085%_)
                         (_%L95093%_ _%hd9497795075%_))
                     (if (or (gx#identifier? _%L95091%_)
                             (gx#stx-fixnum? _%L95091%_))
                         (_%__kont101474101475%_ _%L95091%_ _%L95093%_)
                         (_%__kont101476101477%_
                          _%hd9498095085%_
                          _%hd9497795075%_))))))
            (if (gx#stx-pair? _%__stx101471101472%_)
                (let ((_%e9497395061%_ (gx#syntax-e _%__stx101471101472%_)))
                  (let ((_%tl9497595068%_
                         (let () (declare (not safe)) (##cdr _%e9497395061%_)))
                        (_%hd9497495065%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9497395061%_))))
                    (if (gx#stx-pair? _%tl9497595068%_)
                        (let ((_%e9497695071%_ (gx#syntax-e _%tl9497595068%_)))
                          (let ((_%tl9497895078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9497695071%_)))
                                (_%hd9497795075%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9497695071%_))))
                            (if (gx#stx-pair? _%tl9497895078%_)
                                (let ((_%e9497995081%_
                                       (gx#syntax-e _%tl9497895078%_)))
                                  (let ((_%tl9498195088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9497995081%_)))
                                        (_%hd9498095085%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9497995081%_))))
                                    (if (gx#stx-null? _%tl9498195088%_)
                                        (_%__match101498101499%_
                                         _%e9497395061%_
                                         _%hd9497495065%_
                                         _%tl9497595068%_
                                         _%e9497695071%_
                                         _%hd9497795075%_
                                         _%tl9497895078%_
                                         _%e9497995081%_
                                         _%hd9498095085%_
                                         _%tl9498195088%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9496994998%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9496994998%_)))))
                        (let () (declare (not safe)) (_%g9496994998%_)))))
                (let () (declare (not safe)) (_%g9496994998%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx95116%_)
      (let* ((_%__stx101521101522%_ _%$stx95116%_)
             (_%g9512195150%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx101521101522%_))))
        (let ((_%__kont101524101525%_
               (lambda (_%L95242%_ _%L95244%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95244%_ (cons _%L95242%_ '())))
                             (cons '0 '())))))
              (_%__kont101526101527%_
               (lambda (_%L95187%_ _%L95189%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95187%_ (cons _%L95187%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95189%_
                                                           (cons _%L95187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match101548101549%_
                 (lambda (_%e9512595212%_
                          _%hd9512695216%_
                          _%tl9512795219%_
                          _%e9512895222%_
                          _%hd9512995226%_
                          _%tl9513095229%_
                          _%e9513195232%_
                          _%hd9513295236%_
                          _%tl9513395239%_)
                   (let ((_%L95242%_ _%hd9513295236%_)
                         (_%L95244%_ _%hd9512995226%_))
                     (if (or (gx#identifier? _%L95242%_)
                             (gx#stx-fixnum? _%L95242%_))
                         (_%__kont101524101525%_ _%L95242%_ _%L95244%_)
                         (_%__kont101526101527%_
                          _%hd9513295236%_
                          _%hd9512995226%_))))))
            (if (gx#stx-pair? _%__stx101521101522%_)
                (let ((_%e9512595212%_ (gx#syntax-e _%__stx101521101522%_)))
                  (let ((_%tl9512795219%_
                         (let () (declare (not safe)) (##cdr _%e9512595212%_)))
                        (_%hd9512695216%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9512595212%_))))
                    (if (gx#stx-pair? _%tl9512795219%_)
                        (let ((_%e9512895222%_ (gx#syntax-e _%tl9512795219%_)))
                          (let ((_%tl9513095229%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9512895222%_)))
                                (_%hd9512995226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9512895222%_))))
                            (if (gx#stx-pair? _%tl9513095229%_)
                                (let ((_%e9513195232%_
                                       (gx#syntax-e _%tl9513095229%_)))
                                  (let ((_%tl9513395239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9513195232%_)))
                                        (_%hd9513295236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9513195232%_))))
                                    (if (gx#stx-null? _%tl9513395239%_)
                                        (_%__match101548101549%_
                                         _%e9512595212%_
                                         _%hd9512695216%_
                                         _%tl9512795219%_
                                         _%e9512895222%_
                                         _%hd9512995226%_
                                         _%tl9513095229%_
                                         _%e9513195232%_
                                         _%hd9513295236%_
                                         _%tl9513395239%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9512195150%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9512195150%_)))))
                        (let () (declare (not safe)) (_%g9512195150%_)))))
                (let () (declare (not safe)) (_%g9512195150%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx95267%_)
      (let* ((_%g9527095291%_
              (lambda (_%g9527195287%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9527195287%_)))
             (_%g9526995519%_
              (lambda (_%g9527195295%_)
                (if (gx#stx-pair? _%g9527195295%_)
                    (let ((_%e9527495298%_ (gx#syntax-e _%g9527195295%_)))
                      (let ((_%hd9527595302%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9527495298%_)))
                            (_%tl9527695305%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9527495298%_))))
                        (if (gx#stx-pair? _%tl9527695305%_)
                            (let ((_%e9527795308%_
                                   (gx#syntax-e _%tl9527695305%_)))
                              (let ((_%hd9527895312%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9527795308%_)))
                                    (_%tl9527995315%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9527795308%_))))
                                (if (gx#stx-pair? _%hd9527895312%_)
                                    (let ((_%e9528095318%_
                                           (gx#syntax-e _%hd9527895312%_)))
                                      (let ((_%hd9528195322%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9528095318%_)))
                                            (_%tl9528295325%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9528095318%_))))
                                        (if (gx#stx-pair? _%tl9528295325%_)
                                            (let ((_%e9528395328%_
                                                   (gx#syntax-e
                                                    _%tl9528295325%_)))
                                              (let ((_%hd9528495332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9528395328%_)))
                                                    (_%tl9528595335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9528395328%_))))
                                                (if (gx#stx-null?
                                                     _%tl9528595335%_)
                                                    (if (gx#stx-null?
                                                         _%tl9527995315%_)
                                                        ((lambda (_%L95338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L95340%_)
                   (let* ((_%g9535895366%_
                           (lambda (_%g9535995362%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9535995362%_)))
                          (_%g9535795515%_
                           (lambda (_%g9535995370%_)
                             ((lambda (_%L95373%_)
                                (let* ((_%g9538595393%_
                                        (lambda (_%g9538695389%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9538695389%_)))
                                       (_%g9538495511%_
                                        (lambda (_%g9538695397%_)
                                          ((lambda (_%L95400%_)
                                             (let* ((_%g9541395421%_
                                                     (lambda (_%g9541495417%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9541495417%_)))
                                                    (_%g9541295507%_
                                                     (lambda (_%g9541495425%_)
                                                       ((lambda (_%L95428%_)
                                                          (let* ((_%g9544195449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9544295445%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9544295445%_)))
                         (_%g9544095503%_
                          (lambda (_%g9544295453%_)
                            ((lambda (_%L95456%_)
                               (let* ((_%g9546995477%_
                                       (lambda (_%g9547095473%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9547095473%_)))
                                      (_%g9546895499%_
                                       (lambda (_%g9547095481%_)
                                         ((lambda (_%L95484%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L95400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L95373%_
                                                          (cons _%L95340%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%L95338%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L95340%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L95428%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L95373%_
                                                                (cons _%L95340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%L95338%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L95340%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L95456%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L95373%_ (cons _%L95340%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%L95338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L95340%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L95484%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L95373%_
                                    (cons _%L95340%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%L95338%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L95340%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9547095481%_))))
                                 (_%g9546895499%_
                                  (gx#stx-identifier
                                   _%L95340%_
                                   '"&"
                                   _%L95456%_))))
                             _%g9544295453%_))))
                    (_%g9544095503%_
                     (gx#stx-identifier _%L95340%_ _%L95400%_ '"-set!"))))
                _%g9541495425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9541295507%_
                                                (gx#stx-identifier
                                                 _%L95340%_
                                                 '"&"
                                                 _%L95400%_))))
                                           _%g9538695397%_))))
                                  (_%g9538495511%_
                                   (gx#stx-identifier
                                    _%L95340%_
                                    '"class-type-"
                                    _%L95340%_))))
                              _%g9535995370%_))))
                     (_%g9535795515%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9528495332%_
                 _%hd9528195322%_)
                (_%g9527095291%_ _%g9527195295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9527095291%_
                                                     _%g9527195295%_))))
                                            (_%g9527095291%_
                                             _%g9527195295%_))))
                                    (_%g9527095291%_ _%g9527195295%_))))
                            (_%g9527095291%_ _%g9527195295%_))))
                    (_%g9527095291%_ _%g9527195295%_)))))
        (_%g9526995519%_ _%stx95267%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx95523%_)
      (let* ((_%g9552795556%_
              (lambda (_%g9552895552%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9552895552%_)))
             (_%g9552695656%_
              (lambda (_%g9552895560%_)
                (if (gx#stx-pair? _%g9552895560%_)
                    (let ((_%e9553195563%_ (gx#syntax-e _%g9552895560%_)))
                      (let ((_%hd9553295567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9553195563%_)))
                            (_%tl9553395570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9553195563%_))))
                        (if (gx#stx-pair/null? _%tl9553395570%_)
                            (let ((_g101761_
                                   (gx#syntax-split-splice
                                    _%tl9553395570%_
                                    '0)))
                              (begin
                                (let ((_g101762_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101761_)
                                             (##vector-length _g101761_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101762_ 2)))
                                      (error "Context expects 2 values"
                                             _g101762_)))
                                (let ((_%target9553495573%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101761_ 0)))
                                      (_%tl9553695576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101761_ 1))))
                                  (if (gx#stx-null? _%tl9553695576%_)
                                      (letrec ((_%loop9553795579%_
                                                (lambda (_%hd9553595583%_
                                                         _%field9554195586%_
                                                         _%slot9554295588%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9553595583%_)
                                                      (let ((_%e9553895591%_
                                                             (gx#syntax-e
                                                              _%hd9553595583%_)))
                                                        (let ((_%lp-hd9553995595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9553895591%_)))
                      (_%lp-tl9554095598%_
                       (let () (declare (not safe)) (##cdr _%e9553895591%_))))
                  (if (gx#stx-pair? _%lp-hd9553995595%_)
                      (let ((_%e9554595601%_
                             (gx#syntax-e _%lp-hd9553995595%_)))
                        (let ((_%hd9554695605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9554595601%_)))
                              (_%tl9554795608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9554595601%_))))
                          (if (gx#stx-pair? _%tl9554795608%_)
                              (let ((_%e9554895611%_
                                     (gx#syntax-e _%tl9554795608%_)))
                                (let ((_%hd9554995615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9554895611%_)))
                                      (_%tl9555095618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9554895611%_))))
                                  (if (gx#stx-null? _%tl9555095618%_)
                                      (_%loop9553795579%_
                                       _%lp-tl9554095598%_
                                       (cons _%hd9554995615%_
                                             _%field9554195586%_)
                                       (cons _%hd9554695605%_
                                             _%slot9554295588%_))
                                      (_%g9552795556%_ _%g9552895560%_))))
                              (_%g9552795556%_ _%g9552895560%_))))
                      (_%g9552795556%_ _%g9552895560%_))))
              (let ((_%field9554395621%_ (reverse _%field9554195586%_))
                    (_%slot9554495624%_ (reverse _%slot9554295588%_)))
                ((lambda (_%L95627%_ _%L95629%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L95627%_
                            _%L95629%_)
                           (let ((__tmp101763
                                  (lambda (_%g9564495648%_
                                           _%g9564595651%_
                                           _%g9564695653%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9564595651%_
                                                            (cons _%g9564495648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9564695653%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp101763
                              '()
                              _%L95627%_
                              _%L95629%_)))))
                 _%field9554395621%_
                 _%slot9554495624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9553795579%_
                                         _%target9553495573%_
                                         '()
                                         '()))
                                      (_%g9552795556%_ _%g9552895560%_)))))
                            (_%g9552795556%_ _%g9552895560%_))))
                    (_%g9552795556%_ _%g9552895560%_)))))
        (_%g9552695656%_ _%$stx95523%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx95661%_)
      (let* ((_%g9566595699%_
              (lambda (_%g9566695695%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9566695695%_)))
             (_%g9566495810%_
              (lambda (_%g9566695703%_)
                (if (gx#stx-pair? _%g9566695703%_)
                    (let ((_%e9567395706%_ (gx#syntax-e _%g9566695703%_)))
                      (let ((_%hd9567495710%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9567395706%_)))
                            (_%tl9567595713%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9567395706%_))))
                        (if (gx#stx-pair? _%tl9567595713%_)
                            (let ((_%e9567695716%_
                                   (gx#syntax-e _%tl9567595713%_)))
                              (let ((_%hd9567795720%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9567695716%_)))
                                    (_%tl9567895723%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9567695716%_))))
                                (if (gx#stx-pair? _%tl9567895723%_)
                                    (let ((_%e9567995726%_
                                           (gx#syntax-e _%tl9567895723%_)))
                                      (let ((_%hd9568095730%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9567995726%_)))
                                            (_%tl9568195733%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9567995726%_))))
                                        (if (gx#stx-pair? _%tl9568195733%_)
                                            (let ((_%e9568295736%_
                                                   (gx#syntax-e
                                                    _%tl9568195733%_)))
                                              (let ((_%hd9568395740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9568295736%_)))
                                                    (_%tl9568495743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9568295736%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9568495743%_)
                                                    (let ((_%e9568595746%_
                                                           (gx#syntax-e
                                                            _%tl9568495743%_)))
                                                      (let ((_%hd9568695750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9568595746%_)))
                    (_%tl9568795753%_
                     (let () (declare (not safe)) (##cdr _%e9568595746%_))))
                (if (gx#stx-pair? _%tl9568795753%_)
                    (let ((_%e9568895756%_ (gx#syntax-e _%tl9568795753%_)))
                      (let ((_%hd9568995760%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9568895756%_)))
                            (_%tl9569095763%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9568895756%_))))
                        (if (gx#stx-pair? _%tl9569095763%_)
                            (let ((_%e9569195766%_
                                   (gx#syntax-e _%tl9569095763%_)))
                              (let ((_%hd9569295770%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9569195766%_)))
                                    (_%tl9569395773%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9569195766%_))))
                                (if (gx#stx-null? _%tl9569395773%_)
                                    ((lambda (_%L95776%_
                                              _%L95778%_
                                              _%L95779%_
                                              _%L95780%_
                                              _%L95781%_
                                              _%L95782%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%L95782%_ '()))
                                   (cons _%L95781%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%L95782%_
                                     (cons 'slot: (cons _%L95781%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L95782%_ '()))
                                         (cons (cons _%L95780%_
                                                     (cons _%L95782%_
                                                           (cons _%L95781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L95782%_ '()))
                                               (cons (cons _%L95779%_
                                                           (cons _%L95782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L95781%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%L95782%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L95778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L95782%_
                               (cons _%L95781%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L95776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L95782%_
                                     (cons _%L95781%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9569295770%_
                                     _%hd9568995760%_
                                     _%hd9568695750%_
                                     _%hd9568395740%_
                                     _%hd9568095730%_
                                     _%hd9567795720%_)
                                    (_%g9566595699%_ _%g9566695703%_))))
                            (_%g9566595699%_ _%g9566695703%_))))
                    (_%g9566595699%_ _%g9566695703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9566595699%_
                                                     _%g9566695703%_))))
                                            (_%g9566595699%_
                                             _%g9566695703%_))))
                                    (_%g9566595699%_ _%g9566695703%_))))
                            (_%g9566595699%_ _%g9566695703%_))))
                    (_%g9566595699%_ _%g9566695703%_)))))
        (_%g9566495810%_ _%$stx95661%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx95814%_)
      (let* ((_%g9581895844%_
              (lambda (_%g9581995840%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9581995840%_)))
             (_%g9581795927%_
              (lambda (_%g9581995848%_)
                (if (gx#stx-pair? _%g9581995848%_)
                    (let ((_%e9582495851%_ (gx#syntax-e _%g9581995848%_)))
                      (let ((_%hd9582595855%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9582495851%_)))
                            (_%tl9582695858%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9582495851%_))))
                        (if (gx#stx-pair? _%tl9582695858%_)
                            (let ((_%e9582795861%_
                                   (gx#syntax-e _%tl9582695858%_)))
                              (let ((_%hd9582895865%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9582795861%_)))
                                    (_%tl9582995868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9582795861%_))))
                                (if (gx#stx-pair? _%tl9582995868%_)
                                    (let ((_%e9583095871%_
                                           (gx#syntax-e _%tl9582995868%_)))
                                      (let ((_%hd9583195875%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9583095871%_)))
                                            (_%tl9583295878%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9583095871%_))))
                                        (if (gx#stx-pair? _%tl9583295878%_)
                                            (let ((_%e9583395881%_
                                                   (gx#syntax-e
                                                    _%tl9583295878%_)))
                                              (let ((_%hd9583495885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9583395881%_)))
                                                    (_%tl9583595888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9583395881%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9583595888%_)
                                                    (let ((_%e9583695891%_
                                                           (gx#syntax-e
                                                            _%tl9583595888%_)))
                                                      (let ((_%hd9583795895%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9583695891%_)))
                    (_%tl9583895898%_
                     (let () (declare (not safe)) (##cdr _%e9583695891%_))))
                (if (gx#stx-null? _%tl9583895898%_)
                    ((lambda (_%L95901%_ _%L95903%_ _%L95904%_ _%L95905%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L95905%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L95904%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L95903%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L95901%_
                                     (cons _%L95905%_ (cons _%L95904%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9583795895%_
                     _%hd9583495885%_
                     _%hd9583195875%_
                     _%hd9582895865%_)
                    (_%g9581895844%_ _%g9581995848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9581895844%_
                                                     _%g9581995848%_))))
                                            (_%g9581895844%_
                                             _%g9581995848%_))))
                                    (_%g9581895844%_ _%g9581995848%_))))
                            (_%g9581895844%_ _%g9581995848%_))))
                    (_%g9581895844%_ _%g9581995848%_)))))
        (_%g9581795927%_ _%$stx95814%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx95931%_)
      (let* ((_%g9593595964%_
              (lambda (_%g9593695960%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9593695960%_)))
             (_%g9593496064%_
              (lambda (_%g9593695968%_)
                (if (gx#stx-pair? _%g9593695968%_)
                    (let ((_%e9593995971%_ (gx#syntax-e _%g9593695968%_)))
                      (let ((_%hd9594095975%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9593995971%_)))
                            (_%tl9594195978%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9593995971%_))))
                        (if (gx#stx-pair/null? _%tl9594195978%_)
                            (let ((_g101764_
                                   (gx#syntax-split-splice
                                    _%tl9594195978%_
                                    '0)))
                              (begin
                                (let ((_g101765_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101764_)
                                             (##vector-length _g101764_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101765_ 2)))
                                      (error "Context expects 2 values"
                                             _g101765_)))
                                (let ((_%target9594295981%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101764_ 0)))
                                      (_%tl9594495984%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g101764_ 1))))
                                  (if (gx#stx-null? _%tl9594495984%_)
                                      (letrec ((_%loop9594595987%_
                                                (lambda (_%hd9594395991%_
                                                         _%name9594995994%_
                                                         _%t9595095996%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9594395991%_)
                                                      (let ((_%e9594695999%_
                                                             (gx#syntax-e
                                                              _%hd9594395991%_)))
                                                        (let ((_%lp-hd9594796003%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9594695999%_)))
                      (_%lp-tl9594896006%_
                       (let () (declare (not safe)) (##cdr _%e9594695999%_))))
                  (if (gx#stx-pair? _%lp-hd9594796003%_)
                      (let ((_%e9595396009%_
                             (gx#syntax-e _%lp-hd9594796003%_)))
                        (let ((_%hd9595496013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9595396009%_)))
                              (_%tl9595596016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9595396009%_))))
                          (if (gx#stx-pair? _%tl9595596016%_)
                              (let ((_%e9595696019%_
                                     (gx#syntax-e _%tl9595596016%_)))
                                (let ((_%hd9595796023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9595696019%_)))
                                      (_%tl9595896026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9595696019%_))))
                                  (if (gx#stx-null? _%tl9595896026%_)
                                      (_%loop9594595987%_
                                       _%lp-tl9594896006%_
                                       (cons _%hd9595796023%_
                                             _%name9594995994%_)
                                       (cons _%hd9595496013%_ _%t9595095996%_))
                                      (_%g9593595964%_ _%g9593695968%_))))
                              (_%g9593595964%_ _%g9593695968%_))))
                      (_%g9593595964%_ _%g9593695968%_))))
              (let ((_%name9595196029%_ (reverse _%name9594995994%_))
                    (_%t9595296032%_ (reverse _%t9595095996%_)))
                ((lambda (_%L96035%_ _%L96037%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96035%_
                            _%L96037%_)
                           (let ((__tmp101766
                                  (lambda (_%g9605296056%_
                                           _%g9605396059%_
                                           _%g9605496061%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9605396059%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9605296056%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9605496061%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp101766
                              '()
                              _%L96035%_
                              _%L96037%_)))))
                 _%name9595196029%_
                 _%t9595296032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9594595987%_
                                         _%target9594295981%_
                                         '()
                                         '()))
                                      (_%g9593595964%_ _%g9593695968%_)))))
                            (_%g9593595964%_ _%g9593695968%_))))
                    (_%g9593595964%_ _%g9593695968%_)))))
        (_%g9593496064%_ _%$stx95931%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96069%_)
      (let* ((_%g9607396104%_
              (lambda (_%g9607496100%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9607496100%_)))
             (_%g9607296223%_
              (lambda (_%g9607496108%_)
                (if (gx#stx-pair? _%g9607496108%_)
                    (let ((_%e9607896111%_ (gx#syntax-e _%g9607496108%_)))
                      (let ((_%hd9607996115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9607896111%_)))
                            (_%tl9608096118%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9607896111%_))))
                        (if (gx#stx-pair? _%tl9608096118%_)
                            (let ((_%e9608196121%_
                                   (gx#syntax-e _%tl9608096118%_)))
                              (let ((_%hd9608296125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9608196121%_)))
                                    (_%tl9608396128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9608196121%_))))
                                (if (gx#stx-pair? _%tl9608396128%_)
                                    (let ((_%e9608496131%_
                                           (gx#syntax-e _%tl9608396128%_)))
                                      (let ((_%hd9608596135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9608496131%_)))
                                            (_%tl9608696138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9608496131%_))))
                                        (if (gx#stx-pair? _%tl9608696138%_)
                                            (let ((_%e9608796141%_
                                                   (gx#syntax-e
                                                    _%tl9608696138%_)))
                                              (let ((_%hd9608896145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9608796141%_)))
                                                    (_%tl9608996148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9608796141%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9608896145%_)
                                                    (let ((_g101767_
                                                           (gx#syntax-split-splice
                                                            _%hd9608896145%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101768_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101767_)
                             (##vector-length _g101767_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101768_ 2)))
                      (error "Context expects 2 values" _g101768_)))
                (let ((_%target9609096151%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g101767_ 0)))
                      (_%tl9609296154%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g101767_ 1))))
                  (if (gx#stx-null? _%tl9609296154%_)
                      (letrec ((_%loop9609396157%_
                                (lambda (_%hd9609196161%_ _%super9609796164%_)
                                  (if (gx#stx-pair? _%hd9609196161%_)
                                      (let ((_%e9609496167%_
                                             (gx#syntax-e _%hd9609196161%_)))
                                        (let ((_%lp-hd9609596171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9609496167%_)))
                                              (_%lp-tl9609696174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9609496167%_))))
                                          (_%loop9609396157%_
                                           _%lp-tl9609696174%_
                                           (cons _%lp-hd9609596171%_
                                                 _%super9609796164%_))))
                                      (let ((_%super9609896177%_
                                             (reverse _%super9609796164%_)))
                                        (if (gx#stx-null? _%tl9608996148%_)
                                            ((lambda (_%L96181%_
                                                      _%L96183%_
                                                      _%L96184%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L96184%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L96183%_
                                                 (cons (let ((__tmp101769
                                                              (lambda (_%g9620896211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9620996214%_)
                        (cons _%g9620896211%_ _%g9620996214%_))))
                 (declare (not safe))
                 (__foldr1 __tmp101769 '() _%L96181%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L96183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp101770
                                  (lambda (_%g9620696217%_ _%g9620796220%_)
                                    (cons _%g9620696217%_ _%g9620796220%_))))
                             (declare (not safe))
                             (__foldr1 __tmp101770 '() _%L96181%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9609896177%_
                                             _%hd9608596135%_
                                             _%hd9608296125%_)
                                            (_%g9607396104%_
                                             _%g9607496108%_)))))))
                        (_%loop9609396157%_ _%target9609096151%_ '()))
                      (_%g9607396104%_ _%g9607496108%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9607396104%_
                                                     _%g9607496108%_))))
                                            (_%g9607396104%_
                                             _%g9607496108%_))))
                                    (_%g9607396104%_ _%g9607496108%_))))
                            (_%g9607396104%_ _%g9607496108%_))))
                    (_%g9607396104%_ _%g9607496108%_)))))
        (_%g9607296223%_ _%$stx96069%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx96228%_)
      (let* ((_%g9623296263%_
              (lambda (_%g9623396259%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9623396259%_)))
             (_%g9623196374%_
              (lambda (_%g9623396267%_)
                (if (gx#stx-pair? _%g9623396267%_)
                    (let ((_%e9623796270%_ (gx#syntax-e _%g9623396267%_)))
                      (let ((_%hd9623896274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9623796270%_)))
                            (_%tl9623996277%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9623796270%_))))
                        (if (gx#stx-pair? _%tl9623996277%_)
                            (let ((_%e9624096280%_
                                   (gx#syntax-e _%tl9623996277%_)))
                              (let ((_%hd9624196284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9624096280%_)))
                                    (_%tl9624296287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9624096280%_))))
                                (if (gx#stx-pair? _%tl9624296287%_)
                                    (let ((_%e9624396290%_
                                           (gx#syntax-e _%tl9624296287%_)))
                                      (let ((_%hd9624496294%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9624396290%_)))
                                            (_%tl9624596297%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9624396290%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9624496294%_)
                                            (let ((_g101771_
                                                   (gx#syntax-split-splice
                                                    _%hd9624496294%_
                                                    '0)))
                                              (begin
                                                (let ((_g101772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g101771_)
                                                             (##vector-length
                                                              _g101771_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g101772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g101772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9624696300%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g101771_
                                                          0)))
                                                      (_%tl9624896303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g101771_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9624896303%_)
                                                      (letrec ((_%loop9624996306%_
                                                                (lambda (_%hd9624796310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9625396313%_)
                          (if (gx#stx-pair? _%hd9624796310%_)
                              (let ((_%e9625096316%_
                                     (gx#syntax-e _%hd9624796310%_)))
                                (let ((_%lp-hd9625196320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9625096316%_)))
                                      (_%lp-tl9625296323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9625096316%_))))
                                  (_%loop9624996306%_
                                   _%lp-tl9625296323%_
                                   (cons _%lp-hd9625196320%_
                                         _%super9625396313%_))))
                              (let ((_%super9625496326%_
                                     (reverse _%super9625396313%_)))
                                (if (gx#stx-pair? _%tl9624596297%_)
                                    (let ((_%e9625596330%_
                                           (gx#syntax-e _%tl9624596297%_)))
                                      (let ((_%hd9625696334%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9625596330%_)))
                                            (_%tl9625796337%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9625596330%_))))
                                        (if (gx#stx-null? _%tl9625796337%_)
                                            ((lambda (_%L96340%_
                                                      _%L96342%_
                                                      _%L96343%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L96343%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L96343%_
                                                 (cons (let ((__tmp101773
                                                              (lambda (_%g9636596368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9636696371%_)
                        (cons _%g9636596368%_ _%g9636696371%_))))
                 (declare (not safe))
                 (__foldr1 __tmp101773 '() _%L96342%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L96340%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9625696334%_
                                             _%super9625496326%_
                                             _%hd9624196284%_)
                                            (_%g9623296263%_
                                             _%g9623396267%_))))
                                    (_%g9623296263%_ _%g9623396267%_)))))))
                (_%loop9624996306%_ _%target9624696300%_ '()))
              (_%g9623296263%_ _%g9623396267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9623296263%_
                                             _%g9623396267%_))))
                                    (_%g9623296263%_ _%g9623396267%_))))
                            (_%g9623296263%_ _%g9623396267%_))))
                    (_%g9623296263%_ _%g9623396267%_)))))
        (_%g9623196374%_ _%$stx96228%_)))))
