(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45915%_)
      (let* ((_%__stx4869948700%_ _%$stx45915%_)
             (_%g4592045939%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4869948700%_))))
        (let ((_%__kont4870248703%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4870448705%_
               (lambda (_%g4592545966%_ _%g4592645968%_ _%g4592745969%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4592645968%_
                                   (cons (cons _%g4592745969%_ _%g4592545966%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4592645968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4869948700%_)
              (let ((_%e4592245991%_ (gx#syntax-e _%__stx4869948700%_)))
                (let ((_%tl4592445998%_
                       (let () (declare (not safe)) (##cdr _%e4592245991%_)))
                      (_%hd4592345995%_
                       (let () (declare (not safe)) (##car _%e4592245991%_))))
                  (if (gx#stx-null? _%tl4592445998%_)
                      (_%__kont4870248703%_)
                      (if (gx#stx-pair? _%tl4592445998%_)
                          (let ((_%e4593145956%_
                                 (gx#syntax-e _%tl4592445998%_)))
                            (let ((_%tl4593345963%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4593145956%_)))
                                  (_%hd4593245960%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4593145956%_))))
                              (_%__kont4870448705%_
                               _%tl4593345963%_
                               _%hd4593245960%_
                               _%hd4592345995%_)))
                          (let () (declare (not safe)) (_%g4592045939%_))))))
              (let () (declare (not safe)) (_%g4592045939%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46009%_)
      (let* ((_%__stx4872948730%_ _%$stx46009%_)
             (_%g4601446054%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4872948730%_))))
        (let ((_%__kont4873248733%_
               (lambda (_%g4601646190%_ _%g4601746192%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4601746192%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4601646190%_ '()))
                                   '())))))
              (_%__kont4873448735%_
               (lambda (_%g4602746119%_
                        _%g4602846121%_
                        _%g4602946122%_
                        _%g4603046123%_)
                 (cons _%g4603046123%_
                       (cons _%g4602946122%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4602846121%_
                                               (foldr (lambda (_%g4614446147%_
                                                               _%g4614546150%_)
                                                        (cons _%g4614446147%_
                                                              _%g4614546150%_))
                                                      '()
                                                      _%g4602746119%_)))
                                   '()))))))
          (let* ((_%__match4878448785%_
                  (lambda (_%e4603146061%_
                           _%hd4603246065%_
                           _%tl4603346068%_
                           _%e4603446071%_
                           _%hd4603546075%_
                           _%tl4603646078%_
                           _%e4603746081%_
                           _%hd4603846085%_
                           _%tl4603946088%_
                           _%__splice4873648737%_
                           _%target4604046091%_
                           _%tl4604246094%_)
                    (letrec ((_%loop4604346097%_
                              (lambda (_%hd4604146101%_ _%body4604746104%_)
                                (if (gx#stx-pair? _%hd4604146101%_)
                                    (let ((_%e4604446106%_
                                           (gx#syntax-e _%hd4604146101%_)))
                                      (let ((_%lp-tl4604646113%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4604446106%_)))
                                            (_%lp-hd4604546110%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4604446106%_))))
                                        (_%loop4604346097%_
                                         _%lp-tl4604646113%_
                                         (cons _%lp-hd4604546110%_
                                               _%body4604746104%_))))
                                    (let ((_%body4604846116%_
                                           (reverse _%body4604746104%_)))
                                      (let ((_%g4602746119%_
                                             _%body4604846116%_)
                                            (_%g4602846121%_ _%tl4603946088%_)
                                            (_%g4602946122%_ _%hd4603846085%_)
                                            (_%g4603046123%_ _%hd4603246065%_))
                                        (if (gx#identifier? _%g4602946122%_)
                                            (_%__kont4873448735%_
                                             _%g4602746119%_
                                             _%g4602846121%_
                                             _%g4602946122%_
                                             _%g4603046123%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4601446054%_)))))))))
                      (_%loop4604346097%_ _%target4604046091%_ '()))))
                 (_%__match4875848759%_
                  (lambda (_%e4601846160%_
                           _%hd4601946164%_
                           _%tl4602046167%_
                           _%e4602146170%_
                           _%hd4602246174%_
                           _%tl4602346177%_
                           _%e4602446180%_
                           _%hd4602546184%_
                           _%tl4602646187%_)
                    (let ((_%g4601646190%_ _%hd4602546184%_)
                          (_%g4601746192%_ _%hd4602246174%_))
                      (if (gx#identifier? _%g4601746192%_)
                          (_%__kont4873248733%_
                           _%g4601646190%_
                           _%g4601746192%_)
                          (if (gx#stx-pair? _%hd4602246174%_)
                              (let ((_%e4603746081%_
                                     (gx#syntax-e _%hd4602246174%_)))
                                (let ((_%tl4603946088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4603746081%_)))
                                      (_%hd4603846085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4603746081%_))))
                                  (if (gx#stx-pair/null? _%tl4602346177%_)
                                      (let ((_%__splice4873648737%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4602346177%_
                                              '0)))
                                        (let ((_%tl4604246094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4873648737%_
                                                  '1)))
                                              (_%target4604046091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4873648737%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4604246094%_)
                                              (_%__match4878448785%_
                                               _%e4601846160%_
                                               _%hd4601946164%_
                                               _%tl4602046167%_
                                               _%e4602146170%_
                                               _%hd4602246174%_
                                               _%tl4602346177%_
                                               _%e4603746081%_
                                               _%hd4603846085%_
                                               _%tl4603946088%_
                                               _%__splice4873648737%_
                                               _%target4604046091%_
                                               _%tl4604246094%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4601446054%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4601446054%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4601446054%_))))))))
            (if (gx#stx-pair? _%__stx4872948730%_)
                (let ((_%e4601846160%_ (gx#syntax-e _%__stx4872948730%_)))
                  (let ((_%tl4602046167%_
                         (let () (declare (not safe)) (##cdr _%e4601846160%_)))
                        (_%hd4601946164%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4601846160%_))))
                    (if (gx#stx-pair? _%tl4602046167%_)
                        (let ((_%e4602146170%_ (gx#syntax-e _%tl4602046167%_)))
                          (let ((_%tl4602346177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4602146170%_)))
                                (_%hd4602246174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4602146170%_))))
                            (if (gx#stx-pair? _%tl4602346177%_)
                                (let ((_%e4602446180%_
                                       (gx#syntax-e _%tl4602346177%_)))
                                  (let ((_%tl4602646187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4602446180%_)))
                                        (_%hd4602546184%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4602446180%_))))
                                    (if (gx#stx-null? _%tl4602646187%_)
                                        (_%__match4875848759%_
                                         _%e4601846160%_
                                         _%hd4601946164%_
                                         _%tl4602046167%_
                                         _%e4602146170%_
                                         _%hd4602246174%_
                                         _%tl4602346177%_
                                         _%e4602446180%_
                                         _%hd4602546184%_
                                         _%tl4602646187%_)
                                        (if (gx#stx-pair? _%hd4602246174%_)
                                            (let ((_%e4603746081%_
                                                   (gx#syntax-e
                                                    _%hd4602246174%_)))
                                              (let ((_%tl4603946088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4603746081%_)))
                                                    (_%hd4603846085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4603746081%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4602346177%_)
                                                    (let ((_%__splice4873648737%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4602346177%_
                                                            '0)))
                                                      (let ((_%tl4604246094%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4873648737%_ '1)))
                    (_%target4604046091%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4873648737%_ '0))))
                (if (gx#stx-null? _%tl4604246094%_)
                    (_%__match4878448785%_
                     _%e4601846160%_
                     _%hd4601946164%_
                     _%tl4602046167%_
                     _%e4602146170%_
                     _%hd4602246174%_
                     _%tl4602346177%_
                     _%e4603746081%_
                     _%hd4603846085%_
                     _%tl4603946088%_
                     _%__splice4873648737%_
                     _%target4604046091%_
                     _%tl4604246094%_)
                    (let () (declare (not safe)) (_%g4601446054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4601446054%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4601446054%_))))))
                                (if (gx#stx-pair? _%hd4602246174%_)
                                    (let ((_%e4603746081%_
                                           (gx#syntax-e _%hd4602246174%_)))
                                      (let ((_%tl4603946088%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4603746081%_)))
                                            (_%hd4603846085%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4603746081%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4602346177%_)
                                            (let ((_%__splice4873648737%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4602346177%_
                                                    '0)))
                                              (let ((_%tl4604246094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4873648737%_
                                                        '1)))
                                                    (_%target4604046091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4873648737%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4604246094%_)
                                                    (_%__match4878448785%_
                                                     _%e4601846160%_
                                                     _%hd4601946164%_
                                                     _%tl4602046167%_
                                                     _%e4602146170%_
                                                     _%hd4602246174%_
                                                     _%tl4602346177%_
                                                     _%e4603746081%_
                                                     _%hd4603846085%_
                                                     _%tl4603946088%_
                                                     _%__splice4873648737%_
                                                     _%target4604046091%_
                                                     _%tl4604246094%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4601446054%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4601446054%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4601446054%_))))))
                        (let () (declare (not safe)) (_%g4601446054%_)))))
                (let () (declare (not safe)) (_%g4601446054%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46212%_)
      (let* ((_%__stx4878748788%_ _%$stx46212%_)
             (_%g4621746257%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4878748788%_))))
        (let ((_%__kont4879048791%_
               (lambda (_%g4621946393%_ _%g4622046395%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4622046395%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4621946393%_ '()))
                                   '())))))
              (_%__kont4879248793%_
               (lambda (_%g4623046322%_
                        _%g4623146324%_
                        _%g4623246325%_
                        _%g4623346326%_)
                 (cons _%g4623346326%_
                       (cons _%g4623246325%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4623146324%_
                                               (foldr (lambda (_%g4634746350%_
                                                               _%g4634846353%_)
                                                        (cons _%g4634746350%_
                                                              _%g4634846353%_))
                                                      '()
                                                      _%g4623046322%_)))
                                   '()))))))
          (let* ((_%__match4884248843%_
                  (lambda (_%e4623446264%_
                           _%hd4623546268%_
                           _%tl4623646271%_
                           _%e4623746274%_
                           _%hd4623846278%_
                           _%tl4623946281%_
                           _%e4624046284%_
                           _%hd4624146288%_
                           _%tl4624246291%_
                           _%__splice4879448795%_
                           _%target4624346294%_
                           _%tl4624546297%_)
                    (letrec ((_%loop4624646300%_
                              (lambda (_%hd4624446304%_ _%body4625046307%_)
                                (if (gx#stx-pair? _%hd4624446304%_)
                                    (let ((_%e4624746309%_
                                           (gx#syntax-e _%hd4624446304%_)))
                                      (let ((_%lp-tl4624946316%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4624746309%_)))
                                            (_%lp-hd4624846313%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4624746309%_))))
                                        (_%loop4624646300%_
                                         _%lp-tl4624946316%_
                                         (cons _%lp-hd4624846313%_
                                               _%body4625046307%_))))
                                    (let ((_%body4625146319%_
                                           (reverse _%body4625046307%_)))
                                      (let ((_%g4623046322%_
                                             _%body4625146319%_)
                                            (_%g4623146324%_ _%tl4624246291%_)
                                            (_%g4623246325%_ _%hd4624146288%_)
                                            (_%g4623346326%_ _%hd4623546268%_))
                                        (if (gx#identifier? _%g4623246325%_)
                                            (_%__kont4879248793%_
                                             _%g4623046322%_
                                             _%g4623146324%_
                                             _%g4623246325%_
                                             _%g4623346326%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4621746257%_)))))))))
                      (_%loop4624646300%_ _%target4624346294%_ '()))))
                 (_%__match4881648817%_
                  (lambda (_%e4622146363%_
                           _%hd4622246367%_
                           _%tl4622346370%_
                           _%e4622446373%_
                           _%hd4622546377%_
                           _%tl4622646380%_
                           _%e4622746383%_
                           _%hd4622846387%_
                           _%tl4622946390%_)
                    (let ((_%g4621946393%_ _%hd4622846387%_)
                          (_%g4622046395%_ _%hd4622546377%_))
                      (if (gx#identifier? _%g4622046395%_)
                          (_%__kont4879048791%_
                           _%g4621946393%_
                           _%g4622046395%_)
                          (if (gx#stx-pair? _%hd4622546377%_)
                              (let ((_%e4624046284%_
                                     (gx#syntax-e _%hd4622546377%_)))
                                (let ((_%tl4624246291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4624046284%_)))
                                      (_%hd4624146288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4624046284%_))))
                                  (if (gx#stx-pair/null? _%tl4622646380%_)
                                      (let ((_%__splice4879448795%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4622646380%_
                                              '0)))
                                        (let ((_%tl4624546297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4879448795%_
                                                  '1)))
                                              (_%target4624346294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4879448795%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4624546297%_)
                                              (_%__match4884248843%_
                                               _%e4622146363%_
                                               _%hd4622246367%_
                                               _%tl4622346370%_
                                               _%e4622446373%_
                                               _%hd4622546377%_
                                               _%tl4622646380%_
                                               _%e4624046284%_
                                               _%hd4624146288%_
                                               _%tl4624246291%_
                                               _%__splice4879448795%_
                                               _%target4624346294%_
                                               _%tl4624546297%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4621746257%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4621746257%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4621746257%_))))))))
            (if (gx#stx-pair? _%__stx4878748788%_)
                (let ((_%e4622146363%_ (gx#syntax-e _%__stx4878748788%_)))
                  (let ((_%tl4622346370%_
                         (let () (declare (not safe)) (##cdr _%e4622146363%_)))
                        (_%hd4622246367%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4622146363%_))))
                    (if (gx#stx-pair? _%tl4622346370%_)
                        (let ((_%e4622446373%_ (gx#syntax-e _%tl4622346370%_)))
                          (let ((_%tl4622646380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4622446373%_)))
                                (_%hd4622546377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4622446373%_))))
                            (if (gx#stx-pair? _%tl4622646380%_)
                                (let ((_%e4622746383%_
                                       (gx#syntax-e _%tl4622646380%_)))
                                  (let ((_%tl4622946390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4622746383%_)))
                                        (_%hd4622846387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4622746383%_))))
                                    (if (gx#stx-null? _%tl4622946390%_)
                                        (_%__match4881648817%_
                                         _%e4622146363%_
                                         _%hd4622246367%_
                                         _%tl4622346370%_
                                         _%e4622446373%_
                                         _%hd4622546377%_
                                         _%tl4622646380%_
                                         _%e4622746383%_
                                         _%hd4622846387%_
                                         _%tl4622946390%_)
                                        (if (gx#stx-pair? _%hd4622546377%_)
                                            (let ((_%e4624046284%_
                                                   (gx#syntax-e
                                                    _%hd4622546377%_)))
                                              (let ((_%tl4624246291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4624046284%_)))
                                                    (_%hd4624146288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4624046284%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4622646380%_)
                                                    (let ((_%__splice4879448795%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4622646380%_
                                                            '0)))
                                                      (let ((_%tl4624546297%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4879448795%_ '1)))
                    (_%target4624346294%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4879448795%_ '0))))
                (if (gx#stx-null? _%tl4624546297%_)
                    (_%__match4884248843%_
                     _%e4622146363%_
                     _%hd4622246367%_
                     _%tl4622346370%_
                     _%e4622446373%_
                     _%hd4622546377%_
                     _%tl4622646380%_
                     _%e4624046284%_
                     _%hd4624146288%_
                     _%tl4624246291%_
                     _%__splice4879448795%_
                     _%target4624346294%_
                     _%tl4624546297%_)
                    (let () (declare (not safe)) (_%g4621746257%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4621746257%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4621746257%_))))))
                                (if (gx#stx-pair? _%hd4622546377%_)
                                    (let ((_%e4624046284%_
                                           (gx#syntax-e _%hd4622546377%_)))
                                      (let ((_%tl4624246291%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4624046284%_)))
                                            (_%hd4624146288%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4624046284%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4622646380%_)
                                            (let ((_%__splice4879448795%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4622646380%_
                                                    '0)))
                                              (let ((_%tl4624546297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4879448795%_
                                                        '1)))
                                                    (_%target4624346294%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4879448795%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4624546297%_)
                                                    (_%__match4884248843%_
                                                     _%e4622146363%_
                                                     _%hd4622246367%_
                                                     _%tl4622346370%_
                                                     _%e4622446373%_
                                                     _%hd4622546377%_
                                                     _%tl4622646380%_
                                                     _%e4624046284%_
                                                     _%hd4624146288%_
                                                     _%tl4624246291%_
                                                     _%__splice4879448795%_
                                                     _%target4624346294%_
                                                     _%tl4624546297%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4621746257%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4621746257%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4621746257%_))))))
                        (let () (declare (not safe)) (_%g4621746257%_)))))
                (let () (declare (not safe)) (_%g4621746257%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46415%_)
      (let* ((_%__stx4884548846%_ _%$stx46415%_)
             (_%g4642046460%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4884548846%_))))
        (let ((_%__kont4884848849%_
               (lambda (_%g4642246596%_ _%g4642346598%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4642346598%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4642246596%_ '()))
                                   '())))))
              (_%__kont4885048851%_
               (lambda (_%g4643346525%_
                        _%g4643446527%_
                        _%g4643546528%_
                        _%g4643646529%_)
                 (cons _%g4643646529%_
                       (cons _%g4643546528%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4643446527%_
                                               (foldr (lambda (_%g4655046553%_
                                                               _%g4655146556%_)
                                                        (cons _%g4655046553%_
                                                              _%g4655146556%_))
                                                      '()
                                                      _%g4643346525%_)))
                                   '()))))))
          (let* ((_%__match4890048901%_
                  (lambda (_%e4643746467%_
                           _%hd4643846471%_
                           _%tl4643946474%_
                           _%e4644046477%_
                           _%hd4644146481%_
                           _%tl4644246484%_
                           _%e4644346487%_
                           _%hd4644446491%_
                           _%tl4644546494%_
                           _%__splice4885248853%_
                           _%target4644646497%_
                           _%tl4644846500%_)
                    (letrec ((_%loop4644946503%_
                              (lambda (_%hd4644746507%_ _%body4645346510%_)
                                (if (gx#stx-pair? _%hd4644746507%_)
                                    (let ((_%e4645046512%_
                                           (gx#syntax-e _%hd4644746507%_)))
                                      (let ((_%lp-tl4645246519%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4645046512%_)))
                                            (_%lp-hd4645146516%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4645046512%_))))
                                        (_%loop4644946503%_
                                         _%lp-tl4645246519%_
                                         (cons _%lp-hd4645146516%_
                                               _%body4645346510%_))))
                                    (let ((_%body4645446522%_
                                           (reverse _%body4645346510%_)))
                                      (let ((_%g4643346525%_
                                             _%body4645446522%_)
                                            (_%g4643446527%_ _%tl4644546494%_)
                                            (_%g4643546528%_ _%hd4644446491%_)
                                            (_%g4643646529%_ _%hd4643846471%_))
                                        (if (gx#identifier? _%g4643546528%_)
                                            (_%__kont4885048851%_
                                             _%g4643346525%_
                                             _%g4643446527%_
                                             _%g4643546528%_
                                             _%g4643646529%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4642046460%_)))))))))
                      (_%loop4644946503%_ _%target4644646497%_ '()))))
                 (_%__match4887448875%_
                  (lambda (_%e4642446566%_
                           _%hd4642546570%_
                           _%tl4642646573%_
                           _%e4642746576%_
                           _%hd4642846580%_
                           _%tl4642946583%_
                           _%e4643046586%_
                           _%hd4643146590%_
                           _%tl4643246593%_)
                    (let ((_%g4642246596%_ _%hd4643146590%_)
                          (_%g4642346598%_ _%hd4642846580%_))
                      (if (gx#identifier? _%g4642346598%_)
                          (_%__kont4884848849%_
                           _%g4642246596%_
                           _%g4642346598%_)
                          (if (gx#stx-pair? _%hd4642846580%_)
                              (let ((_%e4644346487%_
                                     (gx#syntax-e _%hd4642846580%_)))
                                (let ((_%tl4644546494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4644346487%_)))
                                      (_%hd4644446491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4644346487%_))))
                                  (if (gx#stx-pair/null? _%tl4642946583%_)
                                      (let ((_%__splice4885248853%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4642946583%_
                                              '0)))
                                        (let ((_%tl4644846500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4885248853%_
                                                  '1)))
                                              (_%target4644646497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4885248853%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4644846500%_)
                                              (_%__match4890048901%_
                                               _%e4642446566%_
                                               _%hd4642546570%_
                                               _%tl4642646573%_
                                               _%e4642746576%_
                                               _%hd4642846580%_
                                               _%tl4642946583%_
                                               _%e4644346487%_
                                               _%hd4644446491%_
                                               _%tl4644546494%_
                                               _%__splice4885248853%_
                                               _%target4644646497%_
                                               _%tl4644846500%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4642046460%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4642046460%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4642046460%_))))))))
            (if (gx#stx-pair? _%__stx4884548846%_)
                (let ((_%e4642446566%_ (gx#syntax-e _%__stx4884548846%_)))
                  (let ((_%tl4642646573%_
                         (let () (declare (not safe)) (##cdr _%e4642446566%_)))
                        (_%hd4642546570%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4642446566%_))))
                    (if (gx#stx-pair? _%tl4642646573%_)
                        (let ((_%e4642746576%_ (gx#syntax-e _%tl4642646573%_)))
                          (let ((_%tl4642946583%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4642746576%_)))
                                (_%hd4642846580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4642746576%_))))
                            (if (gx#stx-pair? _%tl4642946583%_)
                                (let ((_%e4643046586%_
                                       (gx#syntax-e _%tl4642946583%_)))
                                  (let ((_%tl4643246593%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4643046586%_)))
                                        (_%hd4643146590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4643046586%_))))
                                    (if (gx#stx-null? _%tl4643246593%_)
                                        (_%__match4887448875%_
                                         _%e4642446566%_
                                         _%hd4642546570%_
                                         _%tl4642646573%_
                                         _%e4642746576%_
                                         _%hd4642846580%_
                                         _%tl4642946583%_
                                         _%e4643046586%_
                                         _%hd4643146590%_
                                         _%tl4643246593%_)
                                        (if (gx#stx-pair? _%hd4642846580%_)
                                            (let ((_%e4644346487%_
                                                   (gx#syntax-e
                                                    _%hd4642846580%_)))
                                              (let ((_%tl4644546494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4644346487%_)))
                                                    (_%hd4644446491%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4644346487%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4642946583%_)
                                                    (let ((_%__splice4885248853%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4642946583%_
                                                            '0)))
                                                      (let ((_%tl4644846500%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4885248853%_ '1)))
                    (_%target4644646497%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4885248853%_ '0))))
                (if (gx#stx-null? _%tl4644846500%_)
                    (_%__match4890048901%_
                     _%e4642446566%_
                     _%hd4642546570%_
                     _%tl4642646573%_
                     _%e4642746576%_
                     _%hd4642846580%_
                     _%tl4642946583%_
                     _%e4644346487%_
                     _%hd4644446491%_
                     _%tl4644546494%_
                     _%__splice4885248853%_
                     _%target4644646497%_
                     _%tl4644846500%_)
                    (let () (declare (not safe)) (_%g4642046460%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4642046460%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4642046460%_))))))
                                (if (gx#stx-pair? _%hd4642846580%_)
                                    (let ((_%e4644346487%_
                                           (gx#syntax-e _%hd4642846580%_)))
                                      (let ((_%tl4644546494%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4644346487%_)))
                                            (_%hd4644446491%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4644346487%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4642946583%_)
                                            (let ((_%__splice4885248853%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4642946583%_
                                                    '0)))
                                              (let ((_%tl4644846500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4885248853%_
                                                        '1)))
                                                    (_%target4644646497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4885248853%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4644846500%_)
                                                    (_%__match4890048901%_
                                                     _%e4642446566%_
                                                     _%hd4642546570%_
                                                     _%tl4642646573%_
                                                     _%e4642746576%_
                                                     _%hd4642846580%_
                                                     _%tl4642946583%_
                                                     _%e4644346487%_
                                                     _%hd4644446491%_
                                                     _%tl4644546494%_
                                                     _%__splice4885248853%_
                                                     _%target4644646497%_
                                                     _%tl4644846500%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4642046460%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4642046460%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4642046460%_))))))
                        (let () (declare (not safe)) (_%g4642046460%_)))))
                (let () (declare (not safe)) (_%g4642046460%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx46618%_)
       (let* ((_%g4662146641%_
               (lambda (_%g4662246637%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4662246637%_)))
              (_%g4662046710%_
               (lambda (_%g4662246645%_)
                 (if (gx#stx-pair? _%g4662246645%_)
                     (let ((_%e4662446648%_ (gx#syntax-e _%g4662246645%_)))
                       (let ((_%hd4662546652%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4662446648%_)))
                             (_%tl4662646655%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4662446648%_))))
                         (if (gx#stx-pair/null? _%tl4662646655%_)
                             (let ((_g48995_
                                    (gx#syntax-split-splice
                                     _%tl4662646655%_
                                     '0)))
                               (begin
                                 (let ((_g48996_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48995_)
                                              (##values-length _g48995_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48996_ 2)))
                                       (error "Context expects 2 values"
                                              _g48996_)))
                                 (let ((_%target4662746658%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48995_ 0)))
                                       (_%tl4662946661%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48995_ 1))))
                                   (if (gx#stx-null? _%tl4662946661%_)
                                       (letrec ((_%loop4663046664%_
                                                 (lambda (_%hd4662846668%_
                                                          _%body4663446671%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4662846668%_)
                                                       (let ((_%e4663146673%_
                                                              (gx#syntax-e
                                                               _%hd4662846668%_)))
                                                         (let ((_%lp-hd4663246677%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4663146673%_)))
                       (_%lp-tl4663346680%_
                        (let () (declare (not safe)) (##cdr _%e4663146673%_))))
                   (_%loop4663046664%_
                    _%lp-tl4663346680%_
                    (cons _%lp-hd4663246677%_ _%body4663446671%_))))
               (let ((_%body4663546683%_ (reverse _%body4663446671%_)))
                 ((lambda (_%g4662346686%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4670146704%_
                                                _%g4670246707%_)
                                         (cons _%g4670146704%_
                                               _%g4670246707%_))
                                       '()
                                       _%g4662346686%_))))
                  _%body4663546683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4663046664%_
                                          _%target4662746658%_
                                          '()))
                                       (_%g4662146641%_ _%g4662246645%_)))))
                             (_%g4662146641%_ _%g4662246645%_))))
                     (_%g4662146641%_ _%g4662246645%_)))))
         (_%g4662046710%_ _%stx46618%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46715%_)
       (let* ((_%g4671846738%_
               (lambda (_%g4671946734%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4671946734%_)))
              (_%g4671746807%_
               (lambda (_%g4671946742%_)
                 (if (gx#stx-pair? _%g4671946742%_)
                     (let ((_%e4672146745%_ (gx#syntax-e _%g4671946742%_)))
                       (let ((_%hd4672246749%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4672146745%_)))
                             (_%tl4672346752%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4672146745%_))))
                         (if (gx#stx-pair/null? _%tl4672346752%_)
                             (let ((_g48997_
                                    (gx#syntax-split-splice
                                     _%tl4672346752%_
                                     '0)))
                               (begin
                                 (let ((_g48998_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48997_)
                                              (##values-length _g48997_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48998_ 2)))
                                       (error "Context expects 2 values"
                                              _g48998_)))
                                 (let ((_%target4672446755%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48997_ 0)))
                                       (_%tl4672646758%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48997_ 1))))
                                   (if (gx#stx-null? _%tl4672646758%_)
                                       (letrec ((_%loop4672746761%_
                                                 (lambda (_%hd4672546765%_
                                                          _%body4673146768%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4672546765%_)
                                                       (let ((_%e4672846770%_
                                                              (gx#syntax-e
                                                               _%hd4672546765%_)))
                                                         (let ((_%lp-hd4672946774%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4672846770%_)))
                       (_%lp-tl4673046777%_
                        (let () (declare (not safe)) (##cdr _%e4672846770%_))))
                   (_%loop4672746761%_
                    _%lp-tl4673046777%_
                    (cons _%lp-hd4672946774%_ _%body4673146768%_))))
               (let ((_%body4673246780%_ (reverse _%body4673146768%_)))
                 ((lambda (_%g4672046783%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4679846801%_
                                                _%g4679946804%_)
                                         (cons _%g4679846801%_
                                               _%g4679946804%_))
                                       '()
                                       _%g4672046783%_))))
                  _%body4673246780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4672746761%_
                                          _%target4672446755%_
                                          '()))
                                       (_%g4671846738%_ _%g4671946742%_)))))
                             (_%g4671846738%_ _%g4671946742%_))))
                     (_%g4671846738%_ _%g4671946742%_)))))
         (_%g4671746807%_ _%stx46715%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46812%_)
       (let* ((_%g4681546839%_
               (lambda (_%g4681646835%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4681646835%_)))
              (_%g4681446965%_
               (lambda (_%g4681646843%_)
                 (if (gx#stx-pair? _%g4681646843%_)
                     (let ((_%e4681946846%_ (gx#syntax-e _%g4681646843%_)))
                       (let ((_%hd4682046850%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4681946846%_)))
                             (_%tl4682146853%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4681946846%_))))
                         (if (gx#stx-pair? _%tl4682146853%_)
                             (let ((_%e4682246856%_
                                    (gx#syntax-e _%tl4682146853%_)))
                               (let ((_%hd4682346860%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4682246856%_)))
                                     (_%tl4682446863%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4682246856%_))))
                                 (if (gx#stx-pair/null? _%tl4682446863%_)
                                     (let ((_g48999_
                                            (gx#syntax-split-splice
                                             _%tl4682446863%_
                                             '0)))
                                       (begin
                                         (let ((_g49000_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48999_)
                                                      (##values-length
                                                       _g48999_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49000_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49000_)))
                                         (let ((_%target4682546866%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48999_ 0)))
                                               (_%tl4682746869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48999_ 1))))
                                           (if (gx#stx-null? _%tl4682746869%_)
                                               (letrec ((_%loop4682846872%_
                                                         (lambda (_%hd4682646876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4683246879%_)
                   (if (gx#stx-pair? _%hd4682646876%_)
                       (let ((_%e4682946881%_ (gx#syntax-e _%hd4682646876%_)))
                         (let ((_%lp-hd4683046885%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4682946881%_)))
                               (_%lp-tl4683146888%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4682946881%_))))
                           (_%loop4682846872%_
                            _%lp-tl4683146888%_
                            (cons _%lp-hd4683046885%_ _%id4683246879%_))))
                       (let ((_%id4683346891%_ (reverse _%id4683246879%_)))
                         ((lambda (_%g4681746894%_ _%g4681846896%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4691346916%_
                                                 _%g4691446919%_)
                                          (cons _%g4691346916%_
                                                _%g4691446919%_))
                                        '()
                                        _%g4681746894%_))
                                (let* ((_%keys46930%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4692146924%_
                                                         _%g4692246927%_)
                                                  (cons _%g4692146924%_
                                                        _%g4692246927%_))
                                                '()
                                                _%g4681746894%_)))
                                       (_%keytab46941%_
                                        (let ((_%ht46933%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4693546937%_)
                                             (hash-put!
                                              _%ht46933%_
                                              _%g4693546937%_
                                              '#t))
                                           _%keys46930%_)
                                          _%ht46933%_))
                                       (_%imports46944%_
                                        (gx#core-expand-import-source
                                         _%g4681846896%_))
                                       (_%fold-e46960%_
                                        (letrec ((_%fold-e46947%_
                                                  (lambda (_%in46950%_
                                                           _%r46952%_)
                                                    (if (gx#module-import?
                                                         _%in46950%_)
                                                        (if (hash-get
                                                             _%keytab46941%_
                                                             (gx#module-import-name
                                                              _%in46950%_))
                                                            (cons _%in46950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46952%_)
                    _%r46952%_)
                (if (gx#import-set? _%in46950%_)
                    (foldl _%fold-e46947%_
                           _%r46952%_
                           (gx#import-set-imports _%in46950%_))
                    _%r46952%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46947%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46960%_
                                               '()
                                               _%imports46944%_)))
                                (_%g4681546839%_ _%g4681646843%_)))
                          _%id4683346891%_
                          _%hd4682346860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4682846872%_
                                                  _%target4682546866%_
                                                  '()))
                                               (_%g4681546839%_
                                                _%g4681646843%_)))))
                                     (_%g4681546839%_ _%g4681646843%_))))
                             (_%g4681546839%_ _%g4681646843%_))))
                     (_%g4681546839%_ _%g4681646843%_)))))
         (_%g4681446965%_ _%stx46812%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx46970%_)
       (let* ((_%g4697346997%_
               (lambda (_%g4697446993%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4697446993%_)))
              (_%g4697247123%_
               (lambda (_%g4697447001%_)
                 (if (gx#stx-pair? _%g4697447001%_)
                     (let ((_%e4697747004%_ (gx#syntax-e _%g4697447001%_)))
                       (let ((_%hd4697847008%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4697747004%_)))
                             (_%tl4697947011%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4697747004%_))))
                         (if (gx#stx-pair? _%tl4697947011%_)
                             (let ((_%e4698047014%_
                                    (gx#syntax-e _%tl4697947011%_)))
                               (let ((_%hd4698147018%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4698047014%_)))
                                     (_%tl4698247021%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4698047014%_))))
                                 (if (gx#stx-pair/null? _%tl4698247021%_)
                                     (let ((_g49001_
                                            (gx#syntax-split-splice
                                             _%tl4698247021%_
                                             '0)))
                                       (begin
                                         (let ((_g49002_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49001_)
                                                      (##values-length
                                                       _g49001_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49002_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49002_)))
                                         (let ((_%target4698347024%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49001_ 0)))
                                               (_%tl4698547027%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49001_ 1))))
                                           (if (gx#stx-null? _%tl4698547027%_)
                                               (letrec ((_%loop4698647030%_
                                                         (lambda (_%hd4698447034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4699047037%_)
                   (if (gx#stx-pair? _%hd4698447034%_)
                       (let ((_%e4698747039%_ (gx#syntax-e _%hd4698447034%_)))
                         (let ((_%lp-hd4698847043%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4698747039%_)))
                               (_%lp-tl4698947046%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4698747039%_))))
                           (_%loop4698647030%_
                            _%lp-tl4698947046%_
                            (cons _%lp-hd4698847043%_ _%id4699047037%_))))
                       (let ((_%id4699147049%_ (reverse _%id4699047037%_)))
                         ((lambda (_%g4697547052%_ _%g4697647054%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4707147074%_
                                                 _%g4707247077%_)
                                          (cons _%g4707147074%_
                                                _%g4707247077%_))
                                        '()
                                        _%g4697547052%_))
                                (let* ((_%keys47088%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4707947082%_
                                                         _%g4708047085%_)
                                                  (cons _%g4707947082%_
                                                        _%g4708047085%_))
                                                '()
                                                _%g4697547052%_)))
                                       (_%keytab47099%_
                                        (let ((_%ht47091%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4709347095%_)
                                             (hash-put!
                                              _%ht47091%_
                                              _%g4709347095%_
                                              '#t))
                                           _%keys47088%_)
                                          _%ht47091%_))
                                       (_%imports47102%_
                                        (gx#core-expand-import-source
                                         _%g4697647054%_))
                                       (_%fold-e47118%_
                                        (letrec ((_%fold-e47105%_
                                                  (lambda (_%in47108%_
                                                           _%r47110%_)
                                                    (if (gx#module-import?
                                                         _%in47108%_)
                                                        (if (hash-get
                                                             _%keytab47099%_
                                                             (gx#module-import-name
                                                              _%in47108%_))
                                                            _%r47110%_
                                                            (cons _%in47108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47110%_))
                (if (gx#import-set? _%in47108%_)
                    (foldl _%fold-e47105%_
                           _%r47110%_
                           (gx#import-set-imports _%in47108%_))
                    (cons _%in47108%_ _%r47110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47105%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47118%_
                                               '()
                                               _%imports47102%_)))
                                (_%g4697346997%_ _%g4697447001%_)))
                          _%id4699147049%_
                          _%hd4698147018%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4698647030%_
                                                  _%target4698347024%_
                                                  '()))
                                               (_%g4697346997%_
                                                _%g4697447001%_)))))
                                     (_%g4697346997%_ _%g4697447001%_))))
                             (_%g4697346997%_ _%g4697447001%_))))
                     (_%g4697346997%_ _%g4697447001%_)))))
         (_%g4697247123%_ _%stx46970%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47175%_ _%rename47177%_)
      (gx#make-module-import
       (gx#module-import-source _%in47175%_)
       _%rename47177%_
       (gx#module-import-phi _%in47175%_)
       (gx#module-import-weak? _%in47175%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47128%_ _%pre47130%_)
      (let* ((_%name4713147139%_ _%name47128%_)
             (_%else4713347151%_
              (lambda () (make-symbol _%pre47130%_ _%name47128%_)))
             (_%K4713547159%_
              (lambda (_%mark47155%_ _%id47157%_)
                (cons (make-symbol _%pre47130%_ _%id47157%_) _%mark47155%_))))
        (if (pair? _%name4713147139%_)
            (let ((_%hd4713647163%_
                   (let () (declare (not safe)) (##car _%name4713147139%_)))
                  (_%tl4713747166%_
                   (let () (declare (not safe)) (##cdr _%name4713147139%_))))
              (let* ((_%id47169%_ _%hd4713647163%_)
                     (_%mark47172%_ _%tl4713747166%_))
                (_%K4713547159%_ _%mark47172%_ _%id47169%_)))
            (_%else4713347151%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47179%_)
       (let* ((_%g4718247215%_
               (lambda (_%g4718347211%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4718347211%_)))
              (_%g4718147406%_
               (lambda (_%g4718347219%_)
                 (if (gx#stx-pair? _%g4718347219%_)
                     (let ((_%e4718747222%_ (gx#syntax-e _%g4718347219%_)))
                       (let ((_%hd4718847226%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4718747222%_)))
                             (_%tl4718947229%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4718747222%_))))
                         (if (gx#stx-pair? _%tl4718947229%_)
                             (let ((_%e4719047232%_
                                    (gx#syntax-e _%tl4718947229%_)))
                               (let ((_%hd4719147236%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4719047232%_)))
                                     (_%tl4719247239%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4719047232%_))))
                                 (if (gx#stx-pair/null? _%tl4719247239%_)
                                     (let ((_g49003_
                                            (gx#syntax-split-splice
                                             _%tl4719247239%_
                                             '0)))
                                       (begin
                                         (let ((_g49004_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49003_)
                                                      (##values-length
                                                       _g49003_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49004_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49004_)))
                                         (let ((_%target4719347242%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49003_ 0)))
                                               (_%tl4719547245%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49003_ 1))))
                                           (if (gx#stx-null? _%tl4719547245%_)
                                               (letrec ((_%loop4719647248%_
                                                         (lambda (_%hd4719447252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4720047255%_
                          _%id4720147256%_)
                   (if (gx#stx-pair? _%hd4719447252%_)
                       (let ((_%e4719747258%_ (gx#syntax-e _%hd4719447252%_)))
                         (let ((_%lp-hd4719847262%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4719747258%_)))
                               (_%lp-tl4719947265%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4719747258%_))))
                           (if (gx#stx-pair? _%lp-hd4719847262%_)
                               (let ((_%e4720447268%_
                                      (gx#syntax-e _%lp-hd4719847262%_)))
                                 (let ((_%hd4720547272%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4720447268%_)))
                                       (_%tl4720647275%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4720447268%_))))
                                   (if (gx#stx-pair? _%tl4720647275%_)
                                       (let ((_%e4720747278%_
                                              (gx#syntax-e _%tl4720647275%_)))
                                         (let ((_%hd4720847282%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4720747278%_)))
                                               (_%tl4720947285%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4720747278%_))))
                                           (if (gx#stx-null? _%tl4720947285%_)
                                               (_%loop4719647248%_
                                                _%lp-tl4719947265%_
                                                (cons _%hd4720847282%_
                                                      _%new-id4720047255%_)
                                                (cons _%hd4720547272%_
                                                      _%id4720147256%_))
                                               (_%g4718247215%_
                                                _%g4718347219%_))))
                                       (_%g4718247215%_ _%g4718347219%_))))
                               (_%g4718247215%_ _%g4718347219%_))))
                       (let ((_%new-id4720247288%_
                              (reverse _%new-id4720047255%_))
                             (_%id4720347290%_ (reverse _%id4720147256%_)))
                         ((lambda (_%g4718447292%_
                                   _%g4718547294%_
                                   _%g4718647295%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4731347316%_
                                                      _%g4731447319%_)
                                               (cons _%g4731347316%_
                                                     _%g4731447319%_))
                                             '()
                                             _%g4718547294%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4732147324%_
                                                      _%g4732247327%_)
                                               (cons _%g4732147324%_
                                                     _%g4732247327%_))
                                             '()
                                             _%g4718447292%_)))
                                (let* ((_%keytab47330%_ (make-hash-table))
                                       (_%found47333%_ (make-hash-table))
                                       (_%_47356%_
                                        (for-each
                                         (lambda (_%id47336%_ _%new-id47338%_)
                                           (hash-put!
                                            _%keytab47330%_
                                            (gx#core-identifier-key
                                             _%id47336%_)
                                            (gx#core-identifier-key
                                             _%new-id47338%_)))
                                         (foldr (lambda (_%g4733947342%_
                                                         _%g4734047345%_)
                                                  (cons _%g4733947342%_
                                                        _%g4734047345%_))
                                                '()
                                                _%g4718547294%_)
                                         (foldr (lambda (_%g4734747350%_
                                                         _%g4734847353%_)
                                                  (cons _%g4734747350%_
                                                        _%g4734847353%_))
                                                '()
                                                _%g4718447292%_)))
                                       (_%imports47359%_
                                        (gx#core-expand-import-source
                                         _%g4718647295%_))
                                       (_%fold-e47387%_
                                        (letrec ((_%fold-e47362%_
                                                  (lambda (_%in47365%_
                                                           _%r47367%_)
                                                    (if (gx#module-import?
                                                         _%in47365%_)
                                                        (let* ((_%name47371%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47365%_))
                       (_%$e47374%_ (hash-get _%keytab47330%_ _%name47371%_)))
                  (if _%$e47374%_
                      ((lambda (_%rename47378%_)
                         (hash-put! _%found47333%_ _%name47371%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47365%_
                                _%rename47378%_)
                               _%r47367%_))
                       _%$e47374%_)
                      (cons _%in47365%_ _%r47367%_)))
                (if (gx#import-set? _%in47365%_)
                    (foldl _%fold-e47362%_
                           _%r47367%_
                           (gx#import-set-imports _%in47365%_))
                    (cons _%in47365%_ _%r47367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47362%_))
                                       (_%new-imports47390%_
                                        (foldl _%fold-e47387%_
                                               '()
                                               _%imports47359%_)))
                                  (for-each
                                   (lambda (_%id47395%_)
                                     (if (hash-get
                                          _%found47333%_
                                          (gx#core-identifier-key _%id47395%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47179%_
                                          _%id47395%_)))
                                   (foldr (lambda (_%g4739747400%_
                                                   _%g4739847403%_)
                                            (cons _%g4739747400%_
                                                  _%g4739847403%_))
                                          '()
                                          _%g4718547294%_))
                                  (cons 'begin: _%new-imports47390%_))
                                (_%g4718247215%_ _%g4718347219%_)))
                          _%new-id4720247288%_
                          _%id4720347290%_
                          _%hd4719147236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4719647248%_
                                                  _%target4719347242%_
                                                  '()
                                                  '()))
                                               (_%g4718247215%_
                                                _%g4718347219%_)))))
                                     (_%g4718247215%_ _%g4718347219%_))))
                             (_%g4718247215%_ _%g4718347219%_))))
                     (_%g4718247215%_ _%g4718347219%_)))))
         (_%g4718147406%_ _%stx47179%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47411%_)
       (let* ((_%g4741447432%_
               (lambda (_%g4741547428%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4741547428%_)))
              (_%g4741347517%_
               (lambda (_%g4741547436%_)
                 (if (gx#stx-pair? _%g4741547436%_)
                     (let ((_%e4741847439%_ (gx#syntax-e _%g4741547436%_)))
                       (let ((_%hd4741947443%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4741847439%_)))
                             (_%tl4742047446%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4741847439%_))))
                         (if (gx#stx-pair? _%tl4742047446%_)
                             (let ((_%e4742147449%_
                                    (gx#syntax-e _%tl4742047446%_)))
                               (let ((_%hd4742247453%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4742147449%_)))
                                     (_%tl4742347456%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4742147449%_))))
                                 (if (gx#stx-pair? _%tl4742347456%_)
                                     (let ((_%e4742447459%_
                                            (gx#syntax-e _%tl4742347456%_)))
                                       (let ((_%hd4742547463%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4742447459%_)))
                                             (_%tl4742647466%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4742447459%_))))
                                         (if (gx#stx-null? _%tl4742647466%_)
                                             ((lambda (_%g4741647469%_
                                                       _%g4741747471%_)
                                                (if (gx#identifier?
                                                     _%g4741647469%_)
                                                    (let* ((_%pre47487%_
                                                            (gx#stx-e
                                                             _%g4741647469%_))
                                                           (_%imports47490%_
                                                            (gx#core-expand-import-source
                                                             _%g4741747471%_))
                                                           (_%rename-e47496%_
                                                            (lambda (_%name47493%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47493%_
                                                               _%pre47487%_)))
                                                           (_%fold-e47512%_
                                                            (letrec ((_%fold-e47499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47502%_ _%r47504%_)
                                (if (gx#module-import? _%in47502%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47502%_
                                           (_%rename-e47496%_
                                            (gx#module-import-name
                                             _%in47502%_)))
                                          _%r47504%_)
                                    (if (gx#import-set? _%in47502%_)
                                        (foldl _%fold-e47499%_
                                               _%r47504%_
                                               (gx#import-set-imports
                                                _%in47502%_))
                                        (cons _%in47502%_ _%r47504%_))))))
                      _%fold-e47499%_)))
              (cons 'begin: (foldl _%fold-e47512%_ '() _%imports47490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4741447432%_
                                                     _%g4741547436%_)))
                                              _%hd4742547463%_
                                              _%hd4742247453%_)
                                             (_%g4741447432%_
                                              _%g4741547436%_))))
                                     (_%g4741447432%_ _%g4741547436%_))))
                             (_%g4741447432%_ _%g4741547436%_))))
                     (_%g4741447432%_ _%g4741547436%_)))))
         (_%g4741347517%_ _%stx47411%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47521%_)
       (letrec ((_%flatten47524%_
                 (lambda (_%list-of-lists47775%_)
                   (foldr (lambda (_%v47778%_ _%acc47780%_)
                            (if (null? _%v47778%_)
                                _%acc47780%_
                                (if (pair? _%v47778%_)
                                    (append (_%flatten47524%_ _%v47778%_)
                                            _%acc47780%_)
                                    (cons _%v47778%_ _%acc47780%_))))
                          '()
                          _%list-of-lists47775%_)))
                (_%expand-path47526%_
                 (lambda (_%top47645%_ _%mod47647%_)
                   (let* ((_%__stx4890348904%_ _%mod47647%_)
                          (_%g4765047672%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4890348904%_))))
                     (let ((_%__kont4890648907%_
                            (lambda (_%g4765247738%_ _%g4765347740%_)
                              (map (lambda (_%mod47755%_)
                                     (gx#stx-identifier
                                      _%top47645%_
                                      _%top47645%_
                                      '"/"
                                      _%mod47755%_))
                                   (_%flatten47524%_
                                    (map (lambda (_%g4775747759%_)
                                           (_%expand-path47526%_
                                            _%g4765347740%_
                                            _%g4775747759%_))
                                         (foldr (lambda (_%g4776247765%_
                                                         _%g4776347768%_)
                                                  (cons _%g4776247765%_
                                                        _%g4776347768%_))
                                                '()
                                                _%g4765247738%_))))))
                           (_%__kont4891048911%_
                            (lambda (_%g4766647679%_)
                              (gx#stx-identifier
                               _%top47645%_
                               _%top47645%_
                               '"/"
                               _%g4766647679%_))))
                       (let* ((_%g4764947693%_
                               (lambda ()
                                 (let ((_%g4766647679%_ _%__stx4890348904%_))
                                   (if (or (gx#identifier? _%g4766647679%_)
                                           (gx#stx-fixnum? _%g4766647679%_))
                                       (_%__kont4891048911%_ _%g4766647679%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4765047672%_))))))
                              (_%__match4892648927%_
                               (lambda (_%e4765447700%_
                                        _%hd4765547704%_
                                        _%tl4765647707%_
                                        _%__splice4890848909%_
                                        _%target4765747710%_
                                        _%tl4765947713%_)
                                 (letrec ((_%loop4766047716%_
                                           (lambda (_%hd4765847720%_
                                                    _%mod4766447723%_)
                                             (if (gx#stx-pair?
                                                  _%hd4765847720%_)
                                                 (let ((_%e4766147725%_
                                                        (gx#syntax-e
                                                         _%hd4765847720%_)))
                                                   (let ((_%lp-tl4766347732%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4766147725%_)))
                                                         (_%lp-hd4766247729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4766147725%_))))
                                                     (_%loop4766047716%_
                                                      _%lp-tl4766347732%_
                                                      (cons _%lp-hd4766247729%_
                                                            _%mod4766447723%_))))
                                                 (let ((_%mod4766547735%_
                                                        (reverse _%mod4766447723%_)))
                                                   (_%__kont4890648907%_
                                                    _%mod4766547735%_
                                                    _%hd4765547704%_))))))
                                   (_%loop4766047716%_
                                    _%target4765747710%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4890348904%_)
                             (let ((_%e4765447700%_
                                    (gx#syntax-e _%__stx4890348904%_)))
                               (let ((_%tl4765647707%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4765447700%_)))
                                     (_%hd4765547704%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4765447700%_))))
                                 (if (gx#stx-pair/null? _%tl4765647707%_)
                                     (let ((_%__splice4890848909%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4765647707%_
                                             '0)))
                                       (let ((_%tl4765947713%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4890848909%_
                                                 '1)))
                                             (_%target4765747710%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4890848909%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4765947713%_)
                                             (_%__match4892648927%_
                                              _%e4765447700%_
                                              _%hd4765547704%_
                                              _%tl4765647707%_
                                              _%__splice4890848909%_
                                              _%target4765747710%_
                                              _%tl4765947713%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4764947693%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4764947693%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4764947693%_)))))))))
         (let* ((_%g4752847552%_
                 (lambda (_%g4752947548%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4752947548%_)))
                (_%g4752747641%_
                 (lambda (_%g4752947556%_)
                   (if (gx#stx-pair? _%g4752947556%_)
                       (let ((_%e4753247559%_ (gx#syntax-e _%g4752947556%_)))
                         (let ((_%hd4753347563%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4753247559%_)))
                               (_%tl4753447566%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4753247559%_))))
                           (if (gx#stx-pair? _%tl4753447566%_)
                               (let ((_%e4753547569%_
                                      (gx#syntax-e _%tl4753447566%_)))
                                 (let ((_%hd4753647573%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4753547569%_)))
                                       (_%tl4753747576%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4753547569%_))))
                                   (if (gx#stx-pair/null? _%tl4753747576%_)
                                       (let ((_g49005_
                                              (gx#syntax-split-splice
                                               _%tl4753747576%_
                                               '0)))
                                         (begin
                                           (let ((_g49006_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49005_)
                                                        (##values-length
                                                         _g49005_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49006_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49006_)))
                                           (let ((_%target4753847579%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49005_ 0)))
                                                 (_%tl4754047582%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49005_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4754047582%_)
                                                 (letrec ((_%loop4754147585%_
                                                           (lambda (_%hd4753947589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4754547592%_)
                     (if (gx#stx-pair? _%hd4753947589%_)
                         (let ((_%e4754247594%_
                                (gx#syntax-e _%hd4753947589%_)))
                           (let ((_%lp-hd4754347598%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4754247594%_)))
                                 (_%lp-tl4754447601%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4754247594%_))))
                             (_%loop4754147585%_
                              _%lp-tl4754447601%_
                              (cons _%lp-hd4754347598%_ _%mod4754547592%_))))
                         (let ((_%mod4754647604%_ (reverse _%mod4754547592%_)))
                           ((lambda (_%g4753047607%_ _%g4753147609%_)
                              (cons 'begin:
                                    (_%flatten47524%_
                                     (map (lambda (_%g4762747629%_)
                                            (_%expand-path47526%_
                                             _%g4753147609%_
                                             _%g4762747629%_))
                                          (foldr (lambda (_%g4763247635%_
                                                          _%g4763347638%_)
                                                   (cons _%g4763247635%_
                                                         _%g4763347638%_))
                                                 '()
                                                 _%g4753047607%_)))))
                            _%mod4754647604%_
                            _%hd4753647573%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4754147585%_
                                                    _%target4753847579%_
                                                    '()))
                                                 (_%g4752847552%_
                                                  _%g4752947556%_)))))
                                       (_%g4752847552%_ _%g4752947556%_))))
                               (_%g4752847552%_ _%g4752947556%_))))
                       (_%g4752847552%_ _%g4752947556%_)))))
           (_%g4752747641%_ _%stx47521%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47790%_)
       (let* ((_%g4779347817%_
               (lambda (_%g4779447813%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4779447813%_)))
              (_%g4779247943%_
               (lambda (_%g4779447821%_)
                 (if (gx#stx-pair? _%g4779447821%_)
                     (let ((_%e4779747824%_ (gx#syntax-e _%g4779447821%_)))
                       (let ((_%hd4779847828%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4779747824%_)))
                             (_%tl4779947831%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4779747824%_))))
                         (if (gx#stx-pair? _%tl4779947831%_)
                             (let ((_%e4780047834%_
                                    (gx#syntax-e _%tl4779947831%_)))
                               (let ((_%hd4780147838%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4780047834%_)))
                                     (_%tl4780247841%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4780047834%_))))
                                 (if (gx#stx-pair/null? _%tl4780247841%_)
                                     (let ((_g49007_
                                            (gx#syntax-split-splice
                                             _%tl4780247841%_
                                             '0)))
                                       (begin
                                         (let ((_g49008_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49007_)
                                                      (##values-length
                                                       _g49007_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49008_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49008_)))
                                         (let ((_%target4780347844%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49007_ 0)))
                                               (_%tl4780547847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49007_ 1))))
                                           (if (gx#stx-null? _%tl4780547847%_)
                                               (letrec ((_%loop4780647850%_
                                                         (lambda (_%hd4780447854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4781047857%_)
                   (if (gx#stx-pair? _%hd4780447854%_)
                       (let ((_%e4780747859%_ (gx#syntax-e _%hd4780447854%_)))
                         (let ((_%lp-hd4780847863%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4780747859%_)))
                               (_%lp-tl4780947866%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4780747859%_))))
                           (_%loop4780647850%_
                            _%lp-tl4780947866%_
                            (cons _%lp-hd4780847863%_ _%id4781047857%_))))
                       (let ((_%id4781147869%_ (reverse _%id4781047857%_)))
                         ((lambda (_%g4779547872%_ _%g4779647874%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4789147894%_
                                                 _%g4789247897%_)
                                          (cons _%g4789147894%_
                                                _%g4789247897%_))
                                        '()
                                        _%g4779547872%_))
                                (let* ((_%keys47908%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4789947902%_
                                                         _%g4790047905%_)
                                                  (cons _%g4789947902%_
                                                        _%g4790047905%_))
                                                '()
                                                _%g4779547872%_)))
                                       (_%keytab47919%_
                                        (let ((_%ht47911%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4791347915%_)
                                             (hash-put!
                                              _%ht47911%_
                                              _%g4791347915%_
                                              '#t))
                                           _%keys47908%_)
                                          _%ht47911%_))
                                       (_%exports47922%_
                                        (gx#core-expand-export-source
                                         _%g4779647874%_))
                                       (_%fold-e47938%_
                                        (letrec ((_%fold-e47925%_
                                                  (lambda (_%out47928%_
                                                           _%r47930%_)
                                                    (if (gx#module-export?
                                                         _%out47928%_)
                                                        (if (hash-get
                                                             _%keytab47919%_
                                                             (gx#module-export-name
                                                              _%out47928%_))
                                                            _%r47930%_
                                                            (cons _%out47928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47930%_))
                (if (gx#export-set? _%out47928%_)
                    (foldl _%fold-e47925%_
                           _%r47930%_
                           (gx#export-set-exports _%out47928%_))
                    _%r47930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47925%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47938%_
                                               '()
                                               _%exports47922%_)))
                                (_%g4779347817%_ _%g4779447821%_)))
                          _%id4781147869%_
                          _%hd4780147838%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4780647850%_
                                                  _%target4780347844%_
                                                  '()))
                                               (_%g4779347817%_
                                                _%g4779447821%_)))))
                                     (_%g4779347817%_ _%g4779447821%_))))
                             (_%g4779347817%_ _%g4779447821%_))))
                     (_%g4779347817%_ _%g4779447821%_)))))
         (_%g4779247943%_ _%stx47790%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx47948%_)
       (let* ((_%g4795147975%_
               (lambda (_%g4795247971%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4795247971%_)))
              (_%g4795048105%_
               (lambda (_%g4795247979%_)
                 (if (gx#stx-pair? _%g4795247979%_)
                     (let ((_%e4795547982%_ (gx#syntax-e _%g4795247979%_)))
                       (let ((_%hd4795647986%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4795547982%_)))
                             (_%tl4795747989%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4795547982%_))))
                         (if (gx#stx-pair? _%tl4795747989%_)
                             (let ((_%e4795847992%_
                                    (gx#syntax-e _%tl4795747989%_)))
                               (let ((_%hd4795947996%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4795847992%_)))
                                     (_%tl4796047999%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4795847992%_))))
                                 (if (gx#stx-pair/null? _%tl4796047999%_)
                                     (let ((_g49009_
                                            (gx#syntax-split-splice
                                             _%tl4796047999%_
                                             '0)))
                                       (begin
                                         (let ((_g49010_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49009_)
                                                      (##values-length
                                                       _g49009_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49010_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49010_)))
                                         (let ((_%target4796148002%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49009_ 0)))
                                               (_%tl4796348005%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49009_ 1))))
                                           (if (gx#stx-null? _%tl4796348005%_)
                                               (letrec ((_%loop4796448008%_
                                                         (lambda (_%hd4796248012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4796848015%_)
                   (if (gx#stx-pair? _%hd4796248012%_)
                       (let ((_%e4796548017%_ (gx#syntax-e _%hd4796248012%_)))
                         (let ((_%lp-hd4796648021%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4796548017%_)))
                               (_%lp-tl4796748024%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4796548017%_))))
                           (_%loop4796448008%_
                            _%lp-tl4796748024%_
                            (cons _%lp-hd4796648021%_
                                  _%filter-out4796848015%_))))
                       (let ((_%filter-out4796948027%_
                              (reverse _%filter-out4796848015%_)))
                         ((lambda (_%g4795348030%_ _%g4795448032%_)
                            (let ((_%filtered48050%_ (make-hash-table)))
                              (letrec ((_%fold-out48053%_
                                        (lambda (_%out48095%_ _%r48097%_)
                                          (if (gx#module-export? _%out48095%_)
                                              (cons _%out48095%_ _%r48097%_)
                                              (if (gx#export-set? _%out48095%_)
                                                  (foldl _%fold-out48053%_
                                                         _%r48097%_
                                                         (gx#export-set-exports
                                                          _%out48095%_))
                                                  _%r48097%_)))))
                                (for-each
                                 (lambda (_%src48056%_)
                                   (let* ((_%exports48062%_
                                           (if (gx#identifier? _%src48056%_)
                                               (let ((_%mod48059%_
                                                      (gx#syntax-local-value
                                                       _%src48056%_)))
                                                 (if (gx#module-context?
                                                      _%mod48059%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48056%_))
                                                 (gx#module-context-export
                                                  _%mod48059%_))
                                               (gx#core-expand-export-source
                                                _%src48056%_)))
                                          (_%exports48065%_
                                           (foldl _%fold-out48053%_
                                                  '()
                                                  _%exports48062%_)))
                                     (for-each
                                      (lambda (_%out48070%_)
                                        (hash-put!
                                         _%filtered48050%_
                                         (gx#module-export-name _%out48070%_)
                                         '#t))
                                      _%exports48065%_)))
                                 (foldr (lambda (_%g4807248075%_
                                                 _%g4807348078%_)
                                          (cons _%g4807248075%_
                                                _%g4807348078%_))
                                        '()
                                        _%g4795348030%_))
                                (let* ((_%exports48081%_
                                        (gx#core-expand-export-source
                                         _%g4795448032%_))
                                       (_%exports48084%_
                                        (foldl _%fold-out48053%_
                                               '()
                                               _%exports48081%_))
                                       (_%exports48090%_
                                        (filter (lambda (_%out48087%_)
                                                  (not (hash-get
                                                        _%filtered48050%_
                                                        (gx#module-export-name
                                                         _%out48087%_))))
                                                _%exports48084%_)))
                                  (cons 'begin: _%exports48090%_)))))
                          _%filter-out4796948027%_
                          _%hd4795947996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4796448008%_
                                                  _%target4796148002%_
                                                  '()))
                                               (_%g4795147975%_
                                                _%g4795247979%_)))))
                                     (_%g4795147975%_ _%g4795247979%_))))
                             (_%g4795147975%_ _%g4795247979%_))))
                     (_%g4795147975%_ _%g4795247979%_)))))
         (_%g4795048105%_ _%stx47948%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48110%_ _%rename48112%_)
      (gx#make-module-export
       (gx#module-export-context _%out48110%_)
       (gx#module-export-key _%out48110%_)
       (gx#module-export-phi _%out48110%_)
       _%rename48112%_
       (gx#module-export-weak? _%out48110%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48114%_)
       (let* ((_%g4811748150%_
               (lambda (_%g4811848146%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4811848146%_)))
              (_%g4811648341%_
               (lambda (_%g4811848154%_)
                 (if (gx#stx-pair? _%g4811848154%_)
                     (let ((_%e4812248157%_ (gx#syntax-e _%g4811848154%_)))
                       (let ((_%hd4812348161%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4812248157%_)))
                             (_%tl4812448164%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4812248157%_))))
                         (if (gx#stx-pair? _%tl4812448164%_)
                             (let ((_%e4812548167%_
                                    (gx#syntax-e _%tl4812448164%_)))
                               (let ((_%hd4812648171%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4812548167%_)))
                                     (_%tl4812748174%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4812548167%_))))
                                 (if (gx#stx-pair/null? _%tl4812748174%_)
                                     (let ((_g49011_
                                            (gx#syntax-split-splice
                                             _%tl4812748174%_
                                             '0)))
                                       (begin
                                         (let ((_g49012_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49011_)
                                                      (##values-length
                                                       _g49011_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49012_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49012_)))
                                         (let ((_%target4812848177%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49011_ 0)))
                                               (_%tl4813048180%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49011_ 1))))
                                           (if (gx#stx-null? _%tl4813048180%_)
                                               (letrec ((_%loop4813148183%_
                                                         (lambda (_%hd4812948187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4813548190%_
                          _%id4813648191%_)
                   (if (gx#stx-pair? _%hd4812948187%_)
                       (let ((_%e4813248193%_ (gx#syntax-e _%hd4812948187%_)))
                         (let ((_%lp-hd4813348197%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4813248193%_)))
                               (_%lp-tl4813448200%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4813248193%_))))
                           (if (gx#stx-pair? _%lp-hd4813348197%_)
                               (let ((_%e4813948203%_
                                      (gx#syntax-e _%lp-hd4813348197%_)))
                                 (let ((_%hd4814048207%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4813948203%_)))
                                       (_%tl4814148210%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4813948203%_))))
                                   (if (gx#stx-pair? _%tl4814148210%_)
                                       (let ((_%e4814248213%_
                                              (gx#syntax-e _%tl4814148210%_)))
                                         (let ((_%hd4814348217%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4814248213%_)))
                                               (_%tl4814448220%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4814248213%_))))
                                           (if (gx#stx-null? _%tl4814448220%_)
                                               (_%loop4813148183%_
                                                _%lp-tl4813448200%_
                                                (cons _%hd4814348217%_
                                                      _%new-id4813548190%_)
                                                (cons _%hd4814048207%_
                                                      _%id4813648191%_))
                                               (_%g4811748150%_
                                                _%g4811848154%_))))
                                       (_%g4811748150%_ _%g4811848154%_))))
                               (_%g4811748150%_ _%g4811848154%_))))
                       (let ((_%new-id4813748223%_
                              (reverse _%new-id4813548190%_))
                             (_%id4813848225%_ (reverse _%id4813648191%_)))
                         ((lambda (_%g4811948227%_
                                   _%g4812048229%_
                                   _%g4812148230%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4824848251%_
                                                      _%g4824948254%_)
                                               (cons _%g4824848251%_
                                                     _%g4824948254%_))
                                             '()
                                             _%g4812048229%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4825648259%_
                                                      _%g4825748262%_)
                                               (cons _%g4825648259%_
                                                     _%g4825748262%_))
                                             '()
                                             _%g4811948227%_)))
                                (let* ((_%keytab48265%_ (make-hash-table))
                                       (_%found48268%_ (make-hash-table))
                                       (_%_48291%_
                                        (for-each
                                         (lambda (_%id48271%_ _%new-id48273%_)
                                           (hash-put!
                                            _%keytab48265%_
                                            (gx#core-identifier-key
                                             _%id48271%_)
                                            (gx#core-identifier-key
                                             _%new-id48273%_)))
                                         (foldr (lambda (_%g4827448277%_
                                                         _%g4827548280%_)
                                                  (cons _%g4827448277%_
                                                        _%g4827548280%_))
                                                '()
                                                _%g4812048229%_)
                                         (foldr (lambda (_%g4828248285%_
                                                         _%g4828348288%_)
                                                  (cons _%g4828248285%_
                                                        _%g4828348288%_))
                                                '()
                                                _%g4811948227%_)))
                                       (_%exports48294%_
                                        (gx#core-expand-export-source
                                         _%g4812148230%_))
                                       (_%fold-e48322%_
                                        (letrec ((_%fold-e48297%_
                                                  (lambda (_%out48300%_
                                                           _%r48302%_)
                                                    (if (gx#module-export?
                                                         _%out48300%_)
                                                        (let* ((_%name48306%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48300%_))
                       (_%$e48309%_ (hash-get _%keytab48265%_ _%name48306%_)))
                  (if _%$e48309%_
                      ((lambda (_%rename48313%_)
                         (hash-put! _%found48268%_ _%name48306%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48300%_
                                _%rename48313%_)
                               _%r48302%_))
                       _%$e48309%_)
                      (cons _%out48300%_ _%r48302%_)))
                (if (gx#export-set? _%out48300%_)
                    (foldl _%fold-e48297%_
                           _%r48302%_
                           (gx#export-set-exports _%out48300%_))
                    (cons _%out48300%_ _%r48302%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48297%_))
                                       (_%new-exports48325%_
                                        (foldl _%fold-e48322%_
                                               '()
                                               _%exports48294%_)))
                                  (for-each
                                   (lambda (_%id48330%_)
                                     (if (hash-get
                                          _%found48268%_
                                          (gx#core-identifier-key _%id48330%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48114%_
                                          _%id48330%_)))
                                   (foldr (lambda (_%g4833248335%_
                                                   _%g4833348338%_)
                                            (cons _%g4833248335%_
                                                  _%g4833348338%_))
                                          '()
                                          _%g4812048229%_))
                                  (cons 'begin: _%new-exports48325%_))
                                (_%g4811748150%_ _%g4811848154%_)))
                          _%new-id4813748223%_
                          _%id4813848225%_
                          _%hd4812648171%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4813148183%_
                                                  _%target4812848177%_
                                                  '()
                                                  '()))
                                               (_%g4811748150%_
                                                _%g4811848154%_)))))
                                     (_%g4811748150%_ _%g4811848154%_))))
                             (_%g4811748150%_ _%g4811848154%_))))
                     (_%g4811748150%_ _%g4811848154%_)))))
         (_%g4811648341%_ _%stx48114%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48346%_)
       (let* ((_%g4834948367%_
               (lambda (_%g4835048363%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4835048363%_)))
              (_%g4834848452%_
               (lambda (_%g4835048371%_)
                 (if (gx#stx-pair? _%g4835048371%_)
                     (let ((_%e4835348374%_ (gx#syntax-e _%g4835048371%_)))
                       (let ((_%hd4835448378%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4835348374%_)))
                             (_%tl4835548381%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4835348374%_))))
                         (if (gx#stx-pair? _%tl4835548381%_)
                             (let ((_%e4835648384%_
                                    (gx#syntax-e _%tl4835548381%_)))
                               (let ((_%hd4835748388%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4835648384%_)))
                                     (_%tl4835848391%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4835648384%_))))
                                 (if (gx#stx-pair? _%tl4835848391%_)
                                     (let ((_%e4835948394%_
                                            (gx#syntax-e _%tl4835848391%_)))
                                       (let ((_%hd4836048398%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4835948394%_)))
                                             (_%tl4836148401%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4835948394%_))))
                                         (if (gx#stx-null? _%tl4836148401%_)
                                             ((lambda (_%g4835148404%_
                                                       _%g4835248406%_)
                                                (if (gx#identifier?
                                                     _%g4835148404%_)
                                                    (let* ((_%pre48422%_
                                                            (gx#stx-e
                                                             _%g4835148404%_))
                                                           (_%exports48425%_
                                                            (gx#core-expand-export-source
                                                             _%g4835248406%_))
                                                           (_%rename-e48431%_
                                                            (lambda (_%name48428%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48428%_
                                                               _%pre48422%_)))
                                                           (_%fold-e48447%_
                                                            (letrec ((_%fold-e48434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48437%_ _%r48439%_)
                                (if (gx#module-export? _%out48437%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48437%_
                                           (_%rename-e48431%_
                                            (gx#module-export-name
                                             _%out48437%_)))
                                          _%r48439%_)
                                    (if (gx#export-set? _%out48437%_)
                                        (foldl _%fold-e48434%_
                                               _%r48439%_
                                               (gx#export-set-exports
                                                _%out48437%_))
                                        (cons _%out48437%_ _%r48439%_))))))
                      _%fold-e48434%_)))
              (cons 'begin: (foldl _%fold-e48447%_ '() _%exports48425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4834948367%_
                                                     _%g4835048371%_)))
                                              _%hd4836048398%_
                                              _%hd4835748388%_)
                                             (_%g4834948367%_
                                              _%g4835048371%_))))
                                     (_%g4834948367%_ _%g4835048371%_))))
                             (_%g4834948367%_ _%g4835048371%_))))
                     (_%g4834948367%_ _%g4835048371%_)))))
         (_%g4834848452%_ _%stx48346%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48456%_)
       (letrec ((_%identifiers48459%_
                 (lambda (_%id48687%_ _%unchecked?48689%_)
                   (let ((_%info48691%_
                          (gx#syntax-local-value _%id48687%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info48691%_))
                         (cons _%id48687%_
                               (cons (let ((__obj48988 _%info48691%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj48988
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj48988
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj48988
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj48989
                                                         _%info48691%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj48989
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj48989
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj48989
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?48689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj48990 _%info48691%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48990
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48990
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48990
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj48991 _%info48691%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48991
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48991
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48991
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj48992 _%info48691%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj48992
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj48992
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj48992
                                    'mutators)))))
                 (map cdr
                      (let ((__obj48993 _%info48691%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj48993
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj48993
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj48993 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor48694%_
                                                   (let ((__obj48994
                                                          _%info48691%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj48994
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj48994
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj48994
                                                          'constructor)))))
                                              (if _%ctor48694%_
                                                  (cons _%ctor48694%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48456%_
                          _%id48687%_))))))
         (let* ((_%__stx4892948930%_ _%stx48456%_)
                (_%g4846348504%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4892948930%_))))
           (let ((_%__kont4893248933%_
                  (lambda (_%g4846548648%_ _%g4846648650%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4866948671%_)
                              (_%identifiers48459%_
                               _%g4866948671%_
                               (gx#stx-e _%g4846648650%_)))
                            (foldr (lambda (_%g4867448677%_ _%g4867548680%_)
                                     (cons _%g4867448677%_ _%g4867548680%_))
                                   '()
                                   _%g4846548648%_))))))
                 (_%__kont4893648937%_
                  (lambda (_%g4848648549%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4856548567%_)
                              (_%identifiers48459%_ _%g4856548567%_ '#f))
                            (foldr (lambda (_%g4857048573%_ _%g4857148576%_)
                                     (cons _%g4857048573%_ _%g4857148576%_))
                                   '()
                                   _%g4848648549%_)))))))
             (let* ((_%__match4898648987%_
                     (lambda (_%e4848748511%_
                              _%hd4848848515%_
                              _%tl4848948518%_
                              _%__splice4893848939%_
                              _%target4849048521%_
                              _%tl4849248524%_)
                       (letrec ((_%loop4849348527%_
                                 (lambda (_%hd4849148531%_ _%id4849748534%_)
                                   (if (gx#stx-pair? _%hd4849148531%_)
                                       (let ((_%e4849448536%_
                                              (gx#syntax-e _%hd4849148531%_)))
                                         (let ((_%lp-tl4849648543%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4849448536%_)))
                                               (_%lp-hd4849548540%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4849448536%_))))
                                           (_%loop4849348527%_
                                            _%lp-tl4849648543%_
                                            (cons _%lp-hd4849548540%_
                                                  _%id4849748534%_))))
                                       (let ((_%id4849848546%_
                                              (reverse _%id4849748534%_)))
                                         (_%__kont4893648937%_
                                          _%id4849848546%_))))))
                         (_%loop4849348527%_ _%target4849048521%_ '()))))
                    (_%__match4897248973%_
                     (lambda (_%e4846748586%_
                              _%hd4846848590%_
                              _%tl4846948593%_
                              _%e4847048596%_
                              _%hd4847148600%_
                              _%tl4847248603%_
                              _%e4847348606%_
                              _%e4847448610%_
                              _%hd4847548614%_
                              _%tl4847648617%_
                              _%__splice4893448935%_
                              _%target4847748620%_
                              _%tl4847948623%_)
                       (letrec ((_%loop4848048626%_
                                 (lambda (_%hd4847848630%_ _%id4848448633%_)
                                   (if (gx#stx-pair? _%hd4847848630%_)
                                       (let ((_%e4848148635%_
                                              (gx#syntax-e _%hd4847848630%_)))
                                         (let ((_%lp-tl4848348642%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4848148635%_)))
                                               (_%lp-hd4848248639%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4848148635%_))))
                                           (_%loop4848048626%_
                                            _%lp-tl4848348642%_
                                            (cons _%lp-hd4848248639%_
                                                  _%id4848448633%_))))
                                       (let ((_%id4848548645%_
                                              (reverse _%id4848448633%_)))
                                         (_%__kont4893248933%_
                                          _%id4848548645%_
                                          _%hd4847548614%_))))))
                         (_%loop4848048626%_ _%target4847748620%_ '())))))
               (if (gx#stx-pair? _%__stx4892948930%_)
                   (let ((_%e4846748586%_ (gx#syntax-e _%__stx4892948930%_)))
                     (let ((_%tl4846948593%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4846748586%_)))
                           (_%hd4846848590%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4846748586%_))))
                       (if (gx#stx-pair? _%tl4846948593%_)
                           (let ((_%e4847048596%_
                                  (gx#syntax-e _%tl4846948593%_)))
                             (let ((_%tl4847248603%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4847048596%_)))
                                   (_%hd4847148600%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4847048596%_))))
                               (if (gx#stx-datum? _%hd4847148600%_)
                                   (let ((_%e4847348606%_
                                          (gx#stx-e _%hd4847148600%_)))
                                     (if (equal? _%e4847348606%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4847248603%_)
                                             (let ((_%e4847448610%_
                                                    (gx#syntax-e
                                                     _%tl4847248603%_)))
                                               (let ((_%tl4847648617%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4847448610%_)))
                                                     (_%hd4847548614%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4847448610%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4847648617%_)
                                                     (let ((_%__splice4893448935%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4847648617%_
                                                             '0)))
                                                       (let ((_%tl4847948623%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4893448935%_ '1)))
                     (_%target4847748620%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4893448935%_ '0))))
                 (if (gx#stx-null? _%tl4847948623%_)
                     (_%__match4897248973%_
                      _%e4846748586%_
                      _%hd4846848590%_
                      _%tl4846948593%_
                      _%e4847048596%_
                      _%hd4847148600%_
                      _%tl4847248603%_
                      _%e4847348606%_
                      _%e4847448610%_
                      _%hd4847548614%_
                      _%tl4847648617%_
                      _%__splice4893448935%_
                      _%target4847748620%_
                      _%tl4847948623%_)
                     (if (gx#stx-pair/null? _%tl4846948593%_)
                         (let ((_%__splice4893848939%_
                                (gx#syntax-split-splice->vector
                                 _%tl4846948593%_
                                 '0)))
                           (let ((_%tl4849248524%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4893848939%_ '1)))
                                 (_%target4849048521%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4893848939%_ '0))))
                             (if (gx#stx-null? _%tl4849248524%_)
                                 (_%__match4898648987%_
                                  _%e4846748586%_
                                  _%hd4846848590%_
                                  _%tl4846948593%_
                                  _%__splice4893848939%_
                                  _%target4849048521%_
                                  _%tl4849248524%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4846348504%_)))))
                         (let () (declare (not safe)) (_%g4846348504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4846948593%_)
                                                         (let ((_%__splice4893848939%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4846948593%_
                         '0)))
                   (let ((_%tl4849248524%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4893848939%_ '1)))
                         (_%target4849048521%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4893848939%_ '0))))
                     (if (gx#stx-null? _%tl4849248524%_)
                         (_%__match4898648987%_
                          _%e4846748586%_
                          _%hd4846848590%_
                          _%tl4846948593%_
                          _%__splice4893848939%_
                          _%target4849048521%_
                          _%tl4849248524%_)
                         (let () (declare (not safe)) (_%g4846348504%_)))))
                 (let () (declare (not safe)) (_%g4846348504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4846948593%_)
                                                 (let ((_%__splice4893848939%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4846948593%_
                                                         '0)))
                                                   (let ((_%tl4849248524%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4893848939%_
                                                             '1)))
                                                         (_%target4849048521%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4893848939%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4849248524%_)
                                                         (_%__match4898648987%_
                                                          _%e4846748586%_
                                                          _%hd4846848590%_
                                                          _%tl4846948593%_
                                                          _%__splice4893848939%_
                                                          _%target4849048521%_
                                                          _%tl4849248524%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4846348504%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4846348504%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4846948593%_)
                                             (let ((_%__splice4893848939%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4846948593%_
                                                     '0)))
                                               (let ((_%tl4849248524%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4893848939%_
                                                         '1)))
                                                     (_%target4849048521%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4893848939%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4849248524%_)
                                                     (_%__match4898648987%_
                                                      _%e4846748586%_
                                                      _%hd4846848590%_
                                                      _%tl4846948593%_
                                                      _%__splice4893848939%_
                                                      _%target4849048521%_
                                                      _%tl4849248524%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4846348504%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4846348504%_)))))
                                   (if (gx#stx-pair/null? _%tl4846948593%_)
                                       (let ((_%__splice4893848939%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4846948593%_
                                               '0)))
                                         (let ((_%tl4849248524%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4893848939%_
                                                   '1)))
                                               (_%target4849048521%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4893848939%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4849248524%_)
                                               (_%__match4898648987%_
                                                _%e4846748586%_
                                                _%hd4846848590%_
                                                _%tl4846948593%_
                                                _%__splice4893848939%_
                                                _%target4849048521%_
                                                _%tl4849248524%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4846348504%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4846348504%_))))))
                           (if (gx#stx-pair/null? _%tl4846948593%_)
                               (let ((_%__splice4893848939%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4846948593%_
                                       '0)))
                                 (let ((_%tl4849248524%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4893848939%_
                                           '1)))
                                       (_%target4849048521%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4893848939%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4849248524%_)
                                       (_%__match4898648987%_
                                        _%e4846748586%_
                                        _%hd4846848590%_
                                        _%tl4846948593%_
                                        _%__splice4893848939%_
                                        _%target4849048521%_
                                        _%tl4849248524%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4846348504%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4846348504%_))))))
                   (let () (declare (not safe)) (_%g4846348504%_)))))))))))
