(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g110148_|
    (gx#core-deserialize-mark
     '(0
       (args . _%args109505%_)
       (new-value . _%new-value109568%_)
       (the-var . _%the-var109441%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g110149_|
    (##structure
     gx#syntax-quote::t
     '%%set-dotted!
     #f
     (gx#current-expander-context)
     (list |[1]#_g110148_|)))
  (define |[1]#_g110150_|
    (##structure
     gx#syntax-quote::t
     'set!
     #f
     (gx#current-expander-context)
     (list |[1]#_g110148_|)))
  (define |[:0:]#unhandled-actor-exception-hook|
    (let ((__obj110123
           (let ()
             (declare (not safe))
             (##structure |gerbil/core/more-sugar[1]#setq-macro::t| '#f))))
      (let ((__tmp110146
             (lambda (_%$stx109373%_)
               (let* ((_%__stx110046110047%_ _%$stx109373%_)
                      (_%g109380109424%_
                       (lambda ()
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx110046110047%_))))
                 (let ((_%__kont110049110050%_
                        (lambda (_%L109608%_ _%L109610%_)
                          (cons (gx#datum->syntax
                                 '#f
                                 'unhandled-actor-exception-hook-set!)
                                (cons _%L109608%_ '()))))
                       (_%__kont110051110052%_
                        (lambda (_%L109553%_ _%L109555%_)
                          (cons (gx#datum->syntax
                                 '#f
                                 'unhandled-actor-exception-hook-set!)
                                (cons _%L109553%_ '()))))
                       (_%__kont110053110054%_
                        (lambda (_%L109490%_ _%L109492%_)
                          (cons (gx#datum->syntax
                                 '#f
                                 '__unhandled-actor-exception-hook)
                                (let ((__tmp110147
                                       (lambda (_%g109507109510%_
                                                _%g109508109513%_)
                                         (cons _%g109507109510%_
                                               _%g109508109513%_))))
                                  (declare (not safe))
                                  (__foldr1 __tmp110147 '() _%L109490%_)))))
                       (_%__kont110057110058%_
                        (lambda (_%L109431%_)
                          (gx#datum->syntax
                           '#f
                           '__unhandled-actor-exception-hook))))
                   (let* ((_%g109379109443%_
                           (lambda ()
                             (let ((_%L109431%_ _%__stx110046110047%_))
                               (if (and (gx#identifier? _%L109431%_)
                                        (gx#free-identifier=?
                                         _%L109431%_
                                         (gx#datum->syntax
                                          '#f
                                          'unhandled-actor-exception-hook)))
                                   (_%__kont110057110058%_ _%L109431%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g109380109424%_))))))
                          (_%__match110121110122%_
                           (lambda (_%e109406109450%_
                                    _%hd109407109454%_
                                    _%tl109408109457%_
                                    _%__splice110055110056%_
                                    _%target109409109460%_
                                    _%tl109411109463%_)
                             (letrec ((_%loop109412109466%_
                                       (lambda (_%hd109410109470%_
                                                _%args109416109473%_)
                                         (if (gx#stx-pair? _%hd109410109470%_)
                                             (let ((_%e109413109476%_
                                                    (gx#syntax-e
                                                     _%hd109410109470%_)))
                                               (let ((_%lp-tl109415109483%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e109413109476%_)))
                                                     (_%lp-hd109414109480%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e109413109476%_))))
                                                 (_%loop109412109466%_
                                                  _%lp-tl109415109483%_
                                                  (cons _%lp-hd109414109480%_
                                                        _%args109416109473%_))))
                                             (let ((_%args109417109486%_
                                                    (reverse _%args109416109473%_)))
                                               (let ((_%L109490%_
                                                      _%args109417109486%_)
                                                     (_%L109492%_
                                                      _%hd109407109454%_))
                                                 (if (and (gx#identifier?
                                                           _%L109492%_)
                                                          (gx#free-identifier=?
                                                           _%L109492%_
                                                           (gx#datum->syntax
                                                            '#f
                                                            'unhandled-actor-exception-hook)))
                                                     (_%__kont110053110054%_
                                                      _%L109490%_
                                                      _%L109492%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g109379109443%_)))))))))
                               (_%loop109412109466%_
                                _%target109409109460%_
                                '())))))
                     (if (gx#stx-pair? _%__stx110046110047%_)
                         (let ((_%e109384109578%_
                                (gx#syntax-e _%__stx110046110047%_)))
                           (let ((_%tl109386109585%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e109384109578%_)))
                                 (_%hd109385109582%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e109384109578%_))))
                             (if (gx#identifier? _%hd109385109582%_)
                                 (if (gx#free-identifier=?
                                      |[1]#_g110149_|
                                      _%hd109385109582%_)
                                     (if (gx#stx-pair? _%tl109386109585%_)
                                         (let ((_%e109387109588%_
                                                (gx#syntax-e
                                                 _%tl109386109585%_)))
                                           (let ((_%tl109389109595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e109387109588%_)))
                                                 (_%hd109388109592%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e109387109588%_))))
                                             (if (gx#stx-pair?
                                                  _%tl109389109595%_)
                                                 (let ((_%e109390109598%_
                                                        (gx#syntax-e
                                                         _%tl109389109595%_)))
                                                   (let ((_%tl109392109605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e109390109598%_)))
                                                         (_%hd109391109602%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e109390109598%_))))
                                                     (if (gx#stx-null?
                                                          _%tl109392109605%_)
                                                         (_%__kont110049110050%_
                                                          _%hd109391109602%_
                                                          _%hd109388109592%_)
                                                         (if (gx#stx-pair/null?
                                                              _%tl109386109585%_)
                                                             (let ((_%__splice110055110056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%tl109386109585%_ '0)))
                       (let ((_%tl109411109463%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice110055110056%_ '1)))
                             (_%target109409109460%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice110055110056%_ '0))))
                         (if (gx#stx-null? _%tl109411109463%_)
                             (_%__match110121110122%_
                              _%e109384109578%_
                              _%hd109385109582%_
                              _%tl109386109585%_
                              _%__splice110055110056%_
                              _%target109409109460%_
                              _%tl109411109463%_)
                             (let ()
                               (declare (not safe))
                               (_%g109379109443%_)))))
                     (let () (declare (not safe)) (_%g109379109443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair/null?
                                                      _%tl109386109585%_)
                                                     (let ((_%__splice110055110056%_
                                                            (gx#syntax-split-splice
                                                             _%tl109386109585%_
                                                             '0)))
                                                       (let ((_%tl109411109463%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice110055110056%_ '1)))
                     (_%target109409109460%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice110055110056%_ '0))))
                 (if (gx#stx-null? _%tl109411109463%_)
                     (_%__match110121110122%_
                      _%e109384109578%_
                      _%hd109385109582%_
                      _%tl109386109585%_
                      _%__splice110055110056%_
                      _%target109409109460%_
                      _%tl109411109463%_)
                     (let () (declare (not safe)) (_%g109379109443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g109379109443%_))))))
                                         (if (gx#stx-pair/null?
                                              _%tl109386109585%_)
                                             (let ((_%__splice110055110056%_
                                                    (gx#syntax-split-splice
                                                     _%tl109386109585%_
                                                     '0)))
                                               (let ((_%tl109411109463%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice110055110056%_
                                                         '1)))
                                                     (_%target109409109460%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice110055110056%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl109411109463%_)
                                                     (_%__match110121110122%_
                                                      _%e109384109578%_
                                                      _%hd109385109582%_
                                                      _%tl109386109585%_
                                                      _%__splice110055110056%_
                                                      _%target109409109460%_
                                                      _%tl109411109463%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g109379109443%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g109379109443%_))))
                                     (if (gx#free-identifier=?
                                          |[1]#_g110150_|
                                          _%hd109385109582%_)
                                         (if (gx#stx-pair? _%tl109386109585%_)
                                             (let ((_%e109398109533%_
                                                    (gx#syntax-e
                                                     _%tl109386109585%_)))
                                               (let ((_%tl109400109540%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e109398109533%_)))
                                                     (_%hd109399109537%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e109398109533%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl109400109540%_)
                                                     (let ((_%e109401109543%_
                                                            (gx#syntax-e
                                                             _%tl109400109540%_)))
                                                       (let ((_%tl109403109550%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e109401109543%_)))
                     (_%hd109402109547%_
                      (let () (declare (not safe)) (##car _%e109401109543%_))))
                 (if (gx#stx-null? _%tl109403109550%_)
                     (_%__kont110051110052%_
                      _%hd109402109547%_
                      _%hd109399109537%_)
                     (if (gx#stx-pair/null? _%tl109386109585%_)
                         (let ((_%__splice110055110056%_
                                (gx#syntax-split-splice
                                 _%tl109386109585%_
                                 '0)))
                           (let ((_%tl109411109463%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref
                                     _%__splice110055110056%_
                                     '1)))
                                 (_%target109409109460%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref
                                     _%__splice110055110056%_
                                     '0))))
                             (if (gx#stx-null? _%tl109411109463%_)
                                 (_%__match110121110122%_
                                  _%e109384109578%_
                                  _%hd109385109582%_
                                  _%tl109386109585%_
                                  _%__splice110055110056%_
                                  _%target109409109460%_
                                  _%tl109411109463%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g109379109443%_)))))
                         (let () (declare (not safe)) (_%g109379109443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl109386109585%_)
                                                         (let ((_%__splice110055110056%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl109386109585%_
                         '0)))
                   (let ((_%tl109411109463%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice110055110056%_ '1)))
                         (_%target109409109460%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice110055110056%_ '0))))
                     (if (gx#stx-null? _%tl109411109463%_)
                         (_%__match110121110122%_
                          _%e109384109578%_
                          _%hd109385109582%_
                          _%tl109386109585%_
                          _%__splice110055110056%_
                          _%target109409109460%_
                          _%tl109411109463%_)
                         (let () (declare (not safe)) (_%g109379109443%_)))))
                 (let () (declare (not safe)) (_%g109379109443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl109386109585%_)
                                                 (let ((_%__splice110055110056%_
                                                        (gx#syntax-split-splice
                                                         _%tl109386109585%_
                                                         '0)))
                                                   (let ((_%tl109411109463%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice110055110056%_
                                                             '1)))
                                                         (_%target109409109460%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice110055110056%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl109411109463%_)
                                                         (_%__match110121110122%_
                                                          _%e109384109578%_
                                                          _%hd109385109582%_
                                                          _%tl109386109585%_
                                                          _%__splice110055110056%_
                                                          _%target109409109460%_
                                                          _%tl109411109463%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g109379109443%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g109379109443%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl109386109585%_)
                                             (let ((_%__splice110055110056%_
                                                    (gx#syntax-split-splice
                                                     _%tl109386109585%_
                                                     '0)))
                                               (let ((_%tl109411109463%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice110055110056%_
                                                         '1)))
                                                     (_%target109409109460%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice110055110056%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl109411109463%_)
                                                     (_%__match110121110122%_
                                                      _%e109384109578%_
                                                      _%hd109385109582%_
                                                      _%tl109386109585%_
                                                      _%__splice110055110056%_
                                                      _%target109409109460%_
                                                      _%tl109411109463%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g109379109443%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g109379109443%_)))))
                                 (if (gx#stx-pair/null? _%tl109386109585%_)
                                     (let ((_%__splice110055110056%_
                                            (gx#syntax-split-splice
                                             _%tl109386109585%_
                                             '0)))
                                       (let ((_%tl109411109463%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice110055110056%_
                                                 '1)))
                                             (_%target109409109460%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice110055110056%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl109411109463%_)
                                             (_%__match110121110122%_
                                              _%e109384109578%_
                                              _%hd109385109582%_
                                              _%tl109386109585%_
                                              _%__splice110055110056%_
                                              _%target109409109460%_
                                              _%tl109411109463%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g109379109443%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g109379109443%_))))))
                         (let ()
                           (declare (not safe))
                           (_%g109379109443%_)))))))))
        (declare (not safe))
        (##unchecked-structure-set! __obj110123 __tmp110146 '1 '#f '#f))
      __obj110123)))
