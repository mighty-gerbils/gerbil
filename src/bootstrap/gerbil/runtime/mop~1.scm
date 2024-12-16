(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx95910%_)
      (let* ((_%__stx102461102462%_ _%$stx95910%_)
             (_%g9591595944%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102461102462%_))))
        (let ((_%__kont102464102465%_
               (lambda (_%L96037%_ _%L96039%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96039%_ (cons _%L96037%_ '())))
                             (cons _%L96037%_ '())))))
              (_%__kont102466102467%_
               (lambda (_%L95981%_ _%L95983%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L95981%_ (cons _%L95981%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L95983%_
                                                           (cons _%L95981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L95981%_ '())))
                                   '()))))))
          (let ((_%__match102488102489%_
                 (lambda (_%e9591996007%_
                          _%hd9592096011%_
                          _%tl9592196014%_
                          _%e9592296017%_
                          _%hd9592396021%_
                          _%tl9592496024%_
                          _%e9592596027%_
                          _%hd9592696031%_
                          _%tl9592796034%_)
                   (let ((_%L96037%_ _%hd9592696031%_)
                         (_%L96039%_ _%hd9592396021%_))
                     (if (or (gx#identifier? _%L96037%_)
                             (gx#stx-fixnum? _%L96037%_))
                         (_%__kont102464102465%_ _%L96037%_ _%L96039%_)
                         (_%__kont102466102467%_
                          _%hd9592696031%_
                          _%hd9592396021%_))))))
            (if (gx#stx-pair? _%__stx102461102462%_)
                (let ((_%e9591996007%_ (gx#syntax-e _%__stx102461102462%_)))
                  (let ((_%tl9592196014%_
                         (let () (declare (not safe)) (##cdr _%e9591996007%_)))
                        (_%hd9592096011%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9591996007%_))))
                    (if (gx#stx-pair? _%tl9592196014%_)
                        (let ((_%e9592296017%_ (gx#syntax-e _%tl9592196014%_)))
                          (let ((_%tl9592496024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9592296017%_)))
                                (_%hd9592396021%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9592296017%_))))
                            (if (gx#stx-pair? _%tl9592496024%_)
                                (let ((_%e9592596027%_
                                       (gx#syntax-e _%tl9592496024%_)))
                                  (let ((_%tl9592796034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9592596027%_)))
                                        (_%hd9592696031%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9592596027%_))))
                                    (if (gx#stx-null? _%tl9592796034%_)
                                        (_%__match102488102489%_
                                         _%e9591996007%_
                                         _%hd9592096011%_
                                         _%tl9592196014%_
                                         _%e9592296017%_
                                         _%hd9592396021%_
                                         _%tl9592496024%_
                                         _%e9592596027%_
                                         _%hd9592696031%_
                                         _%tl9592796034%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9591595944%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9591595944%_)))))
                        (let () (declare (not safe)) (_%g9591595944%_)))))
                (let () (declare (not safe)) (_%g9591595944%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx96062%_)
      (let* ((_%__stx102511102512%_ _%$stx96062%_)
             (_%g9606796096%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx102511102512%_))))
        (let ((_%__kont102514102515%_
               (lambda (_%L96188%_ _%L96190%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L96190%_ (cons _%L96188%_ '())))
                             (cons '0 '())))))
              (_%__kont102516102517%_
               (lambda (_%L96133%_ _%L96135%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L96133%_ (cons _%L96133%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L96135%_
                                                           (cons _%L96133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match102538102539%_
                 (lambda (_%e9607196158%_
                          _%hd9607296162%_
                          _%tl9607396165%_
                          _%e9607496168%_
                          _%hd9607596172%_
                          _%tl9607696175%_
                          _%e9607796178%_
                          _%hd9607896182%_
                          _%tl9607996185%_)
                   (let ((_%L96188%_ _%hd9607896182%_)
                         (_%L96190%_ _%hd9607596172%_))
                     (if (or (gx#identifier? _%L96188%_)
                             (gx#stx-fixnum? _%L96188%_))
                         (_%__kont102514102515%_ _%L96188%_ _%L96190%_)
                         (_%__kont102516102517%_
                          _%hd9607896182%_
                          _%hd9607596172%_))))))
            (if (gx#stx-pair? _%__stx102511102512%_)
                (let ((_%e9607196158%_ (gx#syntax-e _%__stx102511102512%_)))
                  (let ((_%tl9607396165%_
                         (let () (declare (not safe)) (##cdr _%e9607196158%_)))
                        (_%hd9607296162%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9607196158%_))))
                    (if (gx#stx-pair? _%tl9607396165%_)
                        (let ((_%e9607496168%_ (gx#syntax-e _%tl9607396165%_)))
                          (let ((_%tl9607696175%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9607496168%_)))
                                (_%hd9607596172%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9607496168%_))))
                            (if (gx#stx-pair? _%tl9607696175%_)
                                (let ((_%e9607796178%_
                                       (gx#syntax-e _%tl9607696175%_)))
                                  (let ((_%tl9607996185%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9607796178%_)))
                                        (_%hd9607896182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9607796178%_))))
                                    (if (gx#stx-null? _%tl9607996185%_)
                                        (_%__match102538102539%_
                                         _%e9607196158%_
                                         _%hd9607296162%_
                                         _%tl9607396165%_
                                         _%e9607496168%_
                                         _%hd9607596172%_
                                         _%tl9607696175%_
                                         _%e9607796178%_
                                         _%hd9607896182%_
                                         _%tl9607996185%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9606796096%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9606796096%_)))))
                        (let () (declare (not safe)) (_%g9606796096%_)))))
                (let () (declare (not safe)) (_%g9606796096%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx96213%_)
      (let* ((_%g9621696237%_
              (lambda (_%g9621796233%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9621796233%_)))
             (_%g9621596465%_
              (lambda (_%g9621796241%_)
                (if (gx#stx-pair? _%g9621796241%_)
                    (let ((_%e9622096244%_ (gx#syntax-e _%g9621796241%_)))
                      (let ((_%hd9622196248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9622096244%_)))
                            (_%tl9622296251%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9622096244%_))))
                        (if (gx#stx-pair? _%tl9622296251%_)
                            (let ((_%e9622396254%_
                                   (gx#syntax-e _%tl9622296251%_)))
                              (let ((_%hd9622496258%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9622396254%_)))
                                    (_%tl9622596261%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9622396254%_))))
                                (if (gx#stx-pair? _%hd9622496258%_)
                                    (let ((_%e9622696264%_
                                           (gx#syntax-e _%hd9622496258%_)))
                                      (let ((_%hd9622796268%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9622696264%_)))
                                            (_%tl9622896271%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9622696264%_))))
                                        (if (gx#stx-pair? _%tl9622896271%_)
                                            (let ((_%e9622996274%_
                                                   (gx#syntax-e
                                                    _%tl9622896271%_)))
                                              (let ((_%hd9623096278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9622996274%_)))
                                                    (_%tl9623196281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9622996274%_))))
                                                (if (gx#stx-null?
                                                     _%tl9623196281%_)
                                                    (if (gx#stx-null?
                                                         _%tl9622596261%_)
                                                        ((lambda (_%L96284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L96286%_)
                   (let* ((_%g9630496312%_
                           (lambda (_%g9630596308%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9630596308%_)))
                          (_%g9630396461%_
                           (lambda (_%g9630596316%_)
                             ((lambda (_%L96319%_)
                                (let* ((_%g9633196339%_
                                        (lambda (_%g9633296335%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9633296335%_)))
                                       (_%g9633096457%_
                                        (lambda (_%g9633296343%_)
                                          ((lambda (_%L96346%_)
                                             (let* ((_%g9635996367%_
                                                     (lambda (_%g9636096363%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9636096363%_)))
                                                    (_%g9635896453%_
                                                     (lambda (_%g9636096371%_)
                                                       ((lambda (_%L96374%_)
                                                          (let* ((_%g9638796395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9638896391%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9638896391%_)))
                         (_%g9638696449%_
                          (lambda (_%g9638896399%_)
                            ((lambda (_%L96402%_)
                               (let* ((_%g9641596423%_
                                       (lambda (_%g9641696419%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9641696419%_)))
                                      (_%g9641496445%_
                                       (lambda (_%g9641696427%_)
                                         ((lambda (_%L96430%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L96346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L96319%_
                                                          (cons _%L96286%_
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
                                          (cons _%L96284%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L96286%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L96374%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L96319%_
                                                                (cons _%L96286%_
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
                                                (cons _%L96284%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L96286%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L96402%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L96319%_ (cons _%L96286%_ (cons '#t '()))))
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
                                                            (cons _%L96284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L96286%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L96430%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L96319%_
                                    (cons _%L96286%_ (cons '#f '()))))
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
                          (cons _%L96284%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L96286%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9641696427%_))))
                                 (_%g9641496445%_
                                  (gx#stx-identifier
                                   _%L96286%_
                                   '"&"
                                   _%L96402%_))))
                             _%g9638896399%_))))
                    (_%g9638696449%_
                     (gx#stx-identifier _%L96286%_ _%L96346%_ '"-set!"))))
                _%g9636096371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9635896453%_
                                                (gx#stx-identifier
                                                 _%L96286%_
                                                 '"&"
                                                 _%L96346%_))))
                                           _%g9633296343%_))))
                                  (_%g9633096457%_
                                   (gx#stx-identifier
                                    _%L96286%_
                                    '"class-type-"
                                    _%L96286%_))))
                              _%g9630596316%_))))
                     (_%g9630396461%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9623096278%_
                 _%hd9622796268%_)
                (_%g9621696237%_ _%g9621796241%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9621696237%_
                                                     _%g9621796241%_))))
                                            (_%g9621696237%_
                                             _%g9621796241%_))))
                                    (_%g9621696237%_ _%g9621796241%_))))
                            (_%g9621696237%_ _%g9621796241%_))))
                    (_%g9621696237%_ _%g9621796241%_)))))
        (_%g9621596465%_ _%stx96213%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx96469%_)
      (let* ((_%g9647396502%_
              (lambda (_%g9647496498%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9647496498%_)))
             (_%g9647296602%_
              (lambda (_%g9647496506%_)
                (if (gx#stx-pair? _%g9647496506%_)
                    (let ((_%e9647796509%_ (gx#syntax-e _%g9647496506%_)))
                      (let ((_%hd9647896513%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9647796509%_)))
                            (_%tl9647996516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9647796509%_))))
                        (if (gx#stx-pair/null? _%tl9647996516%_)
                            (let ((_g102750_
                                   (gx#syntax-split-splice
                                    _%tl9647996516%_
                                    '0)))
                              (begin
                                (let ((_g102751_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102750_)
                                             (##values-length _g102750_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102751_ 2)))
                                      (error "Context expects 2 values"
                                             _g102751_)))
                                (let ((_%target9648096519%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102750_ 0)))
                                      (_%tl9648296522%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102750_ 1))))
                                  (if (gx#stx-null? _%tl9648296522%_)
                                      (letrec ((_%loop9648396525%_
                                                (lambda (_%hd9648196529%_
                                                         _%field9648796532%_
                                                         _%slot9648896534%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9648196529%_)
                                                      (let ((_%e9648496537%_
                                                             (gx#syntax-e
                                                              _%hd9648196529%_)))
                                                        (let ((_%lp-hd9648596541%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9648496537%_)))
                      (_%lp-tl9648696544%_
                       (let () (declare (not safe)) (##cdr _%e9648496537%_))))
                  (if (gx#stx-pair? _%lp-hd9648596541%_)
                      (let ((_%e9649196547%_
                             (gx#syntax-e _%lp-hd9648596541%_)))
                        (let ((_%hd9649296551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9649196547%_)))
                              (_%tl9649396554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9649196547%_))))
                          (if (gx#stx-pair? _%tl9649396554%_)
                              (let ((_%e9649496557%_
                                     (gx#syntax-e _%tl9649396554%_)))
                                (let ((_%hd9649596561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9649496557%_)))
                                      (_%tl9649696564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9649496557%_))))
                                  (if (gx#stx-null? _%tl9649696564%_)
                                      (_%loop9648396525%_
                                       _%lp-tl9648696544%_
                                       (cons _%hd9649596561%_
                                             _%field9648796532%_)
                                       (cons _%hd9649296551%_
                                             _%slot9648896534%_))
                                      (_%g9647396502%_ _%g9647496506%_))))
                              (_%g9647396502%_ _%g9647496506%_))))
                      (_%g9647396502%_ _%g9647496506%_))))
              (let ((_%field9648996567%_ (reverse _%field9648796532%_))
                    (_%slot9649096570%_ (reverse _%slot9648896534%_)))
                ((lambda (_%L96573%_ _%L96575%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96573%_
                            _%L96575%_)
                           (let ((__tmp102752
                                  (lambda (_%g9659096594%_
                                           _%g9659196597%_
                                           _%g9659296599%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9659196597%_
                                                            (cons _%g9659096594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9659296599%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102752
                              '()
                              _%L96573%_
                              _%L96575%_)))))
                 _%field9648996567%_
                 _%slot9649096570%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9648396525%_
                                         _%target9648096519%_
                                         '()
                                         '()))
                                      (_%g9647396502%_ _%g9647496506%_)))))
                            (_%g9647396502%_ _%g9647496506%_))))
                    (_%g9647396502%_ _%g9647496506%_)))))
        (_%g9647296602%_ _%$stx96469%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx96607%_)
      (let* ((_%g9661196645%_
              (lambda (_%g9661296641%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9661296641%_)))
             (_%g9661096756%_
              (lambda (_%g9661296649%_)
                (if (gx#stx-pair? _%g9661296649%_)
                    (let ((_%e9661996652%_ (gx#syntax-e _%g9661296649%_)))
                      (let ((_%hd9662096656%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9661996652%_)))
                            (_%tl9662196659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9661996652%_))))
                        (if (gx#stx-pair? _%tl9662196659%_)
                            (let ((_%e9662296662%_
                                   (gx#syntax-e _%tl9662196659%_)))
                              (let ((_%hd9662396666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9662296662%_)))
                                    (_%tl9662496669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9662296662%_))))
                                (if (gx#stx-pair? _%tl9662496669%_)
                                    (let ((_%e9662596672%_
                                           (gx#syntax-e _%tl9662496669%_)))
                                      (let ((_%hd9662696676%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9662596672%_)))
                                            (_%tl9662796679%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9662596672%_))))
                                        (if (gx#stx-pair? _%tl9662796679%_)
                                            (let ((_%e9662896682%_
                                                   (gx#syntax-e
                                                    _%tl9662796679%_)))
                                              (let ((_%hd9662996686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9662896682%_)))
                                                    (_%tl9663096689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9662896682%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9663096689%_)
                                                    (let ((_%e9663196692%_
                                                           (gx#syntax-e
                                                            _%tl9663096689%_)))
                                                      (let ((_%hd9663296696%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9663196692%_)))
                    (_%tl9663396699%_
                     (let () (declare (not safe)) (##cdr _%e9663196692%_))))
                (if (gx#stx-pair? _%tl9663396699%_)
                    (let ((_%e9663496702%_ (gx#syntax-e _%tl9663396699%_)))
                      (let ((_%hd9663596706%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9663496702%_)))
                            (_%tl9663696709%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9663496702%_))))
                        (if (gx#stx-pair? _%tl9663696709%_)
                            (let ((_%e9663796712%_
                                   (gx#syntax-e _%tl9663696709%_)))
                              (let ((_%hd9663896716%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9663796712%_)))
                                    (_%tl9663996719%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9663796712%_))))
                                (if (gx#stx-null? _%tl9663996719%_)
                                    ((lambda (_%L96722%_
                                              _%L96724%_
                                              _%L96725%_
                                              _%L96726%_
                                              _%L96727%_
                                              _%L96728%_)
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
                                         (cons _%L96728%_ '()))
                                   (cons _%L96727%_ (cons '#f '()))))
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
                               (cons _%L96728%_
                                     (cons 'slot: (cons _%L96727%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L96728%_ '()))
                                         (cons (cons _%L96726%_
                                                     (cons _%L96728%_
                                                           (cons _%L96727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L96728%_ '()))
                                               (cons (cons _%L96725%_
                                                           (cons _%L96728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96727%_
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
                                           (cons _%L96728%_ '()))
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
                                                     (cons (cons _%L96724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L96728%_
                               (cons _%L96727%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L96722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L96728%_
                                     (cons _%L96727%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9663896716%_
                                     _%hd9663596706%_
                                     _%hd9663296696%_
                                     _%hd9662996686%_
                                     _%hd9662696676%_
                                     _%hd9662396666%_)
                                    (_%g9661196645%_ _%g9661296649%_))))
                            (_%g9661196645%_ _%g9661296649%_))))
                    (_%g9661196645%_ _%g9661296649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9661196645%_
                                                     _%g9661296649%_))))
                                            (_%g9661196645%_
                                             _%g9661296649%_))))
                                    (_%g9661196645%_ _%g9661296649%_))))
                            (_%g9661196645%_ _%g9661296649%_))))
                    (_%g9661196645%_ _%g9661296649%_)))))
        (_%g9661096756%_ _%$stx96607%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx96760%_)
      (let* ((_%g9676496790%_
              (lambda (_%g9676596786%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9676596786%_)))
             (_%g9676396873%_
              (lambda (_%g9676596794%_)
                (if (gx#stx-pair? _%g9676596794%_)
                    (let ((_%e9677096797%_ (gx#syntax-e _%g9676596794%_)))
                      (let ((_%hd9677196801%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9677096797%_)))
                            (_%tl9677296804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9677096797%_))))
                        (if (gx#stx-pair? _%tl9677296804%_)
                            (let ((_%e9677396807%_
                                   (gx#syntax-e _%tl9677296804%_)))
                              (let ((_%hd9677496811%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9677396807%_)))
                                    (_%tl9677596814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9677396807%_))))
                                (if (gx#stx-pair? _%tl9677596814%_)
                                    (let ((_%e9677696817%_
                                           (gx#syntax-e _%tl9677596814%_)))
                                      (let ((_%hd9677796821%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9677696817%_)))
                                            (_%tl9677896824%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9677696817%_))))
                                        (if (gx#stx-pair? _%tl9677896824%_)
                                            (let ((_%e9677996827%_
                                                   (gx#syntax-e
                                                    _%tl9677896824%_)))
                                              (let ((_%hd9678096831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9677996827%_)))
                                                    (_%tl9678196834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9677996827%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9678196834%_)
                                                    (let ((_%e9678296837%_
                                                           (gx#syntax-e
                                                            _%tl9678196834%_)))
                                                      (let ((_%hd9678396841%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9678296837%_)))
                    (_%tl9678496844%_
                     (let () (declare (not safe)) (##cdr _%e9678296837%_))))
                (if (gx#stx-null? _%tl9678496844%_)
                    ((lambda (_%L96847%_ _%L96849%_ _%L96850%_ _%L96851%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L96851%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L96850%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L96849%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L96847%_
                                     (cons _%L96851%_ (cons _%L96850%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9678396841%_
                     _%hd9678096831%_
                     _%hd9677796821%_
                     _%hd9677496811%_)
                    (_%g9676496790%_ _%g9676596794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9676496790%_
                                                     _%g9676596794%_))))
                                            (_%g9676496790%_
                                             _%g9676596794%_))))
                                    (_%g9676496790%_ _%g9676596794%_))))
                            (_%g9676496790%_ _%g9676596794%_))))
                    (_%g9676496790%_ _%g9676596794%_)))))
        (_%g9676396873%_ _%$stx96760%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx96877%_)
      (let* ((_%g9688196910%_
              (lambda (_%g9688296906%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9688296906%_)))
             (_%g9688097010%_
              (lambda (_%g9688296914%_)
                (if (gx#stx-pair? _%g9688296914%_)
                    (let ((_%e9688596917%_ (gx#syntax-e _%g9688296914%_)))
                      (let ((_%hd9688696921%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9688596917%_)))
                            (_%tl9688796924%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9688596917%_))))
                        (if (gx#stx-pair/null? _%tl9688796924%_)
                            (let ((_g102753_
                                   (gx#syntax-split-splice
                                    _%tl9688796924%_
                                    '0)))
                              (begin
                                (let ((_g102754_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g102753_)
                                             (##values-length _g102753_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g102754_ 2)))
                                      (error "Context expects 2 values"
                                             _g102754_)))
                                (let ((_%target9688896927%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102753_ 0)))
                                      (_%tl9689096930%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g102753_ 1))))
                                  (if (gx#stx-null? _%tl9689096930%_)
                                      (letrec ((_%loop9689196933%_
                                                (lambda (_%hd9688996937%_
                                                         _%name9689596940%_
                                                         _%t9689696942%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9688996937%_)
                                                      (let ((_%e9689296945%_
                                                             (gx#syntax-e
                                                              _%hd9688996937%_)))
                                                        (let ((_%lp-hd9689396949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9689296945%_)))
                      (_%lp-tl9689496952%_
                       (let () (declare (not safe)) (##cdr _%e9689296945%_))))
                  (if (gx#stx-pair? _%lp-hd9689396949%_)
                      (let ((_%e9689996955%_
                             (gx#syntax-e _%lp-hd9689396949%_)))
                        (let ((_%hd9690096959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9689996955%_)))
                              (_%tl9690196962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9689996955%_))))
                          (if (gx#stx-pair? _%tl9690196962%_)
                              (let ((_%e9690296965%_
                                     (gx#syntax-e _%tl9690196962%_)))
                                (let ((_%hd9690396969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9690296965%_)))
                                      (_%tl9690496972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9690296965%_))))
                                  (if (gx#stx-null? _%tl9690496972%_)
                                      (_%loop9689196933%_
                                       _%lp-tl9689496952%_
                                       (cons _%hd9690396969%_
                                             _%name9689596940%_)
                                       (cons _%hd9690096959%_ _%t9689696942%_))
                                      (_%g9688196910%_ _%g9688296914%_))))
                              (_%g9688196910%_ _%g9688296914%_))))
                      (_%g9688196910%_ _%g9688296914%_))))
              (let ((_%name9689796975%_ (reverse _%name9689596940%_))
                    (_%t9689896978%_ (reverse _%t9689696942%_)))
                ((lambda (_%L96981%_ _%L96983%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L96981%_
                            _%L96983%_)
                           (let ((__tmp102755
                                  (lambda (_%g9699897002%_
                                           _%g9699997005%_
                                           _%g9700097007%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9699997005%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9699897002%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9700097007%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp102755
                              '()
                              _%L96981%_
                              _%L96983%_)))))
                 _%name9689796975%_
                 _%t9689896978%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9689196933%_
                                         _%target9688896927%_
                                         '()
                                         '()))
                                      (_%g9688196910%_ _%g9688296914%_)))))
                            (_%g9688196910%_ _%g9688296914%_))))
                    (_%g9688196910%_ _%g9688296914%_)))))
        (_%g9688097010%_ _%$stx96877%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx97015%_)
      (let* ((_%g9701997050%_
              (lambda (_%g9702097046%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9702097046%_)))
             (_%g9701897169%_
              (lambda (_%g9702097054%_)
                (if (gx#stx-pair? _%g9702097054%_)
                    (let ((_%e9702497057%_ (gx#syntax-e _%g9702097054%_)))
                      (let ((_%hd9702597061%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9702497057%_)))
                            (_%tl9702697064%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9702497057%_))))
                        (if (gx#stx-pair? _%tl9702697064%_)
                            (let ((_%e9702797067%_
                                   (gx#syntax-e _%tl9702697064%_)))
                              (let ((_%hd9702897071%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9702797067%_)))
                                    (_%tl9702997074%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9702797067%_))))
                                (if (gx#stx-pair? _%tl9702997074%_)
                                    (let ((_%e9703097077%_
                                           (gx#syntax-e _%tl9702997074%_)))
                                      (let ((_%hd9703197081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9703097077%_)))
                                            (_%tl9703297084%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9703097077%_))))
                                        (if (gx#stx-pair? _%tl9703297084%_)
                                            (let ((_%e9703397087%_
                                                   (gx#syntax-e
                                                    _%tl9703297084%_)))
                                              (let ((_%hd9703497091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9703397087%_)))
                                                    (_%tl9703597094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9703397087%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9703497091%_)
                                                    (let ((_g102756_
                                                           (gx#syntax-split-splice
                                                            _%hd9703497091%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102757_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102756_)
                             (##values-length _g102756_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102757_ 2)))
                      (error "Context expects 2 values" _g102757_)))
                (let ((_%target9703697097%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102756_ 0)))
                      (_%tl9703897100%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102756_ 1))))
                  (if (gx#stx-null? _%tl9703897100%_)
                      (letrec ((_%loop9703997103%_
                                (lambda (_%hd9703797107%_ _%super9704397110%_)
                                  (if (gx#stx-pair? _%hd9703797107%_)
                                      (let ((_%e9704097113%_
                                             (gx#syntax-e _%hd9703797107%_)))
                                        (let ((_%lp-hd9704197117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9704097113%_)))
                                              (_%lp-tl9704297120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9704097113%_))))
                                          (_%loop9703997103%_
                                           _%lp-tl9704297120%_
                                           (cons _%lp-hd9704197117%_
                                                 _%super9704397110%_))))
                                      (let ((_%super9704497123%_
                                             (reverse _%super9704397110%_)))
                                        (if (gx#stx-null? _%tl9703597094%_)
                                            ((lambda (_%L97127%_
                                                      _%L97129%_
                                                      _%L97130%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97130%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97129%_
                                                 (cons (let ((__tmp102758
                                                              (lambda (_%g9715497157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9715597160%_)
                        (cons _%g9715497157%_ _%g9715597160%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102758 '() _%L97127%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L97129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp102759
                                  (lambda (_%g9715297163%_ _%g9715397166%_)
                                    (cons _%g9715297163%_ _%g9715397166%_))))
                             (declare (not safe))
                             (__foldr1 __tmp102759 '() _%L97127%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9704497123%_
                                             _%hd9703197081%_
                                             _%hd9702897071%_)
                                            (_%g9701997050%_
                                             _%g9702097054%_)))))))
                        (_%loop9703997103%_ _%target9703697097%_ '()))
                      (_%g9701997050%_ _%g9702097054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9701997050%_
                                                     _%g9702097054%_))))
                                            (_%g9701997050%_
                                             _%g9702097054%_))))
                                    (_%g9701997050%_ _%g9702097054%_))))
                            (_%g9701997050%_ _%g9702097054%_))))
                    (_%g9701997050%_ _%g9702097054%_)))))
        (_%g9701897169%_ _%$stx97015%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx97174%_)
      (let* ((_%g9717897209%_
              (lambda (_%g9717997205%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9717997205%_)))
             (_%g9717797320%_
              (lambda (_%g9717997213%_)
                (if (gx#stx-pair? _%g9717997213%_)
                    (let ((_%e9718397216%_ (gx#syntax-e _%g9717997213%_)))
                      (let ((_%hd9718497220%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9718397216%_)))
                            (_%tl9718597223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9718397216%_))))
                        (if (gx#stx-pair? _%tl9718597223%_)
                            (let ((_%e9718697226%_
                                   (gx#syntax-e _%tl9718597223%_)))
                              (let ((_%hd9718797230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9718697226%_)))
                                    (_%tl9718897233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9718697226%_))))
                                (if (gx#stx-pair? _%tl9718897233%_)
                                    (let ((_%e9718997236%_
                                           (gx#syntax-e _%tl9718897233%_)))
                                      (let ((_%hd9719097240%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9718997236%_)))
                                            (_%tl9719197243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9718997236%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9719097240%_)
                                            (let ((_g102760_
                                                   (gx#syntax-split-splice
                                                    _%hd9719097240%_
                                                    '0)))
                                              (begin
                                                (let ((_g102761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g102760_)
                                                             (##values-length
                                                              _g102760_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g102761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g102761_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9719297246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102760_
                                                          0)))
                                                      (_%tl9719497249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g102760_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9719497249%_)
                                                      (letrec ((_%loop9719597252%_
                                                                (lambda (_%hd9719397256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9719997259%_)
                          (if (gx#stx-pair? _%hd9719397256%_)
                              (let ((_%e9719697262%_
                                     (gx#syntax-e _%hd9719397256%_)))
                                (let ((_%lp-hd9719797266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9719697262%_)))
                                      (_%lp-tl9719897269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9719697262%_))))
                                  (_%loop9719597252%_
                                   _%lp-tl9719897269%_
                                   (cons _%lp-hd9719797266%_
                                         _%super9719997259%_))))
                              (let ((_%super9720097272%_
                                     (reverse _%super9719997259%_)))
                                (if (gx#stx-pair? _%tl9719197243%_)
                                    (let ((_%e9720197276%_
                                           (gx#syntax-e _%tl9719197243%_)))
                                      (let ((_%hd9720297280%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9720197276%_)))
                                            (_%tl9720397283%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9720197276%_))))
                                        (if (gx#stx-null? _%tl9720397283%_)
                                            ((lambda (_%L97286%_
                                                      _%L97288%_
                                                      _%L97289%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L97289%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L97289%_
                                                 (cons (let ((__tmp102762
                                                              (lambda (_%g9731197314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9731297317%_)
                        (cons _%g9731197314%_ _%g9731297317%_))))
                 (declare (not safe))
                 (__foldr1 __tmp102762 '() _%L97288%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L97286%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9720297280%_
                                             _%super9720097272%_
                                             _%hd9718797230%_)
                                            (_%g9717897209%_
                                             _%g9717997213%_))))
                                    (_%g9717897209%_ _%g9717997213%_)))))))
                (_%loop9719597252%_ _%target9719297246%_ '()))
              (_%g9717897209%_ _%g9717997213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9717897209%_
                                             _%g9717997213%_))))
                                    (_%g9717897209%_ _%g9717997213%_))))
                            (_%g9717897209%_ _%g9717997213%_))))
                    (_%g9717897209%_ _%g9717997213%_)))))
        (_%g9717797320%_ _%$stx97174%_)))))
