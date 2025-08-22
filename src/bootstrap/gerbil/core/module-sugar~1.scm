(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx44793%_)
      (let* ((_%__stx4744747448%_ _%$stx44793%_)
             (_%g4479844817%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4744747448%_))))
        (let ((_%__kont4745047451%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4745247453%_
               (lambda (_%L44844%_ _%L44846%_ _%L44847%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L44846%_
                                   (cons (cons _%L44847%_ _%L44844%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L44846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4744747448%_)
              (let ((_%e4480044869%_ (gx#syntax-e _%__stx4744747448%_)))
                (let ((_%tl4480244876%_
                       (let () (declare (not safe)) (##cdr _%e4480044869%_)))
                      (_%hd4480144873%_
                       (let () (declare (not safe)) (##car _%e4480044869%_))))
                  (if (gx#stx-null? _%tl4480244876%_)
                      (_%__kont4745047451%_)
                      (if (gx#stx-pair? _%tl4480244876%_)
                          (let ((_%e4480944834%_
                                 (gx#syntax-e _%tl4480244876%_)))
                            (let ((_%tl4481144841%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4480944834%_)))
                                  (_%hd4481044838%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4480944834%_))))
                              (_%__kont4745247453%_
                               _%tl4481144841%_
                               _%hd4481044838%_
                               _%hd4480144873%_)))
                          (let () (declare (not safe)) (_%g4479844817%_))))))
              (let () (declare (not safe)) (_%g4479844817%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx44887%_)
      (let* ((_%__stx4747747478%_ _%$stx44887%_)
             (_%g4489244932%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4747747478%_))))
        (let ((_%__kont4748047481%_
               (lambda (_%L45070%_ _%L45072%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45072%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L45070%_ '()))
                                   '())))))
              (_%__kont4748247483%_
               (lambda (_%L44999%_ _%L45001%_ _%L45002%_ _%L45003%_)
                 (cons _%L45003%_
                       (cons _%L45002%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45001%_
                                               (foldr (lambda (_%g4502445027%_
                                                               _%g4502545030%_)
                                                        (cons _%g4502445027%_
                                                              _%g4502545030%_))
                                                      '()
                                                      _%L44999%_)))
                                   '()))))))
          (let* ((_%__match4753247533%_
                  (lambda (_%e4490944939%_
                           _%hd4491044943%_
                           _%tl4491144946%_
                           _%e4491244949%_
                           _%hd4491344953%_
                           _%tl4491444956%_
                           _%e4491544959%_
                           _%hd4491644963%_
                           _%tl4491744966%_
                           _%__splice4748447485%_
                           _%target4491844969%_
                           _%tl4492044972%_)
                    (letrec ((_%loop4492144975%_
                              (lambda (_%hd4491944979%_ _%body4492544982%_)
                                (if (gx#stx-pair? _%hd4491944979%_)
                                    (let ((_%e4492244985%_
                                           (gx#syntax-e _%hd4491944979%_)))
                                      (let ((_%lp-tl4492444992%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4492244985%_)))
                                            (_%lp-hd4492344989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4492244985%_))))
                                        (_%loop4492144975%_
                                         _%lp-tl4492444992%_
                                         (cons _%lp-hd4492344989%_
                                               _%body4492544982%_))))
                                    (let ((_%body4492644995%_
                                           (reverse _%body4492544982%_)))
                                      (let ((_%L44999%_ _%body4492644995%_)
                                            (_%L45001%_ _%tl4491744966%_)
                                            (_%L45002%_ _%hd4491644963%_)
                                            (_%L45003%_ _%hd4491044943%_))
                                        (if (gx#identifier? _%L45002%_)
                                            (_%__kont4748247483%_
                                             _%L44999%_
                                             _%L45001%_
                                             _%L45002%_
                                             _%L45003%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4489244932%_)))))))))
                      (_%loop4492144975%_ _%target4491844969%_ '()))))
                 (_%__match4750647507%_
                  (lambda (_%e4489645040%_
                           _%hd4489745044%_
                           _%tl4489845047%_
                           _%e4489945050%_
                           _%hd4490045054%_
                           _%tl4490145057%_
                           _%e4490245060%_
                           _%hd4490345064%_
                           _%tl4490445067%_)
                    (let ((_%L45070%_ _%hd4490345064%_)
                          (_%L45072%_ _%hd4490045054%_))
                      (if (gx#identifier? _%L45072%_)
                          (_%__kont4748047481%_ _%L45070%_ _%L45072%_)
                          (if (gx#stx-pair? _%hd4490045054%_)
                              (let ((_%e4491544959%_
                                     (gx#syntax-e _%hd4490045054%_)))
                                (let ((_%tl4491744966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4491544959%_)))
                                      (_%hd4491644963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4491544959%_))))
                                  (if (gx#stx-pair/null? _%tl4490145057%_)
                                      (let ((_%__splice4748447485%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4490145057%_
                                              '0)))
                                        (let ((_%tl4492044972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4748447485%_
                                                  '1)))
                                              (_%target4491844969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4748447485%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4492044972%_)
                                              (_%__match4753247533%_
                                               _%e4489645040%_
                                               _%hd4489745044%_
                                               _%tl4489845047%_
                                               _%e4489945050%_
                                               _%hd4490045054%_
                                               _%tl4490145057%_
                                               _%e4491544959%_
                                               _%hd4491644963%_
                                               _%tl4491744966%_
                                               _%__splice4748447485%_
                                               _%target4491844969%_
                                               _%tl4492044972%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4489244932%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4489244932%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4489244932%_))))))))
            (if (gx#stx-pair? _%__stx4747747478%_)
                (let ((_%e4489645040%_ (gx#syntax-e _%__stx4747747478%_)))
                  (let ((_%tl4489845047%_
                         (let () (declare (not safe)) (##cdr _%e4489645040%_)))
                        (_%hd4489745044%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4489645040%_))))
                    (if (gx#stx-pair? _%tl4489845047%_)
                        (let ((_%e4489945050%_ (gx#syntax-e _%tl4489845047%_)))
                          (let ((_%tl4490145057%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4489945050%_)))
                                (_%hd4490045054%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4489945050%_))))
                            (if (gx#stx-pair? _%tl4490145057%_)
                                (let ((_%e4490245060%_
                                       (gx#syntax-e _%tl4490145057%_)))
                                  (let ((_%tl4490445067%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4490245060%_)))
                                        (_%hd4490345064%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4490245060%_))))
                                    (if (gx#stx-null? _%tl4490445067%_)
                                        (_%__match4750647507%_
                                         _%e4489645040%_
                                         _%hd4489745044%_
                                         _%tl4489845047%_
                                         _%e4489945050%_
                                         _%hd4490045054%_
                                         _%tl4490145057%_
                                         _%e4490245060%_
                                         _%hd4490345064%_
                                         _%tl4490445067%_)
                                        (if (gx#stx-pair? _%hd4490045054%_)
                                            (let ((_%e4491544959%_
                                                   (gx#syntax-e
                                                    _%hd4490045054%_)))
                                              (let ((_%tl4491744966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4491544959%_)))
                                                    (_%hd4491644963%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4491544959%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4490145057%_)
                                                    (let ((_%__splice4748447485%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4490145057%_
                                                            '0)))
                                                      (let ((_%tl4492044972%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4748447485%_ '1)))
                    (_%target4491844969%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4748447485%_ '0))))
                (if (gx#stx-null? _%tl4492044972%_)
                    (_%__match4753247533%_
                     _%e4489645040%_
                     _%hd4489745044%_
                     _%tl4489845047%_
                     _%e4489945050%_
                     _%hd4490045054%_
                     _%tl4490145057%_
                     _%e4491544959%_
                     _%hd4491644963%_
                     _%tl4491744966%_
                     _%__splice4748447485%_
                     _%target4491844969%_
                     _%tl4492044972%_)
                    (let () (declare (not safe)) (_%g4489244932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4489244932%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4489244932%_))))))
                                (if (gx#stx-pair? _%hd4490045054%_)
                                    (let ((_%e4491544959%_
                                           (gx#syntax-e _%hd4490045054%_)))
                                      (let ((_%tl4491744966%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4491544959%_)))
                                            (_%hd4491644963%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4491544959%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4490145057%_)
                                            (let ((_%__splice4748447485%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4490145057%_
                                                    '0)))
                                              (let ((_%tl4492044972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4748447485%_
                                                        '1)))
                                                    (_%target4491844969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4748447485%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4492044972%_)
                                                    (_%__match4753247533%_
                                                     _%e4489645040%_
                                                     _%hd4489745044%_
                                                     _%tl4489845047%_
                                                     _%e4489945050%_
                                                     _%hd4490045054%_
                                                     _%tl4490145057%_
                                                     _%e4491544959%_
                                                     _%hd4491644963%_
                                                     _%tl4491744966%_
                                                     _%__splice4748447485%_
                                                     _%target4491844969%_
                                                     _%tl4492044972%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4489244932%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4489244932%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4489244932%_))))))
                        (let () (declare (not safe)) (_%g4489244932%_)))))
                (let () (declare (not safe)) (_%g4489244932%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx45092%_)
      (let* ((_%__stx4753547536%_ _%$stx45092%_)
             (_%g4509745137%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4753547536%_))))
        (let ((_%__kont4753847539%_
               (lambda (_%L45275%_ _%L45277%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45277%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L45275%_ '()))
                                   '())))))
              (_%__kont4754047541%_
               (lambda (_%L45204%_ _%L45206%_ _%L45207%_ _%L45208%_)
                 (cons _%L45208%_
                       (cons _%L45207%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45206%_
                                               (foldr (lambda (_%g4522945232%_
                                                               _%g4523045235%_)
                                                        (cons _%g4522945232%_
                                                              _%g4523045235%_))
                                                      '()
                                                      _%L45204%_)))
                                   '()))))))
          (let* ((_%__match4759047591%_
                  (lambda (_%e4511445144%_
                           _%hd4511545148%_
                           _%tl4511645151%_
                           _%e4511745154%_
                           _%hd4511845158%_
                           _%tl4511945161%_
                           _%e4512045164%_
                           _%hd4512145168%_
                           _%tl4512245171%_
                           _%__splice4754247543%_
                           _%target4512345174%_
                           _%tl4512545177%_)
                    (letrec ((_%loop4512645180%_
                              (lambda (_%hd4512445184%_ _%body4513045187%_)
                                (if (gx#stx-pair? _%hd4512445184%_)
                                    (let ((_%e4512745190%_
                                           (gx#syntax-e _%hd4512445184%_)))
                                      (let ((_%lp-tl4512945197%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4512745190%_)))
                                            (_%lp-hd4512845194%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4512745190%_))))
                                        (_%loop4512645180%_
                                         _%lp-tl4512945197%_
                                         (cons _%lp-hd4512845194%_
                                               _%body4513045187%_))))
                                    (let ((_%body4513145200%_
                                           (reverse _%body4513045187%_)))
                                      (let ((_%L45204%_ _%body4513145200%_)
                                            (_%L45206%_ _%tl4512245171%_)
                                            (_%L45207%_ _%hd4512145168%_)
                                            (_%L45208%_ _%hd4511545148%_))
                                        (if (gx#identifier? _%L45207%_)
                                            (_%__kont4754047541%_
                                             _%L45204%_
                                             _%L45206%_
                                             _%L45207%_
                                             _%L45208%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4509745137%_)))))))))
                      (_%loop4512645180%_ _%target4512345174%_ '()))))
                 (_%__match4756447565%_
                  (lambda (_%e4510145245%_
                           _%hd4510245249%_
                           _%tl4510345252%_
                           _%e4510445255%_
                           _%hd4510545259%_
                           _%tl4510645262%_
                           _%e4510745265%_
                           _%hd4510845269%_
                           _%tl4510945272%_)
                    (let ((_%L45275%_ _%hd4510845269%_)
                          (_%L45277%_ _%hd4510545259%_))
                      (if (gx#identifier? _%L45277%_)
                          (_%__kont4753847539%_ _%L45275%_ _%L45277%_)
                          (if (gx#stx-pair? _%hd4510545259%_)
                              (let ((_%e4512045164%_
                                     (gx#syntax-e _%hd4510545259%_)))
                                (let ((_%tl4512245171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4512045164%_)))
                                      (_%hd4512145168%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4512045164%_))))
                                  (if (gx#stx-pair/null? _%tl4510645262%_)
                                      (let ((_%__splice4754247543%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4510645262%_
                                              '0)))
                                        (let ((_%tl4512545177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4754247543%_
                                                  '1)))
                                              (_%target4512345174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4754247543%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4512545177%_)
                                              (_%__match4759047591%_
                                               _%e4510145245%_
                                               _%hd4510245249%_
                                               _%tl4510345252%_
                                               _%e4510445255%_
                                               _%hd4510545259%_
                                               _%tl4510645262%_
                                               _%e4512045164%_
                                               _%hd4512145168%_
                                               _%tl4512245171%_
                                               _%__splice4754247543%_
                                               _%target4512345174%_
                                               _%tl4512545177%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4509745137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4509745137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4509745137%_))))))))
            (if (gx#stx-pair? _%__stx4753547536%_)
                (let ((_%e4510145245%_ (gx#syntax-e _%__stx4753547536%_)))
                  (let ((_%tl4510345252%_
                         (let () (declare (not safe)) (##cdr _%e4510145245%_)))
                        (_%hd4510245249%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4510145245%_))))
                    (if (gx#stx-pair? _%tl4510345252%_)
                        (let ((_%e4510445255%_ (gx#syntax-e _%tl4510345252%_)))
                          (let ((_%tl4510645262%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4510445255%_)))
                                (_%hd4510545259%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4510445255%_))))
                            (if (gx#stx-pair? _%tl4510645262%_)
                                (let ((_%e4510745265%_
                                       (gx#syntax-e _%tl4510645262%_)))
                                  (let ((_%tl4510945272%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4510745265%_)))
                                        (_%hd4510845269%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4510745265%_))))
                                    (if (gx#stx-null? _%tl4510945272%_)
                                        (_%__match4756447565%_
                                         _%e4510145245%_
                                         _%hd4510245249%_
                                         _%tl4510345252%_
                                         _%e4510445255%_
                                         _%hd4510545259%_
                                         _%tl4510645262%_
                                         _%e4510745265%_
                                         _%hd4510845269%_
                                         _%tl4510945272%_)
                                        (if (gx#stx-pair? _%hd4510545259%_)
                                            (let ((_%e4512045164%_
                                                   (gx#syntax-e
                                                    _%hd4510545259%_)))
                                              (let ((_%tl4512245171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4512045164%_)))
                                                    (_%hd4512145168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4512045164%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4510645262%_)
                                                    (let ((_%__splice4754247543%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4510645262%_
                                                            '0)))
                                                      (let ((_%tl4512545177%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4754247543%_ '1)))
                    (_%target4512345174%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4754247543%_ '0))))
                (if (gx#stx-null? _%tl4512545177%_)
                    (_%__match4759047591%_
                     _%e4510145245%_
                     _%hd4510245249%_
                     _%tl4510345252%_
                     _%e4510445255%_
                     _%hd4510545259%_
                     _%tl4510645262%_
                     _%e4512045164%_
                     _%hd4512145168%_
                     _%tl4512245171%_
                     _%__splice4754247543%_
                     _%target4512345174%_
                     _%tl4512545177%_)
                    (let () (declare (not safe)) (_%g4509745137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4509745137%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4509745137%_))))))
                                (if (gx#stx-pair? _%hd4510545259%_)
                                    (let ((_%e4512045164%_
                                           (gx#syntax-e _%hd4510545259%_)))
                                      (let ((_%tl4512245171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4512045164%_)))
                                            (_%hd4512145168%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4512045164%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4510645262%_)
                                            (let ((_%__splice4754247543%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4510645262%_
                                                    '0)))
                                              (let ((_%tl4512545177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4754247543%_
                                                        '1)))
                                                    (_%target4512345174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4754247543%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4512545177%_)
                                                    (_%__match4759047591%_
                                                     _%e4510145245%_
                                                     _%hd4510245249%_
                                                     _%tl4510345252%_
                                                     _%e4510445255%_
                                                     _%hd4510545259%_
                                                     _%tl4510645262%_
                                                     _%e4512045164%_
                                                     _%hd4512145168%_
                                                     _%tl4512245171%_
                                                     _%__splice4754247543%_
                                                     _%target4512345174%_
                                                     _%tl4512545177%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4509745137%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4509745137%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4509745137%_))))))
                        (let () (declare (not safe)) (_%g4509745137%_)))))
                (let () (declare (not safe)) (_%g4509745137%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx45297%_)
      (let* ((_%__stx4759347594%_ _%$stx45297%_)
             (_%g4530245342%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4759347594%_))))
        (let ((_%__kont4759647597%_
               (lambda (_%L45480%_ _%L45482%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L45482%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L45480%_ '()))
                                   '())))))
              (_%__kont4759847599%_
               (lambda (_%L45409%_ _%L45411%_ _%L45412%_ _%L45413%_)
                 (cons _%L45413%_
                       (cons _%L45412%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L45411%_
                                               (foldr (lambda (_%g4543445437%_
                                                               _%g4543545440%_)
                                                        (cons _%g4543445437%_
                                                              _%g4543545440%_))
                                                      '()
                                                      _%L45409%_)))
                                   '()))))))
          (let* ((_%__match4764847649%_
                  (lambda (_%e4531945349%_
                           _%hd4532045353%_
                           _%tl4532145356%_
                           _%e4532245359%_
                           _%hd4532345363%_
                           _%tl4532445366%_
                           _%e4532545369%_
                           _%hd4532645373%_
                           _%tl4532745376%_
                           _%__splice4760047601%_
                           _%target4532845379%_
                           _%tl4533045382%_)
                    (letrec ((_%loop4533145385%_
                              (lambda (_%hd4532945389%_ _%body4533545392%_)
                                (if (gx#stx-pair? _%hd4532945389%_)
                                    (let ((_%e4533245395%_
                                           (gx#syntax-e _%hd4532945389%_)))
                                      (let ((_%lp-tl4533445402%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4533245395%_)))
                                            (_%lp-hd4533345399%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4533245395%_))))
                                        (_%loop4533145385%_
                                         _%lp-tl4533445402%_
                                         (cons _%lp-hd4533345399%_
                                               _%body4533545392%_))))
                                    (let ((_%body4533645405%_
                                           (reverse _%body4533545392%_)))
                                      (let ((_%L45409%_ _%body4533645405%_)
                                            (_%L45411%_ _%tl4532745376%_)
                                            (_%L45412%_ _%hd4532645373%_)
                                            (_%L45413%_ _%hd4532045353%_))
                                        (if (gx#identifier? _%L45412%_)
                                            (_%__kont4759847599%_
                                             _%L45409%_
                                             _%L45411%_
                                             _%L45412%_
                                             _%L45413%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4530245342%_)))))))))
                      (_%loop4533145385%_ _%target4532845379%_ '()))))
                 (_%__match4762247623%_
                  (lambda (_%e4530645450%_
                           _%hd4530745454%_
                           _%tl4530845457%_
                           _%e4530945460%_
                           _%hd4531045464%_
                           _%tl4531145467%_
                           _%e4531245470%_
                           _%hd4531345474%_
                           _%tl4531445477%_)
                    (let ((_%L45480%_ _%hd4531345474%_)
                          (_%L45482%_ _%hd4531045464%_))
                      (if (gx#identifier? _%L45482%_)
                          (_%__kont4759647597%_ _%L45480%_ _%L45482%_)
                          (if (gx#stx-pair? _%hd4531045464%_)
                              (let ((_%e4532545369%_
                                     (gx#syntax-e _%hd4531045464%_)))
                                (let ((_%tl4532745376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4532545369%_)))
                                      (_%hd4532645373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4532545369%_))))
                                  (if (gx#stx-pair/null? _%tl4531145467%_)
                                      (let ((_%__splice4760047601%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4531145467%_
                                              '0)))
                                        (let ((_%tl4533045382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4760047601%_
                                                  '1)))
                                              (_%target4532845379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4760047601%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4533045382%_)
                                              (_%__match4764847649%_
                                               _%e4530645450%_
                                               _%hd4530745454%_
                                               _%tl4530845457%_
                                               _%e4530945460%_
                                               _%hd4531045464%_
                                               _%tl4531145467%_
                                               _%e4532545369%_
                                               _%hd4532645373%_
                                               _%tl4532745376%_
                                               _%__splice4760047601%_
                                               _%target4532845379%_
                                               _%tl4533045382%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4530245342%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4530245342%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4530245342%_))))))))
            (if (gx#stx-pair? _%__stx4759347594%_)
                (let ((_%e4530645450%_ (gx#syntax-e _%__stx4759347594%_)))
                  (let ((_%tl4530845457%_
                         (let () (declare (not safe)) (##cdr _%e4530645450%_)))
                        (_%hd4530745454%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4530645450%_))))
                    (if (gx#stx-pair? _%tl4530845457%_)
                        (let ((_%e4530945460%_ (gx#syntax-e _%tl4530845457%_)))
                          (let ((_%tl4531145467%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4530945460%_)))
                                (_%hd4531045464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4530945460%_))))
                            (if (gx#stx-pair? _%tl4531145467%_)
                                (let ((_%e4531245470%_
                                       (gx#syntax-e _%tl4531145467%_)))
                                  (let ((_%tl4531445477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4531245470%_)))
                                        (_%hd4531345474%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4531245470%_))))
                                    (if (gx#stx-null? _%tl4531445477%_)
                                        (_%__match4762247623%_
                                         _%e4530645450%_
                                         _%hd4530745454%_
                                         _%tl4530845457%_
                                         _%e4530945460%_
                                         _%hd4531045464%_
                                         _%tl4531145467%_
                                         _%e4531245470%_
                                         _%hd4531345474%_
                                         _%tl4531445477%_)
                                        (if (gx#stx-pair? _%hd4531045464%_)
                                            (let ((_%e4532545369%_
                                                   (gx#syntax-e
                                                    _%hd4531045464%_)))
                                              (let ((_%tl4532745376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4532545369%_)))
                                                    (_%hd4532645373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4532545369%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4531145467%_)
                                                    (let ((_%__splice4760047601%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4531145467%_
                                                            '0)))
                                                      (let ((_%tl4533045382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4760047601%_ '1)))
                    (_%target4532845379%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4760047601%_ '0))))
                (if (gx#stx-null? _%tl4533045382%_)
                    (_%__match4764847649%_
                     _%e4530645450%_
                     _%hd4530745454%_
                     _%tl4530845457%_
                     _%e4530945460%_
                     _%hd4531045464%_
                     _%tl4531145467%_
                     _%e4532545369%_
                     _%hd4532645373%_
                     _%tl4532745376%_
                     _%__splice4760047601%_
                     _%target4532845379%_
                     _%tl4533045382%_)
                    (let () (declare (not safe)) (_%g4530245342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4530245342%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4530245342%_))))))
                                (if (gx#stx-pair? _%hd4531045464%_)
                                    (let ((_%e4532545369%_
                                           (gx#syntax-e _%hd4531045464%_)))
                                      (let ((_%tl4532745376%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4532545369%_)))
                                            (_%hd4532645373%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4532545369%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4531145467%_)
                                            (let ((_%__splice4760047601%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4531145467%_
                                                    '0)))
                                              (let ((_%tl4533045382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4760047601%_
                                                        '1)))
                                                    (_%target4532845379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4760047601%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4533045382%_)
                                                    (_%__match4764847649%_
                                                     _%e4530645450%_
                                                     _%hd4530745454%_
                                                     _%tl4530845457%_
                                                     _%e4530945460%_
                                                     _%hd4531045464%_
                                                     _%tl4531145467%_
                                                     _%e4532545369%_
                                                     _%hd4532645373%_
                                                     _%tl4532745376%_
                                                     _%__splice4760047601%_
                                                     _%target4532845379%_
                                                     _%tl4533045382%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4530245342%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4530245342%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4530245342%_))))))
                        (let () (declare (not safe)) (_%g4530245342%_)))))
                (let () (declare (not safe)) (_%g4530245342%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx45502%_)
       (let* ((_%g4550545525%_
               (lambda (_%g4550645521%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4550645521%_)))
              (_%g4550445596%_
               (lambda (_%g4550645529%_)
                 (if (gx#stx-pair? _%g4550645529%_)
                     (let ((_%e4550845532%_ (gx#syntax-e _%g4550645529%_)))
                       (let ((_%hd4550945536%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4550845532%_)))
                             (_%tl4551045539%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4550845532%_))))
                         (if (gx#stx-pair/null? _%tl4551045539%_)
                             (let ((_g47743_
                                    (gx#syntax-split-splice
                                     _%tl4551045539%_
                                     '0)))
                               (begin
                                 (let ((_g47744_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g47743_)
                                              (##values-length _g47743_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g47744_ 2)))
                                       (error "Context expects 2 values"
                                              _g47744_)))
                                 (let ((_%target4551145542%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g47743_ 0)))
                                       (_%tl4551345545%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g47743_ 1))))
                                   (if (gx#stx-null? _%tl4551345545%_)
                                       (letrec ((_%loop4551445548%_
                                                 (lambda (_%hd4551245552%_
                                                          _%body4551845555%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4551245552%_)
                                                       (let ((_%e4551545558%_
                                                              (gx#syntax-e
                                                               _%hd4551245552%_)))
                                                         (let ((_%lp-hd4551645562%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4551545558%_)))
                       (_%lp-tl4551745565%_
                        (let () (declare (not safe)) (##cdr _%e4551545558%_))))
                   (_%loop4551445548%_
                    _%lp-tl4551745565%_
                    (cons _%lp-hd4551645562%_ _%body4551845555%_))))
               (let ((_%body4551945568%_ (reverse _%body4551845555%_)))
                 ((lambda (_%L45572%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4558745590%_
                                                _%g4558845593%_)
                                         (cons _%g4558745590%_
                                               _%g4558845593%_))
                                       '()
                                       _%L45572%_))))
                  _%body4551945568%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4551445548%_
                                          _%target4551145542%_
                                          '()))
                                       (_%g4550545525%_ _%g4550645529%_)))))
                             (_%g4550545525%_ _%g4550645529%_))))
                     (_%g4550545525%_ _%g4550645529%_)))))
         (_%g4550445596%_ _%stx45502%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx45601%_)
       (let* ((_%g4560445624%_
               (lambda (_%g4560545620%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4560545620%_)))
              (_%g4560345695%_
               (lambda (_%g4560545628%_)
                 (if (gx#stx-pair? _%g4560545628%_)
                     (let ((_%e4560745631%_ (gx#syntax-e _%g4560545628%_)))
                       (let ((_%hd4560845635%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4560745631%_)))
                             (_%tl4560945638%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4560745631%_))))
                         (if (gx#stx-pair/null? _%tl4560945638%_)
                             (let ((_g47745_
                                    (gx#syntax-split-splice
                                     _%tl4560945638%_
                                     '0)))
                               (begin
                                 (let ((_g47746_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g47745_)
                                              (##values-length _g47745_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g47746_ 2)))
                                       (error "Context expects 2 values"
                                              _g47746_)))
                                 (let ((_%target4561045641%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g47745_ 0)))
                                       (_%tl4561245644%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g47745_ 1))))
                                   (if (gx#stx-null? _%tl4561245644%_)
                                       (letrec ((_%loop4561345647%_
                                                 (lambda (_%hd4561145651%_
                                                          _%body4561745654%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4561145651%_)
                                                       (let ((_%e4561445657%_
                                                              (gx#syntax-e
                                                               _%hd4561145651%_)))
                                                         (let ((_%lp-hd4561545661%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4561445657%_)))
                       (_%lp-tl4561645664%_
                        (let () (declare (not safe)) (##cdr _%e4561445657%_))))
                   (_%loop4561345647%_
                    _%lp-tl4561645664%_
                    (cons _%lp-hd4561545661%_ _%body4561745654%_))))
               (let ((_%body4561845667%_ (reverse _%body4561745654%_)))
                 ((lambda (_%L45671%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4568645689%_
                                                _%g4568745692%_)
                                         (cons _%g4568645689%_
                                               _%g4568745692%_))
                                       '()
                                       _%L45671%_))))
                  _%body4561845667%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4561345647%_
                                          _%target4561045641%_
                                          '()))
                                       (_%g4560445624%_ _%g4560545628%_)))))
                             (_%g4560445624%_ _%g4560545628%_))))
                     (_%g4560445624%_ _%g4560545628%_)))))
         (_%g4560345695%_ _%stx45601%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx45700%_)
       (let* ((_%g4570345727%_
               (lambda (_%g4570445723%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4570445723%_)))
              (_%g4570245855%_
               (lambda (_%g4570445731%_)
                 (if (gx#stx-pair? _%g4570445731%_)
                     (let ((_%e4570745734%_ (gx#syntax-e _%g4570445731%_)))
                       (let ((_%hd4570845738%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4570745734%_)))
                             (_%tl4570945741%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4570745734%_))))
                         (if (gx#stx-pair? _%tl4570945741%_)
                             (let ((_%e4571045744%_
                                    (gx#syntax-e _%tl4570945741%_)))
                               (let ((_%hd4571145748%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4571045744%_)))
                                     (_%tl4571245751%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4571045744%_))))
                                 (if (gx#stx-pair/null? _%tl4571245751%_)
                                     (let ((_g47747_
                                            (gx#syntax-split-splice
                                             _%tl4571245751%_
                                             '0)))
                                       (begin
                                         (let ((_g47748_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47747_)
                                                      (##values-length
                                                       _g47747_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47748_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47748_)))
                                         (let ((_%target4571345754%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47747_ 0)))
                                               (_%tl4571545757%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47747_ 1))))
                                           (if (gx#stx-null? _%tl4571545757%_)
                                               (letrec ((_%loop4571645760%_
                                                         (lambda (_%hd4571445764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4572045767%_)
                   (if (gx#stx-pair? _%hd4571445764%_)
                       (let ((_%e4571745770%_ (gx#syntax-e _%hd4571445764%_)))
                         (let ((_%lp-hd4571845774%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4571745770%_)))
                               (_%lp-tl4571945777%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4571745770%_))))
                           (_%loop4571645760%_
                            _%lp-tl4571945777%_
                            (cons _%lp-hd4571845774%_ _%id4572045767%_))))
                       (let ((_%id4572145780%_ (reverse _%id4572045767%_)))
                         ((lambda (_%L45784%_ _%L45786%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4580345806%_
                                                 _%g4580445809%_)
                                          (cons _%g4580345806%_
                                                _%g4580445809%_))
                                        '()
                                        _%L45784%_))
                                (let* ((_%keys45820%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4581145814%_
                                                         _%g4581245817%_)
                                                  (cons _%g4581145814%_
                                                        _%g4581245817%_))
                                                '()
                                                _%L45784%_)))
                                       (_%keytab45831%_
                                        (let ((_%ht45823%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4582545827%_)
                                             (hash-put!
                                              _%ht45823%_
                                              _%g4582545827%_
                                              '#t))
                                           _%keys45820%_)
                                          _%ht45823%_))
                                       (_%imports45834%_
                                        (gx#core-expand-import-source
                                         _%L45786%_))
                                       (_%fold-e45850%_
                                        (letrec ((_%fold-e45837%_
                                                  (lambda (_%in45840%_
                                                           _%r45842%_)
                                                    (if (gx#module-import?
                                                         _%in45840%_)
                                                        (if (hash-get
                                                             _%keytab45831%_
                                                             (gx#module-import-name
                                                              _%in45840%_))
                                                            (cons _%in45840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r45842%_)
                    _%r45842%_)
                (if (gx#import-set? _%in45840%_)
                    (foldl _%fold-e45837%_
                           _%r45842%_
                           (gx#import-set-imports _%in45840%_))
                    _%r45842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e45837%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e45850%_
                                               '()
                                               _%imports45834%_)))
                                (_%g4570345727%_ _%g4570445731%_)))
                          _%id4572145780%_
                          _%hd4571145748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4571645760%_
                                                  _%target4571345754%_
                                                  '()))
                                               (_%g4570345727%_
                                                _%g4570445731%_)))))
                                     (_%g4570345727%_ _%g4570445731%_))))
                             (_%g4570345727%_ _%g4570445731%_))))
                     (_%g4570345727%_ _%g4570445731%_)))))
         (_%g4570245855%_ _%stx45700%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx45860%_)
       (let* ((_%g4586345887%_
               (lambda (_%g4586445883%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4586445883%_)))
              (_%g4586246015%_
               (lambda (_%g4586445891%_)
                 (if (gx#stx-pair? _%g4586445891%_)
                     (let ((_%e4586745894%_ (gx#syntax-e _%g4586445891%_)))
                       (let ((_%hd4586845898%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4586745894%_)))
                             (_%tl4586945901%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4586745894%_))))
                         (if (gx#stx-pair? _%tl4586945901%_)
                             (let ((_%e4587045904%_
                                    (gx#syntax-e _%tl4586945901%_)))
                               (let ((_%hd4587145908%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4587045904%_)))
                                     (_%tl4587245911%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4587045904%_))))
                                 (if (gx#stx-pair/null? _%tl4587245911%_)
                                     (let ((_g47749_
                                            (gx#syntax-split-splice
                                             _%tl4587245911%_
                                             '0)))
                                       (begin
                                         (let ((_g47750_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47749_)
                                                      (##values-length
                                                       _g47749_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47750_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47750_)))
                                         (let ((_%target4587345914%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47749_ 0)))
                                               (_%tl4587545917%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47749_ 1))))
                                           (if (gx#stx-null? _%tl4587545917%_)
                                               (letrec ((_%loop4587645920%_
                                                         (lambda (_%hd4587445924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4588045927%_)
                   (if (gx#stx-pair? _%hd4587445924%_)
                       (let ((_%e4587745930%_ (gx#syntax-e _%hd4587445924%_)))
                         (let ((_%lp-hd4587845934%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4587745930%_)))
                               (_%lp-tl4587945937%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4587745930%_))))
                           (_%loop4587645920%_
                            _%lp-tl4587945937%_
                            (cons _%lp-hd4587845934%_ _%id4588045927%_))))
                       (let ((_%id4588145940%_ (reverse _%id4588045927%_)))
                         ((lambda (_%L45944%_ _%L45946%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4596345966%_
                                                 _%g4596445969%_)
                                          (cons _%g4596345966%_
                                                _%g4596445969%_))
                                        '()
                                        _%L45944%_))
                                (let* ((_%keys45980%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4597145974%_
                                                         _%g4597245977%_)
                                                  (cons _%g4597145974%_
                                                        _%g4597245977%_))
                                                '()
                                                _%L45944%_)))
                                       (_%keytab45991%_
                                        (let ((_%ht45983%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4598545987%_)
                                             (hash-put!
                                              _%ht45983%_
                                              _%g4598545987%_
                                              '#t))
                                           _%keys45980%_)
                                          _%ht45983%_))
                                       (_%imports45994%_
                                        (gx#core-expand-import-source
                                         _%L45946%_))
                                       (_%fold-e46010%_
                                        (letrec ((_%fold-e45997%_
                                                  (lambda (_%in46000%_
                                                           _%r46002%_)
                                                    (if (gx#module-import?
                                                         _%in46000%_)
                                                        (if (hash-get
                                                             _%keytab45991%_
                                                             (gx#module-import-name
                                                              _%in46000%_))
                                                            _%r46002%_
                                                            (cons _%in46000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46002%_))
                (if (gx#import-set? _%in46000%_)
                    (foldl _%fold-e45997%_
                           _%r46002%_
                           (gx#import-set-imports _%in46000%_))
                    (cons _%in46000%_ _%r46002%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e45997%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46010%_
                                               '()
                                               _%imports45994%_)))
                                (_%g4586345887%_ _%g4586445891%_)))
                          _%id4588145940%_
                          _%hd4587145908%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4587645920%_
                                                  _%target4587345914%_
                                                  '()))
                                               (_%g4586345887%_
                                                _%g4586445891%_)))))
                                     (_%g4586345887%_ _%g4586445891%_))))
                             (_%g4586345887%_ _%g4586445891%_))))
                     (_%g4586345887%_ _%g4586445891%_)))))
         (_%g4586246015%_ _%stx45860%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in46067%_ _%rename46069%_)
      (gx#make-module-import
       (gx#module-import-source _%in46067%_)
       _%rename46069%_
       (gx#module-import-phi _%in46067%_)
       (gx#module-import-weak? _%in46067%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name46020%_ _%pre46022%_)
      (let* ((_%name4602346031%_ _%name46020%_)
             (_%else4602546043%_
              (lambda () (make-symbol _%pre46022%_ _%name46020%_)))
             (_%K4602746051%_
              (lambda (_%mark46047%_ _%id46049%_)
                (cons (make-symbol _%pre46022%_ _%id46049%_) _%mark46047%_))))
        (if (pair? _%name4602346031%_)
            (let ((_%hd4602846055%_
                   (let () (declare (not safe)) (##car _%name4602346031%_)))
                  (_%tl4602946058%_
                   (let () (declare (not safe)) (##cdr _%name4602346031%_))))
              (let* ((_%id46061%_ _%hd4602846055%_)
                     (_%mark46064%_ _%tl4602946058%_))
                (_%K4602746051%_ _%mark46064%_ _%id46061%_)))
            (_%else4602546043%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx46071%_)
       (let* ((_%g4607446107%_
               (lambda (_%g4607546103%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4607546103%_)))
              (_%g4607346302%_
               (lambda (_%g4607546111%_)
                 (if (gx#stx-pair? _%g4607546111%_)
                     (let ((_%e4607946114%_ (gx#syntax-e _%g4607546111%_)))
                       (let ((_%hd4608046118%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4607946114%_)))
                             (_%tl4608146121%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4607946114%_))))
                         (if (gx#stx-pair? _%tl4608146121%_)
                             (let ((_%e4608246124%_
                                    (gx#syntax-e _%tl4608146121%_)))
                               (let ((_%hd4608346128%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4608246124%_)))
                                     (_%tl4608446131%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4608246124%_))))
                                 (if (gx#stx-pair/null? _%tl4608446131%_)
                                     (let ((_g47751_
                                            (gx#syntax-split-splice
                                             _%tl4608446131%_
                                             '0)))
                                       (begin
                                         (let ((_g47752_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47751_)
                                                      (##values-length
                                                       _g47751_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47752_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47752_)))
                                         (let ((_%target4608546134%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47751_ 0)))
                                               (_%tl4608746137%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47751_ 1))))
                                           (if (gx#stx-null? _%tl4608746137%_)
                                               (letrec ((_%loop4608846140%_
                                                         (lambda (_%hd4608646144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4609246147%_
                          _%id4609346149%_)
                   (if (gx#stx-pair? _%hd4608646144%_)
                       (let ((_%e4608946152%_ (gx#syntax-e _%hd4608646144%_)))
                         (let ((_%lp-hd4609046156%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4608946152%_)))
                               (_%lp-tl4609146159%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4608946152%_))))
                           (if (gx#stx-pair? _%lp-hd4609046156%_)
                               (let ((_%e4609646162%_
                                      (gx#syntax-e _%lp-hd4609046156%_)))
                                 (let ((_%hd4609746166%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4609646162%_)))
                                       (_%tl4609846169%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4609646162%_))))
                                   (if (gx#stx-pair? _%tl4609846169%_)
                                       (let ((_%e4609946172%_
                                              (gx#syntax-e _%tl4609846169%_)))
                                         (let ((_%hd4610046176%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4609946172%_)))
                                               (_%tl4610146179%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4609946172%_))))
                                           (if (gx#stx-null? _%tl4610146179%_)
                                               (_%loop4608846140%_
                                                _%lp-tl4609146159%_
                                                (cons _%hd4610046176%_
                                                      _%new-id4609246147%_)
                                                (cons _%hd4609746166%_
                                                      _%id4609346149%_))
                                               (_%g4607446107%_
                                                _%g4607546111%_))))
                                       (_%g4607446107%_ _%g4607546111%_))))
                               (_%g4607446107%_ _%g4607546111%_))))
                       (let ((_%new-id4609446182%_
                              (reverse _%new-id4609246147%_))
                             (_%id4609546185%_ (reverse _%id4609346149%_)))
                         ((lambda (_%L46188%_ _%L46190%_ _%L46191%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4620946212%_
                                                      _%g4621046215%_)
                                               (cons _%g4620946212%_
                                                     _%g4621046215%_))
                                             '()
                                             _%L46190%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4621746220%_
                                                      _%g4621846223%_)
                                               (cons _%g4621746220%_
                                                     _%g4621846223%_))
                                             '()
                                             _%L46188%_)))
                                (let* ((_%keytab46226%_ (make-hash-table))
                                       (_%found46229%_ (make-hash-table))
                                       (_%_46252%_
                                        (for-each
                                         (lambda (_%id46232%_ _%new-id46234%_)
                                           (hash-put!
                                            _%keytab46226%_
                                            (gx#core-identifier-key
                                             _%id46232%_)
                                            (gx#core-identifier-key
                                             _%new-id46234%_)))
                                         (foldr (lambda (_%g4623546238%_
                                                         _%g4623646241%_)
                                                  (cons _%g4623546238%_
                                                        _%g4623646241%_))
                                                '()
                                                _%L46190%_)
                                         (foldr (lambda (_%g4624346246%_
                                                         _%g4624446249%_)
                                                  (cons _%g4624346246%_
                                                        _%g4624446249%_))
                                                '()
                                                _%L46188%_)))
                                       (_%imports46255%_
                                        (gx#core-expand-import-source
                                         _%L46191%_))
                                       (_%fold-e46283%_
                                        (letrec ((_%fold-e46258%_
                                                  (lambda (_%in46261%_
                                                           _%r46263%_)
                                                    (if (gx#module-import?
                                                         _%in46261%_)
                                                        (let* ((_%name46267%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in46261%_))
                       (_%$e46270%_ (hash-get _%keytab46226%_ _%name46267%_)))
                  (if _%$e46270%_
                      ((lambda (_%rename46274%_)
                         (hash-put! _%found46229%_ _%name46267%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in46261%_
                                _%rename46274%_)
                               _%r46263%_))
                       _%$e46270%_)
                      (cons _%in46261%_ _%r46263%_)))
                (if (gx#import-set? _%in46261%_)
                    (foldl _%fold-e46258%_
                           _%r46263%_
                           (gx#import-set-imports _%in46261%_))
                    (cons _%in46261%_ _%r46263%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46258%_))
                                       (_%new-imports46286%_
                                        (foldl _%fold-e46283%_
                                               '()
                                               _%imports46255%_)))
                                  (for-each
                                   (lambda (_%id46291%_)
                                     (if (hash-get
                                          _%found46229%_
                                          (gx#core-identifier-key _%id46291%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx46071%_
                                          _%id46291%_)))
                                   (foldr (lambda (_%g4629346296%_
                                                   _%g4629446299%_)
                                            (cons _%g4629346296%_
                                                  _%g4629446299%_))
                                          '()
                                          _%L46190%_))
                                  (cons 'begin: _%new-imports46286%_))
                                (_%g4607446107%_ _%g4607546111%_)))
                          _%new-id4609446182%_
                          _%id4609546185%_
                          _%hd4608346128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4608846140%_
                                                  _%target4608546134%_
                                                  '()
                                                  '()))
                                               (_%g4607446107%_
                                                _%g4607546111%_)))))
                                     (_%g4607446107%_ _%g4607546111%_))))
                             (_%g4607446107%_ _%g4607546111%_))))
                     (_%g4607446107%_ _%g4607546111%_)))))
         (_%g4607346302%_ _%stx46071%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx46307%_)
       (let* ((_%g4631046328%_
               (lambda (_%g4631146324%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4631146324%_)))
              (_%g4630946413%_
               (lambda (_%g4631146332%_)
                 (if (gx#stx-pair? _%g4631146332%_)
                     (let ((_%e4631446335%_ (gx#syntax-e _%g4631146332%_)))
                       (let ((_%hd4631546339%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4631446335%_)))
                             (_%tl4631646342%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4631446335%_))))
                         (if (gx#stx-pair? _%tl4631646342%_)
                             (let ((_%e4631746345%_
                                    (gx#syntax-e _%tl4631646342%_)))
                               (let ((_%hd4631846349%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4631746345%_)))
                                     (_%tl4631946352%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4631746345%_))))
                                 (if (gx#stx-pair? _%tl4631946352%_)
                                     (let ((_%e4632046355%_
                                            (gx#syntax-e _%tl4631946352%_)))
                                       (let ((_%hd4632146359%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4632046355%_)))
                                             (_%tl4632246362%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4632046355%_))))
                                         (if (gx#stx-null? _%tl4632246362%_)
                                             ((lambda (_%L46365%_ _%L46367%_)
                                                (if (gx#identifier? _%L46365%_)
                                                    (let* ((_%pre46383%_
                                                            (gx#stx-e
                                                             _%L46365%_))
                                                           (_%imports46386%_
                                                            (gx#core-expand-import-source
                                                             _%L46367%_))
                                                           (_%rename-e46392%_
                                                            (lambda (_%name46389%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name46389%_
                                                               _%pre46383%_)))
                                                           (_%fold-e46408%_
                                                            (letrec ((_%fold-e46395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in46398%_ _%r46400%_)
                                (if (gx#module-import? _%in46398%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in46398%_
                                           (_%rename-e46392%_
                                            (gx#module-import-name
                                             _%in46398%_)))
                                          _%r46400%_)
                                    (if (gx#import-set? _%in46398%_)
                                        (foldl _%fold-e46395%_
                                               _%r46400%_
                                               (gx#import-set-imports
                                                _%in46398%_))
                                        (cons _%in46398%_ _%r46400%_))))))
                      _%fold-e46395%_)))
              (cons 'begin: (foldl _%fold-e46408%_ '() _%imports46386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4631046328%_
                                                     _%g4631146332%_)))
                                              _%hd4632146359%_
                                              _%hd4631846349%_)
                                             (_%g4631046328%_
                                              _%g4631146332%_))))
                                     (_%g4631046328%_ _%g4631146332%_))))
                             (_%g4631046328%_ _%g4631146332%_))))
                     (_%g4631046328%_ _%g4631146332%_)))))
         (_%g4630946413%_ _%stx46307%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx46417%_)
       (letrec ((_%flatten46420%_
                 (lambda (_%list-of-lists46675%_)
                   (foldr (lambda (_%v46678%_ _%acc46680%_)
                            (if (null? _%v46678%_)
                                _%acc46680%_
                                (if (pair? _%v46678%_)
                                    (append (_%flatten46420%_ _%v46678%_)
                                            _%acc46680%_)
                                    (cons _%v46678%_ _%acc46680%_))))
                          '()
                          _%list-of-lists46675%_)))
                (_%expand-path46422%_
                 (lambda (_%top46543%_ _%mod46545%_)
                   (let* ((_%__stx4765147652%_ _%mod46545%_)
                          (_%g4654846570%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4765147652%_))))
                     (let ((_%__kont4765447655%_
                            (lambda (_%L46638%_ _%L46640%_)
                              (map (lambda (_%mod46655%_)
                                     (gx#stx-identifier
                                      _%top46543%_
                                      _%top46543%_
                                      '"/"
                                      _%mod46655%_))
                                   (_%flatten46420%_
                                    (map (lambda (_%g4665746659%_)
                                           (_%expand-path46422%_
                                            _%L46640%_
                                            _%g4665746659%_))
                                         (foldr (lambda (_%g4666246665%_
                                                         _%g4666346668%_)
                                                  (cons _%g4666246665%_
                                                        _%g4666346668%_))
                                                '()
                                                _%L46638%_))))))
                           (_%__kont4765847659%_
                            (lambda (_%L46577%_)
                              (gx#stx-identifier
                               _%top46543%_
                               _%top46543%_
                               '"/"
                               _%L46577%_))))
                       (let* ((_%g4654746591%_
                               (lambda ()
                                 (let ((_%L46577%_ _%__stx4765147652%_))
                                   (if (or (gx#identifier? _%L46577%_)
                                           (gx#stx-fixnum? _%L46577%_))
                                       (_%__kont4765847659%_ _%L46577%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4654846570%_))))))
                              (_%__match4767447675%_
                               (lambda (_%e4655246598%_
                                        _%hd4655346602%_
                                        _%tl4655446605%_
                                        _%__splice4765647657%_
                                        _%target4655546608%_
                                        _%tl4655746611%_)
                                 (letrec ((_%loop4655846614%_
                                           (lambda (_%hd4655646618%_
                                                    _%mod4656246621%_)
                                             (if (gx#stx-pair?
                                                  _%hd4655646618%_)
                                                 (let ((_%e4655946624%_
                                                        (gx#syntax-e
                                                         _%hd4655646618%_)))
                                                   (let ((_%lp-tl4656146631%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4655946624%_)))
                                                         (_%lp-hd4656046628%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4655946624%_))))
                                                     (_%loop4655846614%_
                                                      _%lp-tl4656146631%_
                                                      (cons _%lp-hd4656046628%_
                                                            _%mod4656246621%_))))
                                                 (let ((_%mod4656346634%_
                                                        (reverse _%mod4656246621%_)))
                                                   (_%__kont4765447655%_
                                                    _%mod4656346634%_
                                                    _%hd4655346602%_))))))
                                   (_%loop4655846614%_
                                    _%target4655546608%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4765147652%_)
                             (let ((_%e4655246598%_
                                    (gx#syntax-e _%__stx4765147652%_)))
                               (let ((_%tl4655446605%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4655246598%_)))
                                     (_%hd4655346602%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4655246598%_))))
                                 (if (gx#stx-pair/null? _%tl4655446605%_)
                                     (let ((_%__splice4765647657%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4655446605%_
                                             '0)))
                                       (let ((_%tl4655746611%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4765647657%_
                                                 '1)))
                                             (_%target4655546608%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4765647657%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4655746611%_)
                                             (_%__match4767447675%_
                                              _%e4655246598%_
                                              _%hd4655346602%_
                                              _%tl4655446605%_
                                              _%__splice4765647657%_
                                              _%target4655546608%_
                                              _%tl4655746611%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4654746591%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4654746591%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4654746591%_)))))))))
         (let* ((_%g4642446448%_
                 (lambda (_%g4642546444%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4642546444%_)))
                (_%g4642346539%_
                 (lambda (_%g4642546452%_)
                   (if (gx#stx-pair? _%g4642546452%_)
                       (let ((_%e4642846455%_ (gx#syntax-e _%g4642546452%_)))
                         (let ((_%hd4642946459%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4642846455%_)))
                               (_%tl4643046462%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4642846455%_))))
                           (if (gx#stx-pair? _%tl4643046462%_)
                               (let ((_%e4643146465%_
                                      (gx#syntax-e _%tl4643046462%_)))
                                 (let ((_%hd4643246469%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4643146465%_)))
                                       (_%tl4643346472%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4643146465%_))))
                                   (if (gx#stx-pair/null? _%tl4643346472%_)
                                       (let ((_g47753_
                                              (gx#syntax-split-splice
                                               _%tl4643346472%_
                                               '0)))
                                         (begin
                                           (let ((_g47754_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g47753_)
                                                        (##values-length
                                                         _g47753_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g47754_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g47754_)))
                                           (let ((_%target4643446475%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g47753_ 0)))
                                                 (_%tl4643646478%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g47753_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4643646478%_)
                                                 (letrec ((_%loop4643746481%_
                                                           (lambda (_%hd4643546485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4644146488%_)
                     (if (gx#stx-pair? _%hd4643546485%_)
                         (let ((_%e4643846491%_
                                (gx#syntax-e _%hd4643546485%_)))
                           (let ((_%lp-hd4643946495%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4643846491%_)))
                                 (_%lp-tl4644046498%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4643846491%_))))
                             (_%loop4643746481%_
                              _%lp-tl4644046498%_
                              (cons _%lp-hd4643946495%_ _%mod4644146488%_))))
                         (let ((_%mod4644246501%_ (reverse _%mod4644146488%_)))
                           ((lambda (_%L46505%_ _%L46507%_)
                              (cons 'begin:
                                    (_%flatten46420%_
                                     (map (lambda (_%g4652546527%_)
                                            (_%expand-path46422%_
                                             _%L46507%_
                                             _%g4652546527%_))
                                          (foldr (lambda (_%g4653046533%_
                                                          _%g4653146536%_)
                                                   (cons _%g4653046533%_
                                                         _%g4653146536%_))
                                                 '()
                                                 _%L46505%_)))))
                            _%mod4644246501%_
                            _%hd4643246469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4643746481%_
                                                    _%target4643446475%_
                                                    '()))
                                                 (_%g4642446448%_
                                                  _%g4642546452%_)))))
                                       (_%g4642446448%_ _%g4642546452%_))))
                               (_%g4642446448%_ _%g4642546452%_))))
                       (_%g4642446448%_ _%g4642546452%_)))))
           (_%g4642346539%_ _%stx46417%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx46690%_)
       (let* ((_%g4669346717%_
               (lambda (_%g4669446713%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4669446713%_)))
              (_%g4669246845%_
               (lambda (_%g4669446721%_)
                 (if (gx#stx-pair? _%g4669446721%_)
                     (let ((_%e4669746724%_ (gx#syntax-e _%g4669446721%_)))
                       (let ((_%hd4669846728%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4669746724%_)))
                             (_%tl4669946731%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4669746724%_))))
                         (if (gx#stx-pair? _%tl4669946731%_)
                             (let ((_%e4670046734%_
                                    (gx#syntax-e _%tl4669946731%_)))
                               (let ((_%hd4670146738%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4670046734%_)))
                                     (_%tl4670246741%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4670046734%_))))
                                 (if (gx#stx-pair/null? _%tl4670246741%_)
                                     (let ((_g47755_
                                            (gx#syntax-split-splice
                                             _%tl4670246741%_
                                             '0)))
                                       (begin
                                         (let ((_g47756_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47755_)
                                                      (##values-length
                                                       _g47755_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47756_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47756_)))
                                         (let ((_%target4670346744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47755_ 0)))
                                               (_%tl4670546747%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47755_ 1))))
                                           (if (gx#stx-null? _%tl4670546747%_)
                                               (letrec ((_%loop4670646750%_
                                                         (lambda (_%hd4670446754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4671046757%_)
                   (if (gx#stx-pair? _%hd4670446754%_)
                       (let ((_%e4670746760%_ (gx#syntax-e _%hd4670446754%_)))
                         (let ((_%lp-hd4670846764%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4670746760%_)))
                               (_%lp-tl4670946767%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4670746760%_))))
                           (_%loop4670646750%_
                            _%lp-tl4670946767%_
                            (cons _%lp-hd4670846764%_ _%id4671046757%_))))
                       (let ((_%id4671146770%_ (reverse _%id4671046757%_)))
                         ((lambda (_%L46774%_ _%L46776%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4679346796%_
                                                 _%g4679446799%_)
                                          (cons _%g4679346796%_
                                                _%g4679446799%_))
                                        '()
                                        _%L46774%_))
                                (let* ((_%keys46810%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4680146804%_
                                                         _%g4680246807%_)
                                                  (cons _%g4680146804%_
                                                        _%g4680246807%_))
                                                '()
                                                _%L46774%_)))
                                       (_%keytab46821%_
                                        (let ((_%ht46813%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4681546817%_)
                                             (hash-put!
                                              _%ht46813%_
                                              _%g4681546817%_
                                              '#t))
                                           _%keys46810%_)
                                          _%ht46813%_))
                                       (_%exports46824%_
                                        (gx#core-expand-export-source
                                         _%L46776%_))
                                       (_%fold-e46840%_
                                        (letrec ((_%fold-e46827%_
                                                  (lambda (_%out46830%_
                                                           _%r46832%_)
                                                    (if (gx#module-export?
                                                         _%out46830%_)
                                                        (if (hash-get
                                                             _%keytab46821%_
                                                             (gx#module-export-name
                                                              _%out46830%_))
                                                            _%r46832%_
                                                            (cons _%out46830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46832%_))
                (if (gx#export-set? _%out46830%_)
                    (foldl _%fold-e46827%_
                           _%r46832%_
                           (gx#export-set-exports _%out46830%_))
                    _%r46832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46827%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46840%_
                                               '()
                                               _%exports46824%_)))
                                (_%g4669346717%_ _%g4669446721%_)))
                          _%id4671146770%_
                          _%hd4670146738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4670646750%_
                                                  _%target4670346744%_
                                                  '()))
                                               (_%g4669346717%_
                                                _%g4669446721%_)))))
                                     (_%g4669346717%_ _%g4669446721%_))))
                             (_%g4669346717%_ _%g4669446721%_))))
                     (_%g4669346717%_ _%g4669446721%_)))))
         (_%g4669246845%_ _%stx46690%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out46850%_ _%rename46852%_)
      (gx#make-module-export
       (gx#module-export-context _%out46850%_)
       (gx#module-export-key _%out46850%_)
       (gx#module-export-phi _%out46850%_)
       _%rename46852%_
       (gx#module-export-weak? _%out46850%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx46854%_)
       (let* ((_%g4685746890%_
               (lambda (_%g4685846886%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4685846886%_)))
              (_%g4685647085%_
               (lambda (_%g4685846894%_)
                 (if (gx#stx-pair? _%g4685846894%_)
                     (let ((_%e4686246897%_ (gx#syntax-e _%g4685846894%_)))
                       (let ((_%hd4686346901%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4686246897%_)))
                             (_%tl4686446904%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4686246897%_))))
                         (if (gx#stx-pair? _%tl4686446904%_)
                             (let ((_%e4686546907%_
                                    (gx#syntax-e _%tl4686446904%_)))
                               (let ((_%hd4686646911%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4686546907%_)))
                                     (_%tl4686746914%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4686546907%_))))
                                 (if (gx#stx-pair/null? _%tl4686746914%_)
                                     (let ((_g47757_
                                            (gx#syntax-split-splice
                                             _%tl4686746914%_
                                             '0)))
                                       (begin
                                         (let ((_g47758_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g47757_)
                                                      (##values-length
                                                       _g47757_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g47758_ 2)))
                                               (error "Context expects 2 values"
                                                      _g47758_)))
                                         (let ((_%target4686846917%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47757_ 0)))
                                               (_%tl4687046920%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g47757_ 1))))
                                           (if (gx#stx-null? _%tl4687046920%_)
                                               (letrec ((_%loop4687146923%_
                                                         (lambda (_%hd4686946927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4687546930%_
                          _%id4687646932%_)
                   (if (gx#stx-pair? _%hd4686946927%_)
                       (let ((_%e4687246935%_ (gx#syntax-e _%hd4686946927%_)))
                         (let ((_%lp-hd4687346939%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4687246935%_)))
                               (_%lp-tl4687446942%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4687246935%_))))
                           (if (gx#stx-pair? _%lp-hd4687346939%_)
                               (let ((_%e4687946945%_
                                      (gx#syntax-e _%lp-hd4687346939%_)))
                                 (let ((_%hd4688046949%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4687946945%_)))
                                       (_%tl4688146952%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4687946945%_))))
                                   (if (gx#stx-pair? _%tl4688146952%_)
                                       (let ((_%e4688246955%_
                                              (gx#syntax-e _%tl4688146952%_)))
                                         (let ((_%hd4688346959%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4688246955%_)))
                                               (_%tl4688446962%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4688246955%_))))
                                           (if (gx#stx-null? _%tl4688446962%_)
                                               (_%loop4687146923%_
                                                _%lp-tl4687446942%_
                                                (cons _%hd4688346959%_
                                                      _%new-id4687546930%_)
                                                (cons _%hd4688046949%_
                                                      _%id4687646932%_))
                                               (_%g4685746890%_
                                                _%g4685846894%_))))
                                       (_%g4685746890%_ _%g4685846894%_))))
                               (_%g4685746890%_ _%g4685846894%_))))
                       (let ((_%new-id4687746965%_
                              (reverse _%new-id4687546930%_))
                             (_%id4687846968%_ (reverse _%id4687646932%_)))
                         ((lambda (_%L46971%_ _%L46973%_ _%L46974%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4699246995%_
                                                      _%g4699346998%_)
                                               (cons _%g4699246995%_
                                                     _%g4699346998%_))
                                             '()
                                             _%L46973%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4700047003%_
                                                      _%g4700147006%_)
                                               (cons _%g4700047003%_
                                                     _%g4700147006%_))
                                             '()
                                             _%L46971%_)))
                                (let* ((_%keytab47009%_ (make-hash-table))
                                       (_%found47012%_ (make-hash-table))
                                       (_%_47035%_
                                        (for-each
                                         (lambda (_%id47015%_ _%new-id47017%_)
                                           (hash-put!
                                            _%keytab47009%_
                                            (gx#core-identifier-key
                                             _%id47015%_)
                                            (gx#core-identifier-key
                                             _%new-id47017%_)))
                                         (foldr (lambda (_%g4701847021%_
                                                         _%g4701947024%_)
                                                  (cons _%g4701847021%_
                                                        _%g4701947024%_))
                                                '()
                                                _%L46973%_)
                                         (foldr (lambda (_%g4702647029%_
                                                         _%g4702747032%_)
                                                  (cons _%g4702647029%_
                                                        _%g4702747032%_))
                                                '()
                                                _%L46971%_)))
                                       (_%exports47038%_
                                        (gx#core-expand-export-source
                                         _%L46974%_))
                                       (_%fold-e47066%_
                                        (letrec ((_%fold-e47041%_
                                                  (lambda (_%out47044%_
                                                           _%r47046%_)
                                                    (if (gx#module-export?
                                                         _%out47044%_)
                                                        (let* ((_%name47050%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out47044%_))
                       (_%$e47053%_ (hash-get _%keytab47009%_ _%name47050%_)))
                  (if _%$e47053%_
                      ((lambda (_%rename47057%_)
                         (hash-put! _%found47012%_ _%name47050%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out47044%_
                                _%rename47057%_)
                               _%r47046%_))
                       _%$e47053%_)
                      (cons _%out47044%_ _%r47046%_)))
                (if (gx#export-set? _%out47044%_)
                    (foldl _%fold-e47041%_
                           _%r47046%_
                           (gx#export-set-exports _%out47044%_))
                    (cons _%out47044%_ _%r47046%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47041%_))
                                       (_%new-exports47069%_
                                        (foldl _%fold-e47066%_
                                               '()
                                               _%exports47038%_)))
                                  (for-each
                                   (lambda (_%id47074%_)
                                     (if (hash-get
                                          _%found47012%_
                                          (gx#core-identifier-key _%id47074%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx46854%_
                                          _%id47074%_)))
                                   (foldr (lambda (_%g4707647079%_
                                                   _%g4707747082%_)
                                            (cons _%g4707647079%_
                                                  _%g4707747082%_))
                                          '()
                                          _%L46973%_))
                                  (cons 'begin: _%new-exports47069%_))
                                (_%g4685746890%_ _%g4685846894%_)))
                          _%new-id4687746965%_
                          _%id4687846968%_
                          _%hd4686646911%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4687146923%_
                                                  _%target4686846917%_
                                                  '()
                                                  '()))
                                               (_%g4685746890%_
                                                _%g4685846894%_)))))
                                     (_%g4685746890%_ _%g4685846894%_))))
                             (_%g4685746890%_ _%g4685846894%_))))
                     (_%g4685746890%_ _%g4685846894%_)))))
         (_%g4685647085%_ _%stx46854%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx47090%_)
       (let* ((_%g4709347111%_
               (lambda (_%g4709447107%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4709447107%_)))
              (_%g4709247196%_
               (lambda (_%g4709447115%_)
                 (if (gx#stx-pair? _%g4709447115%_)
                     (let ((_%e4709747118%_ (gx#syntax-e _%g4709447115%_)))
                       (let ((_%hd4709847122%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4709747118%_)))
                             (_%tl4709947125%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4709747118%_))))
                         (if (gx#stx-pair? _%tl4709947125%_)
                             (let ((_%e4710047128%_
                                    (gx#syntax-e _%tl4709947125%_)))
                               (let ((_%hd4710147132%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4710047128%_)))
                                     (_%tl4710247135%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4710047128%_))))
                                 (if (gx#stx-pair? _%tl4710247135%_)
                                     (let ((_%e4710347138%_
                                            (gx#syntax-e _%tl4710247135%_)))
                                       (let ((_%hd4710447142%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4710347138%_)))
                                             (_%tl4710547145%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4710347138%_))))
                                         (if (gx#stx-null? _%tl4710547145%_)
                                             ((lambda (_%L47148%_ _%L47150%_)
                                                (if (gx#identifier? _%L47148%_)
                                                    (let* ((_%pre47166%_
                                                            (gx#stx-e
                                                             _%L47148%_))
                                                           (_%exports47169%_
                                                            (gx#core-expand-export-source
                                                             _%L47150%_))
                                                           (_%rename-e47175%_
                                                            (lambda (_%name47172%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47172%_
                                                               _%pre47166%_)))
                                                           (_%fold-e47191%_
                                                            (letrec ((_%fold-e47178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out47181%_ _%r47183%_)
                                (if (gx#module-export? _%out47181%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out47181%_
                                           (_%rename-e47175%_
                                            (gx#module-export-name
                                             _%out47181%_)))
                                          _%r47183%_)
                                    (if (gx#export-set? _%out47181%_)
                                        (foldl _%fold-e47178%_
                                               _%r47183%_
                                               (gx#export-set-exports
                                                _%out47181%_))
                                        (cons _%out47181%_ _%r47183%_))))))
                      _%fold-e47178%_)))
              (cons 'begin: (foldl _%fold-e47191%_ '() _%exports47169%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4709347111%_
                                                     _%g4709447115%_)))
                                              _%hd4710447142%_
                                              _%hd4710147132%_)
                                             (_%g4709347111%_
                                              _%g4709447115%_))))
                                     (_%g4709347111%_ _%g4709447115%_))))
                             (_%g4709347111%_ _%g4709447115%_))))
                     (_%g4709347111%_ _%g4709447115%_)))))
         (_%g4709247196%_ _%stx47090%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx47200%_)
       (letrec ((_%identifiers47203%_
                 (lambda (_%id47435%_ _%unchecked?47437%_)
                   (let ((_%info47439%_
                          (gx#syntax-local-value _%id47435%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info47439%_))
                         (cons _%id47435%_
                               (cons (let ((__obj47736 _%info47439%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47736
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47736
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj47736
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj47737
                                                         _%info47439%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47737
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47737
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj47737
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?47437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj47738 _%info47439%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj47738
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj47738
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj47738
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj47739 _%info47439%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj47739
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj47739
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj47739
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj47740 _%info47439%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj47740
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj47740
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj47740
                                    'mutators)))))
                 (map cdr
                      (let ((__obj47741 _%info47439%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj47741
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj47741
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj47741 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor47442%_
                                                   (let ((__obj47742
                                                          _%info47439%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj47742
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj47742
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj47742
                                                          'constructor)))))
                                              (if _%ctor47442%_
                                                  (cons _%ctor47442%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx47200%_
                          _%id47435%_))))))
         (let* ((_%__stx4767747678%_ _%stx47200%_)
                (_%g4720747248%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4767747678%_))))
           (let ((_%__kont4768047681%_
                  (lambda (_%L47396%_ _%L47398%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4741747419%_)
                              (_%identifiers47203%_
                               _%g4741747419%_
                               (gx#stx-e _%L47398%_)))
                            (foldr (lambda (_%g4742247425%_ _%g4742347428%_)
                                     (cons _%g4742247425%_ _%g4742347428%_))
                                   '()
                                   _%L47396%_))))))
                 (_%__kont4768447685%_
                  (lambda (_%L47295%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4731147313%_)
                              (_%identifiers47203%_ _%g4731147313%_ '#f))
                            (foldr (lambda (_%g4731647319%_ _%g4731747322%_)
                                     (cons _%g4731647319%_ _%g4731747322%_))
                                   '()
                                   _%L47295%_)))))))
             (let* ((_%__match4773447735%_
                     (lambda (_%e4723147255%_
                              _%hd4723247259%_
                              _%tl4723347262%_
                              _%__splice4768647687%_
                              _%target4723447265%_
                              _%tl4723647268%_)
                       (letrec ((_%loop4723747271%_
                                 (lambda (_%hd4723547275%_ _%id4724147278%_)
                                   (if (gx#stx-pair? _%hd4723547275%_)
                                       (let ((_%e4723847281%_
                                              (gx#syntax-e _%hd4723547275%_)))
                                         (let ((_%lp-tl4724047288%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4723847281%_)))
                                               (_%lp-hd4723947285%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4723847281%_))))
                                           (_%loop4723747271%_
                                            _%lp-tl4724047288%_
                                            (cons _%lp-hd4723947285%_
                                                  _%id4724147278%_))))
                                       (let ((_%id4724247291%_
                                              (reverse _%id4724147278%_)))
                                         (_%__kont4768447685%_
                                          _%id4724247291%_))))))
                         (_%loop4723747271%_ _%target4723447265%_ '()))))
                    (_%__match4772047721%_
                     (lambda (_%e4721147332%_
                              _%hd4721247336%_
                              _%tl4721347339%_
                              _%e4721447342%_
                              _%hd4721547346%_
                              _%tl4721647349%_
                              _%e4721747352%_
                              _%e4721847356%_
                              _%hd4721947360%_
                              _%tl4722047363%_
                              _%__splice4768247683%_
                              _%target4722147366%_
                              _%tl4722347369%_)
                       (letrec ((_%loop4722447372%_
                                 (lambda (_%hd4722247376%_ _%id4722847379%_)
                                   (if (gx#stx-pair? _%hd4722247376%_)
                                       (let ((_%e4722547382%_
                                              (gx#syntax-e _%hd4722247376%_)))
                                         (let ((_%lp-tl4722747389%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4722547382%_)))
                                               (_%lp-hd4722647386%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4722547382%_))))
                                           (_%loop4722447372%_
                                            _%lp-tl4722747389%_
                                            (cons _%lp-hd4722647386%_
                                                  _%id4722847379%_))))
                                       (let ((_%id4722947392%_
                                              (reverse _%id4722847379%_)))
                                         (_%__kont4768047681%_
                                          _%id4722947392%_
                                          _%hd4721947360%_))))))
                         (_%loop4722447372%_ _%target4722147366%_ '())))))
               (if (gx#stx-pair? _%__stx4767747678%_)
                   (let ((_%e4721147332%_ (gx#syntax-e _%__stx4767747678%_)))
                     (let ((_%tl4721347339%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4721147332%_)))
                           (_%hd4721247336%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4721147332%_))))
                       (if (gx#stx-pair? _%tl4721347339%_)
                           (let ((_%e4721447342%_
                                  (gx#syntax-e _%tl4721347339%_)))
                             (let ((_%tl4721647349%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4721447342%_)))
                                   (_%hd4721547346%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4721447342%_))))
                               (if (gx#stx-datum? _%hd4721547346%_)
                                   (let ((_%e4721747352%_
                                          (gx#stx-e _%hd4721547346%_)))
                                     (if (equal? _%e4721747352%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4721647349%_)
                                             (let ((_%e4721847356%_
                                                    (gx#syntax-e
                                                     _%tl4721647349%_)))
                                               (let ((_%tl4722047363%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4721847356%_)))
                                                     (_%hd4721947360%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4721847356%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4722047363%_)
                                                     (let ((_%__splice4768247683%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4722047363%_
                                                             '0)))
                                                       (let ((_%tl4722347369%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4768247683%_ '1)))
                     (_%target4722147366%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4768247683%_ '0))))
                 (if (gx#stx-null? _%tl4722347369%_)
                     (_%__match4772047721%_
                      _%e4721147332%_
                      _%hd4721247336%_
                      _%tl4721347339%_
                      _%e4721447342%_
                      _%hd4721547346%_
                      _%tl4721647349%_
                      _%e4721747352%_
                      _%e4721847356%_
                      _%hd4721947360%_
                      _%tl4722047363%_
                      _%__splice4768247683%_
                      _%target4722147366%_
                      _%tl4722347369%_)
                     (if (gx#stx-pair/null? _%tl4721347339%_)
                         (let ((_%__splice4768647687%_
                                (gx#syntax-split-splice->vector
                                 _%tl4721347339%_
                                 '0)))
                           (let ((_%tl4723647268%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4768647687%_ '1)))
                                 (_%target4723447265%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4768647687%_ '0))))
                             (if (gx#stx-null? _%tl4723647268%_)
                                 (_%__match4773447735%_
                                  _%e4721147332%_
                                  _%hd4721247336%_
                                  _%tl4721347339%_
                                  _%__splice4768647687%_
                                  _%target4723447265%_
                                  _%tl4723647268%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4720747248%_)))))
                         (let () (declare (not safe)) (_%g4720747248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4721347339%_)
                                                         (let ((_%__splice4768647687%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4721347339%_
                         '0)))
                   (let ((_%tl4723647268%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4768647687%_ '1)))
                         (_%target4723447265%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4768647687%_ '0))))
                     (if (gx#stx-null? _%tl4723647268%_)
                         (_%__match4773447735%_
                          _%e4721147332%_
                          _%hd4721247336%_
                          _%tl4721347339%_
                          _%__splice4768647687%_
                          _%target4723447265%_
                          _%tl4723647268%_)
                         (let () (declare (not safe)) (_%g4720747248%_)))))
                 (let () (declare (not safe)) (_%g4720747248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4721347339%_)
                                                 (let ((_%__splice4768647687%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4721347339%_
                                                         '0)))
                                                   (let ((_%tl4723647268%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4768647687%_
                                                             '1)))
                                                         (_%target4723447265%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4768647687%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4723647268%_)
                                                         (_%__match4773447735%_
                                                          _%e4721147332%_
                                                          _%hd4721247336%_
                                                          _%tl4721347339%_
                                                          _%__splice4768647687%_
                                                          _%target4723447265%_
                                                          _%tl4723647268%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4720747248%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4720747248%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4721347339%_)
                                             (let ((_%__splice4768647687%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4721347339%_
                                                     '0)))
                                               (let ((_%tl4723647268%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4768647687%_
                                                         '1)))
                                                     (_%target4723447265%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4768647687%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4723647268%_)
                                                     (_%__match4773447735%_
                                                      _%e4721147332%_
                                                      _%hd4721247336%_
                                                      _%tl4721347339%_
                                                      _%__splice4768647687%_
                                                      _%target4723447265%_
                                                      _%tl4723647268%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4720747248%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4720747248%_)))))
                                   (if (gx#stx-pair/null? _%tl4721347339%_)
                                       (let ((_%__splice4768647687%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4721347339%_
                                               '0)))
                                         (let ((_%tl4723647268%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4768647687%_
                                                   '1)))
                                               (_%target4723447265%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4768647687%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4723647268%_)
                                               (_%__match4773447735%_
                                                _%e4721147332%_
                                                _%hd4721247336%_
                                                _%tl4721347339%_
                                                _%__splice4768647687%_
                                                _%target4723447265%_
                                                _%tl4723647268%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4720747248%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4720747248%_))))))
                           (if (gx#stx-pair/null? _%tl4721347339%_)
                               (let ((_%__splice4768647687%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4721347339%_
                                       '0)))
                                 (let ((_%tl4723647268%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4768647687%_
                                           '1)))
                                       (_%target4723447265%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4768647687%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4723647268%_)
                                       (_%__match4773447735%_
                                        _%e4721147332%_
                                        _%hd4721247336%_
                                        _%tl4721347339%_
                                        _%__splice4768647687%_
                                        _%target4723447265%_
                                        _%tl4723647268%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4720747248%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4720747248%_))))))
                   (let () (declare (not safe)) (_%g4720747248%_)))))))))))
