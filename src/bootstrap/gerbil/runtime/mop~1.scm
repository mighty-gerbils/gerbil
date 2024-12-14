(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95027%_)
      (let* ((_%__stx101578101579%_ _%$stx95027%_)
             (_%g9503295061%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx101578101579%_))))
        (let ((_%__kont101581101582%_
               (lambda (_%L95154%_ _%L95156%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95156%_ (cons _%L95154%_ '())))
                             (cons _%L95154%_ '())))))
              (_%__kont101583101584%_
               (lambda (_%L95098%_ _%L95100%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95098%_ (cons _%L95098%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95100%_
                                                           (cons _%L95098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95098%_ '())))
                                   '()))))))
          (let ((_%__match101605101606%_
                 (lambda (_%e9503695124%_
                          _%hd9503795128%_
                          _%tl9503895131%_
                          _%e9503995134%_
                          _%hd9504095138%_
                          _%tl9504195141%_
                          _%e9504295144%_
                          _%hd9504395148%_
                          _%tl9504495151%_)
                   (let ((_%L95154%_ _%hd9504395148%_)
                         (_%L95156%_ _%hd9504095138%_))
                     (if (or (gx#identifier? _%L95154%_)
                             (gx#stx-fixnum? _%L95154%_))
                         (_%__kont101581101582%_ _%L95154%_ _%L95156%_)
                         (_%__kont101583101584%_
                          _%hd9504395148%_
                          _%hd9504095138%_))))))
            (if (gx#stx-pair? _%__stx101578101579%_)
                (let ((_%e9503695124%_ (gx#syntax-e _%__stx101578101579%_)))
                  (let ((_%tl9503895131%_
                         (let () (declare (not safe)) (##cdr _%e9503695124%_)))
                        (_%hd9503795128%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9503695124%_))))
                    (if (gx#stx-pair? _%tl9503895131%_)
                        (let ((_%e9503995134%_ (gx#syntax-e _%tl9503895131%_)))
                          (let ((_%tl9504195141%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9503995134%_)))
                                (_%hd9504095138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9503995134%_))))
                            (if (gx#stx-pair? _%tl9504195141%_)
                                (let ((_%e9504295144%_
                                       (gx#syntax-e _%tl9504195141%_)))
                                  (let ((_%tl9504495151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9504295144%_)))
                                        (_%hd9504395148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9504295144%_))))
                                    (if (gx#stx-null? _%tl9504495151%_)
                                        (_%__match101605101606%_
                                         _%e9503695124%_
                                         _%hd9503795128%_
                                         _%tl9503895131%_
                                         _%e9503995134%_
                                         _%hd9504095138%_
                                         _%tl9504195141%_
                                         _%e9504295144%_
                                         _%hd9504395148%_
                                         _%tl9504495151%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9503295061%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9503295061%_)))))
                        (let () (declare (not safe)) (_%g9503295061%_)))))
                (let () (declare (not safe)) (_%g9503295061%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx95179%_)
      (let* ((_%__stx101628101629%_ _%$stx95179%_)
             (_%g9518495213%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx101628101629%_))))
        (let ((_%__kont101631101632%_
               (lambda (_%L95305%_ _%L95307%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L95307%_ (cons _%L95305%_ '())))
                             (cons '0 '())))))
              (_%__kont101633101634%_
               (lambda (_%L95250%_ _%L95252%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95250%_ (cons _%L95250%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95252%_
                                                           (cons _%L95250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match101655101656%_
                 (lambda (_%e9518895275%_
                          _%hd9518995279%_
                          _%tl9519095282%_
                          _%e9519195285%_
                          _%hd9519295289%_
                          _%tl9519395292%_
                          _%e9519495295%_
                          _%hd9519595299%_
                          _%tl9519695302%_)
                   (let ((_%L95305%_ _%hd9519595299%_)
                         (_%L95307%_ _%hd9519295289%_))
                     (if (or (gx#identifier? _%L95305%_)
                             (gx#stx-fixnum? _%L95305%_))
                         (_%__kont101631101632%_ _%L95305%_ _%L95307%_)
                         (_%__kont101633101634%_
                          _%hd9519595299%_
                          _%hd9519295289%_))))))
            (if (gx#stx-pair? _%__stx101628101629%_)
                (let ((_%e9518895275%_ (gx#syntax-e _%__stx101628101629%_)))
                  (let ((_%tl9519095282%_
                         (let () (declare (not safe)) (##cdr _%e9518895275%_)))
                        (_%hd9518995279%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9518895275%_))))
                    (if (gx#stx-pair? _%tl9519095282%_)
                        (let ((_%e9519195285%_ (gx#syntax-e _%tl9519095282%_)))
                          (let ((_%tl9519395292%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9519195285%_)))
                                (_%hd9519295289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9519195285%_))))
                            (if (gx#stx-pair? _%tl9519395292%_)
                                (let ((_%e9519495295%_
                                       (gx#syntax-e _%tl9519395292%_)))
                                  (let ((_%tl9519695302%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9519495295%_)))
                                        (_%hd9519595299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9519495295%_))))
                                    (if (gx#stx-null? _%tl9519695302%_)
                                        (_%__match101655101656%_
                                         _%e9518895275%_
                                         _%hd9518995279%_
                                         _%tl9519095282%_
                                         _%e9519195285%_
                                         _%hd9519295289%_
                                         _%tl9519395292%_
                                         _%e9519495295%_
                                         _%hd9519595299%_
                                         _%tl9519695302%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9518495213%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9518495213%_)))))
                        (let () (declare (not safe)) (_%g9518495213%_)))))
                (let () (declare (not safe)) (_%g9518495213%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx95330%_)
      (let* ((_%g9533395354%_
              (lambda (_%g9533495350%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9533495350%_)))
             (_%g9533295582%_
              (lambda (_%g9533495358%_)
                (if (gx#stx-pair? _%g9533495358%_)
                    (let ((_%e9533795361%_ (gx#syntax-e _%g9533495358%_)))
                      (let ((_%hd9533895365%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9533795361%_)))
                            (_%tl9533995368%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9533795361%_))))
                        (if (gx#stx-pair? _%tl9533995368%_)
                            (let ((_%e9534095371%_
                                   (gx#syntax-e _%tl9533995368%_)))
                              (let ((_%hd9534195375%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9534095371%_)))
                                    (_%tl9534295378%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9534095371%_))))
                                (if (gx#stx-pair? _%hd9534195375%_)
                                    (let ((_%e9534395381%_
                                           (gx#syntax-e _%hd9534195375%_)))
                                      (let ((_%hd9534495385%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9534395381%_)))
                                            (_%tl9534595388%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9534395381%_))))
                                        (if (gx#stx-pair? _%tl9534595388%_)
                                            (let ((_%e9534695391%_
                                                   (gx#syntax-e
                                                    _%tl9534595388%_)))
                                              (let ((_%hd9534795395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9534695391%_)))
                                                    (_%tl9534895398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9534695391%_))))
                                                (if (gx#stx-null?
                                                     _%tl9534895398%_)
                                                    (if (gx#stx-null?
                                                         _%tl9534295378%_)
                                                        ((lambda (_%L95401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L95403%_)
                   (let* ((_%g9542195429%_
                           (lambda (_%g9542295425%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9542295425%_)))
                          (_%g9542095578%_
                           (lambda (_%g9542295433%_)
                             ((lambda (_%L95436%_)
                                (let* ((_%g9544895456%_
                                        (lambda (_%g9544995452%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9544995452%_)))
                                       (_%g9544795574%_
                                        (lambda (_%g9544995460%_)
                                          ((lambda (_%L95463%_)
                                             (let* ((_%g9547695484%_
                                                     (lambda (_%g9547795480%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9547795480%_)))
                                                    (_%g9547595570%_
                                                     (lambda (_%g9547795488%_)
                                                       ((lambda (_%L95491%_)
                                                          (let* ((_%g9550495512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9550595508%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9550595508%_)))
                         (_%g9550395566%_
                          (lambda (_%g9550595516%_)
                            ((lambda (_%L95519%_)
                               (let* ((_%g9553295540%_
                                       (lambda (_%g9553395536%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9553395536%_)))
                                      (_%g9553195562%_
                                       (lambda (_%g9553395544%_)
                                         ((lambda (_%L95547%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L95463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L95436%_
                                                          (cons _%L95403%_
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
                                          (cons _%L95401%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L95403%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L95491%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L95436%_
                                                                (cons _%L95403%_
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
                                                (cons _%L95401%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L95403%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L95519%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L95436%_ (cons _%L95403%_ (cons '#t '()))))
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
                                                            (cons _%L95401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L95403%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L95547%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L95436%_
                                    (cons _%L95403%_ (cons '#f '()))))
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
                          (cons _%L95401%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L95403%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9553395544%_))))
                                 (_%g9553195562%_
                                  (gx#stx-identifier
                                   _%L95403%_
                                   '"&"
                                   _%L95519%_))))
                             _%g9550595516%_))))
                    (_%g9550395566%_
                     (gx#stx-identifier _%L95403%_ _%L95463%_ '"-set!"))))
                _%g9547795488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9547595570%_
                                                (gx#stx-identifier
                                                 _%L95403%_
                                                 '"&"
                                                 _%L95463%_))))
                                           _%g9544995460%_))))
                                  (_%g9544795574%_
                                   (gx#stx-identifier
                                    _%L95403%_
                                    '"class-type-"
                                    _%L95403%_))))
                              _%g9542295433%_))))
                     (_%g9542095578%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9534795395%_
                 _%hd9534495385%_)
                (_%g9533395354%_ _%g9533495358%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9533395354%_
                                                     _%g9533495358%_))))
                                            (_%g9533395354%_
                                             _%g9533495358%_))))
                                    (_%g9533395354%_ _%g9533495358%_))))
                            (_%g9533395354%_ _%g9533495358%_))))
                    (_%g9533395354%_ _%g9533495358%_)))))
        (_%g9533295582%_ _%stx95330%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx95586%_)
      (let* ((_%g9559095619%_
              (lambda (_%g9559195615%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9559195615%_)))
             (_%g9558995719%_
              (lambda (_%g9559195623%_)
                (if (gx#stx-pair? _%g9559195623%_)
                    (let ((_%e9559495626%_ (gx#syntax-e _%g9559195623%_)))
                      (let ((_%hd9559595630%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9559495626%_)))
                            (_%tl9559695633%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9559495626%_))))
                        (if (gx#stx-pair/null? _%tl9559695633%_)
                            (let ((_g101867_
                                   (gx#syntax-split-splice
                                    _%tl9559695633%_
                                    '0)))
                              (begin
                                (let ((_g101868_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101867_)
                                             (##values-length _g101867_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101868_ 2)))
                                      (error "Context expects 2 values"
                                             _g101868_)))
                                (let ((_%target9559795636%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101867_ 0)))
                                      (_%tl9559995639%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101867_ 1))))
                                  (if (gx#stx-null? _%tl9559995639%_)
                                      (letrec ((_%loop9560095642%_
                                                (lambda (_%hd9559895646%_
                                                         _%field9560495649%_
                                                         _%slot9560595651%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9559895646%_)
                                                      (let ((_%e9560195654%_
                                                             (gx#syntax-e
                                                              _%hd9559895646%_)))
                                                        (let ((_%lp-hd9560295658%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9560195654%_)))
                      (_%lp-tl9560395661%_
                       (let () (declare (not safe)) (##cdr _%e9560195654%_))))
                  (if (gx#stx-pair? _%lp-hd9560295658%_)
                      (let ((_%e9560895664%_
                             (gx#syntax-e _%lp-hd9560295658%_)))
                        (let ((_%hd9560995668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9560895664%_)))
                              (_%tl9561095671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9560895664%_))))
                          (if (gx#stx-pair? _%tl9561095671%_)
                              (let ((_%e9561195674%_
                                     (gx#syntax-e _%tl9561095671%_)))
                                (let ((_%hd9561295678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9561195674%_)))
                                      (_%tl9561395681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9561195674%_))))
                                  (if (gx#stx-null? _%tl9561395681%_)
                                      (_%loop9560095642%_
                                       _%lp-tl9560395661%_
                                       (cons _%hd9561295678%_
                                             _%field9560495649%_)
                                       (cons _%hd9560995668%_
                                             _%slot9560595651%_))
                                      (_%g9559095619%_ _%g9559195623%_))))
                              (_%g9559095619%_ _%g9559195623%_))))
                      (_%g9559095619%_ _%g9559195623%_))))
              (let ((_%field9560695684%_ (reverse _%field9560495649%_))
                    (_%slot9560795687%_ (reverse _%slot9560595651%_)))
                ((lambda (_%L95690%_ _%L95692%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L95690%_
                            _%L95692%_)
                           (let ((__tmp101869
                                  (lambda (_%g9570795711%_
                                           _%g9570895714%_
                                           _%g9570995716%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9570895714%_
                                                            (cons _%g9570795711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9570995716%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp101869
                              '()
                              _%L95690%_
                              _%L95692%_)))))
                 _%field9560695684%_
                 _%slot9560795687%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9560095642%_
                                         _%target9559795636%_
                                         '()
                                         '()))
                                      (_%g9559095619%_ _%g9559195623%_)))))
                            (_%g9559095619%_ _%g9559195623%_))))
                    (_%g9559095619%_ _%g9559195623%_)))))
        (_%g9558995719%_ _%$stx95586%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx95724%_)
      (let* ((_%g9572895762%_
              (lambda (_%g9572995758%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9572995758%_)))
             (_%g9572795873%_
              (lambda (_%g9572995766%_)
                (if (gx#stx-pair? _%g9572995766%_)
                    (let ((_%e9573695769%_ (gx#syntax-e _%g9572995766%_)))
                      (let ((_%hd9573795773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9573695769%_)))
                            (_%tl9573895776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9573695769%_))))
                        (if (gx#stx-pair? _%tl9573895776%_)
                            (let ((_%e9573995779%_
                                   (gx#syntax-e _%tl9573895776%_)))
                              (let ((_%hd9574095783%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9573995779%_)))
                                    (_%tl9574195786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9573995779%_))))
                                (if (gx#stx-pair? _%tl9574195786%_)
                                    (let ((_%e9574295789%_
                                           (gx#syntax-e _%tl9574195786%_)))
                                      (let ((_%hd9574395793%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9574295789%_)))
                                            (_%tl9574495796%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9574295789%_))))
                                        (if (gx#stx-pair? _%tl9574495796%_)
                                            (let ((_%e9574595799%_
                                                   (gx#syntax-e
                                                    _%tl9574495796%_)))
                                              (let ((_%hd9574695803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9574595799%_)))
                                                    (_%tl9574795806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9574595799%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9574795806%_)
                                                    (let ((_%e9574895809%_
                                                           (gx#syntax-e
                                                            _%tl9574795806%_)))
                                                      (let ((_%hd9574995813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9574895809%_)))
                    (_%tl9575095816%_
                     (let () (declare (not safe)) (##cdr _%e9574895809%_))))
                (if (gx#stx-pair? _%tl9575095816%_)
                    (let ((_%e9575195819%_ (gx#syntax-e _%tl9575095816%_)))
                      (let ((_%hd9575295823%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9575195819%_)))
                            (_%tl9575395826%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9575195819%_))))
                        (if (gx#stx-pair? _%tl9575395826%_)
                            (let ((_%e9575495829%_
                                   (gx#syntax-e _%tl9575395826%_)))
                              (let ((_%hd9575595833%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9575495829%_)))
                                    (_%tl9575695836%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9575495829%_))))
                                (if (gx#stx-null? _%tl9575695836%_)
                                    ((lambda (_%L95839%_
                                              _%L95841%_
                                              _%L95842%_
                                              _%L95843%_
                                              _%L95844%_
                                              _%L95845%_)
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
                                         (cons _%L95845%_ '()))
                                   (cons _%L95844%_ (cons '#f '()))))
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
                               (cons _%L95845%_
                                     (cons 'slot: (cons _%L95844%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L95845%_ '()))
                                         (cons (cons _%L95843%_
                                                     (cons _%L95845%_
                                                           (cons _%L95844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L95845%_ '()))
                                               (cons (cons _%L95842%_
                                                           (cons _%L95845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L95844%_
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
                                           (cons _%L95845%_ '()))
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
                                                     (cons (cons _%L95841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L95845%_
                               (cons _%L95844%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L95839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L95845%_
                                     (cons _%L95844%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9575595833%_
                                     _%hd9575295823%_
                                     _%hd9574995813%_
                                     _%hd9574695803%_
                                     _%hd9574395793%_
                                     _%hd9574095783%_)
                                    (_%g9572895762%_ _%g9572995766%_))))
                            (_%g9572895762%_ _%g9572995766%_))))
                    (_%g9572895762%_ _%g9572995766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9572895762%_
                                                     _%g9572995766%_))))
                                            (_%g9572895762%_
                                             _%g9572995766%_))))
                                    (_%g9572895762%_ _%g9572995766%_))))
                            (_%g9572895762%_ _%g9572995766%_))))
                    (_%g9572895762%_ _%g9572995766%_)))))
        (_%g9572795873%_ _%$stx95724%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx95877%_)
      (let* ((_%g9588195907%_
              (lambda (_%g9588295903%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9588295903%_)))
             (_%g9588095990%_
              (lambda (_%g9588295911%_)
                (if (gx#stx-pair? _%g9588295911%_)
                    (let ((_%e9588795914%_ (gx#syntax-e _%g9588295911%_)))
                      (let ((_%hd9588895918%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9588795914%_)))
                            (_%tl9588995921%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9588795914%_))))
                        (if (gx#stx-pair? _%tl9588995921%_)
                            (let ((_%e9589095924%_
                                   (gx#syntax-e _%tl9588995921%_)))
                              (let ((_%hd9589195928%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9589095924%_)))
                                    (_%tl9589295931%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9589095924%_))))
                                (if (gx#stx-pair? _%tl9589295931%_)
                                    (let ((_%e9589395934%_
                                           (gx#syntax-e _%tl9589295931%_)))
                                      (let ((_%hd9589495938%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9589395934%_)))
                                            (_%tl9589595941%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9589395934%_))))
                                        (if (gx#stx-pair? _%tl9589595941%_)
                                            (let ((_%e9589695944%_
                                                   (gx#syntax-e
                                                    _%tl9589595941%_)))
                                              (let ((_%hd9589795948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9589695944%_)))
                                                    (_%tl9589895951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9589695944%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9589895951%_)
                                                    (let ((_%e9589995954%_
                                                           (gx#syntax-e
                                                            _%tl9589895951%_)))
                                                      (let ((_%hd9590095958%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9589995954%_)))
                    (_%tl9590195961%_
                     (let () (declare (not safe)) (##cdr _%e9589995954%_))))
                (if (gx#stx-null? _%tl9590195961%_)
                    ((lambda (_%L95964%_ _%L95966%_ _%L95967%_ _%L95968%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L95968%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L95967%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L95966%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L95964%_
                                     (cons _%L95968%_ (cons _%L95967%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9590095958%_
                     _%hd9589795948%_
                     _%hd9589495938%_
                     _%hd9589195928%_)
                    (_%g9588195907%_ _%g9588295911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9588195907%_
                                                     _%g9588295911%_))))
                                            (_%g9588195907%_
                                             _%g9588295911%_))))
                                    (_%g9588195907%_ _%g9588295911%_))))
                            (_%g9588195907%_ _%g9588295911%_))))
                    (_%g9588195907%_ _%g9588295911%_)))))
        (_%g9588095990%_ _%$stx95877%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx95994%_)
      (let* ((_%g9599896027%_
              (lambda (_%g9599996023%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9599996023%_)))
             (_%g9599796127%_
              (lambda (_%g9599996031%_)
                (if (gx#stx-pair? _%g9599996031%_)
                    (let ((_%e9600296034%_ (gx#syntax-e _%g9599996031%_)))
                      (let ((_%hd9600396038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9600296034%_)))
                            (_%tl9600496041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9600296034%_))))
                        (if (gx#stx-pair/null? _%tl9600496041%_)
                            (let ((_g101870_
                                   (gx#syntax-split-splice
                                    _%tl9600496041%_
                                    '0)))
                              (begin
                                (let ((_g101871_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g101870_)
                                             (##values-length _g101870_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g101871_ 2)))
                                      (error "Context expects 2 values"
                                             _g101871_)))
                                (let ((_%target9600596044%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101870_ 0)))
                                      (_%tl9600796047%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g101870_ 1))))
                                  (if (gx#stx-null? _%tl9600796047%_)
                                      (letrec ((_%loop9600896050%_
                                                (lambda (_%hd9600696054%_
                                                         _%name9601296057%_
                                                         _%t9601396059%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9600696054%_)
                                                      (let ((_%e9600996062%_
                                                             (gx#syntax-e
                                                              _%hd9600696054%_)))
                                                        (let ((_%lp-hd9601096066%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9600996062%_)))
                      (_%lp-tl9601196069%_
                       (let () (declare (not safe)) (##cdr _%e9600996062%_))))
                  (if (gx#stx-pair? _%lp-hd9601096066%_)
                      (let ((_%e9601696072%_
                             (gx#syntax-e _%lp-hd9601096066%_)))
                        (let ((_%hd9601796076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9601696072%_)))
                              (_%tl9601896079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9601696072%_))))
                          (if (gx#stx-pair? _%tl9601896079%_)
                              (let ((_%e9601996082%_
                                     (gx#syntax-e _%tl9601896079%_)))
                                (let ((_%hd9602096086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9601996082%_)))
                                      (_%tl9602196089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9601996082%_))))
                                  (if (gx#stx-null? _%tl9602196089%_)
                                      (_%loop9600896050%_
                                       _%lp-tl9601196069%_
                                       (cons _%hd9602096086%_
                                             _%name9601296057%_)
                                       (cons _%hd9601796076%_ _%t9601396059%_))
                                      (_%g9599896027%_ _%g9599996031%_))))
                              (_%g9599896027%_ _%g9599996031%_))))
                      (_%g9599896027%_ _%g9599996031%_))))
              (let ((_%name9601496092%_ (reverse _%name9601296057%_))
                    (_%t9601596095%_ (reverse _%t9601396059%_)))
                ((lambda (_%L96098%_ _%L96100%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96098%_
                            _%L96100%_)
                           (let ((__tmp101872
                                  (lambda (_%g9611596119%_
                                           _%g9611696122%_
                                           _%g9611796124%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9611696122%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9611596119%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9611796124%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp101872
                              '()
                              _%L96098%_
                              _%L96100%_)))))
                 _%name9601496092%_
                 _%t9601596095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9600896050%_
                                         _%target9600596044%_
                                         '()
                                         '()))
                                      (_%g9599896027%_ _%g9599996031%_)))))
                            (_%g9599896027%_ _%g9599996031%_))))
                    (_%g9599896027%_ _%g9599996031%_)))))
        (_%g9599796127%_ _%$stx95994%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx96132%_)
      (let* ((_%g9613696167%_
              (lambda (_%g9613796163%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9613796163%_)))
             (_%g9613596286%_
              (lambda (_%g9613796171%_)
                (if (gx#stx-pair? _%g9613796171%_)
                    (let ((_%e9614196174%_ (gx#syntax-e _%g9613796171%_)))
                      (let ((_%hd9614296178%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9614196174%_)))
                            (_%tl9614396181%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9614196174%_))))
                        (if (gx#stx-pair? _%tl9614396181%_)
                            (let ((_%e9614496184%_
                                   (gx#syntax-e _%tl9614396181%_)))
                              (let ((_%hd9614596188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9614496184%_)))
                                    (_%tl9614696191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9614496184%_))))
                                (if (gx#stx-pair? _%tl9614696191%_)
                                    (let ((_%e9614796194%_
                                           (gx#syntax-e _%tl9614696191%_)))
                                      (let ((_%hd9614896198%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9614796194%_)))
                                            (_%tl9614996201%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9614796194%_))))
                                        (if (gx#stx-pair? _%tl9614996201%_)
                                            (let ((_%e9615096204%_
                                                   (gx#syntax-e
                                                    _%tl9614996201%_)))
                                              (let ((_%hd9615196208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9615096204%_)))
                                                    (_%tl9615296211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9615096204%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9615196208%_)
                                                    (let ((_g101873_
                                                           (gx#syntax-split-splice
                                                            _%hd9615196208%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101874_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101873_)
                             (##values-length _g101873_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101874_ 2)))
                      (error "Context expects 2 values" _g101874_)))
                (let ((_%target9615396214%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101873_ 0)))
                      (_%tl9615596217%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101873_ 1))))
                  (if (gx#stx-null? _%tl9615596217%_)
                      (letrec ((_%loop9615696220%_
                                (lambda (_%hd9615496224%_ _%super9616096227%_)
                                  (if (gx#stx-pair? _%hd9615496224%_)
                                      (let ((_%e9615796230%_
                                             (gx#syntax-e _%hd9615496224%_)))
                                        (let ((_%lp-hd9615896234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9615796230%_)))
                                              (_%lp-tl9615996237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9615796230%_))))
                                          (_%loop9615696220%_
                                           _%lp-tl9615996237%_
                                           (cons _%lp-hd9615896234%_
                                                 _%super9616096227%_))))
                                      (let ((_%super9616196240%_
                                             (reverse _%super9616096227%_)))
                                        (if (gx#stx-null? _%tl9615296211%_)
                                            ((lambda (_%L96244%_
                                                      _%L96246%_
                                                      _%L96247%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L96247%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L96246%_
                                                 (cons (let ((__tmp101875
                                                              (lambda (_%g9627196274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9627296277%_)
                        (cons _%g9627196274%_ _%g9627296277%_))))
                 (declare (not safe))
                 (__foldr1 __tmp101875 '() _%L96244%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L96246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp101876
                                  (lambda (_%g9626996280%_ _%g9627096283%_)
                                    (cons _%g9626996280%_ _%g9627096283%_))))
                             (declare (not safe))
                             (__foldr1 __tmp101876 '() _%L96244%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9616196240%_
                                             _%hd9614896198%_
                                             _%hd9614596188%_)
                                            (_%g9613696167%_
                                             _%g9613796171%_)))))))
                        (_%loop9615696220%_ _%target9615396214%_ '()))
                      (_%g9613696167%_ _%g9613796171%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9613696167%_
                                                     _%g9613796171%_))))
                                            (_%g9613696167%_
                                             _%g9613796171%_))))
                                    (_%g9613696167%_ _%g9613796171%_))))
                            (_%g9613696167%_ _%g9613796171%_))))
                    (_%g9613696167%_ _%g9613796171%_)))))
        (_%g9613596286%_ _%$stx96132%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx96291%_)
      (let* ((_%g9629596326%_
              (lambda (_%g9629696322%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9629696322%_)))
             (_%g9629496437%_
              (lambda (_%g9629696330%_)
                (if (gx#stx-pair? _%g9629696330%_)
                    (let ((_%e9630096333%_ (gx#syntax-e _%g9629696330%_)))
                      (let ((_%hd9630196337%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9630096333%_)))
                            (_%tl9630296340%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9630096333%_))))
                        (if (gx#stx-pair? _%tl9630296340%_)
                            (let ((_%e9630396343%_
                                   (gx#syntax-e _%tl9630296340%_)))
                              (let ((_%hd9630496347%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9630396343%_)))
                                    (_%tl9630596350%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9630396343%_))))
                                (if (gx#stx-pair? _%tl9630596350%_)
                                    (let ((_%e9630696353%_
                                           (gx#syntax-e _%tl9630596350%_)))
                                      (let ((_%hd9630796357%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9630696353%_)))
                                            (_%tl9630896360%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9630696353%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9630796357%_)
                                            (let ((_g101877_
                                                   (gx#syntax-split-splice
                                                    _%hd9630796357%_
                                                    '0)))
                                              (begin
                                                (let ((_g101878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g101877_)
                                                             (##values-length
                                                              _g101877_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g101878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g101878_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9630996363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g101877_
                                                          0)))
                                                      (_%tl9631196366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g101877_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9631196366%_)
                                                      (letrec ((_%loop9631296369%_
                                                                (lambda (_%hd9631096373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9631696376%_)
                          (if (gx#stx-pair? _%hd9631096373%_)
                              (let ((_%e9631396379%_
                                     (gx#syntax-e _%hd9631096373%_)))
                                (let ((_%lp-hd9631496383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9631396379%_)))
                                      (_%lp-tl9631596386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9631396379%_))))
                                  (_%loop9631296369%_
                                   _%lp-tl9631596386%_
                                   (cons _%lp-hd9631496383%_
                                         _%super9631696376%_))))
                              (let ((_%super9631796389%_
                                     (reverse _%super9631696376%_)))
                                (if (gx#stx-pair? _%tl9630896360%_)
                                    (let ((_%e9631896393%_
                                           (gx#syntax-e _%tl9630896360%_)))
                                      (let ((_%hd9631996397%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9631896393%_)))
                                            (_%tl9632096400%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9631896393%_))))
                                        (if (gx#stx-null? _%tl9632096400%_)
                                            ((lambda (_%L96403%_
                                                      _%L96405%_
                                                      _%L96406%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L96406%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L96406%_
                                                 (cons (let ((__tmp101879
                                                              (lambda (_%g9642896431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9642996434%_)
                        (cons _%g9642896431%_ _%g9642996434%_))))
                 (declare (not safe))
                 (__foldr1 __tmp101879 '() _%L96405%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L96403%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9631996397%_
                                             _%super9631796389%_
                                             _%hd9630496347%_)
                                            (_%g9629596326%_
                                             _%g9629696330%_))))
                                    (_%g9629596326%_ _%g9629696330%_)))))))
                (_%loop9631296369%_ _%target9630996363%_ '()))
              (_%g9629596326%_ _%g9629696330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9629596326%_
                                             _%g9629696330%_))))
                                    (_%g9629596326%_ _%g9629696330%_))))
                            (_%g9629596326%_ _%g9629696330%_))))
                    (_%g9629596326%_ _%g9629696330%_)))))
        (_%g9629496437%_ _%$stx96291%_)))))
