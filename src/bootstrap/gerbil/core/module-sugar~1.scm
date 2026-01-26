(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45886%_)
      (let* ((_%__stx4850848509%_ _%$stx45886%_)
             (_%g4589145910%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4850848509%_))))
        (let ((_%__kont4851148512%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4851348514%_
               (lambda (_%g4589645937%_ _%g4589745939%_ _%g4589845940%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4589745939%_
                                   (cons (cons _%g4589845940%_ _%g4589645937%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4589745939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4850848509%_)
              (let ((_%e4589345962%_ (gx#syntax-e _%__stx4850848509%_)))
                (let ((_%tl4589545969%_
                       (let () (declare (not safe)) (##cdr _%e4589345962%_)))
                      (_%hd4589445966%_
                       (let () (declare (not safe)) (##car _%e4589345962%_))))
                  (if (gx#stx-null? _%tl4589545969%_)
                      (_%__kont4851148512%_)
                      (if (gx#stx-pair? _%tl4589545969%_)
                          (let ((_%e4590245927%_
                                 (gx#syntax-e _%tl4589545969%_)))
                            (let ((_%tl4590445934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4590245927%_)))
                                  (_%hd4590345931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4590245927%_))))
                              (_%__kont4851348514%_
                               _%tl4590445934%_
                               _%hd4590345931%_
                               _%hd4589445966%_)))
                          (let () (declare (not safe)) (_%g4589145910%_))))))
              (let () (declare (not safe)) (_%g4589145910%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx45980%_)
      (let* ((_%__stx4853848539%_ _%$stx45980%_)
             (_%g4598546025%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4853848539%_))))
        (let ((_%__kont4854148542%_
               (lambda (_%g4598746161%_ _%g4598846163%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4598846163%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4598746161%_ '()))
                                   '())))))
              (_%__kont4854348544%_
               (lambda (_%g4599846090%_
                        _%g4599946092%_
                        _%g4600046093%_
                        _%g4600146094%_)
                 (cons _%g4600146094%_
                       (cons _%g4600046093%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4599946092%_
                                               (foldr (lambda (_%g4611546118%_
                                                               _%g4611646121%_)
                                                        (cons _%g4611546118%_
                                                              _%g4611646121%_))
                                                      '()
                                                      _%g4599846090%_)))
                                   '()))))))
          (let* ((_%__match4859348594%_
                  (lambda (_%e4600246032%_
                           _%hd4600346036%_
                           _%tl4600446039%_
                           _%e4600546042%_
                           _%hd4600646046%_
                           _%tl4600746049%_
                           _%e4600846052%_
                           _%hd4600946056%_
                           _%tl4601046059%_
                           _%__splice4854548546%_
                           _%target4601146062%_
                           _%tl4601346065%_)
                    (letrec ((_%loop4601446068%_
                              (lambda (_%hd4601246072%_ _%body4601846075%_)
                                (if (gx#stx-pair? _%hd4601246072%_)
                                    (let ((_%e4601546077%_
                                           (gx#syntax-e _%hd4601246072%_)))
                                      (let ((_%lp-tl4601746084%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4601546077%_)))
                                            (_%lp-hd4601646081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4601546077%_))))
                                        (_%loop4601446068%_
                                         _%lp-tl4601746084%_
                                         (cons _%lp-hd4601646081%_
                                               _%body4601846075%_))))
                                    (let ((_%body4601946087%_
                                           (reverse _%body4601846075%_)))
                                      (let ((_%g4599846090%_
                                             _%body4601946087%_)
                                            (_%g4599946092%_ _%tl4601046059%_)
                                            (_%g4600046093%_ _%hd4600946056%_)
                                            (_%g4600146094%_ _%hd4600346036%_))
                                        (if (gx#identifier? _%g4600046093%_)
                                            (_%__kont4854348544%_
                                             _%g4599846090%_
                                             _%g4599946092%_
                                             _%g4600046093%_
                                             _%g4600146094%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4598546025%_)))))))))
                      (_%loop4601446068%_ _%target4601146062%_ '()))))
                 (_%__match4856748568%_
                  (lambda (_%e4598946131%_
                           _%hd4599046135%_
                           _%tl4599146138%_
                           _%e4599246141%_
                           _%hd4599346145%_
                           _%tl4599446148%_
                           _%e4599546151%_
                           _%hd4599646155%_
                           _%tl4599746158%_)
                    (let ((_%g4598746161%_ _%hd4599646155%_)
                          (_%g4598846163%_ _%hd4599346145%_))
                      (if (gx#identifier? _%g4598846163%_)
                          (_%__kont4854148542%_
                           _%g4598746161%_
                           _%g4598846163%_)
                          (if (gx#stx-pair? _%hd4599346145%_)
                              (let ((_%e4600846052%_
                                     (gx#syntax-e _%hd4599346145%_)))
                                (let ((_%tl4601046059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4600846052%_)))
                                      (_%hd4600946056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4600846052%_))))
                                  (if (gx#stx-pair/null? _%tl4599446148%_)
                                      (let ((_%__splice4854548546%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4599446148%_
                                              '0)))
                                        (let ((_%tl4601346065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4854548546%_
                                                  '1)))
                                              (_%target4601146062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4854548546%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4601346065%_)
                                              (_%__match4859348594%_
                                               _%e4598946131%_
                                               _%hd4599046135%_
                                               _%tl4599146138%_
                                               _%e4599246141%_
                                               _%hd4599346145%_
                                               _%tl4599446148%_
                                               _%e4600846052%_
                                               _%hd4600946056%_
                                               _%tl4601046059%_
                                               _%__splice4854548546%_
                                               _%target4601146062%_
                                               _%tl4601346065%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4598546025%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4598546025%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4598546025%_))))))))
            (if (gx#stx-pair? _%__stx4853848539%_)
                (let ((_%e4598946131%_ (gx#syntax-e _%__stx4853848539%_)))
                  (let ((_%tl4599146138%_
                         (let () (declare (not safe)) (##cdr _%e4598946131%_)))
                        (_%hd4599046135%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4598946131%_))))
                    (if (gx#stx-pair? _%tl4599146138%_)
                        (let ((_%e4599246141%_ (gx#syntax-e _%tl4599146138%_)))
                          (let ((_%tl4599446148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4599246141%_)))
                                (_%hd4599346145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4599246141%_))))
                            (if (gx#stx-pair? _%tl4599446148%_)
                                (let ((_%e4599546151%_
                                       (gx#syntax-e _%tl4599446148%_)))
                                  (let ((_%tl4599746158%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4599546151%_)))
                                        (_%hd4599646155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4599546151%_))))
                                    (if (gx#stx-null? _%tl4599746158%_)
                                        (_%__match4856748568%_
                                         _%e4598946131%_
                                         _%hd4599046135%_
                                         _%tl4599146138%_
                                         _%e4599246141%_
                                         _%hd4599346145%_
                                         _%tl4599446148%_
                                         _%e4599546151%_
                                         _%hd4599646155%_
                                         _%tl4599746158%_)
                                        (if (gx#stx-pair? _%hd4599346145%_)
                                            (let ((_%e4600846052%_
                                                   (gx#syntax-e
                                                    _%hd4599346145%_)))
                                              (let ((_%tl4601046059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4600846052%_)))
                                                    (_%hd4600946056%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4600846052%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4599446148%_)
                                                    (let ((_%__splice4854548546%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4599446148%_
                                                            '0)))
                                                      (let ((_%tl4601346065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4854548546%_ '1)))
                    (_%target4601146062%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4854548546%_ '0))))
                (if (gx#stx-null? _%tl4601346065%_)
                    (_%__match4859348594%_
                     _%e4598946131%_
                     _%hd4599046135%_
                     _%tl4599146138%_
                     _%e4599246141%_
                     _%hd4599346145%_
                     _%tl4599446148%_
                     _%e4600846052%_
                     _%hd4600946056%_
                     _%tl4601046059%_
                     _%__splice4854548546%_
                     _%target4601146062%_
                     _%tl4601346065%_)
                    (let () (declare (not safe)) (_%g4598546025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4598546025%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4598546025%_))))))
                                (if (gx#stx-pair? _%hd4599346145%_)
                                    (let ((_%e4600846052%_
                                           (gx#syntax-e _%hd4599346145%_)))
                                      (let ((_%tl4601046059%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4600846052%_)))
                                            (_%hd4600946056%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4600846052%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4599446148%_)
                                            (let ((_%__splice4854548546%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4599446148%_
                                                    '0)))
                                              (let ((_%tl4601346065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4854548546%_
                                                        '1)))
                                                    (_%target4601146062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4854548546%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4601346065%_)
                                                    (_%__match4859348594%_
                                                     _%e4598946131%_
                                                     _%hd4599046135%_
                                                     _%tl4599146138%_
                                                     _%e4599246141%_
                                                     _%hd4599346145%_
                                                     _%tl4599446148%_
                                                     _%e4600846052%_
                                                     _%hd4600946056%_
                                                     _%tl4601046059%_
                                                     _%__splice4854548546%_
                                                     _%target4601146062%_
                                                     _%tl4601346065%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4598546025%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4598546025%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4598546025%_))))))
                        (let () (declare (not safe)) (_%g4598546025%_)))))
                (let () (declare (not safe)) (_%g4598546025%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46183%_)
      (let* ((_%__stx4859648597%_ _%$stx46183%_)
             (_%g4618846228%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4859648597%_))))
        (let ((_%__kont4859948600%_
               (lambda (_%g4619046364%_ _%g4619146366%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4619146366%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4619046364%_ '()))
                                   '())))))
              (_%__kont4860148602%_
               (lambda (_%g4620146293%_
                        _%g4620246295%_
                        _%g4620346296%_
                        _%g4620446297%_)
                 (cons _%g4620446297%_
                       (cons _%g4620346296%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4620246295%_
                                               (foldr (lambda (_%g4631846321%_
                                                               _%g4631946324%_)
                                                        (cons _%g4631846321%_
                                                              _%g4631946324%_))
                                                      '()
                                                      _%g4620146293%_)))
                                   '()))))))
          (let* ((_%__match4865148652%_
                  (lambda (_%e4620546235%_
                           _%hd4620646239%_
                           _%tl4620746242%_
                           _%e4620846245%_
                           _%hd4620946249%_
                           _%tl4621046252%_
                           _%e4621146255%_
                           _%hd4621246259%_
                           _%tl4621346262%_
                           _%__splice4860348604%_
                           _%target4621446265%_
                           _%tl4621646268%_)
                    (letrec ((_%loop4621746271%_
                              (lambda (_%hd4621546275%_ _%body4622146278%_)
                                (if (gx#stx-pair? _%hd4621546275%_)
                                    (let ((_%e4621846280%_
                                           (gx#syntax-e _%hd4621546275%_)))
                                      (let ((_%lp-tl4622046287%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4621846280%_)))
                                            (_%lp-hd4621946284%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4621846280%_))))
                                        (_%loop4621746271%_
                                         _%lp-tl4622046287%_
                                         (cons _%lp-hd4621946284%_
                                               _%body4622146278%_))))
                                    (let ((_%body4622246290%_
                                           (reverse _%body4622146278%_)))
                                      (let ((_%g4620146293%_
                                             _%body4622246290%_)
                                            (_%g4620246295%_ _%tl4621346262%_)
                                            (_%g4620346296%_ _%hd4621246259%_)
                                            (_%g4620446297%_ _%hd4620646239%_))
                                        (if (gx#identifier? _%g4620346296%_)
                                            (_%__kont4860148602%_
                                             _%g4620146293%_
                                             _%g4620246295%_
                                             _%g4620346296%_
                                             _%g4620446297%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4618846228%_)))))))))
                      (_%loop4621746271%_ _%target4621446265%_ '()))))
                 (_%__match4862548626%_
                  (lambda (_%e4619246334%_
                           _%hd4619346338%_
                           _%tl4619446341%_
                           _%e4619546344%_
                           _%hd4619646348%_
                           _%tl4619746351%_
                           _%e4619846354%_
                           _%hd4619946358%_
                           _%tl4620046361%_)
                    (let ((_%g4619046364%_ _%hd4619946358%_)
                          (_%g4619146366%_ _%hd4619646348%_))
                      (if (gx#identifier? _%g4619146366%_)
                          (_%__kont4859948600%_
                           _%g4619046364%_
                           _%g4619146366%_)
                          (if (gx#stx-pair? _%hd4619646348%_)
                              (let ((_%e4621146255%_
                                     (gx#syntax-e _%hd4619646348%_)))
                                (let ((_%tl4621346262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4621146255%_)))
                                      (_%hd4621246259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4621146255%_))))
                                  (if (gx#stx-pair/null? _%tl4619746351%_)
                                      (let ((_%__splice4860348604%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4619746351%_
                                              '0)))
                                        (let ((_%tl4621646268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4860348604%_
                                                  '1)))
                                              (_%target4621446265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4860348604%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4621646268%_)
                                              (_%__match4865148652%_
                                               _%e4619246334%_
                                               _%hd4619346338%_
                                               _%tl4619446341%_
                                               _%e4619546344%_
                                               _%hd4619646348%_
                                               _%tl4619746351%_
                                               _%e4621146255%_
                                               _%hd4621246259%_
                                               _%tl4621346262%_
                                               _%__splice4860348604%_
                                               _%target4621446265%_
                                               _%tl4621646268%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4618846228%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4618846228%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4618846228%_))))))))
            (if (gx#stx-pair? _%__stx4859648597%_)
                (let ((_%e4619246334%_ (gx#syntax-e _%__stx4859648597%_)))
                  (let ((_%tl4619446341%_
                         (let () (declare (not safe)) (##cdr _%e4619246334%_)))
                        (_%hd4619346338%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4619246334%_))))
                    (if (gx#stx-pair? _%tl4619446341%_)
                        (let ((_%e4619546344%_ (gx#syntax-e _%tl4619446341%_)))
                          (let ((_%tl4619746351%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4619546344%_)))
                                (_%hd4619646348%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4619546344%_))))
                            (if (gx#stx-pair? _%tl4619746351%_)
                                (let ((_%e4619846354%_
                                       (gx#syntax-e _%tl4619746351%_)))
                                  (let ((_%tl4620046361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4619846354%_)))
                                        (_%hd4619946358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4619846354%_))))
                                    (if (gx#stx-null? _%tl4620046361%_)
                                        (_%__match4862548626%_
                                         _%e4619246334%_
                                         _%hd4619346338%_
                                         _%tl4619446341%_
                                         _%e4619546344%_
                                         _%hd4619646348%_
                                         _%tl4619746351%_
                                         _%e4619846354%_
                                         _%hd4619946358%_
                                         _%tl4620046361%_)
                                        (if (gx#stx-pair? _%hd4619646348%_)
                                            (let ((_%e4621146255%_
                                                   (gx#syntax-e
                                                    _%hd4619646348%_)))
                                              (let ((_%tl4621346262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4621146255%_)))
                                                    (_%hd4621246259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4621146255%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4619746351%_)
                                                    (let ((_%__splice4860348604%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4619746351%_
                                                            '0)))
                                                      (let ((_%tl4621646268%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4860348604%_ '1)))
                    (_%target4621446265%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4860348604%_ '0))))
                (if (gx#stx-null? _%tl4621646268%_)
                    (_%__match4865148652%_
                     _%e4619246334%_
                     _%hd4619346338%_
                     _%tl4619446341%_
                     _%e4619546344%_
                     _%hd4619646348%_
                     _%tl4619746351%_
                     _%e4621146255%_
                     _%hd4621246259%_
                     _%tl4621346262%_
                     _%__splice4860348604%_
                     _%target4621446265%_
                     _%tl4621646268%_)
                    (let () (declare (not safe)) (_%g4618846228%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4618846228%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4618846228%_))))))
                                (if (gx#stx-pair? _%hd4619646348%_)
                                    (let ((_%e4621146255%_
                                           (gx#syntax-e _%hd4619646348%_)))
                                      (let ((_%tl4621346262%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4621146255%_)))
                                            (_%hd4621246259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4621146255%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4619746351%_)
                                            (let ((_%__splice4860348604%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4619746351%_
                                                    '0)))
                                              (let ((_%tl4621646268%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4860348604%_
                                                        '1)))
                                                    (_%target4621446265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4860348604%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4621646268%_)
                                                    (_%__match4865148652%_
                                                     _%e4619246334%_
                                                     _%hd4619346338%_
                                                     _%tl4619446341%_
                                                     _%e4619546344%_
                                                     _%hd4619646348%_
                                                     _%tl4619746351%_
                                                     _%e4621146255%_
                                                     _%hd4621246259%_
                                                     _%tl4621346262%_
                                                     _%__splice4860348604%_
                                                     _%target4621446265%_
                                                     _%tl4621646268%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4618846228%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4618846228%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4618846228%_))))))
                        (let () (declare (not safe)) (_%g4618846228%_)))))
                (let () (declare (not safe)) (_%g4618846228%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46386%_)
      (let* ((_%__stx4865448655%_ _%$stx46386%_)
             (_%g4639146431%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4865448655%_))))
        (let ((_%__kont4865748658%_
               (lambda (_%g4639346567%_ _%g4639446569%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4639446569%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4639346567%_ '()))
                                   '())))))
              (_%__kont4865948660%_
               (lambda (_%g4640446496%_
                        _%g4640546498%_
                        _%g4640646499%_
                        _%g4640746500%_)
                 (cons _%g4640746500%_
                       (cons _%g4640646499%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4640546498%_
                                               (foldr (lambda (_%g4652146524%_
                                                               _%g4652246527%_)
                                                        (cons _%g4652146524%_
                                                              _%g4652246527%_))
                                                      '()
                                                      _%g4640446496%_)))
                                   '()))))))
          (let* ((_%__match4870948710%_
                  (lambda (_%e4640846438%_
                           _%hd4640946442%_
                           _%tl4641046445%_
                           _%e4641146448%_
                           _%hd4641246452%_
                           _%tl4641346455%_
                           _%e4641446458%_
                           _%hd4641546462%_
                           _%tl4641646465%_
                           _%__splice4866148662%_
                           _%target4641746468%_
                           _%tl4641946471%_)
                    (letrec ((_%loop4642046474%_
                              (lambda (_%hd4641846478%_ _%body4642446481%_)
                                (if (gx#stx-pair? _%hd4641846478%_)
                                    (let ((_%e4642146483%_
                                           (gx#syntax-e _%hd4641846478%_)))
                                      (let ((_%lp-tl4642346490%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4642146483%_)))
                                            (_%lp-hd4642246487%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4642146483%_))))
                                        (_%loop4642046474%_
                                         _%lp-tl4642346490%_
                                         (cons _%lp-hd4642246487%_
                                               _%body4642446481%_))))
                                    (let ((_%body4642546493%_
                                           (reverse _%body4642446481%_)))
                                      (let ((_%g4640446496%_
                                             _%body4642546493%_)
                                            (_%g4640546498%_ _%tl4641646465%_)
                                            (_%g4640646499%_ _%hd4641546462%_)
                                            (_%g4640746500%_ _%hd4640946442%_))
                                        (if (gx#identifier? _%g4640646499%_)
                                            (_%__kont4865948660%_
                                             _%g4640446496%_
                                             _%g4640546498%_
                                             _%g4640646499%_
                                             _%g4640746500%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4639146431%_)))))))))
                      (_%loop4642046474%_ _%target4641746468%_ '()))))
                 (_%__match4868348684%_
                  (lambda (_%e4639546537%_
                           _%hd4639646541%_
                           _%tl4639746544%_
                           _%e4639846547%_
                           _%hd4639946551%_
                           _%tl4640046554%_
                           _%e4640146557%_
                           _%hd4640246561%_
                           _%tl4640346564%_)
                    (let ((_%g4639346567%_ _%hd4640246561%_)
                          (_%g4639446569%_ _%hd4639946551%_))
                      (if (gx#identifier? _%g4639446569%_)
                          (_%__kont4865748658%_
                           _%g4639346567%_
                           _%g4639446569%_)
                          (if (gx#stx-pair? _%hd4639946551%_)
                              (let ((_%e4641446458%_
                                     (gx#syntax-e _%hd4639946551%_)))
                                (let ((_%tl4641646465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4641446458%_)))
                                      (_%hd4641546462%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4641446458%_))))
                                  (if (gx#stx-pair/null? _%tl4640046554%_)
                                      (let ((_%__splice4866148662%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4640046554%_
                                              '0)))
                                        (let ((_%tl4641946471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4866148662%_
                                                  '1)))
                                              (_%target4641746468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4866148662%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4641946471%_)
                                              (_%__match4870948710%_
                                               _%e4639546537%_
                                               _%hd4639646541%_
                                               _%tl4639746544%_
                                               _%e4639846547%_
                                               _%hd4639946551%_
                                               _%tl4640046554%_
                                               _%e4641446458%_
                                               _%hd4641546462%_
                                               _%tl4641646465%_
                                               _%__splice4866148662%_
                                               _%target4641746468%_
                                               _%tl4641946471%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4639146431%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4639146431%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4639146431%_))))))))
            (if (gx#stx-pair? _%__stx4865448655%_)
                (let ((_%e4639546537%_ (gx#syntax-e _%__stx4865448655%_)))
                  (let ((_%tl4639746544%_
                         (let () (declare (not safe)) (##cdr _%e4639546537%_)))
                        (_%hd4639646541%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4639546537%_))))
                    (if (gx#stx-pair? _%tl4639746544%_)
                        (let ((_%e4639846547%_ (gx#syntax-e _%tl4639746544%_)))
                          (let ((_%tl4640046554%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4639846547%_)))
                                (_%hd4639946551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4639846547%_))))
                            (if (gx#stx-pair? _%tl4640046554%_)
                                (let ((_%e4640146557%_
                                       (gx#syntax-e _%tl4640046554%_)))
                                  (let ((_%tl4640346564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4640146557%_)))
                                        (_%hd4640246561%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4640146557%_))))
                                    (if (gx#stx-null? _%tl4640346564%_)
                                        (_%__match4868348684%_
                                         _%e4639546537%_
                                         _%hd4639646541%_
                                         _%tl4639746544%_
                                         _%e4639846547%_
                                         _%hd4639946551%_
                                         _%tl4640046554%_
                                         _%e4640146557%_
                                         _%hd4640246561%_
                                         _%tl4640346564%_)
                                        (if (gx#stx-pair? _%hd4639946551%_)
                                            (let ((_%e4641446458%_
                                                   (gx#syntax-e
                                                    _%hd4639946551%_)))
                                              (let ((_%tl4641646465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4641446458%_)))
                                                    (_%hd4641546462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4641446458%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4640046554%_)
                                                    (let ((_%__splice4866148662%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4640046554%_
                                                            '0)))
                                                      (let ((_%tl4641946471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4866148662%_ '1)))
                    (_%target4641746468%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4866148662%_ '0))))
                (if (gx#stx-null? _%tl4641946471%_)
                    (_%__match4870948710%_
                     _%e4639546537%_
                     _%hd4639646541%_
                     _%tl4639746544%_
                     _%e4639846547%_
                     _%hd4639946551%_
                     _%tl4640046554%_
                     _%e4641446458%_
                     _%hd4641546462%_
                     _%tl4641646465%_
                     _%__splice4866148662%_
                     _%target4641746468%_
                     _%tl4641946471%_)
                    (let () (declare (not safe)) (_%g4639146431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4639146431%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4639146431%_))))))
                                (if (gx#stx-pair? _%hd4639946551%_)
                                    (let ((_%e4641446458%_
                                           (gx#syntax-e _%hd4639946551%_)))
                                      (let ((_%tl4641646465%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4641446458%_)))
                                            (_%hd4641546462%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4641446458%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4640046554%_)
                                            (let ((_%__splice4866148662%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4640046554%_
                                                    '0)))
                                              (let ((_%tl4641946471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4866148662%_
                                                        '1)))
                                                    (_%target4641746468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4866148662%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4641946471%_)
                                                    (_%__match4870948710%_
                                                     _%e4639546537%_
                                                     _%hd4639646541%_
                                                     _%tl4639746544%_
                                                     _%e4639846547%_
                                                     _%hd4639946551%_
                                                     _%tl4640046554%_
                                                     _%e4641446458%_
                                                     _%hd4641546462%_
                                                     _%tl4641646465%_
                                                     _%__splice4866148662%_
                                                     _%target4641746468%_
                                                     _%tl4641946471%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4639146431%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4639146431%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4639146431%_))))))
                        (let () (declare (not safe)) (_%g4639146431%_)))))
                (let () (declare (not safe)) (_%g4639146431%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx46589%_)
       (let* ((_%g4659246612%_
               (lambda (_%g4659346608%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4659346608%_)))
              (_%g4659146681%_
               (lambda (_%g4659346616%_)
                 (if (gx#stx-pair? _%g4659346616%_)
                     (let ((_%e4659546619%_ (gx#syntax-e _%g4659346616%_)))
                       (let ((_%hd4659646623%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4659546619%_)))
                             (_%tl4659746626%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4659546619%_))))
                         (if (gx#stx-pair/null? _%tl4659746626%_)
                             (let ((_g48804_
                                    (gx#syntax-split-splice
                                     _%tl4659746626%_
                                     '0)))
                               (begin
                                 (let ((_g48805_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48804_)
                                              (##values-length _g48804_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48805_ 2)))
                                       (error "Context expects 2 values"
                                              _g48805_)))
                                 (let ((_%target4659846629%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48804_ 0)))
                                       (_%tl4660046632%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48804_ 1))))
                                   (if (gx#stx-null? _%tl4660046632%_)
                                       (letrec ((_%loop4660146635%_
                                                 (lambda (_%hd4659946639%_
                                                          _%body4660546642%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4659946639%_)
                                                       (let ((_%e4660246644%_
                                                              (gx#syntax-e
                                                               _%hd4659946639%_)))
                                                         (let ((_%lp-hd4660346648%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4660246644%_)))
                       (_%lp-tl4660446651%_
                        (let () (declare (not safe)) (##cdr _%e4660246644%_))))
                   (_%loop4660146635%_
                    _%lp-tl4660446651%_
                    (cons _%lp-hd4660346648%_ _%body4660546642%_))))
               (let ((_%body4660646654%_ (reverse _%body4660546642%_)))
                 ((lambda (_%g4659446657%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4667246675%_
                                                _%g4667346678%_)
                                         (cons _%g4667246675%_
                                               _%g4667346678%_))
                                       '()
                                       _%g4659446657%_))))
                  _%body4660646654%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4660146635%_
                                          _%target4659846629%_
                                          '()))
                                       (_%g4659246612%_ _%g4659346616%_)))))
                             (_%g4659246612%_ _%g4659346616%_))))
                     (_%g4659246612%_ _%g4659346616%_)))))
         (_%g4659146681%_ _%stx46589%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46686%_)
       (let* ((_%g4668946709%_
               (lambda (_%g4669046705%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4669046705%_)))
              (_%g4668846778%_
               (lambda (_%g4669046713%_)
                 (if (gx#stx-pair? _%g4669046713%_)
                     (let ((_%e4669246716%_ (gx#syntax-e _%g4669046713%_)))
                       (let ((_%hd4669346720%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4669246716%_)))
                             (_%tl4669446723%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4669246716%_))))
                         (if (gx#stx-pair/null? _%tl4669446723%_)
                             (let ((_g48806_
                                    (gx#syntax-split-splice
                                     _%tl4669446723%_
                                     '0)))
                               (begin
                                 (let ((_g48807_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g48806_)
                                              (##values-length _g48806_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g48807_ 2)))
                                       (error "Context expects 2 values"
                                              _g48807_)))
                                 (let ((_%target4669546726%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48806_ 0)))
                                       (_%tl4669746729%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g48806_ 1))))
                                   (if (gx#stx-null? _%tl4669746729%_)
                                       (letrec ((_%loop4669846732%_
                                                 (lambda (_%hd4669646736%_
                                                          _%body4670246739%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4669646736%_)
                                                       (let ((_%e4669946741%_
                                                              (gx#syntax-e
                                                               _%hd4669646736%_)))
                                                         (let ((_%lp-hd4670046745%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4669946741%_)))
                       (_%lp-tl4670146748%_
                        (let () (declare (not safe)) (##cdr _%e4669946741%_))))
                   (_%loop4669846732%_
                    _%lp-tl4670146748%_
                    (cons _%lp-hd4670046745%_ _%body4670246739%_))))
               (let ((_%body4670346751%_ (reverse _%body4670246739%_)))
                 ((lambda (_%g4669146754%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4676946772%_
                                                _%g4677046775%_)
                                         (cons _%g4676946772%_
                                               _%g4677046775%_))
                                       '()
                                       _%g4669146754%_))))
                  _%body4670346751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4669846732%_
                                          _%target4669546726%_
                                          '()))
                                       (_%g4668946709%_ _%g4669046713%_)))))
                             (_%g4668946709%_ _%g4669046713%_))))
                     (_%g4668946709%_ _%g4669046713%_)))))
         (_%g4668846778%_ _%stx46686%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46783%_)
       (let* ((_%g4678646810%_
               (lambda (_%g4678746806%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4678746806%_)))
              (_%g4678546936%_
               (lambda (_%g4678746814%_)
                 (if (gx#stx-pair? _%g4678746814%_)
                     (let ((_%e4679046817%_ (gx#syntax-e _%g4678746814%_)))
                       (let ((_%hd4679146821%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4679046817%_)))
                             (_%tl4679246824%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4679046817%_))))
                         (if (gx#stx-pair? _%tl4679246824%_)
                             (let ((_%e4679346827%_
                                    (gx#syntax-e _%tl4679246824%_)))
                               (let ((_%hd4679446831%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4679346827%_)))
                                     (_%tl4679546834%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4679346827%_))))
                                 (if (gx#stx-pair/null? _%tl4679546834%_)
                                     (let ((_g48808_
                                            (gx#syntax-split-splice
                                             _%tl4679546834%_
                                             '0)))
                                       (begin
                                         (let ((_g48809_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48808_)
                                                      (##values-length
                                                       _g48808_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48809_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48809_)))
                                         (let ((_%target4679646837%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48808_ 0)))
                                               (_%tl4679846840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48808_ 1))))
                                           (if (gx#stx-null? _%tl4679846840%_)
                                               (letrec ((_%loop4679946843%_
                                                         (lambda (_%hd4679746847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4680346850%_)
                   (if (gx#stx-pair? _%hd4679746847%_)
                       (let ((_%e4680046852%_ (gx#syntax-e _%hd4679746847%_)))
                         (let ((_%lp-hd4680146856%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4680046852%_)))
                               (_%lp-tl4680246859%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4680046852%_))))
                           (_%loop4679946843%_
                            _%lp-tl4680246859%_
                            (cons _%lp-hd4680146856%_ _%id4680346850%_))))
                       (let ((_%id4680446862%_ (reverse _%id4680346850%_)))
                         ((lambda (_%g4678846865%_ _%g4678946867%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4688446887%_
                                                 _%g4688546890%_)
                                          (cons _%g4688446887%_
                                                _%g4688546890%_))
                                        '()
                                        _%g4678846865%_))
                                (let* ((_%keys46901%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4689246895%_
                                                         _%g4689346898%_)
                                                  (cons _%g4689246895%_
                                                        _%g4689346898%_))
                                                '()
                                                _%g4678846865%_)))
                                       (_%keytab46912%_
                                        (let ((_%ht46904%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4690646908%_)
                                             (hash-put!
                                              _%ht46904%_
                                              _%g4690646908%_
                                              '#t))
                                           _%keys46901%_)
                                          _%ht46904%_))
                                       (_%imports46915%_
                                        (gx#core-expand-import-source
                                         _%g4678946867%_))
                                       (_%fold-e46931%_
                                        (letrec ((_%fold-e46918%_
                                                  (lambda (_%in46921%_
                                                           _%r46923%_)
                                                    (if (gx#module-import?
                                                         _%in46921%_)
                                                        (if (hash-get
                                                             _%keytab46912%_
                                                             (gx#module-import-name
                                                              _%in46921%_))
                                                            (cons _%in46921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r46923%_)
                    _%r46923%_)
                (if (gx#import-set? _%in46921%_)
                    (foldl _%fold-e46918%_
                           _%r46923%_
                           (gx#import-set-imports _%in46921%_))
                    _%r46923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e46918%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e46931%_
                                               '()
                                               _%imports46915%_)))
                                (_%g4678646810%_ _%g4678746814%_)))
                          _%id4680446862%_
                          _%hd4679446831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4679946843%_
                                                  _%target4679646837%_
                                                  '()))
                                               (_%g4678646810%_
                                                _%g4678746814%_)))))
                                     (_%g4678646810%_ _%g4678746814%_))))
                             (_%g4678646810%_ _%g4678746814%_))))
                     (_%g4678646810%_ _%g4678746814%_)))))
         (_%g4678546936%_ _%stx46783%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx46941%_)
       (let* ((_%g4694446968%_
               (lambda (_%g4694546964%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4694546964%_)))
              (_%g4694347094%_
               (lambda (_%g4694546972%_)
                 (if (gx#stx-pair? _%g4694546972%_)
                     (let ((_%e4694846975%_ (gx#syntax-e _%g4694546972%_)))
                       (let ((_%hd4694946979%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4694846975%_)))
                             (_%tl4695046982%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4694846975%_))))
                         (if (gx#stx-pair? _%tl4695046982%_)
                             (let ((_%e4695146985%_
                                    (gx#syntax-e _%tl4695046982%_)))
                               (let ((_%hd4695246989%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4695146985%_)))
                                     (_%tl4695346992%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4695146985%_))))
                                 (if (gx#stx-pair/null? _%tl4695346992%_)
                                     (let ((_g48810_
                                            (gx#syntax-split-splice
                                             _%tl4695346992%_
                                             '0)))
                                       (begin
                                         (let ((_g48811_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48810_)
                                                      (##values-length
                                                       _g48810_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48811_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48811_)))
                                         (let ((_%target4695446995%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48810_ 0)))
                                               (_%tl4695646998%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48810_ 1))))
                                           (if (gx#stx-null? _%tl4695646998%_)
                                               (letrec ((_%loop4695747001%_
                                                         (lambda (_%hd4695547005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4696147008%_)
                   (if (gx#stx-pair? _%hd4695547005%_)
                       (let ((_%e4695847010%_ (gx#syntax-e _%hd4695547005%_)))
                         (let ((_%lp-hd4695947014%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4695847010%_)))
                               (_%lp-tl4696047017%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4695847010%_))))
                           (_%loop4695747001%_
                            _%lp-tl4696047017%_
                            (cons _%lp-hd4695947014%_ _%id4696147008%_))))
                       (let ((_%id4696247020%_ (reverse _%id4696147008%_)))
                         ((lambda (_%g4694647023%_ _%g4694747025%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4704247045%_
                                                 _%g4704347048%_)
                                          (cons _%g4704247045%_
                                                _%g4704347048%_))
                                        '()
                                        _%g4694647023%_))
                                (let* ((_%keys47059%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4705047053%_
                                                         _%g4705147056%_)
                                                  (cons _%g4705047053%_
                                                        _%g4705147056%_))
                                                '()
                                                _%g4694647023%_)))
                                       (_%keytab47070%_
                                        (let ((_%ht47062%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4706447066%_)
                                             (hash-put!
                                              _%ht47062%_
                                              _%g4706447066%_
                                              '#t))
                                           _%keys47059%_)
                                          _%ht47062%_))
                                       (_%imports47073%_
                                        (gx#core-expand-import-source
                                         _%g4694747025%_))
                                       (_%fold-e47089%_
                                        (letrec ((_%fold-e47076%_
                                                  (lambda (_%in47079%_
                                                           _%r47081%_)
                                                    (if (gx#module-import?
                                                         _%in47079%_)
                                                        (if (hash-get
                                                             _%keytab47070%_
                                                             (gx#module-import-name
                                                              _%in47079%_))
                                                            _%r47081%_
                                                            (cons _%in47079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47081%_))
                (if (gx#import-set? _%in47079%_)
                    (foldl _%fold-e47076%_
                           _%r47081%_
                           (gx#import-set-imports _%in47079%_))
                    (cons _%in47079%_ _%r47081%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47076%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47089%_
                                               '()
                                               _%imports47073%_)))
                                (_%g4694446968%_ _%g4694546972%_)))
                          _%id4696247020%_
                          _%hd4695246989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4695747001%_
                                                  _%target4695446995%_
                                                  '()))
                                               (_%g4694446968%_
                                                _%g4694546972%_)))))
                                     (_%g4694446968%_ _%g4694546972%_))))
                             (_%g4694446968%_ _%g4694546972%_))))
                     (_%g4694446968%_ _%g4694546972%_)))))
         (_%g4694347094%_ _%stx46941%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47146%_ _%rename47148%_)
      (gx#make-module-import
       (gx#module-import-source _%in47146%_)
       _%rename47148%_
       (gx#module-import-phi _%in47146%_)
       (gx#module-import-weak? _%in47146%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47099%_ _%pre47101%_)
      (let* ((_%name4710247110%_ _%name47099%_)
             (_%else4710447122%_
              (lambda () (make-symbol _%pre47101%_ _%name47099%_)))
             (_%K4710647130%_
              (lambda (_%mark47126%_ _%id47128%_)
                (cons (make-symbol _%pre47101%_ _%id47128%_) _%mark47126%_))))
        (if (pair? _%name4710247110%_)
            (let ((_%hd4710747134%_
                   (let () (declare (not safe)) (##car _%name4710247110%_)))
                  (_%tl4710847137%_
                   (let () (declare (not safe)) (##cdr _%name4710247110%_))))
              (let* ((_%id47140%_ _%hd4710747134%_)
                     (_%mark47143%_ _%tl4710847137%_))
                (_%K4710647130%_ _%mark47143%_ _%id47140%_)))
            (_%else4710447122%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47150%_)
       (let* ((_%g4715347186%_
               (lambda (_%g4715447182%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4715447182%_)))
              (_%g4715247377%_
               (lambda (_%g4715447190%_)
                 (if (gx#stx-pair? _%g4715447190%_)
                     (let ((_%e4715847193%_ (gx#syntax-e _%g4715447190%_)))
                       (let ((_%hd4715947197%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4715847193%_)))
                             (_%tl4716047200%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4715847193%_))))
                         (if (gx#stx-pair? _%tl4716047200%_)
                             (let ((_%e4716147203%_
                                    (gx#syntax-e _%tl4716047200%_)))
                               (let ((_%hd4716247207%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4716147203%_)))
                                     (_%tl4716347210%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4716147203%_))))
                                 (if (gx#stx-pair/null? _%tl4716347210%_)
                                     (let ((_g48812_
                                            (gx#syntax-split-splice
                                             _%tl4716347210%_
                                             '0)))
                                       (begin
                                         (let ((_g48813_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48812_)
                                                      (##values-length
                                                       _g48812_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48813_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48813_)))
                                         (let ((_%target4716447213%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48812_ 0)))
                                               (_%tl4716647216%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48812_ 1))))
                                           (if (gx#stx-null? _%tl4716647216%_)
                                               (letrec ((_%loop4716747219%_
                                                         (lambda (_%hd4716547223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4717147226%_
                          _%id4717247227%_)
                   (if (gx#stx-pair? _%hd4716547223%_)
                       (let ((_%e4716847229%_ (gx#syntax-e _%hd4716547223%_)))
                         (let ((_%lp-hd4716947233%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4716847229%_)))
                               (_%lp-tl4717047236%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4716847229%_))))
                           (if (gx#stx-pair? _%lp-hd4716947233%_)
                               (let ((_%e4717547239%_
                                      (gx#syntax-e _%lp-hd4716947233%_)))
                                 (let ((_%hd4717647243%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4717547239%_)))
                                       (_%tl4717747246%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4717547239%_))))
                                   (if (gx#stx-pair? _%tl4717747246%_)
                                       (let ((_%e4717847249%_
                                              (gx#syntax-e _%tl4717747246%_)))
                                         (let ((_%hd4717947253%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4717847249%_)))
                                               (_%tl4718047256%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4717847249%_))))
                                           (if (gx#stx-null? _%tl4718047256%_)
                                               (_%loop4716747219%_
                                                _%lp-tl4717047236%_
                                                (cons _%hd4717947253%_
                                                      _%new-id4717147226%_)
                                                (cons _%hd4717647243%_
                                                      _%id4717247227%_))
                                               (_%g4715347186%_
                                                _%g4715447190%_))))
                                       (_%g4715347186%_ _%g4715447190%_))))
                               (_%g4715347186%_ _%g4715447190%_))))
                       (let ((_%new-id4717347259%_
                              (reverse _%new-id4717147226%_))
                             (_%id4717447261%_ (reverse _%id4717247227%_)))
                         ((lambda (_%g4715547263%_
                                   _%g4715647265%_
                                   _%g4715747266%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4728447287%_
                                                      _%g4728547290%_)
                                               (cons _%g4728447287%_
                                                     _%g4728547290%_))
                                             '()
                                             _%g4715647265%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4729247295%_
                                                      _%g4729347298%_)
                                               (cons _%g4729247295%_
                                                     _%g4729347298%_))
                                             '()
                                             _%g4715547263%_)))
                                (let* ((_%keytab47301%_ (make-hash-table))
                                       (_%found47304%_ (make-hash-table))
                                       (_%_47327%_
                                        (for-each
                                         (lambda (_%id47307%_ _%new-id47309%_)
                                           (hash-put!
                                            _%keytab47301%_
                                            (gx#core-identifier-key
                                             _%id47307%_)
                                            (gx#core-identifier-key
                                             _%new-id47309%_)))
                                         (foldr (lambda (_%g4731047313%_
                                                         _%g4731147316%_)
                                                  (cons _%g4731047313%_
                                                        _%g4731147316%_))
                                                '()
                                                _%g4715647265%_)
                                         (foldr (lambda (_%g4731847321%_
                                                         _%g4731947324%_)
                                                  (cons _%g4731847321%_
                                                        _%g4731947324%_))
                                                '()
                                                _%g4715547263%_)))
                                       (_%imports47330%_
                                        (gx#core-expand-import-source
                                         _%g4715747266%_))
                                       (_%fold-e47358%_
                                        (letrec ((_%fold-e47333%_
                                                  (lambda (_%in47336%_
                                                           _%r47338%_)
                                                    (if (gx#module-import?
                                                         _%in47336%_)
                                                        (let* ((_%name47342%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47336%_))
                       (_%$e47345%_ (hash-get _%keytab47301%_ _%name47342%_)))
                  (if _%$e47345%_
                      ((lambda (_%rename47349%_)
                         (hash-put! _%found47304%_ _%name47342%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47336%_
                                _%rename47349%_)
                               _%r47338%_))
                       _%$e47345%_)
                      (cons _%in47336%_ _%r47338%_)))
                (if (gx#import-set? _%in47336%_)
                    (foldl _%fold-e47333%_
                           _%r47338%_
                           (gx#import-set-imports _%in47336%_))
                    (cons _%in47336%_ _%r47338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47333%_))
                                       (_%new-imports47361%_
                                        (foldl _%fold-e47358%_
                                               '()
                                               _%imports47330%_)))
                                  (for-each
                                   (lambda (_%id47366%_)
                                     (if (hash-get
                                          _%found47304%_
                                          (gx#core-identifier-key _%id47366%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47150%_
                                          _%id47366%_)))
                                   (foldr (lambda (_%g4736847371%_
                                                   _%g4736947374%_)
                                            (cons _%g4736847371%_
                                                  _%g4736947374%_))
                                          '()
                                          _%g4715647265%_))
                                  (cons 'begin: _%new-imports47361%_))
                                (_%g4715347186%_ _%g4715447190%_)))
                          _%new-id4717347259%_
                          _%id4717447261%_
                          _%hd4716247207%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4716747219%_
                                                  _%target4716447213%_
                                                  '()
                                                  '()))
                                               (_%g4715347186%_
                                                _%g4715447190%_)))))
                                     (_%g4715347186%_ _%g4715447190%_))))
                             (_%g4715347186%_ _%g4715447190%_))))
                     (_%g4715347186%_ _%g4715447190%_)))))
         (_%g4715247377%_ _%stx47150%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47382%_)
       (let* ((_%g4738547403%_
               (lambda (_%g4738647399%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4738647399%_)))
              (_%g4738447488%_
               (lambda (_%g4738647407%_)
                 (if (gx#stx-pair? _%g4738647407%_)
                     (let ((_%e4738947410%_ (gx#syntax-e _%g4738647407%_)))
                       (let ((_%hd4739047414%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4738947410%_)))
                             (_%tl4739147417%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4738947410%_))))
                         (if (gx#stx-pair? _%tl4739147417%_)
                             (let ((_%e4739247420%_
                                    (gx#syntax-e _%tl4739147417%_)))
                               (let ((_%hd4739347424%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4739247420%_)))
                                     (_%tl4739447427%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4739247420%_))))
                                 (if (gx#stx-pair? _%tl4739447427%_)
                                     (let ((_%e4739547430%_
                                            (gx#syntax-e _%tl4739447427%_)))
                                       (let ((_%hd4739647434%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4739547430%_)))
                                             (_%tl4739747437%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4739547430%_))))
                                         (if (gx#stx-null? _%tl4739747437%_)
                                             ((lambda (_%g4738747440%_
                                                       _%g4738847442%_)
                                                (if (gx#identifier?
                                                     _%g4738747440%_)
                                                    (let* ((_%pre47458%_
                                                            (gx#stx-e
                                                             _%g4738747440%_))
                                                           (_%imports47461%_
                                                            (gx#core-expand-import-source
                                                             _%g4738847442%_))
                                                           (_%rename-e47467%_
                                                            (lambda (_%name47464%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47464%_
                                                               _%pre47458%_)))
                                                           (_%fold-e47483%_
                                                            (letrec ((_%fold-e47470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47473%_ _%r47475%_)
                                (if (gx#module-import? _%in47473%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47473%_
                                           (_%rename-e47467%_
                                            (gx#module-import-name
                                             _%in47473%_)))
                                          _%r47475%_)
                                    (if (gx#import-set? _%in47473%_)
                                        (foldl _%fold-e47470%_
                                               _%r47475%_
                                               (gx#import-set-imports
                                                _%in47473%_))
                                        (cons _%in47473%_ _%r47475%_))))))
                      _%fold-e47470%_)))
              (cons 'begin: (foldl _%fold-e47483%_ '() _%imports47461%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4738547403%_
                                                     _%g4738647407%_)))
                                              _%hd4739647434%_
                                              _%hd4739347424%_)
                                             (_%g4738547403%_
                                              _%g4738647407%_))))
                                     (_%g4738547403%_ _%g4738647407%_))))
                             (_%g4738547403%_ _%g4738647407%_))))
                     (_%g4738547403%_ _%g4738647407%_)))))
         (_%g4738447488%_ _%stx47382%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47492%_)
       (letrec ((_%flatten47495%_
                 (lambda (_%list-of-lists47746%_)
                   (foldr (lambda (_%v47749%_ _%acc47751%_)
                            (if (null? _%v47749%_)
                                _%acc47751%_
                                (if (pair? _%v47749%_)
                                    (append (_%flatten47495%_ _%v47749%_)
                                            _%acc47751%_)
                                    (cons _%v47749%_ _%acc47751%_))))
                          '()
                          _%list-of-lists47746%_)))
                (_%expand-path47497%_
                 (lambda (_%top47616%_ _%mod47618%_)
                   (let* ((_%__stx4871248713%_ _%mod47618%_)
                          (_%g4762147643%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4871248713%_))))
                     (let ((_%__kont4871548716%_
                            (lambda (_%g4762347709%_ _%g4762447711%_)
                              (map (lambda (_%mod47726%_)
                                     (gx#stx-identifier
                                      _%top47616%_
                                      _%top47616%_
                                      '"/"
                                      _%mod47726%_))
                                   (_%flatten47495%_
                                    (map (lambda (_%g4772847730%_)
                                           (_%expand-path47497%_
                                            _%g4762447711%_
                                            _%g4772847730%_))
                                         (foldr (lambda (_%g4773347736%_
                                                         _%g4773447739%_)
                                                  (cons _%g4773347736%_
                                                        _%g4773447739%_))
                                                '()
                                                _%g4762347709%_))))))
                           (_%__kont4871948720%_
                            (lambda (_%g4763747650%_)
                              (gx#stx-identifier
                               _%top47616%_
                               _%top47616%_
                               '"/"
                               _%g4763747650%_))))
                       (let* ((_%g4762047664%_
                               (lambda ()
                                 (let ((_%g4763747650%_ _%__stx4871248713%_))
                                   (if (or (gx#identifier? _%g4763747650%_)
                                           (gx#stx-fixnum? _%g4763747650%_))
                                       (_%__kont4871948720%_ _%g4763747650%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4762147643%_))))))
                              (_%__match4873548736%_
                               (lambda (_%e4762547671%_
                                        _%hd4762647675%_
                                        _%tl4762747678%_
                                        _%__splice4871748718%_
                                        _%target4762847681%_
                                        _%tl4763047684%_)
                                 (letrec ((_%loop4763147687%_
                                           (lambda (_%hd4762947691%_
                                                    _%mod4763547694%_)
                                             (if (gx#stx-pair?
                                                  _%hd4762947691%_)
                                                 (let ((_%e4763247696%_
                                                        (gx#syntax-e
                                                         _%hd4762947691%_)))
                                                   (let ((_%lp-tl4763447703%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4763247696%_)))
                                                         (_%lp-hd4763347700%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4763247696%_))))
                                                     (_%loop4763147687%_
                                                      _%lp-tl4763447703%_
                                                      (cons _%lp-hd4763347700%_
                                                            _%mod4763547694%_))))
                                                 (let ((_%mod4763647706%_
                                                        (reverse _%mod4763547694%_)))
                                                   (_%__kont4871548716%_
                                                    _%mod4763647706%_
                                                    _%hd4762647675%_))))))
                                   (_%loop4763147687%_
                                    _%target4762847681%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4871248713%_)
                             (let ((_%e4762547671%_
                                    (gx#syntax-e _%__stx4871248713%_)))
                               (let ((_%tl4762747678%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4762547671%_)))
                                     (_%hd4762647675%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4762547671%_))))
                                 (if (gx#stx-pair/null? _%tl4762747678%_)
                                     (let ((_%__splice4871748718%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4762747678%_
                                             '0)))
                                       (let ((_%tl4763047684%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4871748718%_
                                                 '1)))
                                             (_%target4762847681%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4871748718%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4763047684%_)
                                             (_%__match4873548736%_
                                              _%e4762547671%_
                                              _%hd4762647675%_
                                              _%tl4762747678%_
                                              _%__splice4871748718%_
                                              _%target4762847681%_
                                              _%tl4763047684%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4762047664%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4762047664%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4762047664%_)))))))))
         (let* ((_%g4749947523%_
                 (lambda (_%g4750047519%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4750047519%_)))
                (_%g4749847612%_
                 (lambda (_%g4750047527%_)
                   (if (gx#stx-pair? _%g4750047527%_)
                       (let ((_%e4750347530%_ (gx#syntax-e _%g4750047527%_)))
                         (let ((_%hd4750447534%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4750347530%_)))
                               (_%tl4750547537%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4750347530%_))))
                           (if (gx#stx-pair? _%tl4750547537%_)
                               (let ((_%e4750647540%_
                                      (gx#syntax-e _%tl4750547537%_)))
                                 (let ((_%hd4750747544%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4750647540%_)))
                                       (_%tl4750847547%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4750647540%_))))
                                   (if (gx#stx-pair/null? _%tl4750847547%_)
                                       (let ((_g48814_
                                              (gx#syntax-split-splice
                                               _%tl4750847547%_
                                               '0)))
                                         (begin
                                           (let ((_g48815_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48814_)
                                                        (##values-length
                                                         _g48814_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48815_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48815_)))
                                           (let ((_%target4750947550%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g48814_ 0)))
                                                 (_%tl4751147553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g48814_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4751147553%_)
                                                 (letrec ((_%loop4751247556%_
                                                           (lambda (_%hd4751047560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4751647563%_)
                     (if (gx#stx-pair? _%hd4751047560%_)
                         (let ((_%e4751347565%_
                                (gx#syntax-e _%hd4751047560%_)))
                           (let ((_%lp-hd4751447569%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4751347565%_)))
                                 (_%lp-tl4751547572%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4751347565%_))))
                             (_%loop4751247556%_
                              _%lp-tl4751547572%_
                              (cons _%lp-hd4751447569%_ _%mod4751647563%_))))
                         (let ((_%mod4751747575%_ (reverse _%mod4751647563%_)))
                           ((lambda (_%g4750147578%_ _%g4750247580%_)
                              (cons 'begin:
                                    (_%flatten47495%_
                                     (map (lambda (_%g4759847600%_)
                                            (_%expand-path47497%_
                                             _%g4750247580%_
                                             _%g4759847600%_))
                                          (foldr (lambda (_%g4760347606%_
                                                          _%g4760447609%_)
                                                   (cons _%g4760347606%_
                                                         _%g4760447609%_))
                                                 '()
                                                 _%g4750147578%_)))))
                            _%mod4751747575%_
                            _%hd4750747544%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4751247556%_
                                                    _%target4750947550%_
                                                    '()))
                                                 (_%g4749947523%_
                                                  _%g4750047527%_)))))
                                       (_%g4749947523%_ _%g4750047527%_))))
                               (_%g4749947523%_ _%g4750047527%_))))
                       (_%g4749947523%_ _%g4750047527%_)))))
           (_%g4749847612%_ _%stx47492%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47761%_)
       (let* ((_%g4776447788%_
               (lambda (_%g4776547784%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4776547784%_)))
              (_%g4776347914%_
               (lambda (_%g4776547792%_)
                 (if (gx#stx-pair? _%g4776547792%_)
                     (let ((_%e4776847795%_ (gx#syntax-e _%g4776547792%_)))
                       (let ((_%hd4776947799%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4776847795%_)))
                             (_%tl4777047802%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4776847795%_))))
                         (if (gx#stx-pair? _%tl4777047802%_)
                             (let ((_%e4777147805%_
                                    (gx#syntax-e _%tl4777047802%_)))
                               (let ((_%hd4777247809%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4777147805%_)))
                                     (_%tl4777347812%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4777147805%_))))
                                 (if (gx#stx-pair/null? _%tl4777347812%_)
                                     (let ((_g48816_
                                            (gx#syntax-split-splice
                                             _%tl4777347812%_
                                             '0)))
                                       (begin
                                         (let ((_g48817_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48816_)
                                                      (##values-length
                                                       _g48816_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48817_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48817_)))
                                         (let ((_%target4777447815%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48816_ 0)))
                                               (_%tl4777647818%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48816_ 1))))
                                           (if (gx#stx-null? _%tl4777647818%_)
                                               (letrec ((_%loop4777747821%_
                                                         (lambda (_%hd4777547825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4778147828%_)
                   (if (gx#stx-pair? _%hd4777547825%_)
                       (let ((_%e4777847830%_ (gx#syntax-e _%hd4777547825%_)))
                         (let ((_%lp-hd4777947834%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4777847830%_)))
                               (_%lp-tl4778047837%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4777847830%_))))
                           (_%loop4777747821%_
                            _%lp-tl4778047837%_
                            (cons _%lp-hd4777947834%_ _%id4778147828%_))))
                       (let ((_%id4778247840%_ (reverse _%id4778147828%_)))
                         ((lambda (_%g4776647843%_ _%g4776747845%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4786247865%_
                                                 _%g4786347868%_)
                                          (cons _%g4786247865%_
                                                _%g4786347868%_))
                                        '()
                                        _%g4776647843%_))
                                (let* ((_%keys47879%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4787047873%_
                                                         _%g4787147876%_)
                                                  (cons _%g4787047873%_
                                                        _%g4787147876%_))
                                                '()
                                                _%g4776647843%_)))
                                       (_%keytab47890%_
                                        (let ((_%ht47882%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4788447886%_)
                                             (hash-put!
                                              _%ht47882%_
                                              _%g4788447886%_
                                              '#t))
                                           _%keys47879%_)
                                          _%ht47882%_))
                                       (_%exports47893%_
                                        (gx#core-expand-export-source
                                         _%g4776747845%_))
                                       (_%fold-e47909%_
                                        (letrec ((_%fold-e47896%_
                                                  (lambda (_%out47899%_
                                                           _%r47901%_)
                                                    (if (gx#module-export?
                                                         _%out47899%_)
                                                        (if (hash-get
                                                             _%keytab47890%_
                                                             (gx#module-export-name
                                                              _%out47899%_))
                                                            _%r47901%_
                                                            (cons _%out47899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47901%_))
                (if (gx#export-set? _%out47899%_)
                    (foldl _%fold-e47896%_
                           _%r47901%_
                           (gx#export-set-exports _%out47899%_))
                    _%r47901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47896%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47909%_
                                               '()
                                               _%exports47893%_)))
                                (_%g4776447788%_ _%g4776547792%_)))
                          _%id4778247840%_
                          _%hd4777247809%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4777747821%_
                                                  _%target4777447815%_
                                                  '()))
                                               (_%g4776447788%_
                                                _%g4776547792%_)))))
                                     (_%g4776447788%_ _%g4776547792%_))))
                             (_%g4776447788%_ _%g4776547792%_))))
                     (_%g4776447788%_ _%g4776547792%_)))))
         (_%g4776347914%_ _%stx47761%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out47919%_ _%rename47921%_)
      (gx#make-module-export
       (gx#module-export-context _%out47919%_)
       (gx#module-export-key _%out47919%_)
       (gx#module-export-phi _%out47919%_)
       _%rename47921%_
       (gx#module-export-weak? _%out47919%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx47923%_)
       (let* ((_%g4792647959%_
               (lambda (_%g4792747955%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4792747955%_)))
              (_%g4792548150%_
               (lambda (_%g4792747963%_)
                 (if (gx#stx-pair? _%g4792747963%_)
                     (let ((_%e4793147966%_ (gx#syntax-e _%g4792747963%_)))
                       (let ((_%hd4793247970%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4793147966%_)))
                             (_%tl4793347973%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4793147966%_))))
                         (if (gx#stx-pair? _%tl4793347973%_)
                             (let ((_%e4793447976%_
                                    (gx#syntax-e _%tl4793347973%_)))
                               (let ((_%hd4793547980%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4793447976%_)))
                                     (_%tl4793647983%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4793447976%_))))
                                 (if (gx#stx-pair/null? _%tl4793647983%_)
                                     (let ((_g48818_
                                            (gx#syntax-split-splice
                                             _%tl4793647983%_
                                             '0)))
                                       (begin
                                         (let ((_g48819_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g48818_)
                                                      (##values-length
                                                       _g48818_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g48819_ 2)))
                                               (error "Context expects 2 values"
                                                      _g48819_)))
                                         (let ((_%target4793747986%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48818_ 0)))
                                               (_%tl4793947989%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g48818_ 1))))
                                           (if (gx#stx-null? _%tl4793947989%_)
                                               (letrec ((_%loop4794047992%_
                                                         (lambda (_%hd4793847996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4794447999%_
                          _%id4794548000%_)
                   (if (gx#stx-pair? _%hd4793847996%_)
                       (let ((_%e4794148002%_ (gx#syntax-e _%hd4793847996%_)))
                         (let ((_%lp-hd4794248006%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4794148002%_)))
                               (_%lp-tl4794348009%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4794148002%_))))
                           (if (gx#stx-pair? _%lp-hd4794248006%_)
                               (let ((_%e4794848012%_
                                      (gx#syntax-e _%lp-hd4794248006%_)))
                                 (let ((_%hd4794948016%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4794848012%_)))
                                       (_%tl4795048019%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4794848012%_))))
                                   (if (gx#stx-pair? _%tl4795048019%_)
                                       (let ((_%e4795148022%_
                                              (gx#syntax-e _%tl4795048019%_)))
                                         (let ((_%hd4795248026%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4795148022%_)))
                                               (_%tl4795348029%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4795148022%_))))
                                           (if (gx#stx-null? _%tl4795348029%_)
                                               (_%loop4794047992%_
                                                _%lp-tl4794348009%_
                                                (cons _%hd4795248026%_
                                                      _%new-id4794447999%_)
                                                (cons _%hd4794948016%_
                                                      _%id4794548000%_))
                                               (_%g4792647959%_
                                                _%g4792747963%_))))
                                       (_%g4792647959%_ _%g4792747963%_))))
                               (_%g4792647959%_ _%g4792747963%_))))
                       (let ((_%new-id4794648032%_
                              (reverse _%new-id4794447999%_))
                             (_%id4794748034%_ (reverse _%id4794548000%_)))
                         ((lambda (_%g4792848036%_
                                   _%g4792948038%_
                                   _%g4793048039%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4805748060%_
                                                      _%g4805848063%_)
                                               (cons _%g4805748060%_
                                                     _%g4805848063%_))
                                             '()
                                             _%g4792948038%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4806548068%_
                                                      _%g4806648071%_)
                                               (cons _%g4806548068%_
                                                     _%g4806648071%_))
                                             '()
                                             _%g4792848036%_)))
                                (let* ((_%keytab48074%_ (make-hash-table))
                                       (_%found48077%_ (make-hash-table))
                                       (_%_48100%_
                                        (for-each
                                         (lambda (_%id48080%_ _%new-id48082%_)
                                           (hash-put!
                                            _%keytab48074%_
                                            (gx#core-identifier-key
                                             _%id48080%_)
                                            (gx#core-identifier-key
                                             _%new-id48082%_)))
                                         (foldr (lambda (_%g4808348086%_
                                                         _%g4808448089%_)
                                                  (cons _%g4808348086%_
                                                        _%g4808448089%_))
                                                '()
                                                _%g4792948038%_)
                                         (foldr (lambda (_%g4809148094%_
                                                         _%g4809248097%_)
                                                  (cons _%g4809148094%_
                                                        _%g4809248097%_))
                                                '()
                                                _%g4792848036%_)))
                                       (_%exports48103%_
                                        (gx#core-expand-export-source
                                         _%g4793048039%_))
                                       (_%fold-e48131%_
                                        (letrec ((_%fold-e48106%_
                                                  (lambda (_%out48109%_
                                                           _%r48111%_)
                                                    (if (gx#module-export?
                                                         _%out48109%_)
                                                        (let* ((_%name48115%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48109%_))
                       (_%$e48118%_ (hash-get _%keytab48074%_ _%name48115%_)))
                  (if _%$e48118%_
                      ((lambda (_%rename48122%_)
                         (hash-put! _%found48077%_ _%name48115%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48109%_
                                _%rename48122%_)
                               _%r48111%_))
                       _%$e48118%_)
                      (cons _%out48109%_ _%r48111%_)))
                (if (gx#export-set? _%out48109%_)
                    (foldl _%fold-e48106%_
                           _%r48111%_
                           (gx#export-set-exports _%out48109%_))
                    (cons _%out48109%_ _%r48111%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48106%_))
                                       (_%new-exports48134%_
                                        (foldl _%fold-e48131%_
                                               '()
                                               _%exports48103%_)))
                                  (for-each
                                   (lambda (_%id48139%_)
                                     (if (hash-get
                                          _%found48077%_
                                          (gx#core-identifier-key _%id48139%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx47923%_
                                          _%id48139%_)))
                                   (foldr (lambda (_%g4814148144%_
                                                   _%g4814248147%_)
                                            (cons _%g4814148144%_
                                                  _%g4814248147%_))
                                          '()
                                          _%g4792948038%_))
                                  (cons 'begin: _%new-exports48134%_))
                                (_%g4792647959%_ _%g4792747963%_)))
                          _%new-id4794648032%_
                          _%id4794748034%_
                          _%hd4793547980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4794047992%_
                                                  _%target4793747986%_
                                                  '()
                                                  '()))
                                               (_%g4792647959%_
                                                _%g4792747963%_)))))
                                     (_%g4792647959%_ _%g4792747963%_))))
                             (_%g4792647959%_ _%g4792747963%_))))
                     (_%g4792647959%_ _%g4792747963%_)))))
         (_%g4792548150%_ _%stx47923%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48155%_)
       (let* ((_%g4815848176%_
               (lambda (_%g4815948172%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4815948172%_)))
              (_%g4815748261%_
               (lambda (_%g4815948180%_)
                 (if (gx#stx-pair? _%g4815948180%_)
                     (let ((_%e4816248183%_ (gx#syntax-e _%g4815948180%_)))
                       (let ((_%hd4816348187%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4816248183%_)))
                             (_%tl4816448190%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4816248183%_))))
                         (if (gx#stx-pair? _%tl4816448190%_)
                             (let ((_%e4816548193%_
                                    (gx#syntax-e _%tl4816448190%_)))
                               (let ((_%hd4816648197%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4816548193%_)))
                                     (_%tl4816748200%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4816548193%_))))
                                 (if (gx#stx-pair? _%tl4816748200%_)
                                     (let ((_%e4816848203%_
                                            (gx#syntax-e _%tl4816748200%_)))
                                       (let ((_%hd4816948207%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4816848203%_)))
                                             (_%tl4817048210%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4816848203%_))))
                                         (if (gx#stx-null? _%tl4817048210%_)
                                             ((lambda (_%g4816048213%_
                                                       _%g4816148215%_)
                                                (if (gx#identifier?
                                                     _%g4816048213%_)
                                                    (let* ((_%pre48231%_
                                                            (gx#stx-e
                                                             _%g4816048213%_))
                                                           (_%exports48234%_
                                                            (gx#core-expand-export-source
                                                             _%g4816148215%_))
                                                           (_%rename-e48240%_
                                                            (lambda (_%name48237%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48237%_
                                                               _%pre48231%_)))
                                                           (_%fold-e48256%_
                                                            (letrec ((_%fold-e48243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48246%_ _%r48248%_)
                                (if (gx#module-export? _%out48246%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48246%_
                                           (_%rename-e48240%_
                                            (gx#module-export-name
                                             _%out48246%_)))
                                          _%r48248%_)
                                    (if (gx#export-set? _%out48246%_)
                                        (foldl _%fold-e48243%_
                                               _%r48248%_
                                               (gx#export-set-exports
                                                _%out48246%_))
                                        (cons _%out48246%_ _%r48248%_))))))
                      _%fold-e48243%_)))
              (cons 'begin: (foldl _%fold-e48256%_ '() _%exports48234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4815848176%_
                                                     _%g4815948180%_)))
                                              _%hd4816948207%_
                                              _%hd4816648197%_)
                                             (_%g4815848176%_
                                              _%g4815948180%_))))
                                     (_%g4815848176%_ _%g4815948180%_))))
                             (_%g4815848176%_ _%g4815948180%_))))
                     (_%g4815848176%_ _%g4815948180%_)))))
         (_%g4815748261%_ _%stx48155%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48265%_)
       (letrec ((_%identifiers48268%_
                 (lambda (_%id48496%_ _%unchecked?48498%_)
                   (let ((_%info48500%_
                          (gx#syntax-local-value _%id48496%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info48500%_))
                         (cons _%id48496%_
                               (cons (let ((__obj48797 _%info48500%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj48797
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj48797
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj48797
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj48798
                                                         _%info48500%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj48798
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj48798
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj48798
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?48498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj48799 _%info48500%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48799
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48799
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48799
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj48800 _%info48500%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj48800
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj48800
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj48800
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj48801 _%info48500%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj48801
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj48801
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj48801
                                    'mutators)))))
                 (map cdr
                      (let ((__obj48802 _%info48500%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj48802
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj48802
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj48802 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor48503%_
                                                   (let ((__obj48803
                                                          _%info48500%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj48803
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj48803
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj48803
                                                          'constructor)))))
                                              (if _%ctor48503%_
                                                  (cons _%ctor48503%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48265%_
                          _%id48496%_))))))
         (let* ((_%__stx4873848739%_ _%stx48265%_)
                (_%g4827248313%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4873848739%_))))
           (let ((_%__kont4874148742%_
                  (lambda (_%g4827448457%_ _%g4827548459%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4847848480%_)
                              (_%identifiers48268%_
                               _%g4847848480%_
                               (gx#stx-e _%g4827548459%_)))
                            (foldr (lambda (_%g4848348486%_ _%g4848448489%_)
                                     (cons _%g4848348486%_ _%g4848448489%_))
                                   '()
                                   _%g4827448457%_))))))
                 (_%__kont4874548746%_
                  (lambda (_%g4829548358%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4837448376%_)
                              (_%identifiers48268%_ _%g4837448376%_ '#f))
                            (foldr (lambda (_%g4837948382%_ _%g4838048385%_)
                                     (cons _%g4837948382%_ _%g4838048385%_))
                                   '()
                                   _%g4829548358%_)))))))
             (let* ((_%__match4879548796%_
                     (lambda (_%e4829648320%_
                              _%hd4829748324%_
                              _%tl4829848327%_
                              _%__splice4874748748%_
                              _%target4829948330%_
                              _%tl4830148333%_)
                       (letrec ((_%loop4830248336%_
                                 (lambda (_%hd4830048340%_ _%id4830648343%_)
                                   (if (gx#stx-pair? _%hd4830048340%_)
                                       (let ((_%e4830348345%_
                                              (gx#syntax-e _%hd4830048340%_)))
                                         (let ((_%lp-tl4830548352%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4830348345%_)))
                                               (_%lp-hd4830448349%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4830348345%_))))
                                           (_%loop4830248336%_
                                            _%lp-tl4830548352%_
                                            (cons _%lp-hd4830448349%_
                                                  _%id4830648343%_))))
                                       (let ((_%id4830748355%_
                                              (reverse _%id4830648343%_)))
                                         (_%__kont4874548746%_
                                          _%id4830748355%_))))))
                         (_%loop4830248336%_ _%target4829948330%_ '()))))
                    (_%__match4878148782%_
                     (lambda (_%e4827648395%_
                              _%hd4827748399%_
                              _%tl4827848402%_
                              _%e4827948405%_
                              _%hd4828048409%_
                              _%tl4828148412%_
                              _%e4828248415%_
                              _%e4828348419%_
                              _%hd4828448423%_
                              _%tl4828548426%_
                              _%__splice4874348744%_
                              _%target4828648429%_
                              _%tl4828848432%_)
                       (letrec ((_%loop4828948435%_
                                 (lambda (_%hd4828748439%_ _%id4829348442%_)
                                   (if (gx#stx-pair? _%hd4828748439%_)
                                       (let ((_%e4829048444%_
                                              (gx#syntax-e _%hd4828748439%_)))
                                         (let ((_%lp-tl4829248451%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4829048444%_)))
                                               (_%lp-hd4829148448%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4829048444%_))))
                                           (_%loop4828948435%_
                                            _%lp-tl4829248451%_
                                            (cons _%lp-hd4829148448%_
                                                  _%id4829348442%_))))
                                       (let ((_%id4829448454%_
                                              (reverse _%id4829348442%_)))
                                         (_%__kont4874148742%_
                                          _%id4829448454%_
                                          _%hd4828448423%_))))))
                         (_%loop4828948435%_ _%target4828648429%_ '())))))
               (if (gx#stx-pair? _%__stx4873848739%_)
                   (let ((_%e4827648395%_ (gx#syntax-e _%__stx4873848739%_)))
                     (let ((_%tl4827848402%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4827648395%_)))
                           (_%hd4827748399%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4827648395%_))))
                       (if (gx#stx-pair? _%tl4827848402%_)
                           (let ((_%e4827948405%_
                                  (gx#syntax-e _%tl4827848402%_)))
                             (let ((_%tl4828148412%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4827948405%_)))
                                   (_%hd4828048409%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4827948405%_))))
                               (if (gx#stx-datum? _%hd4828048409%_)
                                   (let ((_%e4828248415%_
                                          (gx#stx-e _%hd4828048409%_)))
                                     (if (equal? _%e4828248415%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4828148412%_)
                                             (let ((_%e4828348419%_
                                                    (gx#syntax-e
                                                     _%tl4828148412%_)))
                                               (let ((_%tl4828548426%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4828348419%_)))
                                                     (_%hd4828448423%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4828348419%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4828548426%_)
                                                     (let ((_%__splice4874348744%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4828548426%_
                                                             '0)))
                                                       (let ((_%tl4828848432%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4874348744%_ '1)))
                     (_%target4828648429%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4874348744%_ '0))))
                 (if (gx#stx-null? _%tl4828848432%_)
                     (_%__match4878148782%_
                      _%e4827648395%_
                      _%hd4827748399%_
                      _%tl4827848402%_
                      _%e4827948405%_
                      _%hd4828048409%_
                      _%tl4828148412%_
                      _%e4828248415%_
                      _%e4828348419%_
                      _%hd4828448423%_
                      _%tl4828548426%_
                      _%__splice4874348744%_
                      _%target4828648429%_
                      _%tl4828848432%_)
                     (if (gx#stx-pair/null? _%tl4827848402%_)
                         (let ((_%__splice4874748748%_
                                (gx#syntax-split-splice->vector
                                 _%tl4827848402%_
                                 '0)))
                           (let ((_%tl4830148333%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4874748748%_ '1)))
                                 (_%target4829948330%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4874748748%_ '0))))
                             (if (gx#stx-null? _%tl4830148333%_)
                                 (_%__match4879548796%_
                                  _%e4827648395%_
                                  _%hd4827748399%_
                                  _%tl4827848402%_
                                  _%__splice4874748748%_
                                  _%target4829948330%_
                                  _%tl4830148333%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4827248313%_)))))
                         (let () (declare (not safe)) (_%g4827248313%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4827848402%_)
                                                         (let ((_%__splice4874748748%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4827848402%_
                         '0)))
                   (let ((_%tl4830148333%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4874748748%_ '1)))
                         (_%target4829948330%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4874748748%_ '0))))
                     (if (gx#stx-null? _%tl4830148333%_)
                         (_%__match4879548796%_
                          _%e4827648395%_
                          _%hd4827748399%_
                          _%tl4827848402%_
                          _%__splice4874748748%_
                          _%target4829948330%_
                          _%tl4830148333%_)
                         (let () (declare (not safe)) (_%g4827248313%_)))))
                 (let () (declare (not safe)) (_%g4827248313%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4827848402%_)
                                                 (let ((_%__splice4874748748%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4827848402%_
                                                         '0)))
                                                   (let ((_%tl4830148333%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4874748748%_
                                                             '1)))
                                                         (_%target4829948330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4874748748%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4830148333%_)
                                                         (_%__match4879548796%_
                                                          _%e4827648395%_
                                                          _%hd4827748399%_
                                                          _%tl4827848402%_
                                                          _%__splice4874748748%_
                                                          _%target4829948330%_
                                                          _%tl4830148333%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4827248313%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4827248313%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4827848402%_)
                                             (let ((_%__splice4874748748%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4827848402%_
                                                     '0)))
                                               (let ((_%tl4830148333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4874748748%_
                                                         '1)))
                                                     (_%target4829948330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4874748748%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4830148333%_)
                                                     (_%__match4879548796%_
                                                      _%e4827648395%_
                                                      _%hd4827748399%_
                                                      _%tl4827848402%_
                                                      _%__splice4874748748%_
                                                      _%target4829948330%_
                                                      _%tl4830148333%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4827248313%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4827248313%_)))))
                                   (if (gx#stx-pair/null? _%tl4827848402%_)
                                       (let ((_%__splice4874748748%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4827848402%_
                                               '0)))
                                         (let ((_%tl4830148333%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4874748748%_
                                                   '1)))
                                               (_%target4829948330%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4874748748%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4830148333%_)
                                               (_%__match4879548796%_
                                                _%e4827648395%_
                                                _%hd4827748399%_
                                                _%tl4827848402%_
                                                _%__splice4874748748%_
                                                _%target4829948330%_
                                                _%tl4830148333%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4827248313%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4827248313%_))))))
                           (if (gx#stx-pair/null? _%tl4827848402%_)
                               (let ((_%__splice4874748748%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4827848402%_
                                       '0)))
                                 (let ((_%tl4830148333%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4874748748%_
                                           '1)))
                                       (_%target4829948330%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4874748748%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4830148333%_)
                                       (_%__match4879548796%_
                                        _%e4827648395%_
                                        _%hd4827748399%_
                                        _%tl4827848402%_
                                        _%__splice4874748748%_
                                        _%target4829948330%_
                                        _%tl4830148333%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4827248313%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4827248313%_))))))
                   (let () (declare (not safe)) (_%g4827248313%_)))))))))))
