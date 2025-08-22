(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx99231%_)
      (let* ((_%__stx105789105790%_ _%$stx99231%_)
             (_%g9923699265%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx105789105790%_))))
        (let ((_%__kont105792105793%_
               (lambda (_%L99358%_ _%L99360%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L99360%_ (cons _%L99358%_ '())))
                             (cons _%L99358%_ '())))))
              (_%__kont105794105795%_
               (lambda (_%L99302%_ _%L99304%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L99302%_ (cons _%L99302%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L99304%_
                                                           (cons _%L99302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L99302%_ '())))
                                   '()))))))
          (let ((_%__match105816105817%_
                 (lambda (_%e9924099328%_
                          _%hd9924199332%_
                          _%tl9924299335%_
                          _%e9924399338%_
                          _%hd9924499342%_
                          _%tl9924599345%_
                          _%e9924699348%_
                          _%hd9924799352%_
                          _%tl9924899355%_)
                   (let ((_%L99358%_ _%hd9924799352%_)
                         (_%L99360%_ _%hd9924499342%_))
                     (if (or (gx#identifier? _%L99358%_)
                             (gx#stx-fixnum? _%L99358%_))
                         (_%__kont105792105793%_ _%L99358%_ _%L99360%_)
                         (_%__kont105794105795%_
                          _%hd9924799352%_
                          _%hd9924499342%_))))))
            (if (gx#stx-pair? _%__stx105789105790%_)
                (let ((_%e9924099328%_ (gx#syntax-e _%__stx105789105790%_)))
                  (let ((_%tl9924299335%_
                         (let () (declare (not safe)) (##cdr _%e9924099328%_)))
                        (_%hd9924199332%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9924099328%_))))
                    (if (gx#stx-pair? _%tl9924299335%_)
                        (let ((_%e9924399338%_ (gx#syntax-e _%tl9924299335%_)))
                          (let ((_%tl9924599345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9924399338%_)))
                                (_%hd9924499342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9924399338%_))))
                            (if (gx#stx-pair? _%tl9924599345%_)
                                (let ((_%e9924699348%_
                                       (gx#syntax-e _%tl9924599345%_)))
                                  (let ((_%tl9924899355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9924699348%_)))
                                        (_%hd9924799352%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9924699348%_))))
                                    (if (gx#stx-null? _%tl9924899355%_)
                                        (_%__match105816105817%_
                                         _%e9924099328%_
                                         _%hd9924199332%_
                                         _%tl9924299335%_
                                         _%e9924399338%_
                                         _%hd9924499342%_
                                         _%tl9924599345%_
                                         _%e9924699348%_
                                         _%hd9924799352%_
                                         _%tl9924899355%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9923699265%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9923699265%_)))))
                        (let () (declare (not safe)) (_%g9923699265%_)))))
                (let () (declare (not safe)) (_%g9923699265%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx99383%_)
      (let* ((_%__stx105839105840%_ _%$stx99383%_)
             (_%g9938899417%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx105839105840%_))))
        (let ((_%__kont105842105843%_
               (lambda (_%L99509%_ _%L99511%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L99511%_ (cons _%L99509%_ '())))
                             (cons '0 '())))))
              (_%__kont105844105845%_
               (lambda (_%L99454%_ _%L99456%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L99454%_ (cons _%L99454%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L99456%_
                                                           (cons _%L99454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match105866105867%_
                 (lambda (_%e9939299479%_
                          _%hd9939399483%_
                          _%tl9939499486%_
                          _%e9939599489%_
                          _%hd9939699493%_
                          _%tl9939799496%_
                          _%e9939899499%_
                          _%hd9939999503%_
                          _%tl9940099506%_)
                   (let ((_%L99509%_ _%hd9939999503%_)
                         (_%L99511%_ _%hd9939699493%_))
                     (if (or (gx#identifier? _%L99509%_)
                             (gx#stx-fixnum? _%L99509%_))
                         (_%__kont105842105843%_ _%L99509%_ _%L99511%_)
                         (_%__kont105844105845%_
                          _%hd9939999503%_
                          _%hd9939699493%_))))))
            (if (gx#stx-pair? _%__stx105839105840%_)
                (let ((_%e9939299479%_ (gx#syntax-e _%__stx105839105840%_)))
                  (let ((_%tl9939499486%_
                         (let () (declare (not safe)) (##cdr _%e9939299479%_)))
                        (_%hd9939399483%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9939299479%_))))
                    (if (gx#stx-pair? _%tl9939499486%_)
                        (let ((_%e9939599489%_ (gx#syntax-e _%tl9939499486%_)))
                          (let ((_%tl9939799496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9939599489%_)))
                                (_%hd9939699493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9939599489%_))))
                            (if (gx#stx-pair? _%tl9939799496%_)
                                (let ((_%e9939899499%_
                                       (gx#syntax-e _%tl9939799496%_)))
                                  (let ((_%tl9940099506%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9939899499%_)))
                                        (_%hd9939999503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9939899499%_))))
                                    (if (gx#stx-null? _%tl9940099506%_)
                                        (_%__match105866105867%_
                                         _%e9939299479%_
                                         _%hd9939399483%_
                                         _%tl9939499486%_
                                         _%e9939599489%_
                                         _%hd9939699493%_
                                         _%tl9939799496%_
                                         _%e9939899499%_
                                         _%hd9939999503%_
                                         _%tl9940099506%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9938899417%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9938899417%_)))))
                        (let () (declare (not safe)) (_%g9938899417%_)))))
                (let () (declare (not safe)) (_%g9938899417%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx99534%_)
      (let* ((_%g9953799558%_
              (lambda (_%g9953899554%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9953899554%_)))
             (_%g9953699786%_
              (lambda (_%g9953899562%_)
                (if (gx#stx-pair? _%g9953899562%_)
                    (let ((_%e9954199565%_ (gx#syntax-e _%g9953899562%_)))
                      (let ((_%hd9954299569%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9954199565%_)))
                            (_%tl9954399572%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9954199565%_))))
                        (if (gx#stx-pair? _%tl9954399572%_)
                            (let ((_%e9954499575%_
                                   (gx#syntax-e _%tl9954399572%_)))
                              (let ((_%hd9954599579%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9954499575%_)))
                                    (_%tl9954699582%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9954499575%_))))
                                (if (gx#stx-pair? _%hd9954599579%_)
                                    (let ((_%e9954799585%_
                                           (gx#syntax-e _%hd9954599579%_)))
                                      (let ((_%hd9954899589%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9954799585%_)))
                                            (_%tl9954999592%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9954799585%_))))
                                        (if (gx#stx-pair? _%tl9954999592%_)
                                            (let ((_%e9955099595%_
                                                   (gx#syntax-e
                                                    _%tl9954999592%_)))
                                              (let ((_%hd9955199599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9955099595%_)))
                                                    (_%tl9955299602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9955099595%_))))
                                                (if (gx#stx-null?
                                                     _%tl9955299602%_)
                                                    (if (gx#stx-null?
                                                         _%tl9954699582%_)
                                                        ((lambda (_%L99605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L99607%_)
                   (let* ((_%g9962599633%_
                           (lambda (_%g9962699629%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9962699629%_)))
                          (_%g9962499782%_
                           (lambda (_%g9962699637%_)
                             ((lambda (_%L99640%_)
                                (let* ((_%g9965299660%_
                                        (lambda (_%g9965399656%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9965399656%_)))
                                       (_%g9965199778%_
                                        (lambda (_%g9965399664%_)
                                          ((lambda (_%L99667%_)
                                             (let* ((_%g9968099688%_
                                                     (lambda (_%g9968199684%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9968199684%_)))
                                                    (_%g9967999774%_
                                                     (lambda (_%g9968199692%_)
                                                       ((lambda (_%L99695%_)
                                                          (let* ((_%g9970899716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9970999712%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9970999712%_)))
                         (_%g9970799770%_
                          (lambda (_%g9970999720%_)
                            ((lambda (_%L99723%_)
                               (let* ((_%g9973699744%_
                                       (lambda (_%g9973799740%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9973799740%_)))
                                      (_%g9973599766%_
                                       (lambda (_%g9973799748%_)
                                         ((lambda (_%L99751%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L99667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L99640%_
                                                          (cons _%L99607%_
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
                                          (cons _%L99605%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L99607%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L99695%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L99640%_
                                                                (cons _%L99607%_
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
                                                (cons _%L99605%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L99607%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L99723%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L99640%_ (cons _%L99607%_ (cons '#t '()))))
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
                                                            (cons _%L99605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L99607%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L99751%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L99640%_
                                    (cons _%L99607%_ (cons '#f '()))))
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
                          (cons _%L99605%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L99607%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9973799748%_))))
                                 (_%g9973599766%_
                                  (gx#stx-identifier
                                   _%L99607%_
                                   '"&"
                                   _%L99723%_))))
                             _%g9970999720%_))))
                    (_%g9970799770%_
                     (gx#stx-identifier _%L99607%_ _%L99667%_ '"-set!"))))
                _%g9968199692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9967999774%_
                                                (gx#stx-identifier
                                                 _%L99607%_
                                                 '"&"
                                                 _%L99667%_))))
                                           _%g9965399664%_))))
                                  (_%g9965199778%_
                                   (gx#stx-identifier
                                    _%L99607%_
                                    '"class-type-"
                                    _%L99607%_))))
                              _%g9962699637%_))))
                     (_%g9962499782%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9955199599%_
                 _%hd9954899589%_)
                (_%g9953799558%_ _%g9953899562%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9953799558%_
                                                     _%g9953899562%_))))
                                            (_%g9953799558%_
                                             _%g9953899562%_))))
                                    (_%g9953799558%_ _%g9953899562%_))))
                            (_%g9953799558%_ _%g9953899562%_))))
                    (_%g9953799558%_ _%g9953899562%_)))))
        (_%g9953699786%_ _%stx99534%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx99790%_)
      (let* ((_%g9979499823%_
              (lambda (_%g9979599819%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9979599819%_)))
             (_%g9979399923%_
              (lambda (_%g9979599827%_)
                (if (gx#stx-pair? _%g9979599827%_)
                    (let ((_%e9979899830%_ (gx#syntax-e _%g9979599827%_)))
                      (let ((_%hd9979999834%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9979899830%_)))
                            (_%tl9980099837%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9979899830%_))))
                        (if (gx#stx-pair/null? _%tl9980099837%_)
                            (let ((_g106076_
                                   (gx#syntax-split-splice
                                    _%tl9980099837%_
                                    '0)))
                              (begin
                                (let ((_g106077_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g106076_)
                                             (##values-length _g106076_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g106077_ 2)))
                                      (error "Context expects 2 values"
                                             _g106077_)))
                                (let ((_%target9980199840%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g106076_ 0)))
                                      (_%tl9980399843%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g106076_ 1))))
                                  (if (gx#stx-null? _%tl9980399843%_)
                                      (letrec ((_%loop9980499846%_
                                                (lambda (_%hd9980299850%_
                                                         _%field9980899853%_
                                                         _%slot9980999855%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9980299850%_)
                                                      (let ((_%e9980599858%_
                                                             (gx#syntax-e
                                                              _%hd9980299850%_)))
                                                        (let ((_%lp-hd9980699862%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9980599858%_)))
                      (_%lp-tl9980799865%_
                       (let () (declare (not safe)) (##cdr _%e9980599858%_))))
                  (if (gx#stx-pair? _%lp-hd9980699862%_)
                      (let ((_%e9981299868%_
                             (gx#syntax-e _%lp-hd9980699862%_)))
                        (let ((_%hd9981399872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9981299868%_)))
                              (_%tl9981499875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9981299868%_))))
                          (if (gx#stx-pair? _%tl9981499875%_)
                              (let ((_%e9981599878%_
                                     (gx#syntax-e _%tl9981499875%_)))
                                (let ((_%hd9981699882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9981599878%_)))
                                      (_%tl9981799885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9981599878%_))))
                                  (if (gx#stx-null? _%tl9981799885%_)
                                      (_%loop9980499846%_
                                       _%lp-tl9980799865%_
                                       (cons _%hd9981699882%_
                                             _%field9980899853%_)
                                       (cons _%hd9981399872%_
                                             _%slot9980999855%_))
                                      (_%g9979499823%_ _%g9979599827%_))))
                              (_%g9979499823%_ _%g9979599827%_))))
                      (_%g9979499823%_ _%g9979599827%_))))
              (let ((_%field9981099888%_ (reverse _%field9980899853%_))
                    (_%slot9981199891%_ (reverse _%slot9980999855%_)))
                ((lambda (_%L99894%_ _%L99896%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L99894%_
                            _%L99896%_)
                           (let ((__tmp106078
                                  (lambda (_%g9991199915%_
                                           _%g9991299918%_
                                           _%g9991399920%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9991299918%_
                                                            (cons _%g9991199915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9991399920%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp106078
                              '()
                              _%L99894%_
                              _%L99896%_)))))
                 _%field9981099888%_
                 _%slot9981199891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9980499846%_
                                         _%target9980199840%_
                                         '()
                                         '()))
                                      (_%g9979499823%_ _%g9979599827%_)))))
                            (_%g9979499823%_ _%g9979599827%_))))
                    (_%g9979499823%_ _%g9979599827%_)))))
        (_%g9979399923%_ _%$stx99790%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx99928%_)
      (let* ((_%g9993299966%_
              (lambda (_%g9993399962%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9993399962%_)))
             (_%g99931100077%_
              (lambda (_%g9993399970%_)
                (if (gx#stx-pair? _%g9993399970%_)
                    (let ((_%e9994099973%_ (gx#syntax-e _%g9993399970%_)))
                      (let ((_%hd9994199977%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9994099973%_)))
                            (_%tl9994299980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9994099973%_))))
                        (if (gx#stx-pair? _%tl9994299980%_)
                            (let ((_%e9994399983%_
                                   (gx#syntax-e _%tl9994299980%_)))
                              (let ((_%hd9994499987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9994399983%_)))
                                    (_%tl9994599990%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9994399983%_))))
                                (if (gx#stx-pair? _%tl9994599990%_)
                                    (let ((_%e9994699993%_
                                           (gx#syntax-e _%tl9994599990%_)))
                                      (let ((_%hd9994799997%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9994699993%_)))
                                            (_%tl99948100000%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9994699993%_))))
                                        (if (gx#stx-pair? _%tl99948100000%_)
                                            (let ((_%e99949100003%_
                                                   (gx#syntax-e
                                                    _%tl99948100000%_)))
                                              (let ((_%hd99950100007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e99949100003%_)))
                                                    (_%tl99951100010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e99949100003%_))))
                                                (if (gx#stx-pair?
                                                     _%tl99951100010%_)
                                                    (let ((_%e99952100013%_
                                                           (gx#syntax-e
                                                            _%tl99951100010%_)))
                                                      (let ((_%hd99953100017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e99952100013%_)))
                    (_%tl99954100020%_
                     (let () (declare (not safe)) (##cdr _%e99952100013%_))))
                (if (gx#stx-pair? _%tl99954100020%_)
                    (let ((_%e99955100023%_ (gx#syntax-e _%tl99954100020%_)))
                      (let ((_%hd99956100027%_
                             (let ()
                               (declare (not safe))
                               (##car _%e99955100023%_)))
                            (_%tl99957100030%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e99955100023%_))))
                        (if (gx#stx-pair? _%tl99957100030%_)
                            (let ((_%e99958100033%_
                                   (gx#syntax-e _%tl99957100030%_)))
                              (let ((_%hd99959100037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e99958100033%_)))
                                    (_%tl99960100040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e99958100033%_))))
                                (if (gx#stx-null? _%tl99960100040%_)
                                    ((lambda (_%L100043%_
                                              _%L100045%_
                                              _%L100046%_
                                              _%L100047%_
                                              _%L100048%_
                                              _%L100049%_)
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
                                         (cons _%L100049%_ '()))
                                   (cons _%L100048%_ (cons '#f '()))))
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
                               (cons _%L100049%_
                                     (cons 'slot: (cons _%L100048%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L100049%_ '()))
                                         (cons (cons _%L100047%_
                                                     (cons _%L100049%_
                                                           (cons _%L100048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L100049%_ '()))
                                               (cons (cons _%L100046%_
                                                           (cons _%L100049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L100048%_
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
                                           (cons _%L100049%_ '()))
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
                                                     (cons (cons _%L100045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L100049%_
                               (cons _%L100048%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L100043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L100049%_
                                     (cons _%L100048%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd99959100037%_
                                     _%hd99956100027%_
                                     _%hd99953100017%_
                                     _%hd99950100007%_
                                     _%hd9994799997%_
                                     _%hd9994499987%_)
                                    (_%g9993299966%_ _%g9993399970%_))))
                            (_%g9993299966%_ _%g9993399970%_))))
                    (_%g9993299966%_ _%g9993399970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9993299966%_
                                                     _%g9993399970%_))))
                                            (_%g9993299966%_
                                             _%g9993399970%_))))
                                    (_%g9993299966%_ _%g9993399970%_))))
                            (_%g9993299966%_ _%g9993399970%_))))
                    (_%g9993299966%_ _%g9993399970%_)))))
        (_%g99931100077%_ _%$stx99928%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx100081%_)
      (let* ((_%g100085100111%_
              (lambda (_%g100086100107%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100086100107%_)))
             (_%g100084100194%_
              (lambda (_%g100086100115%_)
                (if (gx#stx-pair? _%g100086100115%_)
                    (let ((_%e100091100118%_ (gx#syntax-e _%g100086100115%_)))
                      (let ((_%hd100092100122%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100091100118%_)))
                            (_%tl100093100125%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100091100118%_))))
                        (if (gx#stx-pair? _%tl100093100125%_)
                            (let ((_%e100094100128%_
                                   (gx#syntax-e _%tl100093100125%_)))
                              (let ((_%hd100095100132%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100094100128%_)))
                                    (_%tl100096100135%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100094100128%_))))
                                (if (gx#stx-pair? _%tl100096100135%_)
                                    (let ((_%e100097100138%_
                                           (gx#syntax-e _%tl100096100135%_)))
                                      (let ((_%hd100098100142%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100097100138%_)))
                                            (_%tl100099100145%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100097100138%_))))
                                        (if (gx#stx-pair? _%tl100099100145%_)
                                            (let ((_%e100100100148%_
                                                   (gx#syntax-e
                                                    _%tl100099100145%_)))
                                              (let ((_%hd100101100152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100100100148%_)))
                                                    (_%tl100102100155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100100100148%_))))
                                                (if (gx#stx-pair?
                                                     _%tl100102100155%_)
                                                    (let ((_%e100103100158%_
                                                           (gx#syntax-e
                                                            _%tl100102100155%_)))
                                                      (let ((_%hd100104100162%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e100103100158%_)))
                    (_%tl100105100165%_
                     (let () (declare (not safe)) (##cdr _%e100103100158%_))))
                (if (gx#stx-null? _%tl100105100165%_)
                    ((lambda (_%L100168%_ _%L100170%_ _%L100171%_ _%L100172%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L100172%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L100171%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L100170%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L100168%_
                                     (cons _%L100172%_ (cons _%L100171%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd100104100162%_
                     _%hd100101100152%_
                     _%hd100098100142%_
                     _%hd100095100132%_)
                    (_%g100085100111%_ _%g100086100115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100085100111%_
                                                     _%g100086100115%_))))
                                            (_%g100085100111%_
                                             _%g100086100115%_))))
                                    (_%g100085100111%_ _%g100086100115%_))))
                            (_%g100085100111%_ _%g100086100115%_))))
                    (_%g100085100111%_ _%g100086100115%_)))))
        (_%g100084100194%_ _%$stx100081%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx100198%_)
      (let* ((_%g100202100231%_
              (lambda (_%g100203100227%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100203100227%_)))
             (_%g100201100331%_
              (lambda (_%g100203100235%_)
                (if (gx#stx-pair? _%g100203100235%_)
                    (let ((_%e100206100238%_ (gx#syntax-e _%g100203100235%_)))
                      (let ((_%hd100207100242%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100206100238%_)))
                            (_%tl100208100245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100206100238%_))))
                        (if (gx#stx-pair/null? _%tl100208100245%_)
                            (let ((_g106079_
                                   (gx#syntax-split-splice
                                    _%tl100208100245%_
                                    '0)))
                              (begin
                                (let ((_g106080_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g106079_)
                                             (##values-length _g106079_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g106080_ 2)))
                                      (error "Context expects 2 values"
                                             _g106080_)))
                                (let ((_%target100209100248%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g106079_ 0)))
                                      (_%tl100211100251%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g106079_ 1))))
                                  (if (gx#stx-null? _%tl100211100251%_)
                                      (letrec ((_%loop100212100254%_
                                                (lambda (_%hd100210100258%_
                                                         _%name100216100261%_
                                                         _%t100217100263%_)
                                                  (if (gx#stx-pair?
                                                       _%hd100210100258%_)
                                                      (let ((_%e100213100266%_
                                                             (gx#syntax-e
                                                              _%hd100210100258%_)))
                                                        (let ((_%lp-hd100214100270%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e100213100266%_)))
                      (_%lp-tl100215100273%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e100213100266%_))))
                  (if (gx#stx-pair? _%lp-hd100214100270%_)
                      (let ((_%e100220100276%_
                             (gx#syntax-e _%lp-hd100214100270%_)))
                        (let ((_%hd100221100280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e100220100276%_)))
                              (_%tl100222100283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e100220100276%_))))
                          (if (gx#stx-pair? _%tl100222100283%_)
                              (let ((_%e100223100286%_
                                     (gx#syntax-e _%tl100222100283%_)))
                                (let ((_%hd100224100290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e100223100286%_)))
                                      (_%tl100225100293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e100223100286%_))))
                                  (if (gx#stx-null? _%tl100225100293%_)
                                      (_%loop100212100254%_
                                       _%lp-tl100215100273%_
                                       (cons _%hd100224100290%_
                                             _%name100216100261%_)
                                       (cons _%hd100221100280%_
                                             _%t100217100263%_))
                                      (_%g100202100231%_ _%g100203100235%_))))
                              (_%g100202100231%_ _%g100203100235%_))))
                      (_%g100202100231%_ _%g100203100235%_))))
              (let ((_%name100218100296%_ (reverse _%name100216100261%_))
                    (_%t100219100299%_ (reverse _%t100217100263%_)))
                ((lambda (_%L100302%_ _%L100304%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L100302%_
                            _%L100304%_)
                           (let ((__tmp106081
                                  (lambda (_%g100319100323%_
                                           _%g100320100326%_
                                           _%g100321100328%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g100320100326%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g100319100323%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g100321100328%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp106081
                              '()
                              _%L100302%_
                              _%L100304%_)))))
                 _%name100218100296%_
                 _%t100219100299%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop100212100254%_
                                         _%target100209100248%_
                                         '()
                                         '()))
                                      (_%g100202100231%_ _%g100203100235%_)))))
                            (_%g100202100231%_ _%g100203100235%_))))
                    (_%g100202100231%_ _%g100203100235%_)))))
        (_%g100201100331%_ _%$stx100198%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx100336%_)
      (let* ((_%g100340100371%_
              (lambda (_%g100341100367%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100341100367%_)))
             (_%g100339100490%_
              (lambda (_%g100341100375%_)
                (if (gx#stx-pair? _%g100341100375%_)
                    (let ((_%e100345100378%_ (gx#syntax-e _%g100341100375%_)))
                      (let ((_%hd100346100382%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100345100378%_)))
                            (_%tl100347100385%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100345100378%_))))
                        (if (gx#stx-pair? _%tl100347100385%_)
                            (let ((_%e100348100388%_
                                   (gx#syntax-e _%tl100347100385%_)))
                              (let ((_%hd100349100392%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100348100388%_)))
                                    (_%tl100350100395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100348100388%_))))
                                (if (gx#stx-pair? _%tl100350100395%_)
                                    (let ((_%e100351100398%_
                                           (gx#syntax-e _%tl100350100395%_)))
                                      (let ((_%hd100352100402%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100351100398%_)))
                                            (_%tl100353100405%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100351100398%_))))
                                        (if (gx#stx-pair? _%tl100353100405%_)
                                            (let ((_%e100354100408%_
                                                   (gx#syntax-e
                                                    _%tl100353100405%_)))
                                              (let ((_%hd100355100412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e100354100408%_)))
                                                    (_%tl100356100415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e100354100408%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd100355100412%_)
                                                    (let ((_g106082_
                                                           (gx#syntax-split-splice
                                                            _%hd100355100412%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g106083_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g106082_)
                             (##values-length _g106082_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g106083_ 2)))
                      (error "Context expects 2 values" _g106083_)))
                (let ((_%target100357100418%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g106082_ 0)))
                      (_%tl100359100421%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g106082_ 1))))
                  (if (gx#stx-null? _%tl100359100421%_)
                      (letrec ((_%loop100360100424%_
                                (lambda (_%hd100358100428%_
                                         _%super100364100431%_)
                                  (if (gx#stx-pair? _%hd100358100428%_)
                                      (let ((_%e100361100434%_
                                             (gx#syntax-e _%hd100358100428%_)))
                                        (let ((_%lp-hd100362100438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e100361100434%_)))
                                              (_%lp-tl100363100441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e100361100434%_))))
                                          (_%loop100360100424%_
                                           _%lp-tl100363100441%_
                                           (cons _%lp-hd100362100438%_
                                                 _%super100364100431%_))))
                                      (let ((_%super100365100444%_
                                             (reverse _%super100364100431%_)))
                                        (if (gx#stx-null? _%tl100356100415%_)
                                            ((lambda (_%L100448%_
                                                      _%L100450%_
                                                      _%L100451%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L100451%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L100450%_
                                                 (cons (let ((__tmp106084
                                                              (lambda (_%g100473100478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g100474100481%_)
                        (cons _%g100473100478%_ _%g100474100481%_))))
                 (declare (not safe))
                 (__foldr1 __tmp106084 '() _%L100448%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L100450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp106085
                                  (lambda (_%g100475100484%_ _%g100476100487%_)
                                    (cons _%g100475100484%_
                                          _%g100476100487%_))))
                             (declare (not safe))
                             (__foldr1 __tmp106085 '() _%L100448%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super100365100444%_
                                             _%hd100352100402%_
                                             _%hd100349100392%_)
                                            (_%g100340100371%_
                                             _%g100341100375%_)))))))
                        (_%loop100360100424%_ _%target100357100418%_ '()))
                      (_%g100340100371%_ _%g100341100375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g100340100371%_
                                                     _%g100341100375%_))))
                                            (_%g100340100371%_
                                             _%g100341100375%_))))
                                    (_%g100340100371%_ _%g100341100375%_))))
                            (_%g100340100371%_ _%g100341100375%_))))
                    (_%g100340100371%_ _%g100341100375%_)))))
        (_%g100339100490%_ _%$stx100336%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx100495%_)
      (let* ((_%g100499100530%_
              (lambda (_%g100500100526%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g100500100526%_)))
             (_%g100498100641%_
              (lambda (_%g100500100534%_)
                (if (gx#stx-pair? _%g100500100534%_)
                    (let ((_%e100504100537%_ (gx#syntax-e _%g100500100534%_)))
                      (let ((_%hd100505100541%_
                             (let ()
                               (declare (not safe))
                               (##car _%e100504100537%_)))
                            (_%tl100506100544%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e100504100537%_))))
                        (if (gx#stx-pair? _%tl100506100544%_)
                            (let ((_%e100507100547%_
                                   (gx#syntax-e _%tl100506100544%_)))
                              (let ((_%hd100508100551%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e100507100547%_)))
                                    (_%tl100509100554%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e100507100547%_))))
                                (if (gx#stx-pair? _%tl100509100554%_)
                                    (let ((_%e100510100557%_
                                           (gx#syntax-e _%tl100509100554%_)))
                                      (let ((_%hd100511100561%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100510100557%_)))
                                            (_%tl100512100564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100510100557%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd100511100561%_)
                                            (let ((_g106086_
                                                   (gx#syntax-split-splice
                                                    _%hd100511100561%_
                                                    '0)))
                                              (begin
                                                (let ((_g106087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g106086_)
                                                             (##values-length
                                                              _g106086_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g106087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g106087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target100513100567%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g106086_
                                                          0)))
                                                      (_%tl100515100570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g106086_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl100515100570%_)
                                                      (letrec ((_%loop100516100573%_
                                                                (lambda (_%hd100514100577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super100520100580%_)
                          (if (gx#stx-pair? _%hd100514100577%_)
                              (let ((_%e100517100583%_
                                     (gx#syntax-e _%hd100514100577%_)))
                                (let ((_%lp-hd100518100587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e100517100583%_)))
                                      (_%lp-tl100519100590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e100517100583%_))))
                                  (_%loop100516100573%_
                                   _%lp-tl100519100590%_
                                   (cons _%lp-hd100518100587%_
                                         _%super100520100580%_))))
                              (let ((_%super100521100593%_
                                     (reverse _%super100520100580%_)))
                                (if (gx#stx-pair? _%tl100512100564%_)
                                    (let ((_%e100522100597%_
                                           (gx#syntax-e _%tl100512100564%_)))
                                      (let ((_%hd100523100601%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e100522100597%_)))
                                            (_%tl100524100604%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e100522100597%_))))
                                        (if (gx#stx-null? _%tl100524100604%_)
                                            ((lambda (_%L100607%_
                                                      _%L100609%_
                                                      _%L100610%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L100610%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L100610%_
                                                 (cons (let ((__tmp106088
                                                              (lambda (_%g100632100635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g100633100638%_)
                        (cons _%g100632100635%_ _%g100633100638%_))))
                 (declare (not safe))
                 (__foldr1 __tmp106088 '() _%L100609%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L100607%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd100523100601%_
                                             _%super100521100593%_
                                             _%hd100508100551%_)
                                            (_%g100499100530%_
                                             _%g100500100534%_))))
                                    (_%g100499100530%_ _%g100500100534%_)))))))
                (_%loop100516100573%_ _%target100513100567%_ '()))
              (_%g100499100530%_ _%g100500100534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g100499100530%_
                                             _%g100500100534%_))))
                                    (_%g100499100530%_ _%g100500100534%_))))
                            (_%g100499100530%_ _%g100500100534%_))))
                    (_%g100499100530%_ _%g100500100534%_)))))
        (_%g100498100641%_ _%$stx100495%_)))))
