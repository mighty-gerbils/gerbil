(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41883%_)
      (let* ((_%__stx4453744538%_ _%$stx41883%_)
             (_%g4188841907%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4453744538%_))))
        (let ((_%__kont4454044541%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4454244543%_
               (lambda (_%L41934%_ _%L41936%_ _%L41937%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41936%_
                                   (cons (cons _%L41937%_ _%L41934%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4453744538%_)
              (let ((_%e4189241959%_ (gx#syntax-e _%__stx4453744538%_)))
                (let ((_%tl4189041966%_
                       (let () (declare (not safe)) (##cdr _%e4189241959%_)))
                      (_%hd4189141963%_
                       (let () (declare (not safe)) (##car _%e4189241959%_))))
                  (if (gx#stx-null? _%tl4189041966%_)
                      (_%__kont4454044541%_)
                      (if (gx#stx-pair? _%tl4189041966%_)
                          (let ((_%e4190141924%_
                                 (gx#syntax-e _%tl4189041966%_)))
                            (let ((_%tl4189941931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4190141924%_)))
                                  (_%hd4190041928%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4190141924%_))))
                              (_%__kont4454244543%_
                               _%tl4189941931%_
                               _%hd4190041928%_
                               _%hd4189141963%_)))
                          (let () (declare (not safe)) (_%g4188841907%_))))))
              (let () (declare (not safe)) (_%g4188841907%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41977%_)
      (let* ((_%__stx4456744568%_ _%$stx41977%_)
             (_%g4198242022%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4456744568%_))))
        (let ((_%__kont4457044571%_
               (lambda (_%L42160%_ _%L42162%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42162%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L42160%_ '()))
                                   '())))))
              (_%__kont4457244573%_
               (lambda (_%L42089%_ _%L42091%_ _%L42092%_ _%L42093%_)
                 (cons _%L42093%_
                       (cons _%L42092%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42091%_
                                               (foldr (lambda (_%g4211442117%_
                                                               _%g4211542120%_)
                                                        (cons _%g4211442117%_
                                                              _%g4211542120%_))
                                                      '()
                                                      _%L42089%_)))
                                   '()))))))
          (let* ((_%__match4462244623%_
                  (lambda (_%e4200142029%_
                           _%hd4200042033%_
                           _%tl4199942036%_
                           _%e4200442039%_
                           _%hd4200342043%_
                           _%tl4200242046%_
                           _%e4200742049%_
                           _%hd4200642053%_
                           _%tl4200542056%_
                           _%__splice4457444575%_
                           _%target4200842059%_
                           _%tl4201042062%_)
                    (letrec ((_%loop4201142065%_
                              (lambda (_%hd4200942069%_ _%body4201542072%_)
                                (if (gx#stx-pair? _%hd4200942069%_)
                                    (let ((_%e4201242075%_
                                           (gx#syntax-e _%hd4200942069%_)))
                                      (let ((_%lp-tl4201442082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4201242075%_)))
                                            (_%lp-hd4201342079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4201242075%_))))
                                        (_%loop4201142065%_
                                         _%lp-tl4201442082%_
                                         (cons _%lp-hd4201342079%_
                                               _%body4201542072%_))))
                                    (let ((_%body4201642085%_
                                           (reverse _%body4201542072%_)))
                                      (let ((_%L42089%_ _%body4201642085%_)
                                            (_%L42091%_ _%tl4200542056%_)
                                            (_%L42092%_ _%hd4200642053%_)
                                            (_%L42093%_ _%hd4200042033%_))
                                        (if (gx#identifier? _%L42092%_)
                                            (_%__kont4457244573%_
                                             _%L42089%_
                                             _%L42091%_
                                             _%L42092%_
                                             _%L42093%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4198242022%_)))))))))
                      (_%loop4201142065%_ _%target4200842059%_ '()))))
                 (_%__match4459644597%_
                  (lambda (_%e4198842130%_
                           _%hd4198742134%_
                           _%tl4198642137%_
                           _%e4199142140%_
                           _%hd4199042144%_
                           _%tl4198942147%_
                           _%e4199442150%_
                           _%hd4199342154%_
                           _%tl4199242157%_)
                    (let ((_%L42160%_ _%hd4199342154%_)
                          (_%L42162%_ _%hd4199042144%_))
                      (if (gx#identifier? _%L42162%_)
                          (_%__kont4457044571%_ _%L42160%_ _%L42162%_)
                          (if (gx#stx-pair? _%hd4199042144%_)
                              (let ((_%e4200742049%_
                                     (gx#syntax-e _%hd4199042144%_)))
                                (let ((_%tl4200542056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4200742049%_)))
                                      (_%hd4200642053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4200742049%_))))
                                  (if (gx#stx-pair/null? _%tl4198942147%_)
                                      (let ((_%__splice4457444575%_
                                             (gx#syntax-split-splice
                                              _%tl4198942147%_
                                              '0)))
                                        (let ((_%tl4201042062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4457444575%_
                                                  '1)))
                                              (_%target4200842059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4457444575%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4201042062%_)
                                              (_%__match4462244623%_
                                               _%e4198842130%_
                                               _%hd4198742134%_
                                               _%tl4198642137%_
                                               _%e4199142140%_
                                               _%hd4199042144%_
                                               _%tl4198942147%_
                                               _%e4200742049%_
                                               _%hd4200642053%_
                                               _%tl4200542056%_
                                               _%__splice4457444575%_
                                               _%target4200842059%_
                                               _%tl4201042062%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4198242022%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4198242022%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4198242022%_))))))))
            (if (gx#stx-pair? _%__stx4456744568%_)
                (let ((_%e4198842130%_ (gx#syntax-e _%__stx4456744568%_)))
                  (let ((_%tl4198642137%_
                         (let () (declare (not safe)) (##cdr _%e4198842130%_)))
                        (_%hd4198742134%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4198842130%_))))
                    (if (gx#stx-pair? _%tl4198642137%_)
                        (let ((_%e4199142140%_ (gx#syntax-e _%tl4198642137%_)))
                          (let ((_%tl4198942147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4199142140%_)))
                                (_%hd4199042144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4199142140%_))))
                            (if (gx#stx-pair? _%tl4198942147%_)
                                (let ((_%e4199442150%_
                                       (gx#syntax-e _%tl4198942147%_)))
                                  (let ((_%tl4199242157%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4199442150%_)))
                                        (_%hd4199342154%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4199442150%_))))
                                    (if (gx#stx-null? _%tl4199242157%_)
                                        (_%__match4459644597%_
                                         _%e4198842130%_
                                         _%hd4198742134%_
                                         _%tl4198642137%_
                                         _%e4199142140%_
                                         _%hd4199042144%_
                                         _%tl4198942147%_
                                         _%e4199442150%_
                                         _%hd4199342154%_
                                         _%tl4199242157%_)
                                        (if (gx#stx-pair? _%hd4199042144%_)
                                            (let ((_%e4200742049%_
                                                   (gx#syntax-e
                                                    _%hd4199042144%_)))
                                              (let ((_%tl4200542056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4200742049%_)))
                                                    (_%hd4200642053%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4200742049%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4198942147%_)
                                                    (let ((_%__splice4457444575%_
                                                           (gx#syntax-split-splice
                                                            _%tl4198942147%_
                                                            '0)))
                                                      (let ((_%tl4201042062%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4457444575%_ '1)))
                    (_%target4200842059%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4457444575%_ '0))))
                (if (gx#stx-null? _%tl4201042062%_)
                    (_%__match4462244623%_
                     _%e4198842130%_
                     _%hd4198742134%_
                     _%tl4198642137%_
                     _%e4199142140%_
                     _%hd4199042144%_
                     _%tl4198942147%_
                     _%e4200742049%_
                     _%hd4200642053%_
                     _%tl4200542056%_
                     _%__splice4457444575%_
                     _%target4200842059%_
                     _%tl4201042062%_)
                    (let () (declare (not safe)) (_%g4198242022%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4198242022%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4198242022%_))))))
                                (if (gx#stx-pair? _%hd4199042144%_)
                                    (let ((_%e4200742049%_
                                           (gx#syntax-e _%hd4199042144%_)))
                                      (let ((_%tl4200542056%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4200742049%_)))
                                            (_%hd4200642053%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4200742049%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4198942147%_)
                                            (let ((_%__splice4457444575%_
                                                   (gx#syntax-split-splice
                                                    _%tl4198942147%_
                                                    '0)))
                                              (let ((_%tl4201042062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4457444575%_
                                                        '1)))
                                                    (_%target4200842059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4457444575%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4201042062%_)
                                                    (_%__match4462244623%_
                                                     _%e4198842130%_
                                                     _%hd4198742134%_
                                                     _%tl4198642137%_
                                                     _%e4199142140%_
                                                     _%hd4199042144%_
                                                     _%tl4198942147%_
                                                     _%e4200742049%_
                                                     _%hd4200642053%_
                                                     _%tl4200542056%_
                                                     _%__splice4457444575%_
                                                     _%target4200842059%_
                                                     _%tl4201042062%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4198242022%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4198242022%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4198242022%_))))))
                        (let () (declare (not safe)) (_%g4198242022%_)))))
                (let () (declare (not safe)) (_%g4198242022%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42182%_)
      (let* ((_%__stx4462544626%_ _%$stx42182%_)
             (_%g4218742227%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4462544626%_))))
        (let ((_%__kont4462844629%_
               (lambda (_%L42365%_ _%L42367%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42367%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42365%_ '()))
                                   '())))))
              (_%__kont4463044631%_
               (lambda (_%L42294%_ _%L42296%_ _%L42297%_ _%L42298%_)
                 (cons _%L42298%_
                       (cons _%L42297%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42296%_
                                               (foldr (lambda (_%g4231942322%_
                                                               _%g4232042325%_)
                                                        (cons _%g4231942322%_
                                                              _%g4232042325%_))
                                                      '()
                                                      _%L42294%_)))
                                   '()))))))
          (let* ((_%__match4468044681%_
                  (lambda (_%e4220642234%_
                           _%hd4220542238%_
                           _%tl4220442241%_
                           _%e4220942244%_
                           _%hd4220842248%_
                           _%tl4220742251%_
                           _%e4221242254%_
                           _%hd4221142258%_
                           _%tl4221042261%_
                           _%__splice4463244633%_
                           _%target4221342264%_
                           _%tl4221542267%_)
                    (letrec ((_%loop4221642270%_
                              (lambda (_%hd4221442274%_ _%body4222042277%_)
                                (if (gx#stx-pair? _%hd4221442274%_)
                                    (let ((_%e4221742280%_
                                           (gx#syntax-e _%hd4221442274%_)))
                                      (let ((_%lp-tl4221942287%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4221742280%_)))
                                            (_%lp-hd4221842284%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4221742280%_))))
                                        (_%loop4221642270%_
                                         _%lp-tl4221942287%_
                                         (cons _%lp-hd4221842284%_
                                               _%body4222042277%_))))
                                    (let ((_%body4222142290%_
                                           (reverse _%body4222042277%_)))
                                      (let ((_%L42294%_ _%body4222142290%_)
                                            (_%L42296%_ _%tl4221042261%_)
                                            (_%L42297%_ _%hd4221142258%_)
                                            (_%L42298%_ _%hd4220542238%_))
                                        (if (gx#identifier? _%L42297%_)
                                            (_%__kont4463044631%_
                                             _%L42294%_
                                             _%L42296%_
                                             _%L42297%_
                                             _%L42298%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4218742227%_)))))))))
                      (_%loop4221642270%_ _%target4221342264%_ '()))))
                 (_%__match4465444655%_
                  (lambda (_%e4219342335%_
                           _%hd4219242339%_
                           _%tl4219142342%_
                           _%e4219642345%_
                           _%hd4219542349%_
                           _%tl4219442352%_
                           _%e4219942355%_
                           _%hd4219842359%_
                           _%tl4219742362%_)
                    (let ((_%L42365%_ _%hd4219842359%_)
                          (_%L42367%_ _%hd4219542349%_))
                      (if (gx#identifier? _%L42367%_)
                          (_%__kont4462844629%_ _%L42365%_ _%L42367%_)
                          (if (gx#stx-pair? _%hd4219542349%_)
                              (let ((_%e4221242254%_
                                     (gx#syntax-e _%hd4219542349%_)))
                                (let ((_%tl4221042261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4221242254%_)))
                                      (_%hd4221142258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4221242254%_))))
                                  (if (gx#stx-pair/null? _%tl4219442352%_)
                                      (let ((_%__splice4463244633%_
                                             (gx#syntax-split-splice
                                              _%tl4219442352%_
                                              '0)))
                                        (let ((_%tl4221542267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4463244633%_
                                                  '1)))
                                              (_%target4221342264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4463244633%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4221542267%_)
                                              (_%__match4468044681%_
                                               _%e4219342335%_
                                               _%hd4219242339%_
                                               _%tl4219142342%_
                                               _%e4219642345%_
                                               _%hd4219542349%_
                                               _%tl4219442352%_
                                               _%e4221242254%_
                                               _%hd4221142258%_
                                               _%tl4221042261%_
                                               _%__splice4463244633%_
                                               _%target4221342264%_
                                               _%tl4221542267%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4218742227%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4218742227%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4218742227%_))))))))
            (if (gx#stx-pair? _%__stx4462544626%_)
                (let ((_%e4219342335%_ (gx#syntax-e _%__stx4462544626%_)))
                  (let ((_%tl4219142342%_
                         (let () (declare (not safe)) (##cdr _%e4219342335%_)))
                        (_%hd4219242339%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4219342335%_))))
                    (if (gx#stx-pair? _%tl4219142342%_)
                        (let ((_%e4219642345%_ (gx#syntax-e _%tl4219142342%_)))
                          (let ((_%tl4219442352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4219642345%_)))
                                (_%hd4219542349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4219642345%_))))
                            (if (gx#stx-pair? _%tl4219442352%_)
                                (let ((_%e4219942355%_
                                       (gx#syntax-e _%tl4219442352%_)))
                                  (let ((_%tl4219742362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4219942355%_)))
                                        (_%hd4219842359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4219942355%_))))
                                    (if (gx#stx-null? _%tl4219742362%_)
                                        (_%__match4465444655%_
                                         _%e4219342335%_
                                         _%hd4219242339%_
                                         _%tl4219142342%_
                                         _%e4219642345%_
                                         _%hd4219542349%_
                                         _%tl4219442352%_
                                         _%e4219942355%_
                                         _%hd4219842359%_
                                         _%tl4219742362%_)
                                        (if (gx#stx-pair? _%hd4219542349%_)
                                            (let ((_%e4221242254%_
                                                   (gx#syntax-e
                                                    _%hd4219542349%_)))
                                              (let ((_%tl4221042261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4221242254%_)))
                                                    (_%hd4221142258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4221242254%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4219442352%_)
                                                    (let ((_%__splice4463244633%_
                                                           (gx#syntax-split-splice
                                                            _%tl4219442352%_
                                                            '0)))
                                                      (let ((_%tl4221542267%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4463244633%_ '1)))
                    (_%target4221342264%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4463244633%_ '0))))
                (if (gx#stx-null? _%tl4221542267%_)
                    (_%__match4468044681%_
                     _%e4219342335%_
                     _%hd4219242339%_
                     _%tl4219142342%_
                     _%e4219642345%_
                     _%hd4219542349%_
                     _%tl4219442352%_
                     _%e4221242254%_
                     _%hd4221142258%_
                     _%tl4221042261%_
                     _%__splice4463244633%_
                     _%target4221342264%_
                     _%tl4221542267%_)
                    (let () (declare (not safe)) (_%g4218742227%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4218742227%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4218742227%_))))))
                                (if (gx#stx-pair? _%hd4219542349%_)
                                    (let ((_%e4221242254%_
                                           (gx#syntax-e _%hd4219542349%_)))
                                      (let ((_%tl4221042261%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4221242254%_)))
                                            (_%hd4221142258%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4221242254%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4219442352%_)
                                            (let ((_%__splice4463244633%_
                                                   (gx#syntax-split-splice
                                                    _%tl4219442352%_
                                                    '0)))
                                              (let ((_%tl4221542267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4463244633%_
                                                        '1)))
                                                    (_%target4221342264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4463244633%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4221542267%_)
                                                    (_%__match4468044681%_
                                                     _%e4219342335%_
                                                     _%hd4219242339%_
                                                     _%tl4219142342%_
                                                     _%e4219642345%_
                                                     _%hd4219542349%_
                                                     _%tl4219442352%_
                                                     _%e4221242254%_
                                                     _%hd4221142258%_
                                                     _%tl4221042261%_
                                                     _%__splice4463244633%_
                                                     _%target4221342264%_
                                                     _%tl4221542267%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4218742227%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4218742227%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4218742227%_))))))
                        (let () (declare (not safe)) (_%g4218742227%_)))))
                (let () (declare (not safe)) (_%g4218742227%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42387%_)
      (let* ((_%__stx4468344684%_ _%$stx42387%_)
             (_%g4239242432%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4468344684%_))))
        (let ((_%__kont4468644687%_
               (lambda (_%L42570%_ _%L42572%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42572%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42570%_ '()))
                                   '())))))
              (_%__kont4468844689%_
               (lambda (_%L42499%_ _%L42501%_ _%L42502%_ _%L42503%_)
                 (cons _%L42503%_
                       (cons _%L42502%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42501%_
                                               (foldr (lambda (_%g4252442527%_
                                                               _%g4252542530%_)
                                                        (cons _%g4252442527%_
                                                              _%g4252542530%_))
                                                      '()
                                                      _%L42499%_)))
                                   '()))))))
          (let* ((_%__match4473844739%_
                  (lambda (_%e4241142439%_
                           _%hd4241042443%_
                           _%tl4240942446%_
                           _%e4241442449%_
                           _%hd4241342453%_
                           _%tl4241242456%_
                           _%e4241742459%_
                           _%hd4241642463%_
                           _%tl4241542466%_
                           _%__splice4469044691%_
                           _%target4241842469%_
                           _%tl4242042472%_)
                    (letrec ((_%loop4242142475%_
                              (lambda (_%hd4241942479%_ _%body4242542482%_)
                                (if (gx#stx-pair? _%hd4241942479%_)
                                    (let ((_%e4242242485%_
                                           (gx#syntax-e _%hd4241942479%_)))
                                      (let ((_%lp-tl4242442492%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4242242485%_)))
                                            (_%lp-hd4242342489%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4242242485%_))))
                                        (_%loop4242142475%_
                                         _%lp-tl4242442492%_
                                         (cons _%lp-hd4242342489%_
                                               _%body4242542482%_))))
                                    (let ((_%body4242642495%_
                                           (reverse _%body4242542482%_)))
                                      (let ((_%L42499%_ _%body4242642495%_)
                                            (_%L42501%_ _%tl4241542466%_)
                                            (_%L42502%_ _%hd4241642463%_)
                                            (_%L42503%_ _%hd4241042443%_))
                                        (if (gx#identifier? _%L42502%_)
                                            (_%__kont4468844689%_
                                             _%L42499%_
                                             _%L42501%_
                                             _%L42502%_
                                             _%L42503%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4239242432%_)))))))))
                      (_%loop4242142475%_ _%target4241842469%_ '()))))
                 (_%__match4471244713%_
                  (lambda (_%e4239842540%_
                           _%hd4239742544%_
                           _%tl4239642547%_
                           _%e4240142550%_
                           _%hd4240042554%_
                           _%tl4239942557%_
                           _%e4240442560%_
                           _%hd4240342564%_
                           _%tl4240242567%_)
                    (let ((_%L42570%_ _%hd4240342564%_)
                          (_%L42572%_ _%hd4240042554%_))
                      (if (gx#identifier? _%L42572%_)
                          (_%__kont4468644687%_ _%L42570%_ _%L42572%_)
                          (if (gx#stx-pair? _%hd4240042554%_)
                              (let ((_%e4241742459%_
                                     (gx#syntax-e _%hd4240042554%_)))
                                (let ((_%tl4241542466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4241742459%_)))
                                      (_%hd4241642463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4241742459%_))))
                                  (if (gx#stx-pair/null? _%tl4239942557%_)
                                      (let ((_%__splice4469044691%_
                                             (gx#syntax-split-splice
                                              _%tl4239942557%_
                                              '0)))
                                        (let ((_%tl4242042472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4469044691%_
                                                  '1)))
                                              (_%target4241842469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4469044691%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4242042472%_)
                                              (_%__match4473844739%_
                                               _%e4239842540%_
                                               _%hd4239742544%_
                                               _%tl4239642547%_
                                               _%e4240142550%_
                                               _%hd4240042554%_
                                               _%tl4239942557%_
                                               _%e4241742459%_
                                               _%hd4241642463%_
                                               _%tl4241542466%_
                                               _%__splice4469044691%_
                                               _%target4241842469%_
                                               _%tl4242042472%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4239242432%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4239242432%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4239242432%_))))))))
            (if (gx#stx-pair? _%__stx4468344684%_)
                (let ((_%e4239842540%_ (gx#syntax-e _%__stx4468344684%_)))
                  (let ((_%tl4239642547%_
                         (let () (declare (not safe)) (##cdr _%e4239842540%_)))
                        (_%hd4239742544%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4239842540%_))))
                    (if (gx#stx-pair? _%tl4239642547%_)
                        (let ((_%e4240142550%_ (gx#syntax-e _%tl4239642547%_)))
                          (let ((_%tl4239942557%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4240142550%_)))
                                (_%hd4240042554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4240142550%_))))
                            (if (gx#stx-pair? _%tl4239942557%_)
                                (let ((_%e4240442560%_
                                       (gx#syntax-e _%tl4239942557%_)))
                                  (let ((_%tl4240242567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4240442560%_)))
                                        (_%hd4240342564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4240442560%_))))
                                    (if (gx#stx-null? _%tl4240242567%_)
                                        (_%__match4471244713%_
                                         _%e4239842540%_
                                         _%hd4239742544%_
                                         _%tl4239642547%_
                                         _%e4240142550%_
                                         _%hd4240042554%_
                                         _%tl4239942557%_
                                         _%e4240442560%_
                                         _%hd4240342564%_
                                         _%tl4240242567%_)
                                        (if (gx#stx-pair? _%hd4240042554%_)
                                            (let ((_%e4241742459%_
                                                   (gx#syntax-e
                                                    _%hd4240042554%_)))
                                              (let ((_%tl4241542466%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4241742459%_)))
                                                    (_%hd4241642463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4241742459%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4239942557%_)
                                                    (let ((_%__splice4469044691%_
                                                           (gx#syntax-split-splice
                                                            _%tl4239942557%_
                                                            '0)))
                                                      (let ((_%tl4242042472%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4469044691%_ '1)))
                    (_%target4241842469%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4469044691%_ '0))))
                (if (gx#stx-null? _%tl4242042472%_)
                    (_%__match4473844739%_
                     _%e4239842540%_
                     _%hd4239742544%_
                     _%tl4239642547%_
                     _%e4240142550%_
                     _%hd4240042554%_
                     _%tl4239942557%_
                     _%e4241742459%_
                     _%hd4241642463%_
                     _%tl4241542466%_
                     _%__splice4469044691%_
                     _%target4241842469%_
                     _%tl4242042472%_)
                    (let () (declare (not safe)) (_%g4239242432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4239242432%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4239242432%_))))))
                                (if (gx#stx-pair? _%hd4240042554%_)
                                    (let ((_%e4241742459%_
                                           (gx#syntax-e _%hd4240042554%_)))
                                      (let ((_%tl4241542466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4241742459%_)))
                                            (_%hd4241642463%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4241742459%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4239942557%_)
                                            (let ((_%__splice4469044691%_
                                                   (gx#syntax-split-splice
                                                    _%tl4239942557%_
                                                    '0)))
                                              (let ((_%tl4242042472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4469044691%_
                                                        '1)))
                                                    (_%target4241842469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4469044691%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4242042472%_)
                                                    (_%__match4473844739%_
                                                     _%e4239842540%_
                                                     _%hd4239742544%_
                                                     _%tl4239642547%_
                                                     _%e4240142550%_
                                                     _%hd4240042554%_
                                                     _%tl4239942557%_
                                                     _%e4241742459%_
                                                     _%hd4241642463%_
                                                     _%tl4241542466%_
                                                     _%__splice4469044691%_
                                                     _%target4241842469%_
                                                     _%tl4242042472%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4239242432%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4239242432%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4239242432%_))))))
                        (let () (declare (not safe)) (_%g4239242432%_)))))
                (let () (declare (not safe)) (_%g4239242432%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42592%_)
       (let* ((_%g4259542615%_
               (lambda (_%g4259642611%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4259642611%_)))
              (_%g4259442686%_
               (lambda (_%g4259642619%_)
                 (if (gx#stx-pair? _%g4259642619%_)
                     (let ((_%e4260042622%_ (gx#syntax-e _%g4259642619%_)))
                       (let ((_%hd4259942626%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4260042622%_)))
                             (_%tl4259842629%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4260042622%_))))
                         (if (gx#stx-pair/null? _%tl4259842629%_)
                             (let ((_g44833_
                                    (gx#syntax-split-splice
                                     _%tl4259842629%_
                                     '0)))
                               (begin
                                 (let ((_g44834_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44833_)
                                              (##vector-length _g44833_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44834_ 2)))
                                       (error "Context expects 2 values"
                                              _g44834_)))
                                 (let ((_%target4260142632%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44833_ 0)))
                                       (_%tl4260342635%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44833_ 1))))
                                   (if (gx#stx-null? _%tl4260342635%_)
                                       (letrec ((_%loop4260442638%_
                                                 (lambda (_%hd4260242642%_
                                                          _%body4260842645%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4260242642%_)
                                                       (let ((_%e4260542648%_
                                                              (gx#syntax-e
                                                               _%hd4260242642%_)))
                                                         (let ((_%lp-hd4260642652%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4260542648%_)))
                       (_%lp-tl4260742655%_
                        (let () (declare (not safe)) (##cdr _%e4260542648%_))))
                   (_%loop4260442638%_
                    _%lp-tl4260742655%_
                    (cons _%lp-hd4260642652%_ _%body4260842645%_))))
               (let ((_%body4260942658%_ (reverse _%body4260842645%_)))
                 ((lambda (_%L42662%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4267742680%_
                                                _%g4267842683%_)
                                         (cons _%g4267742680%_
                                               _%g4267842683%_))
                                       '()
                                       _%L42662%_))))
                  _%body4260942658%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4260442638%_
                                          _%target4260142632%_
                                          '()))
                                       (_%g4259542615%_ _%g4259642619%_)))))
                             (_%g4259542615%_ _%g4259642619%_))))
                     (_%g4259542615%_ _%g4259642619%_)))))
         (_%g4259442686%_ _%stx42592%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42691%_)
       (let* ((_%g4269442714%_
               (lambda (_%g4269542710%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4269542710%_)))
              (_%g4269342785%_
               (lambda (_%g4269542718%_)
                 (if (gx#stx-pair? _%g4269542718%_)
                     (let ((_%e4269942721%_ (gx#syntax-e _%g4269542718%_)))
                       (let ((_%hd4269842725%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4269942721%_)))
                             (_%tl4269742728%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4269942721%_))))
                         (if (gx#stx-pair/null? _%tl4269742728%_)
                             (let ((_g44835_
                                    (gx#syntax-split-splice
                                     _%tl4269742728%_
                                     '0)))
                               (begin
                                 (let ((_g44836_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44835_)
                                              (##vector-length _g44835_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44836_ 2)))
                                       (error "Context expects 2 values"
                                              _g44836_)))
                                 (let ((_%target4270042731%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44835_ 0)))
                                       (_%tl4270242734%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44835_ 1))))
                                   (if (gx#stx-null? _%tl4270242734%_)
                                       (letrec ((_%loop4270342737%_
                                                 (lambda (_%hd4270142741%_
                                                          _%body4270742744%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4270142741%_)
                                                       (let ((_%e4270442747%_
                                                              (gx#syntax-e
                                                               _%hd4270142741%_)))
                                                         (let ((_%lp-hd4270542751%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4270442747%_)))
                       (_%lp-tl4270642754%_
                        (let () (declare (not safe)) (##cdr _%e4270442747%_))))
                   (_%loop4270342737%_
                    _%lp-tl4270642754%_
                    (cons _%lp-hd4270542751%_ _%body4270742744%_))))
               (let ((_%body4270842757%_ (reverse _%body4270742744%_)))
                 ((lambda (_%L42761%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4277642779%_
                                                _%g4277742782%_)
                                         (cons _%g4277642779%_
                                               _%g4277742782%_))
                                       '()
                                       _%L42761%_))))
                  _%body4270842757%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4270342737%_
                                          _%target4270042731%_
                                          '()))
                                       (_%g4269442714%_ _%g4269542718%_)))))
                             (_%g4269442714%_ _%g4269542718%_))))
                     (_%g4269442714%_ _%g4269542718%_)))))
         (_%g4269342785%_ _%stx42691%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42790%_)
       (let* ((_%g4279342817%_
               (lambda (_%g4279442813%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4279442813%_)))
              (_%g4279242945%_
               (lambda (_%g4279442821%_)
                 (if (gx#stx-pair? _%g4279442821%_)
                     (let ((_%e4279942824%_ (gx#syntax-e _%g4279442821%_)))
                       (let ((_%hd4279842828%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4279942824%_)))
                             (_%tl4279742831%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4279942824%_))))
                         (if (gx#stx-pair? _%tl4279742831%_)
                             (let ((_%e4280242834%_
                                    (gx#syntax-e _%tl4279742831%_)))
                               (let ((_%hd4280142838%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4280242834%_)))
                                     (_%tl4280042841%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4280242834%_))))
                                 (if (gx#stx-pair/null? _%tl4280042841%_)
                                     (let ((_g44837_
                                            (gx#syntax-split-splice
                                             _%tl4280042841%_
                                             '0)))
                                       (begin
                                         (let ((_g44838_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44837_)
                                                      (##vector-length
                                                       _g44837_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44838_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44838_)))
                                         (let ((_%target4280342844%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44837_ 0)))
                                               (_%tl4280542847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44837_ 1))))
                                           (if (gx#stx-null? _%tl4280542847%_)
                                               (letrec ((_%loop4280642850%_
                                                         (lambda (_%hd4280442854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4281042857%_)
                   (if (gx#stx-pair? _%hd4280442854%_)
                       (let ((_%e4280742860%_ (gx#syntax-e _%hd4280442854%_)))
                         (let ((_%lp-hd4280842864%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4280742860%_)))
                               (_%lp-tl4280942867%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4280742860%_))))
                           (_%loop4280642850%_
                            _%lp-tl4280942867%_
                            (cons _%lp-hd4280842864%_ _%id4281042857%_))))
                       (let ((_%id4281142870%_ (reverse _%id4281042857%_)))
                         ((lambda (_%L42874%_ _%L42876%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4289342896%_
                                                 _%g4289442899%_)
                                          (cons _%g4289342896%_
                                                _%g4289442899%_))
                                        '()
                                        _%L42874%_))
                                (let* ((_%keys42910%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4290142904%_
                                                         _%g4290242907%_)
                                                  (cons _%g4290142904%_
                                                        _%g4290242907%_))
                                                '()
                                                _%L42874%_)))
                                       (_%keytab42921%_
                                        (let ((_%ht42913%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4291542917%_)
                                             (hash-put!
                                              _%ht42913%_
                                              _%g4291542917%_
                                              '#t))
                                           _%keys42910%_)
                                          _%ht42913%_))
                                       (_%imports42924%_
                                        (gx#core-expand-import-source
                                         _%L42876%_))
                                       (_%fold-e42940%_
                                        (letrec ((_%fold-e42927%_
                                                  (lambda (_%in42930%_
                                                           _%r42932%_)
                                                    (if (gx#module-import?
                                                         _%in42930%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab42921%_
                                                               (gx#module-import-name
                                                                _%in42930%_))
                                                              (cons _%in42930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r42932%_)
                      _%r42932%_))
                (if (gx#import-set? _%in42930%_)
                    (let ()
                      (foldl _%fold-e42927%_
                             _%r42932%_
                             (gx#import-set-imports _%in42930%_)))
                    (let () _%r42932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42927%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42940%_
                                               '()
                                               _%imports42924%_)))
                                (_%g4279342817%_ _%g4279442821%_)))
                          _%id4281142870%_
                          _%hd4280142838%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4280642850%_
                                                  _%target4280342844%_
                                                  '()))
                                               (_%g4279342817%_
                                                _%g4279442821%_)))))
                                     (_%g4279342817%_ _%g4279442821%_))))
                             (_%g4279342817%_ _%g4279442821%_))))
                     (_%g4279342817%_ _%g4279442821%_)))))
         (_%g4279242945%_ _%stx42790%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42950%_)
       (let* ((_%g4295342977%_
               (lambda (_%g4295442973%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4295442973%_)))
              (_%g4295243105%_
               (lambda (_%g4295442981%_)
                 (if (gx#stx-pair? _%g4295442981%_)
                     (let ((_%e4295942984%_ (gx#syntax-e _%g4295442981%_)))
                       (let ((_%hd4295842988%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4295942984%_)))
                             (_%tl4295742991%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4295942984%_))))
                         (if (gx#stx-pair? _%tl4295742991%_)
                             (let ((_%e4296242994%_
                                    (gx#syntax-e _%tl4295742991%_)))
                               (let ((_%hd4296142998%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4296242994%_)))
                                     (_%tl4296043001%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4296242994%_))))
                                 (if (gx#stx-pair/null? _%tl4296043001%_)
                                     (let ((_g44839_
                                            (gx#syntax-split-splice
                                             _%tl4296043001%_
                                             '0)))
                                       (begin
                                         (let ((_g44840_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44839_)
                                                      (##vector-length
                                                       _g44839_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44840_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44840_)))
                                         (let ((_%target4296343004%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44839_ 0)))
                                               (_%tl4296543007%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44839_ 1))))
                                           (if (gx#stx-null? _%tl4296543007%_)
                                               (letrec ((_%loop4296643010%_
                                                         (lambda (_%hd4296443014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4297043017%_)
                   (if (gx#stx-pair? _%hd4296443014%_)
                       (let ((_%e4296743020%_ (gx#syntax-e _%hd4296443014%_)))
                         (let ((_%lp-hd4296843024%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4296743020%_)))
                               (_%lp-tl4296943027%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4296743020%_))))
                           (_%loop4296643010%_
                            _%lp-tl4296943027%_
                            (cons _%lp-hd4296843024%_ _%id4297043017%_))))
                       (let ((_%id4297143030%_ (reverse _%id4297043017%_)))
                         ((lambda (_%L43034%_ _%L43036%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4305343056%_
                                                 _%g4305443059%_)
                                          (cons _%g4305343056%_
                                                _%g4305443059%_))
                                        '()
                                        _%L43034%_))
                                (let* ((_%keys43070%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4306143064%_
                                                         _%g4306243067%_)
                                                  (cons _%g4306143064%_
                                                        _%g4306243067%_))
                                                '()
                                                _%L43034%_)))
                                       (_%keytab43081%_
                                        (let ((_%ht43073%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4307543077%_)
                                             (hash-put!
                                              _%ht43073%_
                                              _%g4307543077%_
                                              '#t))
                                           _%keys43070%_)
                                          _%ht43073%_))
                                       (_%imports43084%_
                                        (gx#core-expand-import-source
                                         _%L43036%_))
                                       (_%fold-e43100%_
                                        (letrec ((_%fold-e43087%_
                                                  (lambda (_%in43090%_
                                                           _%r43092%_)
                                                    (if (gx#module-import?
                                                         _%in43090%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab43081%_
                                                               (gx#module-import-name
                                                                _%in43090%_))
                                                              _%r43092%_
                                                              (cons _%in43090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r43092%_)))
                (if (gx#import-set? _%in43090%_)
                    (let ()
                      (foldl _%fold-e43087%_
                             _%r43092%_
                             (gx#import-set-imports _%in43090%_)))
                    (let () (cons _%in43090%_ _%r43092%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43087%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43100%_
                                               '()
                                               _%imports43084%_)))
                                (_%g4295342977%_ _%g4295442981%_)))
                          _%id4297143030%_
                          _%hd4296142998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4296643010%_
                                                  _%target4296343004%_
                                                  '()))
                                               (_%g4295342977%_
                                                _%g4295442981%_)))))
                                     (_%g4295342977%_ _%g4295442981%_))))
                             (_%g4295342977%_ _%g4295442981%_))))
                     (_%g4295342977%_ _%g4295442981%_)))))
         (_%g4295243105%_ _%stx42950%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in43157%_ _%rename43159%_)
      (gx#make-module-import
       (gx#module-import-source _%in43157%_)
       _%rename43159%_
       (gx#module-import-phi _%in43157%_)
       (gx#module-import-weak? _%in43157%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name43110%_ _%pre43112%_)
      (let* ((_%name4311343121%_ _%name43110%_)
             (_%else4311543133%_
              (lambda () (make-symbol _%pre43112%_ _%name43110%_)))
             (_%K4311743141%_
              (lambda (_%mark43137%_ _%id43139%_)
                (cons (make-symbol _%pre43112%_ _%id43139%_) _%mark43137%_))))
        (if (let () (declare (not safe)) (##pair? _%name4311343121%_))
            (let ((_%hd4311843145%_
                   (let () (declare (not safe)) (##car _%name4311343121%_)))
                  (_%tl4311943148%_
                   (let () (declare (not safe)) (##cdr _%name4311343121%_))))
              (let* ((_%id43151%_ _%hd4311843145%_)
                     (_%mark43154%_ _%tl4311943148%_))
                (declare (not safe))
                (_%K4311743141%_ _%mark43154%_ _%id43151%_)))
            (let () (declare (not safe)) (_%else4311543133%_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx43161%_)
       (let* ((_%g4316443197%_
               (lambda (_%g4316543193%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4316543193%_)))
              (_%g4316343392%_
               (lambda (_%g4316543201%_)
                 (if (gx#stx-pair? _%g4316543201%_)
                     (let ((_%e4317143204%_ (gx#syntax-e _%g4316543201%_)))
                       (let ((_%hd4317043208%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4317143204%_)))
                             (_%tl4316943211%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4317143204%_))))
                         (if (gx#stx-pair? _%tl4316943211%_)
                             (let ((_%e4317443214%_
                                    (gx#syntax-e _%tl4316943211%_)))
                               (let ((_%hd4317343218%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4317443214%_)))
                                     (_%tl4317243221%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4317443214%_))))
                                 (if (gx#stx-pair/null? _%tl4317243221%_)
                                     (let ((_g44841_
                                            (gx#syntax-split-splice
                                             _%tl4317243221%_
                                             '0)))
                                       (begin
                                         (let ((_g44842_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44841_)
                                                      (##vector-length
                                                       _g44841_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44842_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44842_)))
                                         (let ((_%target4317543224%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44841_ 0)))
                                               (_%tl4317743227%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44841_ 1))))
                                           (if (gx#stx-null? _%tl4317743227%_)
                                               (letrec ((_%loop4317843230%_
                                                         (lambda (_%hd4317643234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4318243237%_
                          _%id4318343239%_)
                   (if (gx#stx-pair? _%hd4317643234%_)
                       (let ((_%e4317943242%_ (gx#syntax-e _%hd4317643234%_)))
                         (let ((_%lp-hd4318043246%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4317943242%_)))
                               (_%lp-tl4318143249%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4317943242%_))))
                           (if (gx#stx-pair? _%lp-hd4318043246%_)
                               (let ((_%e4318843252%_
                                      (gx#syntax-e _%lp-hd4318043246%_)))
                                 (let ((_%hd4318743256%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4318843252%_)))
                                       (_%tl4318643259%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4318843252%_))))
                                   (if (gx#stx-pair? _%tl4318643259%_)
                                       (let ((_%e4319143262%_
                                              (gx#syntax-e _%tl4318643259%_)))
                                         (let ((_%hd4319043266%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4319143262%_)))
                                               (_%tl4318943269%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4319143262%_))))
                                           (if (gx#stx-null? _%tl4318943269%_)
                                               (_%loop4317843230%_
                                                _%lp-tl4318143249%_
                                                (cons _%hd4319043266%_
                                                      _%new-id4318243237%_)
                                                (cons _%hd4318743256%_
                                                      _%id4318343239%_))
                                               (_%g4316443197%_
                                                _%g4316543201%_))))
                                       (_%g4316443197%_ _%g4316543201%_))))
                               (_%g4316443197%_ _%g4316543201%_))))
                       (let ((_%new-id4318443272%_
                              (reverse _%new-id4318243237%_))
                             (_%id4318543275%_ (reverse _%id4318343239%_)))
                         ((lambda (_%L43278%_ _%L43280%_ _%L43281%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4329943302%_
                                                      _%g4330043305%_)
                                               (cons _%g4329943302%_
                                                     _%g4330043305%_))
                                             '()
                                             _%L43280%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4330743310%_
                                                      _%g4330843313%_)
                                               (cons _%g4330743310%_
                                                     _%g4330843313%_))
                                             '()
                                             _%L43278%_)))
                                (let* ((_%keytab43316%_ (make-hash-table))
                                       (_%found43319%_ (make-hash-table))
                                       (_%_43342%_
                                        (for-each
                                         (lambda (_%id43322%_ _%new-id43324%_)
                                           (hash-put!
                                            _%keytab43316%_
                                            (gx#core-identifier-key
                                             _%id43322%_)
                                            (gx#core-identifier-key
                                             _%new-id43324%_)))
                                         (foldr (lambda (_%g4332543328%_
                                                         _%g4332643331%_)
                                                  (cons _%g4332543328%_
                                                        _%g4332643331%_))
                                                '()
                                                _%L43280%_)
                                         (foldr (lambda (_%g4333343336%_
                                                         _%g4333443339%_)
                                                  (cons _%g4333343336%_
                                                        _%g4333443339%_))
                                                '()
                                                _%L43278%_)))
                                       (_%imports43345%_
                                        (gx#core-expand-import-source
                                         _%L43281%_))
                                       (_%fold-e43373%_
                                        (letrec ((_%fold-e43348%_
                                                  (lambda (_%in43351%_
                                                           _%r43353%_)
                                                    (if (gx#module-import?
                                                         _%in43351%_)
                                                        (let ()
                                                          (let* ((_%name43357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#module-import-name _%in43351%_))
                         (_%$e43360%_
                          (hash-get _%keytab43316%_ _%name43357%_)))
                    (if _%$e43360%_
                        ((lambda (_%rename43364%_)
                           (hash-put! _%found43319%_ _%name43357%_ '#t)
                           (cons (let ()
                                   (declare (not safe))
                                   (|gerbil/core/module-sugar[1]#module-import-rename|
                                    _%in43351%_
                                    _%rename43364%_))
                                 _%r43353%_))
                         _%$e43360%_)
                        (let () (cons _%in43351%_ _%r43353%_)))))
                (if (gx#import-set? _%in43351%_)
                    (let ()
                      (foldl _%fold-e43348%_
                             _%r43353%_
                             (gx#import-set-imports _%in43351%_)))
                    (let () (cons _%in43351%_ _%r43353%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43348%_))
                                       (_%new-imports43376%_
                                        (foldl _%fold-e43373%_
                                               '()
                                               _%imports43345%_)))
                                  (for-each
                                   (lambda (_%id43381%_)
                                     (if (hash-get
                                          _%found43319%_
                                          (gx#core-identifier-key _%id43381%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx43161%_
                                          _%id43381%_)))
                                   (foldr (lambda (_%g4338343386%_
                                                   _%g4338443389%_)
                                            (cons _%g4338343386%_
                                                  _%g4338443389%_))
                                          '()
                                          _%L43280%_))
                                  (cons 'begin: _%new-imports43376%_))
                                (_%g4316443197%_ _%g4316543201%_)))
                          _%new-id4318443272%_
                          _%id4318543275%_
                          _%hd4317343218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4317843230%_
                                                  _%target4317543224%_
                                                  '()
                                                  '()))
                                               (_%g4316443197%_
                                                _%g4316543201%_)))))
                                     (_%g4316443197%_ _%g4316543201%_))))
                             (_%g4316443197%_ _%g4316543201%_))))
                     (_%g4316443197%_ _%g4316543201%_)))))
         (_%g4316343392%_ _%stx43161%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43397%_)
       (let* ((_%g4340043418%_
               (lambda (_%g4340143414%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4340143414%_)))
              (_%g4339943503%_
               (lambda (_%g4340143422%_)
                 (if (gx#stx-pair? _%g4340143422%_)
                     (let ((_%e4340643425%_ (gx#syntax-e _%g4340143422%_)))
                       (let ((_%hd4340543429%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4340643425%_)))
                             (_%tl4340443432%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4340643425%_))))
                         (if (gx#stx-pair? _%tl4340443432%_)
                             (let ((_%e4340943435%_
                                    (gx#syntax-e _%tl4340443432%_)))
                               (let ((_%hd4340843439%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4340943435%_)))
                                     (_%tl4340743442%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4340943435%_))))
                                 (if (gx#stx-pair? _%tl4340743442%_)
                                     (let ((_%e4341243445%_
                                            (gx#syntax-e _%tl4340743442%_)))
                                       (let ((_%hd4341143449%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4341243445%_)))
                                             (_%tl4341043452%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4341243445%_))))
                                         (if (gx#stx-null? _%tl4341043452%_)
                                             ((lambda (_%L43455%_ _%L43457%_)
                                                (if (gx#identifier? _%L43455%_)
                                                    (let* ((_%pre43473%_
                                                            (gx#stx-e
                                                             _%L43455%_))
                                                           (_%imports43476%_
                                                            (gx#core-expand-import-source
                                                             _%L43457%_))
                                                           (_%rename-e43482%_
                                                            (lambda (_%name43479%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _%name43479%_
                         _%pre43473%_))))
                   (_%fold-e43498%_
                    (letrec ((_%fold-e43485%_
                              (lambda (_%in43488%_ _%r43490%_)
                                (if (gx#module-import? _%in43488%_)
                                    (let ()
                                      (cons (let ((__tmp44843
                                                   (_%rename-e43482%_
                                                    (gx#module-import-name
                                                     _%in43488%_))))
                                              (declare (not safe))
                                              (|gerbil/core/module-sugar[1]#module-import-rename|
                                               _%in43488%_
                                               __tmp44843))
                                            _%r43490%_))
                                    (if (gx#import-set? _%in43488%_)
                                        (let ()
                                          (foldl _%fold-e43485%_
                                                 _%r43490%_
                                                 (gx#import-set-imports
                                                  _%in43488%_)))
                                        (let ()
                                          (cons _%in43488%_ _%r43490%_)))))))
                      _%fold-e43485%_)))
              (cons 'begin: (foldl _%fold-e43498%_ '() _%imports43476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4340043418%_
                                                     _%g4340143422%_)))
                                              _%hd4341143449%_
                                              _%hd4340843439%_)
                                             (_%g4340043418%_
                                              _%g4340143422%_))))
                                     (_%g4340043418%_ _%g4340143422%_))))
                             (_%g4340043418%_ _%g4340143422%_))))
                     (_%g4340043418%_ _%g4340143422%_)))))
         (_%g4339943503%_ _%stx43397%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43507%_)
       (letrec ((_%flatten43510%_
                 (lambda (_%list-of-lists43765%_)
                   (foldr (lambda (_%v43768%_ _%acc43770%_)
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%v43768%_))
                                (let () _%acc43770%_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%v43768%_))
                                    (let ()
                                      (append (_%flatten43510%_ _%v43768%_)
                                              _%acc43770%_))
                                    (let () (cons _%v43768%_ _%acc43770%_)))))
                          '()
                          _%list-of-lists43765%_)))
                (_%expand-path43512%_
                 (lambda (_%top43633%_ _%mod43635%_)
                   (let* ((_%__stx4474144742%_ _%mod43635%_)
                          (_%g4363843660%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4474144742%_))))
                     (let ((_%__kont4474444745%_
                            (lambda (_%L43728%_ _%L43730%_)
                              (map (lambda (_%mod43745%_)
                                     (gx#stx-identifier
                                      _%top43633%_
                                      _%top43633%_
                                      '"/"
                                      _%mod43745%_))
                                   (_%flatten43510%_
                                    (map (lambda (_%g4374743749%_)
                                           (_%expand-path43512%_
                                            _%L43730%_
                                            _%g4374743749%_))
                                         (foldr (lambda (_%g4375243755%_
                                                         _%g4375343758%_)
                                                  (cons _%g4375243755%_
                                                        _%g4375343758%_))
                                                '()
                                                _%L43728%_))))))
                           (_%__kont4474844749%_
                            (lambda (_%L43667%_)
                              (gx#stx-identifier
                               _%top43633%_
                               _%top43633%_
                               '"/"
                               _%L43667%_))))
                       (let* ((_%g4363743681%_
                               (lambda ()
                                 (let ((_%L43667%_ _%__stx4474144742%_))
                                   (if (or (gx#identifier? _%L43667%_)
                                           (gx#stx-fixnum? _%L43667%_))
                                       (_%__kont4474844749%_ _%L43667%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4363843660%_))))))
                              (_%__match4476444765%_
                               (lambda (_%e4364443688%_
                                        _%hd4364343692%_
                                        _%tl4364243695%_
                                        _%__splice4474644747%_
                                        _%target4364543698%_
                                        _%tl4364743701%_)
                                 (letrec ((_%loop4364843704%_
                                           (lambda (_%hd4364643708%_
                                                    _%mod4365243711%_)
                                             (if (gx#stx-pair?
                                                  _%hd4364643708%_)
                                                 (let ((_%e4364943714%_
                                                        (gx#syntax-e
                                                         _%hd4364643708%_)))
                                                   (let ((_%lp-tl4365143721%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4364943714%_)))
                                                         (_%lp-hd4365043718%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4364943714%_))))
                                                     (_%loop4364843704%_
                                                      _%lp-tl4365143721%_
                                                      (cons _%lp-hd4365043718%_
                                                            _%mod4365243711%_))))
                                                 (let ((_%mod4365343724%_
                                                        (reverse _%mod4365243711%_)))
                                                   (_%__kont4474444745%_
                                                    _%mod4365343724%_
                                                    _%hd4364343692%_))))))
                                   (_%loop4364843704%_
                                    _%target4364543698%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4474144742%_)
                             (let ((_%e4364443688%_
                                    (gx#syntax-e _%__stx4474144742%_)))
                               (let ((_%tl4364243695%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4364443688%_)))
                                     (_%hd4364343692%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4364443688%_))))
                                 (if (gx#stx-pair/null? _%tl4364243695%_)
                                     (let ((_%__splice4474644747%_
                                            (gx#syntax-split-splice
                                             _%tl4364243695%_
                                             '0)))
                                       (let ((_%tl4364743701%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4474644747%_
                                                 '1)))
                                             (_%target4364543698%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4474644747%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4364743701%_)
                                             (_%__match4476444765%_
                                              _%e4364443688%_
                                              _%hd4364343692%_
                                              _%tl4364243695%_
                                              _%__splice4474644747%_
                                              _%target4364543698%_
                                              _%tl4364743701%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4363743681%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4363743681%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4363743681%_)))))))))
         (let* ((_%g4351443538%_
                 (lambda (_%g4351543534%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4351543534%_)))
                (_%g4351343629%_
                 (lambda (_%g4351543542%_)
                   (if (gx#stx-pair? _%g4351543542%_)
                       (let ((_%e4352043545%_ (gx#syntax-e _%g4351543542%_)))
                         (let ((_%hd4351943549%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4352043545%_)))
                               (_%tl4351843552%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4352043545%_))))
                           (if (gx#stx-pair? _%tl4351843552%_)
                               (let ((_%e4352343555%_
                                      (gx#syntax-e _%tl4351843552%_)))
                                 (let ((_%hd4352243559%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4352343555%_)))
                                       (_%tl4352143562%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4352343555%_))))
                                   (if (gx#stx-pair/null? _%tl4352143562%_)
                                       (let ((_g44844_
                                              (gx#syntax-split-splice
                                               _%tl4352143562%_
                                               '0)))
                                         (begin
                                           (let ((_g44845_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44844_)
                                                        (##vector-length
                                                         _g44844_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44845_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44845_)))
                                           (let ((_%target4352443565%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44844_ 0)))
                                                 (_%tl4352643568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44844_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4352643568%_)
                                                 (letrec ((_%loop4352743571%_
                                                           (lambda (_%hd4352543575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4353143578%_)
                     (if (gx#stx-pair? _%hd4352543575%_)
                         (let ((_%e4352843581%_
                                (gx#syntax-e _%hd4352543575%_)))
                           (let ((_%lp-hd4352943585%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4352843581%_)))
                                 (_%lp-tl4353043588%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4352843581%_))))
                             (_%loop4352743571%_
                              _%lp-tl4353043588%_
                              (cons _%lp-hd4352943585%_ _%mod4353143578%_))))
                         (let ((_%mod4353243591%_ (reverse _%mod4353143578%_)))
                           ((lambda (_%L43595%_ _%L43597%_)
                              (cons 'begin:
                                    (_%flatten43510%_
                                     (map (lambda (_%g4361543617%_)
                                            (_%expand-path43512%_
                                             _%L43597%_
                                             _%g4361543617%_))
                                          (foldr (lambda (_%g4362043623%_
                                                          _%g4362143626%_)
                                                   (cons _%g4362043623%_
                                                         _%g4362143626%_))
                                                 '()
                                                 _%L43595%_)))))
                            _%mod4353243591%_
                            _%hd4352243559%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4352743571%_
                                                    _%target4352443565%_
                                                    '()))
                                                 (_%g4351443538%_
                                                  _%g4351543542%_)))))
                                       (_%g4351443538%_ _%g4351543542%_))))
                               (_%g4351443538%_ _%g4351543542%_))))
                       (_%g4351443538%_ _%g4351543542%_)))))
           (_%g4351343629%_ _%stx43507%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43780%_)
       (let* ((_%g4378343807%_
               (lambda (_%g4378443803%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4378443803%_)))
              (_%g4378243935%_
               (lambda (_%g4378443811%_)
                 (if (gx#stx-pair? _%g4378443811%_)
                     (let ((_%e4378943814%_ (gx#syntax-e _%g4378443811%_)))
                       (let ((_%hd4378843818%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4378943814%_)))
                             (_%tl4378743821%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4378943814%_))))
                         (if (gx#stx-pair? _%tl4378743821%_)
                             (let ((_%e4379243824%_
                                    (gx#syntax-e _%tl4378743821%_)))
                               (let ((_%hd4379143828%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4379243824%_)))
                                     (_%tl4379043831%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4379243824%_))))
                                 (if (gx#stx-pair/null? _%tl4379043831%_)
                                     (let ((_g44846_
                                            (gx#syntax-split-splice
                                             _%tl4379043831%_
                                             '0)))
                                       (begin
                                         (let ((_g44847_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44846_)
                                                      (##vector-length
                                                       _g44846_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44847_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44847_)))
                                         (let ((_%target4379343834%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44846_ 0)))
                                               (_%tl4379543837%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44846_ 1))))
                                           (if (gx#stx-null? _%tl4379543837%_)
                                               (letrec ((_%loop4379643840%_
                                                         (lambda (_%hd4379443844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4380043847%_)
                   (if (gx#stx-pair? _%hd4379443844%_)
                       (let ((_%e4379743850%_ (gx#syntax-e _%hd4379443844%_)))
                         (let ((_%lp-hd4379843854%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4379743850%_)))
                               (_%lp-tl4379943857%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4379743850%_))))
                           (_%loop4379643840%_
                            _%lp-tl4379943857%_
                            (cons _%lp-hd4379843854%_ _%id4380043847%_))))
                       (let ((_%id4380143860%_ (reverse _%id4380043847%_)))
                         ((lambda (_%L43864%_ _%L43866%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4388343886%_
                                                 _%g4388443889%_)
                                          (cons _%g4388343886%_
                                                _%g4388443889%_))
                                        '()
                                        _%L43864%_))
                                (let* ((_%keys43900%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4389143894%_
                                                         _%g4389243897%_)
                                                  (cons _%g4389143894%_
                                                        _%g4389243897%_))
                                                '()
                                                _%L43864%_)))
                                       (_%keytab43911%_
                                        (let ((_%ht43903%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4390543907%_)
                                             (hash-put!
                                              _%ht43903%_
                                              _%g4390543907%_
                                              '#t))
                                           _%keys43900%_)
                                          _%ht43903%_))
                                       (_%exports43914%_
                                        (gx#core-expand-export-source
                                         _%L43866%_))
                                       (_%fold-e43930%_
                                        (letrec ((_%fold-e43917%_
                                                  (lambda (_%out43920%_
                                                           _%r43922%_)
                                                    (if (gx#module-export?
                                                         _%out43920%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab43911%_
                                                               (gx#module-export-name
                                                                _%out43920%_))
                                                              _%r43922%_
                                                              (cons _%out43920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r43922%_)))
                (if (gx#export-set? _%out43920%_)
                    (let ()
                      (foldl _%fold-e43917%_
                             _%r43922%_
                             (gx#export-set-exports _%out43920%_)))
                    (let () _%r43922%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43917%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43930%_
                                               '()
                                               _%exports43914%_)))
                                (_%g4378343807%_ _%g4378443811%_)))
                          _%id4380143860%_
                          _%hd4379143828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4379643840%_
                                                  _%target4379343834%_
                                                  '()))
                                               (_%g4378343807%_
                                                _%g4378443811%_)))))
                                     (_%g4378343807%_ _%g4378443811%_))))
                             (_%g4378343807%_ _%g4378443811%_))))
                     (_%g4378343807%_ _%g4378443811%_)))))
         (_%g4378243935%_ _%stx43780%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43940%_ _%rename43942%_)
      (gx#make-module-export
       (gx#module-export-context _%out43940%_)
       (gx#module-export-key _%out43940%_)
       (gx#module-export-phi _%out43940%_)
       _%rename43942%_
       (gx#module-export-weak? _%out43940%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43944%_)
       (let* ((_%g4394743980%_
               (lambda (_%g4394843976%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4394843976%_)))
              (_%g4394644175%_
               (lambda (_%g4394843984%_)
                 (if (gx#stx-pair? _%g4394843984%_)
                     (let ((_%e4395443987%_ (gx#syntax-e _%g4394843984%_)))
                       (let ((_%hd4395343991%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4395443987%_)))
                             (_%tl4395243994%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4395443987%_))))
                         (if (gx#stx-pair? _%tl4395243994%_)
                             (let ((_%e4395743997%_
                                    (gx#syntax-e _%tl4395243994%_)))
                               (let ((_%hd4395644001%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4395743997%_)))
                                     (_%tl4395544004%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4395743997%_))))
                                 (if (gx#stx-pair/null? _%tl4395544004%_)
                                     (let ((_g44848_
                                            (gx#syntax-split-splice
                                             _%tl4395544004%_
                                             '0)))
                                       (begin
                                         (let ((_g44849_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44848_)
                                                      (##vector-length
                                                       _g44848_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44849_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44849_)))
                                         (let ((_%target4395844007%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44848_ 0)))
                                               (_%tl4396044010%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44848_ 1))))
                                           (if (gx#stx-null? _%tl4396044010%_)
                                               (letrec ((_%loop4396144013%_
                                                         (lambda (_%hd4395944017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4396544020%_
                          _%id4396644022%_)
                   (if (gx#stx-pair? _%hd4395944017%_)
                       (let ((_%e4396244025%_ (gx#syntax-e _%hd4395944017%_)))
                         (let ((_%lp-hd4396344029%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4396244025%_)))
                               (_%lp-tl4396444032%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4396244025%_))))
                           (if (gx#stx-pair? _%lp-hd4396344029%_)
                               (let ((_%e4397144035%_
                                      (gx#syntax-e _%lp-hd4396344029%_)))
                                 (let ((_%hd4397044039%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4397144035%_)))
                                       (_%tl4396944042%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4397144035%_))))
                                   (if (gx#stx-pair? _%tl4396944042%_)
                                       (let ((_%e4397444045%_
                                              (gx#syntax-e _%tl4396944042%_)))
                                         (let ((_%hd4397344049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4397444045%_)))
                                               (_%tl4397244052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4397444045%_))))
                                           (if (gx#stx-null? _%tl4397244052%_)
                                               (_%loop4396144013%_
                                                _%lp-tl4396444032%_
                                                (cons _%hd4397344049%_
                                                      _%new-id4396544020%_)
                                                (cons _%hd4397044039%_
                                                      _%id4396644022%_))
                                               (_%g4394743980%_
                                                _%g4394843984%_))))
                                       (_%g4394743980%_ _%g4394843984%_))))
                               (_%g4394743980%_ _%g4394843984%_))))
                       (let ((_%new-id4396744055%_
                              (reverse _%new-id4396544020%_))
                             (_%id4396844058%_ (reverse _%id4396644022%_)))
                         ((lambda (_%L44061%_ _%L44063%_ _%L44064%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4408244085%_
                                                      _%g4408344088%_)
                                               (cons _%g4408244085%_
                                                     _%g4408344088%_))
                                             '()
                                             _%L44063%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4409044093%_
                                                      _%g4409144096%_)
                                               (cons _%g4409044093%_
                                                     _%g4409144096%_))
                                             '()
                                             _%L44061%_)))
                                (let* ((_%keytab44099%_ (make-hash-table))
                                       (_%found44102%_ (make-hash-table))
                                       (_%_44125%_
                                        (for-each
                                         (lambda (_%id44105%_ _%new-id44107%_)
                                           (hash-put!
                                            _%keytab44099%_
                                            (gx#core-identifier-key
                                             _%id44105%_)
                                            (gx#core-identifier-key
                                             _%new-id44107%_)))
                                         (foldr (lambda (_%g4410844111%_
                                                         _%g4410944114%_)
                                                  (cons _%g4410844111%_
                                                        _%g4410944114%_))
                                                '()
                                                _%L44063%_)
                                         (foldr (lambda (_%g4411644119%_
                                                         _%g4411744122%_)
                                                  (cons _%g4411644119%_
                                                        _%g4411744122%_))
                                                '()
                                                _%L44061%_)))
                                       (_%exports44128%_
                                        (gx#core-expand-export-source
                                         _%L44064%_))
                                       (_%fold-e44156%_
                                        (letrec ((_%fold-e44131%_
                                                  (lambda (_%out44134%_
                                                           _%r44136%_)
                                                    (if (gx#module-export?
                                                         _%out44134%_)
                                                        (let ()
                                                          (let* ((_%name44140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#module-export-name _%out44134%_))
                         (_%$e44143%_
                          (hash-get _%keytab44099%_ _%name44140%_)))
                    (if _%$e44143%_
                        ((lambda (_%rename44147%_)
                           (hash-put! _%found44102%_ _%name44140%_ '#t)
                           (cons (let ()
                                   (declare (not safe))
                                   (|gerbil/core/module-sugar[1]#module-export-rename|
                                    _%out44134%_
                                    _%rename44147%_))
                                 _%r44136%_))
                         _%$e44143%_)
                        (let () (cons _%out44134%_ _%r44136%_)))))
                (if (gx#export-set? _%out44134%_)
                    (let ()
                      (foldl _%fold-e44131%_
                             _%r44136%_
                             (gx#export-set-exports _%out44134%_)))
                    (let () (cons _%out44134%_ _%r44136%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e44131%_))
                                       (_%new-exports44159%_
                                        (foldl _%fold-e44156%_
                                               '()
                                               _%exports44128%_)))
                                  (for-each
                                   (lambda (_%id44164%_)
                                     (if (hash-get
                                          _%found44102%_
                                          (gx#core-identifier-key _%id44164%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43944%_
                                          _%id44164%_)))
                                   (foldr (lambda (_%g4416644169%_
                                                   _%g4416744172%_)
                                            (cons _%g4416644169%_
                                                  _%g4416744172%_))
                                          '()
                                          _%L44063%_))
                                  (cons 'begin: _%new-exports44159%_))
                                (_%g4394743980%_ _%g4394843984%_)))
                          _%new-id4396744055%_
                          _%id4396844058%_
                          _%hd4395644001%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4396144013%_
                                                  _%target4395844007%_
                                                  '()
                                                  '()))
                                               (_%g4394743980%_
                                                _%g4394843984%_)))))
                                     (_%g4394743980%_ _%g4394843984%_))))
                             (_%g4394743980%_ _%g4394843984%_))))
                     (_%g4394743980%_ _%g4394843984%_)))))
         (_%g4394644175%_ _%stx43944%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx44180%_)
       (let* ((_%g4418344201%_
               (lambda (_%g4418444197%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4418444197%_)))
              (_%g4418244286%_
               (lambda (_%g4418444205%_)
                 (if (gx#stx-pair? _%g4418444205%_)
                     (let ((_%e4418944208%_ (gx#syntax-e _%g4418444205%_)))
                       (let ((_%hd4418844212%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4418944208%_)))
                             (_%tl4418744215%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4418944208%_))))
                         (if (gx#stx-pair? _%tl4418744215%_)
                             (let ((_%e4419244218%_
                                    (gx#syntax-e _%tl4418744215%_)))
                               (let ((_%hd4419144222%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4419244218%_)))
                                     (_%tl4419044225%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4419244218%_))))
                                 (if (gx#stx-pair? _%tl4419044225%_)
                                     (let ((_%e4419544228%_
                                            (gx#syntax-e _%tl4419044225%_)))
                                       (let ((_%hd4419444232%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4419544228%_)))
                                             (_%tl4419344235%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4419544228%_))))
                                         (if (gx#stx-null? _%tl4419344235%_)
                                             ((lambda (_%L44238%_ _%L44240%_)
                                                (if (gx#identifier? _%L44238%_)
                                                    (let* ((_%pre44256%_
                                                            (gx#stx-e
                                                             _%L44238%_))
                                                           (_%exports44259%_
                                                            (gx#core-expand-export-source
                                                             _%L44240%_))
                                                           (_%rename-e44265%_
                                                            (lambda (_%name44262%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _%name44262%_
                         _%pre44256%_))))
                   (_%fold-e44281%_
                    (letrec ((_%fold-e44268%_
                              (lambda (_%out44271%_ _%r44273%_)
                                (if (gx#module-export? _%out44271%_)
                                    (let ()
                                      (cons (let ((__tmp44850
                                                   (_%rename-e44265%_
                                                    (gx#module-export-name
                                                     _%out44271%_))))
                                              (declare (not safe))
                                              (|gerbil/core/module-sugar[1]#module-export-rename|
                                               _%out44271%_
                                               __tmp44850))
                                            _%r44273%_))
                                    (if (gx#export-set? _%out44271%_)
                                        (let ()
                                          (foldl _%fold-e44268%_
                                                 _%r44273%_
                                                 (gx#export-set-exports
                                                  _%out44271%_)))
                                        (let ()
                                          (cons _%out44271%_ _%r44273%_)))))))
                      _%fold-e44268%_)))
              (cons 'begin: (foldl _%fold-e44281%_ '() _%exports44259%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4418344201%_
                                                     _%g4418444205%_)))
                                              _%hd4419444232%_
                                              _%hd4419144222%_)
                                             (_%g4418344201%_
                                              _%g4418444205%_))))
                                     (_%g4418344201%_ _%g4418444205%_))))
                             (_%g4418344201%_ _%g4418444205%_))))
                     (_%g4418344201%_ _%g4418444205%_)))))
         (_%g4418244286%_ _%stx44180%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44290%_)
       (letrec ((_%identifiers44293%_
                 (lambda (_%id44525%_ _%unchecked?44527%_)
                   (let ((_%info44529%_
                          (gx#syntax-local-value _%id44525%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44529%_))
                         (cons _%id44525%_
                               (cons (let ((__obj44826 _%info44529%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44826
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44826
                                              '12
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj44826
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44827
                                                         _%info44529%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44827
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44827
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj44827
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44828 _%info44529%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44828
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44828
                                                 '18
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44828
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44829 _%info44529%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44829
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44829
                                                 '17
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44829
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44830 _%info44529%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44830
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44830
                                      '16
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj44830
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44831 _%info44529%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44831
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44831
                               '15
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj44831
                             'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44532%_
                                                   (let ((__obj44832
                                                          _%info44529%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44832
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44832
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj44832
                                                          'constructor)))))
                                              (if _%ctor44532%_
                                                  (cons _%ctor44532%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44290%_
                          _%id44525%_))))))
         (let* ((_%__stx4476744768%_ _%stx44290%_)
                (_%g4429744338%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4476744768%_))))
           (let ((_%__kont4477044771%_
                  (lambda (_%L44486%_ _%L44488%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4450744509%_)
                              (_%identifiers44293%_
                               _%g4450744509%_
                               (gx#stx-e _%L44488%_)))
                            (foldr (lambda (_%g4451244515%_ _%g4451344518%_)
                                     (cons _%g4451244515%_ _%g4451344518%_))
                                   '()
                                   _%L44486%_))))))
                 (_%__kont4477444775%_
                  (lambda (_%L44385%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4440144403%_)
                              (_%identifiers44293%_ _%g4440144403%_ '#f))
                            (foldr (lambda (_%g4440644409%_ _%g4440744412%_)
                                     (cons _%g4440644409%_ _%g4440744412%_))
                                   '()
                                   _%L44385%_)))))))
             (let* ((_%__match4482444825%_
                     (lambda (_%e4432344345%_
                              _%hd4432244349%_
                              _%tl4432144352%_
                              _%__splice4477644777%_
                              _%target4432444355%_
                              _%tl4432644358%_)
                       (letrec ((_%loop4432744361%_
                                 (lambda (_%hd4432544365%_ _%id4433144368%_)
                                   (if (gx#stx-pair? _%hd4432544365%_)
                                       (let ((_%e4432844371%_
                                              (gx#syntax-e _%hd4432544365%_)))
                                         (let ((_%lp-tl4433044378%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4432844371%_)))
                                               (_%lp-hd4432944375%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4432844371%_))))
                                           (_%loop4432744361%_
                                            _%lp-tl4433044378%_
                                            (cons _%lp-hd4432944375%_
                                                  _%id4433144368%_))))
                                       (let ((_%id4433244381%_
                                              (reverse _%id4433144368%_)))
                                         (_%__kont4477444775%_
                                          _%id4433244381%_))))))
                         (_%loop4432744361%_ _%target4432444355%_ '()))))
                    (_%__match4481044811%_
                     (lambda (_%e4430344422%_
                              _%hd4430244426%_
                              _%tl4430144429%_
                              _%e4430644432%_
                              _%hd4430544436%_
                              _%tl4430444439%_
                              _%e4430744442%_
                              _%e4431044446%_
                              _%hd4430944450%_
                              _%tl4430844453%_
                              _%__splice4477244773%_
                              _%target4431144456%_
                              _%tl4431344459%_)
                       (letrec ((_%loop4431444462%_
                                 (lambda (_%hd4431244466%_ _%id4431844469%_)
                                   (if (gx#stx-pair? _%hd4431244466%_)
                                       (let ((_%e4431544472%_
                                              (gx#syntax-e _%hd4431244466%_)))
                                         (let ((_%lp-tl4431744479%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4431544472%_)))
                                               (_%lp-hd4431644476%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4431544472%_))))
                                           (_%loop4431444462%_
                                            _%lp-tl4431744479%_
                                            (cons _%lp-hd4431644476%_
                                                  _%id4431844469%_))))
                                       (let ((_%id4431944482%_
                                              (reverse _%id4431844469%_)))
                                         (_%__kont4477044771%_
                                          _%id4431944482%_
                                          _%hd4430944450%_))))))
                         (_%loop4431444462%_ _%target4431144456%_ '())))))
               (if (gx#stx-pair? _%__stx4476744768%_)
                   (let ((_%e4430344422%_ (gx#syntax-e _%__stx4476744768%_)))
                     (let ((_%tl4430144429%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4430344422%_)))
                           (_%hd4430244426%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4430344422%_))))
                       (if (gx#stx-pair? _%tl4430144429%_)
                           (let ((_%e4430644432%_
                                  (gx#syntax-e _%tl4430144429%_)))
                             (let ((_%tl4430444439%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4430644432%_)))
                                   (_%hd4430544436%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4430644432%_))))
                               (if (gx#stx-datum? _%hd4430544436%_)
                                   (let ((_%e4430744442%_
                                          (gx#stx-e _%hd4430544436%_)))
                                     (if (equal? _%e4430744442%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4430444439%_)
                                             (let ((_%e4431044446%_
                                                    (gx#syntax-e
                                                     _%tl4430444439%_)))
                                               (let ((_%tl4430844453%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4431044446%_)))
                                                     (_%hd4430944450%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4431044446%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4430844453%_)
                                                     (let ((_%__splice4477244773%_
                                                            (gx#syntax-split-splice
                                                             _%tl4430844453%_
                                                             '0)))
                                                       (let ((_%tl4431344459%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4477244773%_ '1)))
                     (_%target4431144456%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4477244773%_ '0))))
                 (if (gx#stx-null? _%tl4431344459%_)
                     (_%__match4481044811%_
                      _%e4430344422%_
                      _%hd4430244426%_
                      _%tl4430144429%_
                      _%e4430644432%_
                      _%hd4430544436%_
                      _%tl4430444439%_
                      _%e4430744442%_
                      _%e4431044446%_
                      _%hd4430944450%_
                      _%tl4430844453%_
                      _%__splice4477244773%_
                      _%target4431144456%_
                      _%tl4431344459%_)
                     (if (gx#stx-pair/null? _%tl4430144429%_)
                         (let ((_%__splice4477644777%_
                                (gx#syntax-split-splice _%tl4430144429%_ '0)))
                           (let ((_%tl4432644358%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4477644777%_ '1)))
                                 (_%target4432444355%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4477644777%_ '0))))
                             (if (gx#stx-null? _%tl4432644358%_)
                                 (_%__match4482444825%_
                                  _%e4430344422%_
                                  _%hd4430244426%_
                                  _%tl4430144429%_
                                  _%__splice4477644777%_
                                  _%target4432444355%_
                                  _%tl4432644358%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4429744338%_)))))
                         (let () (declare (not safe)) (_%g4429744338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4430144429%_)
                                                         (let ((_%__splice4477644777%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4430144429%_
                         '0)))
                   (let ((_%tl4432644358%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4477644777%_ '1)))
                         (_%target4432444355%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4477644777%_ '0))))
                     (if (gx#stx-null? _%tl4432644358%_)
                         (_%__match4482444825%_
                          _%e4430344422%_
                          _%hd4430244426%_
                          _%tl4430144429%_
                          _%__splice4477644777%_
                          _%target4432444355%_
                          _%tl4432644358%_)
                         (let () (declare (not safe)) (_%g4429744338%_)))))
                 (let () (declare (not safe)) (_%g4429744338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4430144429%_)
                                                 (let ((_%__splice4477644777%_
                                                        (gx#syntax-split-splice
                                                         _%tl4430144429%_
                                                         '0)))
                                                   (let ((_%tl4432644358%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4477644777%_
                                                             '1)))
                                                         (_%target4432444355%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4477644777%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4432644358%_)
                                                         (_%__match4482444825%_
                                                          _%e4430344422%_
                                                          _%hd4430244426%_
                                                          _%tl4430144429%_
                                                          _%__splice4477644777%_
                                                          _%target4432444355%_
                                                          _%tl4432644358%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4429744338%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4429744338%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4430144429%_)
                                             (let ((_%__splice4477644777%_
                                                    (gx#syntax-split-splice
                                                     _%tl4430144429%_
                                                     '0)))
                                               (let ((_%tl4432644358%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4477644777%_
                                                         '1)))
                                                     (_%target4432444355%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4477644777%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4432644358%_)
                                                     (_%__match4482444825%_
                                                      _%e4430344422%_
                                                      _%hd4430244426%_
                                                      _%tl4430144429%_
                                                      _%__splice4477644777%_
                                                      _%target4432444355%_
                                                      _%tl4432644358%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4429744338%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4429744338%_)))))
                                   (if (gx#stx-pair/null? _%tl4430144429%_)
                                       (let ((_%__splice4477644777%_
                                              (gx#syntax-split-splice
                                               _%tl4430144429%_
                                               '0)))
                                         (let ((_%tl4432644358%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4477644777%_
                                                   '1)))
                                               (_%target4432444355%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4477644777%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4432644358%_)
                                               (_%__match4482444825%_
                                                _%e4430344422%_
                                                _%hd4430244426%_
                                                _%tl4430144429%_
                                                _%__splice4477644777%_
                                                _%target4432444355%_
                                                _%tl4432644358%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4429744338%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4429744338%_))))))
                           (if (gx#stx-pair/null? _%tl4430144429%_)
                               (let ((_%__splice4477644777%_
                                      (gx#syntax-split-splice
                                       _%tl4430144429%_
                                       '0)))
                                 (let ((_%tl4432644358%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4477644777%_
                                           '1)))
                                       (_%target4432444355%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4477644777%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4432644358%_)
                                       (_%__match4482444825%_
                                        _%e4430344422%_
                                        _%hd4430244426%_
                                        _%tl4430144429%_
                                        _%__splice4477644777%_
                                        _%target4432444355%_
                                        _%tl4432644358%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4429744338%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4429744338%_))))))
                   (let () (declare (not safe)) (_%g4429744338%_)))))))))))
