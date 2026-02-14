(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx46307%_)
      (let* ((_%__stx4909149092%_ _%$stx46307%_)
             (_%g4631246331%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4909149092%_))))
        (let ((_%__kont4909449095%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4909649097%_
               (lambda (_%g4631746358%_ _%g4631846360%_ _%g4631946361%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4631846360%_
                                   (cons (cons _%g4631946361%_ _%g4631746358%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4631846360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4909149092%_)
              (let ((_%e4631446383%_ (gx#syntax-e _%__stx4909149092%_)))
                (let ((_%tl4631646390%_
                       (let () (declare (not safe)) (##cdr _%e4631446383%_)))
                      (_%hd4631546387%_
                       (let () (declare (not safe)) (##car _%e4631446383%_))))
                  (if (gx#stx-null? _%tl4631646390%_)
                      (_%__kont4909449095%_)
                      (if (gx#stx-pair? _%tl4631646390%_)
                          (let ((_%e4632346348%_
                                 (gx#syntax-e _%tl4631646390%_)))
                            (let ((_%tl4632546355%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4632346348%_)))
                                  (_%hd4632446352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4632346348%_))))
                              (_%__kont4909649097%_
                               _%tl4632546355%_
                               _%hd4632446352%_
                               _%hd4631546387%_)))
                          (let () (declare (not safe)) (_%g4631246331%_))))))
              (let () (declare (not safe)) (_%g4631246331%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46401%_)
      (let* ((_%__stx4912149122%_ _%$stx46401%_)
             (_%g4640646446%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4912149122%_))))
        (let ((_%__kont4912449125%_
               (lambda (_%g4640846582%_ _%g4640946584%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4640946584%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4640846582%_ '()))
                                   '())))))
              (_%__kont4912649127%_
               (lambda (_%g4641946511%_
                        _%g4642046513%_
                        _%g4642146514%_
                        _%g4642246515%_)
                 (cons _%g4642246515%_
                       (cons _%g4642146514%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4642046513%_
                                               (foldr (lambda (_%g4653646539%_
                                                               _%g4653746542%_)
                                                        (cons _%g4653646539%_
                                                              _%g4653746542%_))
                                                      '()
                                                      _%g4641946511%_)))
                                   '()))))))
          (let* ((_%__match4917649177%_
                  (lambda (_%e4642346453%_
                           _%hd4642446457%_
                           _%tl4642546460%_
                           _%e4642646463%_
                           _%hd4642746467%_
                           _%tl4642846470%_
                           _%e4642946473%_
                           _%hd4643046477%_
                           _%tl4643146480%_
                           _%__splice4912849129%_
                           _%target4643246483%_
                           _%tl4643446486%_)
                    (letrec ((_%loop4643546489%_
                              (lambda (_%hd4643346493%_ _%body4643946496%_)
                                (if (gx#stx-pair? _%hd4643346493%_)
                                    (let ((_%e4643646498%_
                                           (gx#syntax-e _%hd4643346493%_)))
                                      (let ((_%lp-tl4643846505%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4643646498%_)))
                                            (_%lp-hd4643746502%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4643646498%_))))
                                        (_%loop4643546489%_
                                         _%lp-tl4643846505%_
                                         (cons _%lp-hd4643746502%_
                                               _%body4643946496%_))))
                                    (let ((_%body4644046508%_
                                           (reverse _%body4643946496%_)))
                                      (let ((_%g4641946511%_
                                             _%body4644046508%_)
                                            (_%g4642046513%_ _%tl4643146480%_)
                                            (_%g4642146514%_ _%hd4643046477%_)
                                            (_%g4642246515%_ _%hd4642446457%_))
                                        (if (gx#identifier? _%g4642146514%_)
                                            (_%__kont4912649127%_
                                             _%g4641946511%_
                                             _%g4642046513%_
                                             _%g4642146514%_
                                             _%g4642246515%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4640646446%_)))))))))
                      (_%loop4643546489%_ _%target4643246483%_ '()))))
                 (_%__match4915049151%_
                  (lambda (_%e4641046552%_
                           _%hd4641146556%_
                           _%tl4641246559%_
                           _%e4641346562%_
                           _%hd4641446566%_
                           _%tl4641546569%_
                           _%e4641646572%_
                           _%hd4641746576%_
                           _%tl4641846579%_)
                    (let ((_%g4640846582%_ _%hd4641746576%_)
                          (_%g4640946584%_ _%hd4641446566%_))
                      (if (gx#identifier? _%g4640946584%_)
                          (_%__kont4912449125%_
                           _%g4640846582%_
                           _%g4640946584%_)
                          (if (gx#stx-pair? _%hd4641446566%_)
                              (let ((_%e4642946473%_
                                     (gx#syntax-e _%hd4641446566%_)))
                                (let ((_%tl4643146480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4642946473%_)))
                                      (_%hd4643046477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4642946473%_))))
                                  (if (gx#stx-pair/null? _%tl4641546569%_)
                                      (let ((_%__splice4912849129%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4641546569%_
                                              '0)))
                                        (let ((_%tl4643446486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4912849129%_
                                                  '1)))
                                              (_%target4643246483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4912849129%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4643446486%_)
                                              (_%__match4917649177%_
                                               _%e4641046552%_
                                               _%hd4641146556%_
                                               _%tl4641246559%_
                                               _%e4641346562%_
                                               _%hd4641446566%_
                                               _%tl4641546569%_
                                               _%e4642946473%_
                                               _%hd4643046477%_
                                               _%tl4643146480%_
                                               _%__splice4912849129%_
                                               _%target4643246483%_
                                               _%tl4643446486%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4640646446%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4640646446%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4640646446%_))))))))
            (if (gx#stx-pair? _%__stx4912149122%_)
                (let ((_%e4641046552%_ (gx#syntax-e _%__stx4912149122%_)))
                  (let ((_%tl4641246559%_
                         (let () (declare (not safe)) (##cdr _%e4641046552%_)))
                        (_%hd4641146556%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4641046552%_))))
                    (if (gx#stx-pair? _%tl4641246559%_)
                        (let ((_%e4641346562%_ (gx#syntax-e _%tl4641246559%_)))
                          (let ((_%tl4641546569%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4641346562%_)))
                                (_%hd4641446566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4641346562%_))))
                            (if (gx#stx-pair? _%tl4641546569%_)
                                (let ((_%e4641646572%_
                                       (gx#syntax-e _%tl4641546569%_)))
                                  (let ((_%tl4641846579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4641646572%_)))
                                        (_%hd4641746576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4641646572%_))))
                                    (if (gx#stx-null? _%tl4641846579%_)
                                        (_%__match4915049151%_
                                         _%e4641046552%_
                                         _%hd4641146556%_
                                         _%tl4641246559%_
                                         _%e4641346562%_
                                         _%hd4641446566%_
                                         _%tl4641546569%_
                                         _%e4641646572%_
                                         _%hd4641746576%_
                                         _%tl4641846579%_)
                                        (if (gx#stx-pair? _%hd4641446566%_)
                                            (let ((_%e4642946473%_
                                                   (gx#syntax-e
                                                    _%hd4641446566%_)))
                                              (let ((_%tl4643146480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4642946473%_)))
                                                    (_%hd4643046477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4642946473%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4641546569%_)
                                                    (let ((_%__splice4912849129%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4641546569%_
                                                            '0)))
                                                      (let ((_%tl4643446486%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4912849129%_ '1)))
                    (_%target4643246483%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4912849129%_ '0))))
                (if (gx#stx-null? _%tl4643446486%_)
                    (_%__match4917649177%_
                     _%e4641046552%_
                     _%hd4641146556%_
                     _%tl4641246559%_
                     _%e4641346562%_
                     _%hd4641446566%_
                     _%tl4641546569%_
                     _%e4642946473%_
                     _%hd4643046477%_
                     _%tl4643146480%_
                     _%__splice4912849129%_
                     _%target4643246483%_
                     _%tl4643446486%_)
                    (let () (declare (not safe)) (_%g4640646446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4640646446%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4640646446%_))))))
                                (if (gx#stx-pair? _%hd4641446566%_)
                                    (let ((_%e4642946473%_
                                           (gx#syntax-e _%hd4641446566%_)))
                                      (let ((_%tl4643146480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4642946473%_)))
                                            (_%hd4643046477%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4642946473%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4641546569%_)
                                            (let ((_%__splice4912849129%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4641546569%_
                                                    '0)))
                                              (let ((_%tl4643446486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4912849129%_
                                                        '1)))
                                                    (_%target4643246483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4912849129%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4643446486%_)
                                                    (_%__match4917649177%_
                                                     _%e4641046552%_
                                                     _%hd4641146556%_
                                                     _%tl4641246559%_
                                                     _%e4641346562%_
                                                     _%hd4641446566%_
                                                     _%tl4641546569%_
                                                     _%e4642946473%_
                                                     _%hd4643046477%_
                                                     _%tl4643146480%_
                                                     _%__splice4912849129%_
                                                     _%target4643246483%_
                                                     _%tl4643446486%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4640646446%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4640646446%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4640646446%_))))))
                        (let () (declare (not safe)) (_%g4640646446%_)))))
                (let () (declare (not safe)) (_%g4640646446%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46604%_)
      (let* ((_%__stx4917949180%_ _%$stx46604%_)
             (_%g4660946649%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4917949180%_))))
        (let ((_%__kont4918249183%_
               (lambda (_%g4661146785%_ _%g4661246787%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4661246787%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4661146785%_ '()))
                                   '())))))
              (_%__kont4918449185%_
               (lambda (_%g4662246714%_
                        _%g4662346716%_
                        _%g4662446717%_
                        _%g4662546718%_)
                 (cons _%g4662546718%_
                       (cons _%g4662446717%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4662346716%_
                                               (foldr (lambda (_%g4673946742%_
                                                               _%g4674046745%_)
                                                        (cons _%g4673946742%_
                                                              _%g4674046745%_))
                                                      '()
                                                      _%g4662246714%_)))
                                   '()))))))
          (let* ((_%__match4923449235%_
                  (lambda (_%e4662646656%_
                           _%hd4662746660%_
                           _%tl4662846663%_
                           _%e4662946666%_
                           _%hd4663046670%_
                           _%tl4663146673%_
                           _%e4663246676%_
                           _%hd4663346680%_
                           _%tl4663446683%_
                           _%__splice4918649187%_
                           _%target4663546686%_
                           _%tl4663746689%_)
                    (letrec ((_%loop4663846692%_
                              (lambda (_%hd4663646696%_ _%body4664246699%_)
                                (if (gx#stx-pair? _%hd4663646696%_)
                                    (let ((_%e4663946701%_
                                           (gx#syntax-e _%hd4663646696%_)))
                                      (let ((_%lp-tl4664146708%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4663946701%_)))
                                            (_%lp-hd4664046705%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4663946701%_))))
                                        (_%loop4663846692%_
                                         _%lp-tl4664146708%_
                                         (cons _%lp-hd4664046705%_
                                               _%body4664246699%_))))
                                    (let ((_%body4664346711%_
                                           (reverse _%body4664246699%_)))
                                      (let ((_%g4662246714%_
                                             _%body4664346711%_)
                                            (_%g4662346716%_ _%tl4663446683%_)
                                            (_%g4662446717%_ _%hd4663346680%_)
                                            (_%g4662546718%_ _%hd4662746660%_))
                                        (if (gx#identifier? _%g4662446717%_)
                                            (_%__kont4918449185%_
                                             _%g4662246714%_
                                             _%g4662346716%_
                                             _%g4662446717%_
                                             _%g4662546718%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4660946649%_)))))))))
                      (_%loop4663846692%_ _%target4663546686%_ '()))))
                 (_%__match4920849209%_
                  (lambda (_%e4661346755%_
                           _%hd4661446759%_
                           _%tl4661546762%_
                           _%e4661646765%_
                           _%hd4661746769%_
                           _%tl4661846772%_
                           _%e4661946775%_
                           _%hd4662046779%_
                           _%tl4662146782%_)
                    (let ((_%g4661146785%_ _%hd4662046779%_)
                          (_%g4661246787%_ _%hd4661746769%_))
                      (if (gx#identifier? _%g4661246787%_)
                          (_%__kont4918249183%_
                           _%g4661146785%_
                           _%g4661246787%_)
                          (if (gx#stx-pair? _%hd4661746769%_)
                              (let ((_%e4663246676%_
                                     (gx#syntax-e _%hd4661746769%_)))
                                (let ((_%tl4663446683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4663246676%_)))
                                      (_%hd4663346680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4663246676%_))))
                                  (if (gx#stx-pair/null? _%tl4661846772%_)
                                      (let ((_%__splice4918649187%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4661846772%_
                                              '0)))
                                        (let ((_%tl4663746689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4918649187%_
                                                  '1)))
                                              (_%target4663546686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4918649187%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4663746689%_)
                                              (_%__match4923449235%_
                                               _%e4661346755%_
                                               _%hd4661446759%_
                                               _%tl4661546762%_
                                               _%e4661646765%_
                                               _%hd4661746769%_
                                               _%tl4661846772%_
                                               _%e4663246676%_
                                               _%hd4663346680%_
                                               _%tl4663446683%_
                                               _%__splice4918649187%_
                                               _%target4663546686%_
                                               _%tl4663746689%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660946649%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660946649%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4660946649%_))))))))
            (if (gx#stx-pair? _%__stx4917949180%_)
                (let ((_%e4661346755%_ (gx#syntax-e _%__stx4917949180%_)))
                  (let ((_%tl4661546762%_
                         (let () (declare (not safe)) (##cdr _%e4661346755%_)))
                        (_%hd4661446759%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4661346755%_))))
                    (if (gx#stx-pair? _%tl4661546762%_)
                        (let ((_%e4661646765%_ (gx#syntax-e _%tl4661546762%_)))
                          (let ((_%tl4661846772%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4661646765%_)))
                                (_%hd4661746769%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4661646765%_))))
                            (if (gx#stx-pair? _%tl4661846772%_)
                                (let ((_%e4661946775%_
                                       (gx#syntax-e _%tl4661846772%_)))
                                  (let ((_%tl4662146782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4661946775%_)))
                                        (_%hd4662046779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4661946775%_))))
                                    (if (gx#stx-null? _%tl4662146782%_)
                                        (_%__match4920849209%_
                                         _%e4661346755%_
                                         _%hd4661446759%_
                                         _%tl4661546762%_
                                         _%e4661646765%_
                                         _%hd4661746769%_
                                         _%tl4661846772%_
                                         _%e4661946775%_
                                         _%hd4662046779%_
                                         _%tl4662146782%_)
                                        (if (gx#stx-pair? _%hd4661746769%_)
                                            (let ((_%e4663246676%_
                                                   (gx#syntax-e
                                                    _%hd4661746769%_)))
                                              (let ((_%tl4663446683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4663246676%_)))
                                                    (_%hd4663346680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4663246676%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4661846772%_)
                                                    (let ((_%__splice4918649187%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4661846772%_
                                                            '0)))
                                                      (let ((_%tl4663746689%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4918649187%_ '1)))
                    (_%target4663546686%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4918649187%_ '0))))
                (if (gx#stx-null? _%tl4663746689%_)
                    (_%__match4923449235%_
                     _%e4661346755%_
                     _%hd4661446759%_
                     _%tl4661546762%_
                     _%e4661646765%_
                     _%hd4661746769%_
                     _%tl4661846772%_
                     _%e4663246676%_
                     _%hd4663346680%_
                     _%tl4663446683%_
                     _%__splice4918649187%_
                     _%target4663546686%_
                     _%tl4663746689%_)
                    (let () (declare (not safe)) (_%g4660946649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4660946649%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4660946649%_))))))
                                (if (gx#stx-pair? _%hd4661746769%_)
                                    (let ((_%e4663246676%_
                                           (gx#syntax-e _%hd4661746769%_)))
                                      (let ((_%tl4663446683%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4663246676%_)))
                                            (_%hd4663346680%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4663246676%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4661846772%_)
                                            (let ((_%__splice4918649187%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4661846772%_
                                                    '0)))
                                              (let ((_%tl4663746689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4918649187%_
                                                        '1)))
                                                    (_%target4663546686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4918649187%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4663746689%_)
                                                    (_%__match4923449235%_
                                                     _%e4661346755%_
                                                     _%hd4661446759%_
                                                     _%tl4661546762%_
                                                     _%e4661646765%_
                                                     _%hd4661746769%_
                                                     _%tl4661846772%_
                                                     _%e4663246676%_
                                                     _%hd4663346680%_
                                                     _%tl4663446683%_
                                                     _%__splice4918649187%_
                                                     _%target4663546686%_
                                                     _%tl4663746689%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4660946649%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4660946649%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4660946649%_))))))
                        (let () (declare (not safe)) (_%g4660946649%_)))))
                (let () (declare (not safe)) (_%g4660946649%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46807%_)
      (let* ((_%__stx4923749238%_ _%$stx46807%_)
             (_%g4681246852%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4923749238%_))))
        (let ((_%__kont4924049241%_
               (lambda (_%g4681446988%_ _%g4681546990%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4681546990%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4681446988%_ '()))
                                   '())))))
              (_%__kont4924249243%_
               (lambda (_%g4682546917%_
                        _%g4682646919%_
                        _%g4682746920%_
                        _%g4682846921%_)
                 (cons _%g4682846921%_
                       (cons _%g4682746920%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4682646919%_
                                               (foldr (lambda (_%g4694246945%_
                                                               _%g4694346948%_)
                                                        (cons _%g4694246945%_
                                                              _%g4694346948%_))
                                                      '()
                                                      _%g4682546917%_)))
                                   '()))))))
          (let* ((_%__match4929249293%_
                  (lambda (_%e4682946859%_
                           _%hd4683046863%_
                           _%tl4683146866%_
                           _%e4683246869%_
                           _%hd4683346873%_
                           _%tl4683446876%_
                           _%e4683546879%_
                           _%hd4683646883%_
                           _%tl4683746886%_
                           _%__splice4924449245%_
                           _%target4683846889%_
                           _%tl4684046892%_)
                    (letrec ((_%loop4684146895%_
                              (lambda (_%hd4683946899%_ _%body4684546902%_)
                                (if (gx#stx-pair? _%hd4683946899%_)
                                    (let ((_%e4684246904%_
                                           (gx#syntax-e _%hd4683946899%_)))
                                      (let ((_%lp-tl4684446911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4684246904%_)))
                                            (_%lp-hd4684346908%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4684246904%_))))
                                        (_%loop4684146895%_
                                         _%lp-tl4684446911%_
                                         (cons _%lp-hd4684346908%_
                                               _%body4684546902%_))))
                                    (let ((_%body4684646914%_
                                           (reverse _%body4684546902%_)))
                                      (let ((_%g4682546917%_
                                             _%body4684646914%_)
                                            (_%g4682646919%_ _%tl4683746886%_)
                                            (_%g4682746920%_ _%hd4683646883%_)
                                            (_%g4682846921%_ _%hd4683046863%_))
                                        (if (gx#identifier? _%g4682746920%_)
                                            (_%__kont4924249243%_
                                             _%g4682546917%_
                                             _%g4682646919%_
                                             _%g4682746920%_
                                             _%g4682846921%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4681246852%_)))))))))
                      (_%loop4684146895%_ _%target4683846889%_ '()))))
                 (_%__match4926649267%_
                  (lambda (_%e4681646958%_
                           _%hd4681746962%_
                           _%tl4681846965%_
                           _%e4681946968%_
                           _%hd4682046972%_
                           _%tl4682146975%_
                           _%e4682246978%_
                           _%hd4682346982%_
                           _%tl4682446985%_)
                    (let ((_%g4681446988%_ _%hd4682346982%_)
                          (_%g4681546990%_ _%hd4682046972%_))
                      (if (gx#identifier? _%g4681546990%_)
                          (_%__kont4924049241%_
                           _%g4681446988%_
                           _%g4681546990%_)
                          (if (gx#stx-pair? _%hd4682046972%_)
                              (let ((_%e4683546879%_
                                     (gx#syntax-e _%hd4682046972%_)))
                                (let ((_%tl4683746886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4683546879%_)))
                                      (_%hd4683646883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4683546879%_))))
                                  (if (gx#stx-pair/null? _%tl4682146975%_)
                                      (let ((_%__splice4924449245%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4682146975%_
                                              '0)))
                                        (let ((_%tl4684046892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4924449245%_
                                                  '1)))
                                              (_%target4683846889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4924449245%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4684046892%_)
                                              (_%__match4929249293%_
                                               _%e4681646958%_
                                               _%hd4681746962%_
                                               _%tl4681846965%_
                                               _%e4681946968%_
                                               _%hd4682046972%_
                                               _%tl4682146975%_
                                               _%e4683546879%_
                                               _%hd4683646883%_
                                               _%tl4683746886%_
                                               _%__splice4924449245%_
                                               _%target4683846889%_
                                               _%tl4684046892%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4681246852%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4681246852%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4681246852%_))))))))
            (if (gx#stx-pair? _%__stx4923749238%_)
                (let ((_%e4681646958%_ (gx#syntax-e _%__stx4923749238%_)))
                  (let ((_%tl4681846965%_
                         (let () (declare (not safe)) (##cdr _%e4681646958%_)))
                        (_%hd4681746962%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4681646958%_))))
                    (if (gx#stx-pair? _%tl4681846965%_)
                        (let ((_%e4681946968%_ (gx#syntax-e _%tl4681846965%_)))
                          (let ((_%tl4682146975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4681946968%_)))
                                (_%hd4682046972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4681946968%_))))
                            (if (gx#stx-pair? _%tl4682146975%_)
                                (let ((_%e4682246978%_
                                       (gx#syntax-e _%tl4682146975%_)))
                                  (let ((_%tl4682446985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4682246978%_)))
                                        (_%hd4682346982%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4682246978%_))))
                                    (if (gx#stx-null? _%tl4682446985%_)
                                        (_%__match4926649267%_
                                         _%e4681646958%_
                                         _%hd4681746962%_
                                         _%tl4681846965%_
                                         _%e4681946968%_
                                         _%hd4682046972%_
                                         _%tl4682146975%_
                                         _%e4682246978%_
                                         _%hd4682346982%_
                                         _%tl4682446985%_)
                                        (if (gx#stx-pair? _%hd4682046972%_)
                                            (let ((_%e4683546879%_
                                                   (gx#syntax-e
                                                    _%hd4682046972%_)))
                                              (let ((_%tl4683746886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4683546879%_)))
                                                    (_%hd4683646883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4683546879%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4682146975%_)
                                                    (let ((_%__splice4924449245%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4682146975%_
                                                            '0)))
                                                      (let ((_%tl4684046892%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4924449245%_ '1)))
                    (_%target4683846889%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4924449245%_ '0))))
                (if (gx#stx-null? _%tl4684046892%_)
                    (_%__match4929249293%_
                     _%e4681646958%_
                     _%hd4681746962%_
                     _%tl4681846965%_
                     _%e4681946968%_
                     _%hd4682046972%_
                     _%tl4682146975%_
                     _%e4683546879%_
                     _%hd4683646883%_
                     _%tl4683746886%_
                     _%__splice4924449245%_
                     _%target4683846889%_
                     _%tl4684046892%_)
                    (let () (declare (not safe)) (_%g4681246852%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4681246852%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4681246852%_))))))
                                (if (gx#stx-pair? _%hd4682046972%_)
                                    (let ((_%e4683546879%_
                                           (gx#syntax-e _%hd4682046972%_)))
                                      (let ((_%tl4683746886%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4683546879%_)))
                                            (_%hd4683646883%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4683546879%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4682146975%_)
                                            (let ((_%__splice4924449245%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4682146975%_
                                                    '0)))
                                              (let ((_%tl4684046892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4924449245%_
                                                        '1)))
                                                    (_%target4683846889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4924449245%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4684046892%_)
                                                    (_%__match4929249293%_
                                                     _%e4681646958%_
                                                     _%hd4681746962%_
                                                     _%tl4681846965%_
                                                     _%e4681946968%_
                                                     _%hd4682046972%_
                                                     _%tl4682146975%_
                                                     _%e4683546879%_
                                                     _%hd4683646883%_
                                                     _%tl4683746886%_
                                                     _%__splice4924449245%_
                                                     _%target4683846889%_
                                                     _%tl4684046892%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4681246852%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4681246852%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4681246852%_))))))
                        (let () (declare (not safe)) (_%g4681246852%_)))))
                (let () (declare (not safe)) (_%g4681246852%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx47010%_)
       (let* ((_%g4701347033%_
               (lambda (_%g4701447029%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4701447029%_)))
              (_%g4701247102%_
               (lambda (_%g4701447037%_)
                 (if (gx#stx-pair? _%g4701447037%_)
                     (let ((_%e4701647040%_ (gx#syntax-e _%g4701447037%_)))
                       (let ((_%hd4701747044%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4701647040%_)))
                             (_%tl4701847047%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4701647040%_))))
                         (if (gx#stx-pair/null? _%tl4701847047%_)
                             (let ((_g49387_
                                    (gx#syntax-split-splice
                                     _%tl4701847047%_
                                     '0)))
                               (begin
                                 (let ((_g49388_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49387_)
                                              (##values-length _g49387_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49388_ 2)))
                                       (error "Context expects 2 values"
                                              _g49388_)))
                                 (let ((_%target4701947050%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49387_ 0)))
                                       (_%tl4702147053%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49387_ 1))))
                                   (if (gx#stx-null? _%tl4702147053%_)
                                       (letrec ((_%loop4702247056%_
                                                 (lambda (_%hd4702047060%_
                                                          _%body4702647063%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4702047060%_)
                                                       (let ((_%e4702347065%_
                                                              (gx#syntax-e
                                                               _%hd4702047060%_)))
                                                         (let ((_%lp-hd4702447069%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4702347065%_)))
                       (_%lp-tl4702547072%_
                        (let () (declare (not safe)) (##cdr _%e4702347065%_))))
                   (_%loop4702247056%_
                    _%lp-tl4702547072%_
                    (cons _%lp-hd4702447069%_ _%body4702647063%_))))
               (let ((_%body4702747075%_ (reverse _%body4702647063%_)))
                 ((lambda (_%g4701547078%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4709347096%_
                                                _%g4709447099%_)
                                         (cons _%g4709347096%_
                                               _%g4709447099%_))
                                       '()
                                       _%g4701547078%_))))
                  _%body4702747075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4702247056%_
                                          _%target4701947050%_
                                          '()))
                                       (_%g4701347033%_ _%g4701447037%_)))))
                             (_%g4701347033%_ _%g4701447037%_))))
                     (_%g4701347033%_ _%g4701447037%_)))))
         (_%g4701247102%_ _%stx47010%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx47107%_)
       (let* ((_%g4711047130%_
               (lambda (_%g4711147126%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4711147126%_)))
              (_%g4710947199%_
               (lambda (_%g4711147134%_)
                 (if (gx#stx-pair? _%g4711147134%_)
                     (let ((_%e4711347137%_ (gx#syntax-e _%g4711147134%_)))
                       (let ((_%hd4711447141%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4711347137%_)))
                             (_%tl4711547144%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4711347137%_))))
                         (if (gx#stx-pair/null? _%tl4711547144%_)
                             (let ((_g49389_
                                    (gx#syntax-split-splice
                                     _%tl4711547144%_
                                     '0)))
                               (begin
                                 (let ((_g49390_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49389_)
                                              (##values-length _g49389_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49390_ 2)))
                                       (error "Context expects 2 values"
                                              _g49390_)))
                                 (let ((_%target4711647147%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49389_ 0)))
                                       (_%tl4711847150%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49389_ 1))))
                                   (if (gx#stx-null? _%tl4711847150%_)
                                       (letrec ((_%loop4711947153%_
                                                 (lambda (_%hd4711747157%_
                                                          _%body4712347160%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4711747157%_)
                                                       (let ((_%e4712047162%_
                                                              (gx#syntax-e
                                                               _%hd4711747157%_)))
                                                         (let ((_%lp-hd4712147166%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4712047162%_)))
                       (_%lp-tl4712247169%_
                        (let () (declare (not safe)) (##cdr _%e4712047162%_))))
                   (_%loop4711947153%_
                    _%lp-tl4712247169%_
                    (cons _%lp-hd4712147166%_ _%body4712347160%_))))
               (let ((_%body4712447172%_ (reverse _%body4712347160%_)))
                 ((lambda (_%g4711247175%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4719047193%_
                                                _%g4719147196%_)
                                         (cons _%g4719047193%_
                                               _%g4719147196%_))
                                       '()
                                       _%g4711247175%_))))
                  _%body4712447172%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4711947153%_
                                          _%target4711647147%_
                                          '()))
                                       (_%g4711047130%_ _%g4711147134%_)))))
                             (_%g4711047130%_ _%g4711147134%_))))
                     (_%g4711047130%_ _%g4711147134%_)))))
         (_%g4710947199%_ _%stx47107%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx47204%_)
       (let* ((_%g4720747231%_
               (lambda (_%g4720847227%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4720847227%_)))
              (_%g4720647357%_
               (lambda (_%g4720847235%_)
                 (if (gx#stx-pair? _%g4720847235%_)
                     (let ((_%e4721147238%_ (gx#syntax-e _%g4720847235%_)))
                       (let ((_%hd4721247242%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4721147238%_)))
                             (_%tl4721347245%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4721147238%_))))
                         (if (gx#stx-pair? _%tl4721347245%_)
                             (let ((_%e4721447248%_
                                    (gx#syntax-e _%tl4721347245%_)))
                               (let ((_%hd4721547252%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4721447248%_)))
                                     (_%tl4721647255%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4721447248%_))))
                                 (if (gx#stx-pair/null? _%tl4721647255%_)
                                     (let ((_g49391_
                                            (gx#syntax-split-splice
                                             _%tl4721647255%_
                                             '0)))
                                       (begin
                                         (let ((_g49392_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49391_)
                                                      (##values-length
                                                       _g49391_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49392_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49392_)))
                                         (let ((_%target4721747258%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49391_ 0)))
                                               (_%tl4721947261%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49391_ 1))))
                                           (if (gx#stx-null? _%tl4721947261%_)
                                               (letrec ((_%loop4722047264%_
                                                         (lambda (_%hd4721847268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4722447271%_)
                   (if (gx#stx-pair? _%hd4721847268%_)
                       (let ((_%e4722147273%_ (gx#syntax-e _%hd4721847268%_)))
                         (let ((_%lp-hd4722247277%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4722147273%_)))
                               (_%lp-tl4722347280%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4722147273%_))))
                           (_%loop4722047264%_
                            _%lp-tl4722347280%_
                            (cons _%lp-hd4722247277%_ _%id4722447271%_))))
                       (let ((_%id4722547283%_ (reverse _%id4722447271%_)))
                         ((lambda (_%g4720947286%_ _%g4721047288%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4730547308%_
                                                 _%g4730647311%_)
                                          (cons _%g4730547308%_
                                                _%g4730647311%_))
                                        '()
                                        _%g4720947286%_))
                                (let* ((_%keys47322%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4731347316%_
                                                         _%g4731447319%_)
                                                  (cons _%g4731347316%_
                                                        _%g4731447319%_))
                                                '()
                                                _%g4720947286%_)))
                                       (_%keytab47333%_
                                        (let ((_%ht47325%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4732747329%_)
                                             (hash-put!
                                              _%ht47325%_
                                              _%g4732747329%_
                                              '#t))
                                           _%keys47322%_)
                                          _%ht47325%_))
                                       (_%imports47336%_
                                        (gx#core-expand-import-source
                                         _%g4721047288%_))
                                       (_%fold-e47352%_
                                        (letrec ((_%fold-e47339%_
                                                  (lambda (_%in47342%_
                                                           _%r47344%_)
                                                    (if (gx#module-import?
                                                         _%in47342%_)
                                                        (if (hash-get
                                                             _%keytab47333%_
                                                             (gx#module-import-name
                                                              _%in47342%_))
                                                            (cons _%in47342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47344%_)
                    _%r47344%_)
                (if (gx#import-set? _%in47342%_)
                    (foldl _%fold-e47339%_
                           _%r47344%_
                           (gx#import-set-imports _%in47342%_))
                    _%r47344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47339%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47352%_
                                               '()
                                               _%imports47336%_)))
                                (_%g4720747231%_ _%g4720847235%_)))
                          _%id4722547283%_
                          _%hd4721547252%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4722047264%_
                                                  _%target4721747258%_
                                                  '()))
                                               (_%g4720747231%_
                                                _%g4720847235%_)))))
                                     (_%g4720747231%_ _%g4720847235%_))))
                             (_%g4720747231%_ _%g4720847235%_))))
                     (_%g4720747231%_ _%g4720847235%_)))))
         (_%g4720647357%_ _%stx47204%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47362%_)
       (let* ((_%g4736547389%_
               (lambda (_%g4736647385%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4736647385%_)))
              (_%g4736447515%_
               (lambda (_%g4736647393%_)
                 (if (gx#stx-pair? _%g4736647393%_)
                     (let ((_%e4736947396%_ (gx#syntax-e _%g4736647393%_)))
                       (let ((_%hd4737047400%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4736947396%_)))
                             (_%tl4737147403%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4736947396%_))))
                         (if (gx#stx-pair? _%tl4737147403%_)
                             (let ((_%e4737247406%_
                                    (gx#syntax-e _%tl4737147403%_)))
                               (let ((_%hd4737347410%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4737247406%_)))
                                     (_%tl4737447413%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4737247406%_))))
                                 (if (gx#stx-pair/null? _%tl4737447413%_)
                                     (let ((_g49393_
                                            (gx#syntax-split-splice
                                             _%tl4737447413%_
                                             '0)))
                                       (begin
                                         (let ((_g49394_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49393_)
                                                      (##values-length
                                                       _g49393_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49394_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49394_)))
                                         (let ((_%target4737547416%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49393_ 0)))
                                               (_%tl4737747419%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49393_ 1))))
                                           (if (gx#stx-null? _%tl4737747419%_)
                                               (letrec ((_%loop4737847422%_
                                                         (lambda (_%hd4737647426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4738247429%_)
                   (if (gx#stx-pair? _%hd4737647426%_)
                       (let ((_%e4737947431%_ (gx#syntax-e _%hd4737647426%_)))
                         (let ((_%lp-hd4738047435%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4737947431%_)))
                               (_%lp-tl4738147438%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4737947431%_))))
                           (_%loop4737847422%_
                            _%lp-tl4738147438%_
                            (cons _%lp-hd4738047435%_ _%id4738247429%_))))
                       (let ((_%id4738347441%_ (reverse _%id4738247429%_)))
                         ((lambda (_%g4736747444%_ _%g4736847446%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4746347466%_
                                                 _%g4746447469%_)
                                          (cons _%g4746347466%_
                                                _%g4746447469%_))
                                        '()
                                        _%g4736747444%_))
                                (let* ((_%keys47480%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4747147474%_
                                                         _%g4747247477%_)
                                                  (cons _%g4747147474%_
                                                        _%g4747247477%_))
                                                '()
                                                _%g4736747444%_)))
                                       (_%keytab47491%_
                                        (let ((_%ht47483%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4748547487%_)
                                             (hash-put!
                                              _%ht47483%_
                                              _%g4748547487%_
                                              '#t))
                                           _%keys47480%_)
                                          _%ht47483%_))
                                       (_%imports47494%_
                                        (gx#core-expand-import-source
                                         _%g4736847446%_))
                                       (_%fold-e47510%_
                                        (letrec ((_%fold-e47497%_
                                                  (lambda (_%in47500%_
                                                           _%r47502%_)
                                                    (if (gx#module-import?
                                                         _%in47500%_)
                                                        (if (hash-get
                                                             _%keytab47491%_
                                                             (gx#module-import-name
                                                              _%in47500%_))
                                                            _%r47502%_
                                                            (cons _%in47500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47502%_))
                (if (gx#import-set? _%in47500%_)
                    (foldl _%fold-e47497%_
                           _%r47502%_
                           (gx#import-set-imports _%in47500%_))
                    (cons _%in47500%_ _%r47502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47497%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47510%_
                                               '()
                                               _%imports47494%_)))
                                (_%g4736547389%_ _%g4736647393%_)))
                          _%id4738347441%_
                          _%hd4737347410%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4737847422%_
                                                  _%target4737547416%_
                                                  '()))
                                               (_%g4736547389%_
                                                _%g4736647393%_)))))
                                     (_%g4736547389%_ _%g4736647393%_))))
                             (_%g4736547389%_ _%g4736647393%_))))
                     (_%g4736547389%_ _%g4736647393%_)))))
         (_%g4736447515%_ _%stx47362%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47567%_ _%rename47569%_)
      (gx#make-module-import
       (gx#module-import-source _%in47567%_)
       _%rename47569%_
       (gx#module-import-phi _%in47567%_)
       (gx#module-import-weak? _%in47567%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47520%_ _%pre47522%_)
      (let* ((_%name4752347531%_ _%name47520%_)
             (_%else4752547543%_
              (lambda () (make-symbol _%pre47522%_ _%name47520%_)))
             (_%K4752747551%_
              (lambda (_%mark47547%_ _%id47549%_)
                (cons (make-symbol _%pre47522%_ _%id47549%_) _%mark47547%_))))
        (if (pair? _%name4752347531%_)
            (let ((_%hd4752847555%_
                   (let () (declare (not safe)) (##car _%name4752347531%_)))
                  (_%tl4752947558%_
                   (let () (declare (not safe)) (##cdr _%name4752347531%_))))
              (let* ((_%id47561%_ _%hd4752847555%_)
                     (_%mark47564%_ _%tl4752947558%_))
                (_%K4752747551%_ _%mark47564%_ _%id47561%_)))
            (_%else4752547543%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47571%_)
       (let* ((_%g4757447607%_
               (lambda (_%g4757547603%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4757547603%_)))
              (_%g4757347798%_
               (lambda (_%g4757547611%_)
                 (if (gx#stx-pair? _%g4757547611%_)
                     (let ((_%e4757947614%_ (gx#syntax-e _%g4757547611%_)))
                       (let ((_%hd4758047618%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4757947614%_)))
                             (_%tl4758147621%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4757947614%_))))
                         (if (gx#stx-pair? _%tl4758147621%_)
                             (let ((_%e4758247624%_
                                    (gx#syntax-e _%tl4758147621%_)))
                               (let ((_%hd4758347628%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4758247624%_)))
                                     (_%tl4758447631%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4758247624%_))))
                                 (if (gx#stx-pair/null? _%tl4758447631%_)
                                     (let ((_g49395_
                                            (gx#syntax-split-splice
                                             _%tl4758447631%_
                                             '0)))
                                       (begin
                                         (let ((_g49396_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49395_)
                                                      (##values-length
                                                       _g49395_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49396_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49396_)))
                                         (let ((_%target4758547634%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49395_ 0)))
                                               (_%tl4758747637%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49395_ 1))))
                                           (if (gx#stx-null? _%tl4758747637%_)
                                               (letrec ((_%loop4758847640%_
                                                         (lambda (_%hd4758647644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4759247647%_
                          _%id4759347648%_)
                   (if (gx#stx-pair? _%hd4758647644%_)
                       (let ((_%e4758947650%_ (gx#syntax-e _%hd4758647644%_)))
                         (let ((_%lp-hd4759047654%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4758947650%_)))
                               (_%lp-tl4759147657%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4758947650%_))))
                           (if (gx#stx-pair? _%lp-hd4759047654%_)
                               (let ((_%e4759647660%_
                                      (gx#syntax-e _%lp-hd4759047654%_)))
                                 (let ((_%hd4759747664%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4759647660%_)))
                                       (_%tl4759847667%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4759647660%_))))
                                   (if (gx#stx-pair? _%tl4759847667%_)
                                       (let ((_%e4759947670%_
                                              (gx#syntax-e _%tl4759847667%_)))
                                         (let ((_%hd4760047674%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4759947670%_)))
                                               (_%tl4760147677%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4759947670%_))))
                                           (if (gx#stx-null? _%tl4760147677%_)
                                               (_%loop4758847640%_
                                                _%lp-tl4759147657%_
                                                (cons _%hd4760047674%_
                                                      _%new-id4759247647%_)
                                                (cons _%hd4759747664%_
                                                      _%id4759347648%_))
                                               (_%g4757447607%_
                                                _%g4757547611%_))))
                                       (_%g4757447607%_ _%g4757547611%_))))
                               (_%g4757447607%_ _%g4757547611%_))))
                       (let ((_%new-id4759447680%_
                              (reverse _%new-id4759247647%_))
                             (_%id4759547682%_ (reverse _%id4759347648%_)))
                         ((lambda (_%g4757647684%_
                                   _%g4757747686%_
                                   _%g4757847687%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4770547708%_
                                                      _%g4770647711%_)
                                               (cons _%g4770547708%_
                                                     _%g4770647711%_))
                                             '()
                                             _%g4757747686%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4771347716%_
                                                      _%g4771447719%_)
                                               (cons _%g4771347716%_
                                                     _%g4771447719%_))
                                             '()
                                             _%g4757647684%_)))
                                (let* ((_%keytab47722%_ (make-hash-table))
                                       (_%found47725%_ (make-hash-table))
                                       (_%_47748%_
                                        (for-each
                                         (lambda (_%id47728%_ _%new-id47730%_)
                                           (hash-put!
                                            _%keytab47722%_
                                            (gx#core-identifier-key
                                             _%id47728%_)
                                            (gx#core-identifier-key
                                             _%new-id47730%_)))
                                         (foldr (lambda (_%g4773147734%_
                                                         _%g4773247737%_)
                                                  (cons _%g4773147734%_
                                                        _%g4773247737%_))
                                                '()
                                                _%g4757747686%_)
                                         (foldr (lambda (_%g4773947742%_
                                                         _%g4774047745%_)
                                                  (cons _%g4773947742%_
                                                        _%g4774047745%_))
                                                '()
                                                _%g4757647684%_)))
                                       (_%imports47751%_
                                        (gx#core-expand-import-source
                                         _%g4757847687%_))
                                       (_%fold-e47779%_
                                        (letrec ((_%fold-e47754%_
                                                  (lambda (_%in47757%_
                                                           _%r47759%_)
                                                    (if (gx#module-import?
                                                         _%in47757%_)
                                                        (let* ((_%name47763%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47757%_))
                       (_%$e47766%_ (hash-get _%keytab47722%_ _%name47763%_)))
                  (if _%$e47766%_
                      ((lambda (_%rename47770%_)
                         (hash-put! _%found47725%_ _%name47763%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47757%_
                                _%rename47770%_)
                               _%r47759%_))
                       _%$e47766%_)
                      (cons _%in47757%_ _%r47759%_)))
                (if (gx#import-set? _%in47757%_)
                    (foldl _%fold-e47754%_
                           _%r47759%_
                           (gx#import-set-imports _%in47757%_))
                    (cons _%in47757%_ _%r47759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47754%_))
                                       (_%new-imports47782%_
                                        (foldl _%fold-e47779%_
                                               '()
                                               _%imports47751%_)))
                                  (for-each
                                   (lambda (_%id47787%_)
                                     (if (hash-get
                                          _%found47725%_
                                          (gx#core-identifier-key _%id47787%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47571%_
                                          _%id47787%_)))
                                   (foldr (lambda (_%g4778947792%_
                                                   _%g4779047795%_)
                                            (cons _%g4778947792%_
                                                  _%g4779047795%_))
                                          '()
                                          _%g4757747686%_))
                                  (cons 'begin: _%new-imports47782%_))
                                (_%g4757447607%_ _%g4757547611%_)))
                          _%new-id4759447680%_
                          _%id4759547682%_
                          _%hd4758347628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4758847640%_
                                                  _%target4758547634%_
                                                  '()
                                                  '()))
                                               (_%g4757447607%_
                                                _%g4757547611%_)))))
                                     (_%g4757447607%_ _%g4757547611%_))))
                             (_%g4757447607%_ _%g4757547611%_))))
                     (_%g4757447607%_ _%g4757547611%_)))))
         (_%g4757347798%_ _%stx47571%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47803%_)
       (let* ((_%g4780647824%_
               (lambda (_%g4780747820%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4780747820%_)))
              (_%g4780547909%_
               (lambda (_%g4780747828%_)
                 (if (gx#stx-pair? _%g4780747828%_)
                     (let ((_%e4781047831%_ (gx#syntax-e _%g4780747828%_)))
                       (let ((_%hd4781147835%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4781047831%_)))
                             (_%tl4781247838%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4781047831%_))))
                         (if (gx#stx-pair? _%tl4781247838%_)
                             (let ((_%e4781347841%_
                                    (gx#syntax-e _%tl4781247838%_)))
                               (let ((_%hd4781447845%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4781347841%_)))
                                     (_%tl4781547848%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4781347841%_))))
                                 (if (gx#stx-pair? _%tl4781547848%_)
                                     (let ((_%e4781647851%_
                                            (gx#syntax-e _%tl4781547848%_)))
                                       (let ((_%hd4781747855%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4781647851%_)))
                                             (_%tl4781847858%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4781647851%_))))
                                         (if (gx#stx-null? _%tl4781847858%_)
                                             ((lambda (_%g4780847861%_
                                                       _%g4780947863%_)
                                                (if (gx#identifier?
                                                     _%g4780847861%_)
                                                    (let* ((_%pre47879%_
                                                            (gx#stx-e
                                                             _%g4780847861%_))
                                                           (_%imports47882%_
                                                            (gx#core-expand-import-source
                                                             _%g4780947863%_))
                                                           (_%rename-e47888%_
                                                            (lambda (_%name47885%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47885%_
                                                               _%pre47879%_)))
                                                           (_%fold-e47904%_
                                                            (letrec ((_%fold-e47891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47894%_ _%r47896%_)
                                (if (gx#module-import? _%in47894%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47894%_
                                           (_%rename-e47888%_
                                            (gx#module-import-name
                                             _%in47894%_)))
                                          _%r47896%_)
                                    (if (gx#import-set? _%in47894%_)
                                        (foldl _%fold-e47891%_
                                               _%r47896%_
                                               (gx#import-set-imports
                                                _%in47894%_))
                                        (cons _%in47894%_ _%r47896%_))))))
                      _%fold-e47891%_)))
              (cons 'begin: (foldl _%fold-e47904%_ '() _%imports47882%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4780647824%_
                                                     _%g4780747828%_)))
                                              _%hd4781747855%_
                                              _%hd4781447845%_)
                                             (_%g4780647824%_
                                              _%g4780747828%_))))
                                     (_%g4780647824%_ _%g4780747828%_))))
                             (_%g4780647824%_ _%g4780747828%_))))
                     (_%g4780647824%_ _%g4780747828%_)))))
         (_%g4780547909%_ _%stx47803%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47913%_)
       (letrec ((_%flatten47916%_
                 (lambda (_%list-of-lists48167%_)
                   (foldr (lambda (_%v48170%_ _%acc48172%_)
                            (if (null? _%v48170%_)
                                _%acc48172%_
                                (if (pair? _%v48170%_)
                                    (append (_%flatten47916%_ _%v48170%_)
                                            _%acc48172%_)
                                    (cons _%v48170%_ _%acc48172%_))))
                          '()
                          _%list-of-lists48167%_)))
                (_%expand-path47918%_
                 (lambda (_%top48037%_ _%mod48039%_)
                   (let* ((_%__stx4929549296%_ _%mod48039%_)
                          (_%g4804248064%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4929549296%_))))
                     (let ((_%__kont4929849299%_
                            (lambda (_%g4804448130%_ _%g4804548132%_)
                              (map (lambda (_%mod48147%_)
                                     (gx#stx-identifier
                                      _%top48037%_
                                      _%top48037%_
                                      '"/"
                                      _%mod48147%_))
                                   (_%flatten47916%_
                                    (map (lambda (_%g4814948151%_)
                                           (_%expand-path47918%_
                                            _%g4804548132%_
                                            _%g4814948151%_))
                                         (foldr (lambda (_%g4815448157%_
                                                         _%g4815548160%_)
                                                  (cons _%g4815448157%_
                                                        _%g4815548160%_))
                                                '()
                                                _%g4804448130%_))))))
                           (_%__kont4930249303%_
                            (lambda (_%g4805848071%_)
                              (gx#stx-identifier
                               _%top48037%_
                               _%top48037%_
                               '"/"
                               _%g4805848071%_))))
                       (let* ((_%g4804148085%_
                               (lambda ()
                                 (let ((_%g4805848071%_ _%__stx4929549296%_))
                                   (if (or (gx#identifier? _%g4805848071%_)
                                           (gx#stx-fixnum? _%g4805848071%_))
                                       (_%__kont4930249303%_ _%g4805848071%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4804248064%_))))))
                              (_%__match4931849319%_
                               (lambda (_%e4804648092%_
                                        _%hd4804748096%_
                                        _%tl4804848099%_
                                        _%__splice4930049301%_
                                        _%target4804948102%_
                                        _%tl4805148105%_)
                                 (letrec ((_%loop4805248108%_
                                           (lambda (_%hd4805048112%_
                                                    _%mod4805648115%_)
                                             (if (gx#stx-pair?
                                                  _%hd4805048112%_)
                                                 (let ((_%e4805348117%_
                                                        (gx#syntax-e
                                                         _%hd4805048112%_)))
                                                   (let ((_%lp-tl4805548124%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4805348117%_)))
                                                         (_%lp-hd4805448121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4805348117%_))))
                                                     (_%loop4805248108%_
                                                      _%lp-tl4805548124%_
                                                      (cons _%lp-hd4805448121%_
                                                            _%mod4805648115%_))))
                                                 (let ((_%mod4805748127%_
                                                        (reverse _%mod4805648115%_)))
                                                   (_%__kont4929849299%_
                                                    _%mod4805748127%_
                                                    _%hd4804748096%_))))))
                                   (_%loop4805248108%_
                                    _%target4804948102%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4929549296%_)
                             (let ((_%e4804648092%_
                                    (gx#syntax-e _%__stx4929549296%_)))
                               (let ((_%tl4804848099%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4804648092%_)))
                                     (_%hd4804748096%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4804648092%_))))
                                 (if (gx#stx-pair/null? _%tl4804848099%_)
                                     (let ((_%__splice4930049301%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4804848099%_
                                             '0)))
                                       (let ((_%tl4805148105%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4930049301%_
                                                 '1)))
                                             (_%target4804948102%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4930049301%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4805148105%_)
                                             (_%__match4931849319%_
                                              _%e4804648092%_
                                              _%hd4804748096%_
                                              _%tl4804848099%_
                                              _%__splice4930049301%_
                                              _%target4804948102%_
                                              _%tl4805148105%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4804148085%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4804148085%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4804148085%_)))))))))
         (let* ((_%g4792047944%_
                 (lambda (_%g4792147940%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4792147940%_)))
                (_%g4791948033%_
                 (lambda (_%g4792147948%_)
                   (if (gx#stx-pair? _%g4792147948%_)
                       (let ((_%e4792447951%_ (gx#syntax-e _%g4792147948%_)))
                         (let ((_%hd4792547955%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4792447951%_)))
                               (_%tl4792647958%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4792447951%_))))
                           (if (gx#stx-pair? _%tl4792647958%_)
                               (let ((_%e4792747961%_
                                      (gx#syntax-e _%tl4792647958%_)))
                                 (let ((_%hd4792847965%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4792747961%_)))
                                       (_%tl4792947968%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4792747961%_))))
                                   (if (gx#stx-pair/null? _%tl4792947968%_)
                                       (let ((_g49397_
                                              (gx#syntax-split-splice
                                               _%tl4792947968%_
                                               '0)))
                                         (begin
                                           (let ((_g49398_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49397_)
                                                        (##values-length
                                                         _g49397_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49398_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49398_)))
                                           (let ((_%target4793047971%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49397_ 0)))
                                                 (_%tl4793247974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49397_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4793247974%_)
                                                 (letrec ((_%loop4793347977%_
                                                           (lambda (_%hd4793147981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4793747984%_)
                     (if (gx#stx-pair? _%hd4793147981%_)
                         (let ((_%e4793447986%_
                                (gx#syntax-e _%hd4793147981%_)))
                           (let ((_%lp-hd4793547990%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4793447986%_)))
                                 (_%lp-tl4793647993%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4793447986%_))))
                             (_%loop4793347977%_
                              _%lp-tl4793647993%_
                              (cons _%lp-hd4793547990%_ _%mod4793747984%_))))
                         (let ((_%mod4793847996%_ (reverse _%mod4793747984%_)))
                           ((lambda (_%g4792247999%_ _%g4792348001%_)
                              (cons 'begin:
                                    (_%flatten47916%_
                                     (map (lambda (_%g4801948021%_)
                                            (_%expand-path47918%_
                                             _%g4792348001%_
                                             _%g4801948021%_))
                                          (foldr (lambda (_%g4802448027%_
                                                          _%g4802548030%_)
                                                   (cons _%g4802448027%_
                                                         _%g4802548030%_))
                                                 '()
                                                 _%g4792247999%_)))))
                            _%mod4793847996%_
                            _%hd4792847965%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4793347977%_
                                                    _%target4793047971%_
                                                    '()))
                                                 (_%g4792047944%_
                                                  _%g4792147948%_)))))
                                       (_%g4792047944%_ _%g4792147948%_))))
                               (_%g4792047944%_ _%g4792147948%_))))
                       (_%g4792047944%_ _%g4792147948%_)))))
           (_%g4791948033%_ _%stx47913%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx48182%_)
       (let* ((_%g4818548209%_
               (lambda (_%g4818648205%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4818648205%_)))
              (_%g4818448335%_
               (lambda (_%g4818648213%_)
                 (if (gx#stx-pair? _%g4818648213%_)
                     (let ((_%e4818948216%_ (gx#syntax-e _%g4818648213%_)))
                       (let ((_%hd4819048220%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4818948216%_)))
                             (_%tl4819148223%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4818948216%_))))
                         (if (gx#stx-pair? _%tl4819148223%_)
                             (let ((_%e4819248226%_
                                    (gx#syntax-e _%tl4819148223%_)))
                               (let ((_%hd4819348230%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4819248226%_)))
                                     (_%tl4819448233%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4819248226%_))))
                                 (if (gx#stx-pair/null? _%tl4819448233%_)
                                     (let ((_g49399_
                                            (gx#syntax-split-splice
                                             _%tl4819448233%_
                                             '0)))
                                       (begin
                                         (let ((_g49400_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49399_)
                                                      (##values-length
                                                       _g49399_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49400_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49400_)))
                                         (let ((_%target4819548236%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49399_ 0)))
                                               (_%tl4819748239%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49399_ 1))))
                                           (if (gx#stx-null? _%tl4819748239%_)
                                               (letrec ((_%loop4819848242%_
                                                         (lambda (_%hd4819648246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4820248249%_)
                   (if (gx#stx-pair? _%hd4819648246%_)
                       (let ((_%e4819948251%_ (gx#syntax-e _%hd4819648246%_)))
                         (let ((_%lp-hd4820048255%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4819948251%_)))
                               (_%lp-tl4820148258%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4819948251%_))))
                           (_%loop4819848242%_
                            _%lp-tl4820148258%_
                            (cons _%lp-hd4820048255%_ _%id4820248249%_))))
                       (let ((_%id4820348261%_ (reverse _%id4820248249%_)))
                         ((lambda (_%g4818748264%_ _%g4818848266%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4828348286%_
                                                 _%g4828448289%_)
                                          (cons _%g4828348286%_
                                                _%g4828448289%_))
                                        '()
                                        _%g4818748264%_))
                                (let* ((_%keys48300%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4829148294%_
                                                         _%g4829248297%_)
                                                  (cons _%g4829148294%_
                                                        _%g4829248297%_))
                                                '()
                                                _%g4818748264%_)))
                                       (_%keytab48311%_
                                        (let ((_%ht48303%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4830548307%_)
                                             (hash-put!
                                              _%ht48303%_
                                              _%g4830548307%_
                                              '#t))
                                           _%keys48300%_)
                                          _%ht48303%_))
                                       (_%exports48314%_
                                        (gx#core-expand-export-source
                                         _%g4818848266%_))
                                       (_%fold-e48330%_
                                        (letrec ((_%fold-e48317%_
                                                  (lambda (_%out48320%_
                                                           _%r48322%_)
                                                    (if (gx#module-export?
                                                         _%out48320%_)
                                                        (if (hash-get
                                                             _%keytab48311%_
                                                             (gx#module-export-name
                                                              _%out48320%_))
                                                            _%r48322%_
                                                            (cons _%out48320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r48322%_))
                (if (gx#export-set? _%out48320%_)
                    (foldl _%fold-e48317%_
                           _%r48322%_
                           (gx#export-set-exports _%out48320%_))
                    _%r48322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48317%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e48330%_
                                               '()
                                               _%exports48314%_)))
                                (_%g4818548209%_ _%g4818648213%_)))
                          _%id4820348261%_
                          _%hd4819348230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4819848242%_
                                                  _%target4819548236%_
                                                  '()))
                                               (_%g4818548209%_
                                                _%g4818648213%_)))))
                                     (_%g4818548209%_ _%g4818648213%_))))
                             (_%g4818548209%_ _%g4818648213%_))))
                     (_%g4818548209%_ _%g4818648213%_)))))
         (_%g4818448335%_ _%stx48182%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx48340%_)
       (let* ((_%g4834348367%_
               (lambda (_%g4834448363%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4834448363%_)))
              (_%g4834248497%_
               (lambda (_%g4834448371%_)
                 (if (gx#stx-pair? _%g4834448371%_)
                     (let ((_%e4834748374%_ (gx#syntax-e _%g4834448371%_)))
                       (let ((_%hd4834848378%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4834748374%_)))
                             (_%tl4834948381%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4834748374%_))))
                         (if (gx#stx-pair? _%tl4834948381%_)
                             (let ((_%e4835048384%_
                                    (gx#syntax-e _%tl4834948381%_)))
                               (let ((_%hd4835148388%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4835048384%_)))
                                     (_%tl4835248391%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4835048384%_))))
                                 (if (gx#stx-pair/null? _%tl4835248391%_)
                                     (let ((_g49401_
                                            (gx#syntax-split-splice
                                             _%tl4835248391%_
                                             '0)))
                                       (begin
                                         (let ((_g49402_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49401_)
                                                      (##values-length
                                                       _g49401_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49402_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49402_)))
                                         (let ((_%target4835348394%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49401_ 0)))
                                               (_%tl4835548397%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49401_ 1))))
                                           (if (gx#stx-null? _%tl4835548397%_)
                                               (letrec ((_%loop4835648400%_
                                                         (lambda (_%hd4835448404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4836048407%_)
                   (if (gx#stx-pair? _%hd4835448404%_)
                       (let ((_%e4835748409%_ (gx#syntax-e _%hd4835448404%_)))
                         (let ((_%lp-hd4835848413%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4835748409%_)))
                               (_%lp-tl4835948416%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4835748409%_))))
                           (_%loop4835648400%_
                            _%lp-tl4835948416%_
                            (cons _%lp-hd4835848413%_
                                  _%filter-out4836048407%_))))
                       (let ((_%filter-out4836148419%_
                              (reverse _%filter-out4836048407%_)))
                         ((lambda (_%g4834548422%_ _%g4834648424%_)
                            (let ((_%filtered48442%_ (make-hash-table)))
                              (letrec ((_%fold-out48445%_
                                        (lambda (_%out48487%_ _%r48489%_)
                                          (if (gx#module-export? _%out48487%_)
                                              (cons _%out48487%_ _%r48489%_)
                                              (if (gx#export-set? _%out48487%_)
                                                  (foldl _%fold-out48445%_
                                                         _%r48489%_
                                                         (gx#export-set-exports
                                                          _%out48487%_))
                                                  _%r48489%_)))))
                                (for-each
                                 (lambda (_%src48448%_)
                                   (let* ((_%exports48454%_
                                           (if (gx#identifier? _%src48448%_)
                                               (let ((_%mod48451%_
                                                      (gx#syntax-local-value
                                                       _%src48448%_)))
                                                 (if (gx#module-context?
                                                      _%mod48451%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48448%_))
                                                 (gx#module-context-export
                                                  _%mod48451%_))
                                               (gx#core-expand-export-source
                                                _%src48448%_)))
                                          (_%exports48457%_
                                           (foldl _%fold-out48445%_
                                                  '()
                                                  _%exports48454%_)))
                                     (for-each
                                      (lambda (_%out48462%_)
                                        (hash-put!
                                         _%filtered48442%_
                                         (gx#module-export-name _%out48462%_)
                                         '#t))
                                      _%exports48457%_)))
                                 (foldr (lambda (_%g4846448467%_
                                                 _%g4846548470%_)
                                          (cons _%g4846448467%_
                                                _%g4846548470%_))
                                        '()
                                        _%g4834548422%_))
                                (let* ((_%exports48473%_
                                        (gx#core-expand-export-source
                                         _%g4834648424%_))
                                       (_%exports48476%_
                                        (foldl _%fold-out48445%_
                                               '()
                                               _%exports48473%_))
                                       (_%exports48482%_
                                        (filter (lambda (_%out48479%_)
                                                  (not (hash-get
                                                        _%filtered48442%_
                                                        (gx#module-export-name
                                                         _%out48479%_))))
                                                _%exports48476%_)))
                                  (cons 'begin: _%exports48482%_)))))
                          _%filter-out4836148419%_
                          _%hd4835148388%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4835648400%_
                                                  _%target4835348394%_
                                                  '()))
                                               (_%g4834348367%_
                                                _%g4834448371%_)))))
                                     (_%g4834348367%_ _%g4834448371%_))))
                             (_%g4834348367%_ _%g4834448371%_))))
                     (_%g4834348367%_ _%g4834448371%_)))))
         (_%g4834248497%_ _%stx48340%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48502%_ _%rename48504%_)
      (gx#make-module-export
       (gx#module-export-context _%out48502%_)
       (gx#module-export-key _%out48502%_)
       (gx#module-export-phi _%out48502%_)
       _%rename48504%_
       (gx#module-export-weak? _%out48502%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48506%_)
       (let* ((_%g4850948542%_
               (lambda (_%g4851048538%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4851048538%_)))
              (_%g4850848733%_
               (lambda (_%g4851048546%_)
                 (if (gx#stx-pair? _%g4851048546%_)
                     (let ((_%e4851448549%_ (gx#syntax-e _%g4851048546%_)))
                       (let ((_%hd4851548553%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4851448549%_)))
                             (_%tl4851648556%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4851448549%_))))
                         (if (gx#stx-pair? _%tl4851648556%_)
                             (let ((_%e4851748559%_
                                    (gx#syntax-e _%tl4851648556%_)))
                               (let ((_%hd4851848563%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4851748559%_)))
                                     (_%tl4851948566%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4851748559%_))))
                                 (if (gx#stx-pair/null? _%tl4851948566%_)
                                     (let ((_g49403_
                                            (gx#syntax-split-splice
                                             _%tl4851948566%_
                                             '0)))
                                       (begin
                                         (let ((_g49404_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49403_)
                                                      (##values-length
                                                       _g49403_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49404_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49404_)))
                                         (let ((_%target4852048569%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49403_ 0)))
                                               (_%tl4852248572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49403_ 1))))
                                           (if (gx#stx-null? _%tl4852248572%_)
                                               (letrec ((_%loop4852348575%_
                                                         (lambda (_%hd4852148579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4852748582%_
                          _%id4852848583%_)
                   (if (gx#stx-pair? _%hd4852148579%_)
                       (let ((_%e4852448585%_ (gx#syntax-e _%hd4852148579%_)))
                         (let ((_%lp-hd4852548589%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4852448585%_)))
                               (_%lp-tl4852648592%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4852448585%_))))
                           (if (gx#stx-pair? _%lp-hd4852548589%_)
                               (let ((_%e4853148595%_
                                      (gx#syntax-e _%lp-hd4852548589%_)))
                                 (let ((_%hd4853248599%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4853148595%_)))
                                       (_%tl4853348602%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4853148595%_))))
                                   (if (gx#stx-pair? _%tl4853348602%_)
                                       (let ((_%e4853448605%_
                                              (gx#syntax-e _%tl4853348602%_)))
                                         (let ((_%hd4853548609%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4853448605%_)))
                                               (_%tl4853648612%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4853448605%_))))
                                           (if (gx#stx-null? _%tl4853648612%_)
                                               (_%loop4852348575%_
                                                _%lp-tl4852648592%_
                                                (cons _%hd4853548609%_
                                                      _%new-id4852748582%_)
                                                (cons _%hd4853248599%_
                                                      _%id4852848583%_))
                                               (_%g4850948542%_
                                                _%g4851048546%_))))
                                       (_%g4850948542%_ _%g4851048546%_))))
                               (_%g4850948542%_ _%g4851048546%_))))
                       (let ((_%new-id4852948615%_
                              (reverse _%new-id4852748582%_))
                             (_%id4853048617%_ (reverse _%id4852848583%_)))
                         ((lambda (_%g4851148619%_
                                   _%g4851248621%_
                                   _%g4851348622%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4864048643%_
                                                      _%g4864148646%_)
                                               (cons _%g4864048643%_
                                                     _%g4864148646%_))
                                             '()
                                             _%g4851248621%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4864848651%_
                                                      _%g4864948654%_)
                                               (cons _%g4864848651%_
                                                     _%g4864948654%_))
                                             '()
                                             _%g4851148619%_)))
                                (let* ((_%keytab48657%_ (make-hash-table))
                                       (_%found48660%_ (make-hash-table))
                                       (_%_48683%_
                                        (for-each
                                         (lambda (_%id48663%_ _%new-id48665%_)
                                           (hash-put!
                                            _%keytab48657%_
                                            (gx#core-identifier-key
                                             _%id48663%_)
                                            (gx#core-identifier-key
                                             _%new-id48665%_)))
                                         (foldr (lambda (_%g4866648669%_
                                                         _%g4866748672%_)
                                                  (cons _%g4866648669%_
                                                        _%g4866748672%_))
                                                '()
                                                _%g4851248621%_)
                                         (foldr (lambda (_%g4867448677%_
                                                         _%g4867548680%_)
                                                  (cons _%g4867448677%_
                                                        _%g4867548680%_))
                                                '()
                                                _%g4851148619%_)))
                                       (_%exports48686%_
                                        (gx#core-expand-export-source
                                         _%g4851348622%_))
                                       (_%fold-e48714%_
                                        (letrec ((_%fold-e48689%_
                                                  (lambda (_%out48692%_
                                                           _%r48694%_)
                                                    (if (gx#module-export?
                                                         _%out48692%_)
                                                        (let* ((_%name48698%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48692%_))
                       (_%$e48701%_ (hash-get _%keytab48657%_ _%name48698%_)))
                  (if _%$e48701%_
                      ((lambda (_%rename48705%_)
                         (hash-put! _%found48660%_ _%name48698%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48692%_
                                _%rename48705%_)
                               _%r48694%_))
                       _%$e48701%_)
                      (cons _%out48692%_ _%r48694%_)))
                (if (gx#export-set? _%out48692%_)
                    (foldl _%fold-e48689%_
                           _%r48694%_
                           (gx#export-set-exports _%out48692%_))
                    (cons _%out48692%_ _%r48694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48689%_))
                                       (_%new-exports48717%_
                                        (foldl _%fold-e48714%_
                                               '()
                                               _%exports48686%_)))
                                  (for-each
                                   (lambda (_%id48722%_)
                                     (if (hash-get
                                          _%found48660%_
                                          (gx#core-identifier-key _%id48722%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48506%_
                                          _%id48722%_)))
                                   (foldr (lambda (_%g4872448727%_
                                                   _%g4872548730%_)
                                            (cons _%g4872448727%_
                                                  _%g4872548730%_))
                                          '()
                                          _%g4851248621%_))
                                  (cons 'begin: _%new-exports48717%_))
                                (_%g4850948542%_ _%g4851048546%_)))
                          _%new-id4852948615%_
                          _%id4853048617%_
                          _%hd4851848563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4852348575%_
                                                  _%target4852048569%_
                                                  '()
                                                  '()))
                                               (_%g4850948542%_
                                                _%g4851048546%_)))))
                                     (_%g4850948542%_ _%g4851048546%_))))
                             (_%g4850948542%_ _%g4851048546%_))))
                     (_%g4850948542%_ _%g4851048546%_)))))
         (_%g4850848733%_ _%stx48506%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48738%_)
       (let* ((_%g4874148759%_
               (lambda (_%g4874248755%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4874248755%_)))
              (_%g4874048844%_
               (lambda (_%g4874248763%_)
                 (if (gx#stx-pair? _%g4874248763%_)
                     (let ((_%e4874548766%_ (gx#syntax-e _%g4874248763%_)))
                       (let ((_%hd4874648770%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4874548766%_)))
                             (_%tl4874748773%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4874548766%_))))
                         (if (gx#stx-pair? _%tl4874748773%_)
                             (let ((_%e4874848776%_
                                    (gx#syntax-e _%tl4874748773%_)))
                               (let ((_%hd4874948780%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4874848776%_)))
                                     (_%tl4875048783%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4874848776%_))))
                                 (if (gx#stx-pair? _%tl4875048783%_)
                                     (let ((_%e4875148786%_
                                            (gx#syntax-e _%tl4875048783%_)))
                                       (let ((_%hd4875248790%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4875148786%_)))
                                             (_%tl4875348793%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4875148786%_))))
                                         (if (gx#stx-null? _%tl4875348793%_)
                                             ((lambda (_%g4874348796%_
                                                       _%g4874448798%_)
                                                (if (gx#identifier?
                                                     _%g4874348796%_)
                                                    (let* ((_%pre48814%_
                                                            (gx#stx-e
                                                             _%g4874348796%_))
                                                           (_%exports48817%_
                                                            (gx#core-expand-export-source
                                                             _%g4874448798%_))
                                                           (_%rename-e48823%_
                                                            (lambda (_%name48820%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48820%_
                                                               _%pre48814%_)))
                                                           (_%fold-e48839%_
                                                            (letrec ((_%fold-e48826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48829%_ _%r48831%_)
                                (if (gx#module-export? _%out48829%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48829%_
                                           (_%rename-e48823%_
                                            (gx#module-export-name
                                             _%out48829%_)))
                                          _%r48831%_)
                                    (if (gx#export-set? _%out48829%_)
                                        (foldl _%fold-e48826%_
                                               _%r48831%_
                                               (gx#export-set-exports
                                                _%out48829%_))
                                        (cons _%out48829%_ _%r48831%_))))))
                      _%fold-e48826%_)))
              (cons 'begin: (foldl _%fold-e48839%_ '() _%exports48817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4874148759%_
                                                     _%g4874248763%_)))
                                              _%hd4875248790%_
                                              _%hd4874948780%_)
                                             (_%g4874148759%_
                                              _%g4874248763%_))))
                                     (_%g4874148759%_ _%g4874248763%_))))
                             (_%g4874148759%_ _%g4874248763%_))))
                     (_%g4874148759%_ _%g4874248763%_)))))
         (_%g4874048844%_ _%stx48738%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48848%_)
       (letrec ((_%identifiers48851%_
                 (lambda (_%id49079%_ _%unchecked?49081%_)
                   (let ((_%info49083%_
                          (gx#syntax-local-value _%id49079%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info49083%_))
                         (cons _%id49079%_
                               (cons (let ((__obj49380 _%info49083%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49380
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49380
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49380
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49381
                                                         _%info49083%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49381
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49381
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49381
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?49081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49382 _%info49083%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49382
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49382
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49382
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49383 _%info49083%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49383
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49383
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49383
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49384 _%info49083%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49384
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49384
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49384
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49385 _%info49083%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49385
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49385
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49385 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor49086%_
                                                   (let ((__obj49386
                                                          _%info49083%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49386
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49386
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49386
                                                          'constructor)))))
                                              (if _%ctor49086%_
                                                  (cons _%ctor49086%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48848%_
                          _%id49079%_))))))
         (let* ((_%__stx4932149322%_ _%stx48848%_)
                (_%g4885548896%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4932149322%_))))
           (let ((_%__kont4932449325%_
                  (lambda (_%g4885749040%_ _%g4885849042%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4906149063%_)
                              (_%identifiers48851%_
                               _%g4906149063%_
                               (gx#stx-e _%g4885849042%_)))
                            (foldr (lambda (_%g4906649069%_ _%g4906749072%_)
                                     (cons _%g4906649069%_ _%g4906749072%_))
                                   '()
                                   _%g4885749040%_))))))
                 (_%__kont4932849329%_
                  (lambda (_%g4887848941%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4895748959%_)
                              (_%identifiers48851%_ _%g4895748959%_ '#f))
                            (foldr (lambda (_%g4896248965%_ _%g4896348968%_)
                                     (cons _%g4896248965%_ _%g4896348968%_))
                                   '()
                                   _%g4887848941%_)))))))
             (let* ((_%__match4937849379%_
                     (lambda (_%e4887948903%_
                              _%hd4888048907%_
                              _%tl4888148910%_
                              _%__splice4933049331%_
                              _%target4888248913%_
                              _%tl4888448916%_)
                       (letrec ((_%loop4888548919%_
                                 (lambda (_%hd4888348923%_ _%id4888948926%_)
                                   (if (gx#stx-pair? _%hd4888348923%_)
                                       (let ((_%e4888648928%_
                                              (gx#syntax-e _%hd4888348923%_)))
                                         (let ((_%lp-tl4888848935%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4888648928%_)))
                                               (_%lp-hd4888748932%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4888648928%_))))
                                           (_%loop4888548919%_
                                            _%lp-tl4888848935%_
                                            (cons _%lp-hd4888748932%_
                                                  _%id4888948926%_))))
                                       (let ((_%id4889048938%_
                                              (reverse _%id4888948926%_)))
                                         (_%__kont4932849329%_
                                          _%id4889048938%_))))))
                         (_%loop4888548919%_ _%target4888248913%_ '()))))
                    (_%__match4936449365%_
                     (lambda (_%e4885948978%_
                              _%hd4886048982%_
                              _%tl4886148985%_
                              _%e4886248988%_
                              _%hd4886348992%_
                              _%tl4886448995%_
                              _%e4886548998%_
                              _%e4886649002%_
                              _%hd4886749006%_
                              _%tl4886849009%_
                              _%__splice4932649327%_
                              _%target4886949012%_
                              _%tl4887149015%_)
                       (letrec ((_%loop4887249018%_
                                 (lambda (_%hd4887049022%_ _%id4887649025%_)
                                   (if (gx#stx-pair? _%hd4887049022%_)
                                       (let ((_%e4887349027%_
                                              (gx#syntax-e _%hd4887049022%_)))
                                         (let ((_%lp-tl4887549034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4887349027%_)))
                                               (_%lp-hd4887449031%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4887349027%_))))
                                           (_%loop4887249018%_
                                            _%lp-tl4887549034%_
                                            (cons _%lp-hd4887449031%_
                                                  _%id4887649025%_))))
                                       (let ((_%id4887749037%_
                                              (reverse _%id4887649025%_)))
                                         (_%__kont4932449325%_
                                          _%id4887749037%_
                                          _%hd4886749006%_))))))
                         (_%loop4887249018%_ _%target4886949012%_ '())))))
               (if (gx#stx-pair? _%__stx4932149322%_)
                   (let ((_%e4885948978%_ (gx#syntax-e _%__stx4932149322%_)))
                     (let ((_%tl4886148985%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4885948978%_)))
                           (_%hd4886048982%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4885948978%_))))
                       (if (gx#stx-pair? _%tl4886148985%_)
                           (let ((_%e4886248988%_
                                  (gx#syntax-e _%tl4886148985%_)))
                             (let ((_%tl4886448995%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4886248988%_)))
                                   (_%hd4886348992%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4886248988%_))))
                               (if (gx#stx-datum? _%hd4886348992%_)
                                   (let ((_%e4886548998%_
                                          (gx#stx-e _%hd4886348992%_)))
                                     (if (equal? _%e4886548998%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4886448995%_)
                                             (let ((_%e4886649002%_
                                                    (gx#syntax-e
                                                     _%tl4886448995%_)))
                                               (let ((_%tl4886849009%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4886649002%_)))
                                                     (_%hd4886749006%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4886649002%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4886849009%_)
                                                     (let ((_%__splice4932649327%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4886849009%_
                                                             '0)))
                                                       (let ((_%tl4887149015%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4932649327%_ '1)))
                     (_%target4886949012%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4932649327%_ '0))))
                 (if (gx#stx-null? _%tl4887149015%_)
                     (_%__match4936449365%_
                      _%e4885948978%_
                      _%hd4886048982%_
                      _%tl4886148985%_
                      _%e4886248988%_
                      _%hd4886348992%_
                      _%tl4886448995%_
                      _%e4886548998%_
                      _%e4886649002%_
                      _%hd4886749006%_
                      _%tl4886849009%_
                      _%__splice4932649327%_
                      _%target4886949012%_
                      _%tl4887149015%_)
                     (if (gx#stx-pair/null? _%tl4886148985%_)
                         (let ((_%__splice4933049331%_
                                (gx#syntax-split-splice->vector
                                 _%tl4886148985%_
                                 '0)))
                           (let ((_%tl4888448916%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4933049331%_ '1)))
                                 (_%target4888248913%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4933049331%_ '0))))
                             (if (gx#stx-null? _%tl4888448916%_)
                                 (_%__match4937849379%_
                                  _%e4885948978%_
                                  _%hd4886048982%_
                                  _%tl4886148985%_
                                  _%__splice4933049331%_
                                  _%target4888248913%_
                                  _%tl4888448916%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4885548896%_)))))
                         (let () (declare (not safe)) (_%g4885548896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4886148985%_)
                                                         (let ((_%__splice4933049331%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4886148985%_
                         '0)))
                   (let ((_%tl4888448916%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4933049331%_ '1)))
                         (_%target4888248913%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4933049331%_ '0))))
                     (if (gx#stx-null? _%tl4888448916%_)
                         (_%__match4937849379%_
                          _%e4885948978%_
                          _%hd4886048982%_
                          _%tl4886148985%_
                          _%__splice4933049331%_
                          _%target4888248913%_
                          _%tl4888448916%_)
                         (let () (declare (not safe)) (_%g4885548896%_)))))
                 (let () (declare (not safe)) (_%g4885548896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4886148985%_)
                                                 (let ((_%__splice4933049331%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4886148985%_
                                                         '0)))
                                                   (let ((_%tl4888448916%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4933049331%_
                                                             '1)))
                                                         (_%target4888248913%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4933049331%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4888448916%_)
                                                         (_%__match4937849379%_
                                                          _%e4885948978%_
                                                          _%hd4886048982%_
                                                          _%tl4886148985%_
                                                          _%__splice4933049331%_
                                                          _%target4888248913%_
                                                          _%tl4888448916%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4885548896%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4885548896%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4886148985%_)
                                             (let ((_%__splice4933049331%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4886148985%_
                                                     '0)))
                                               (let ((_%tl4888448916%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4933049331%_
                                                         '1)))
                                                     (_%target4888248913%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4933049331%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4888448916%_)
                                                     (_%__match4937849379%_
                                                      _%e4885948978%_
                                                      _%hd4886048982%_
                                                      _%tl4886148985%_
                                                      _%__splice4933049331%_
                                                      _%target4888248913%_
                                                      _%tl4888448916%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4885548896%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4885548896%_)))))
                                   (if (gx#stx-pair/null? _%tl4886148985%_)
                                       (let ((_%__splice4933049331%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4886148985%_
                                               '0)))
                                         (let ((_%tl4888448916%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4933049331%_
                                                   '1)))
                                               (_%target4888248913%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4933049331%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4888448916%_)
                                               (_%__match4937849379%_
                                                _%e4885948978%_
                                                _%hd4886048982%_
                                                _%tl4886148985%_
                                                _%__splice4933049331%_
                                                _%target4888248913%_
                                                _%tl4888448916%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4885548896%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4885548896%_))))))
                           (if (gx#stx-pair/null? _%tl4886148985%_)
                               (let ((_%__splice4933049331%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4886148985%_
                                       '0)))
                                 (let ((_%tl4888448916%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4933049331%_
                                           '1)))
                                       (_%target4888248913%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4933049331%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4888448916%_)
                                       (_%__match4937849379%_
                                        _%e4885948978%_
                                        _%hd4886048982%_
                                        _%tl4886148985%_
                                        _%__splice4933049331%_
                                        _%target4888248913%_
                                        _%tl4888448916%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4885548896%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4885548896%_))))))
                   (let () (declare (not safe)) (_%g4885548896%_)))))))))))
