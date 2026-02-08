(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx45972%_)
      (let* ((_%__stx4875648757%_ _%$stx45972%_)
             (_%g4597745996%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4875648757%_))))
        (let ((_%__kont4875948760%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4876148762%_
               (lambda (_%g4598246023%_ _%g4598346025%_ _%g4598446026%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%g4598346025%_
                                   (cons (cons _%g4598446026%_ _%g4598246023%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%g4598346025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4875648757%_)
              (let ((_%e4597946048%_ (gx#syntax-e _%__stx4875648757%_)))
                (let ((_%tl4598146055%_
                       (let () (declare (not safe)) (##cdr _%e4597946048%_)))
                      (_%hd4598046052%_
                       (let () (declare (not safe)) (##car _%e4597946048%_))))
                  (if (gx#stx-null? _%tl4598146055%_)
                      (_%__kont4875948760%_)
                      (if (gx#stx-pair? _%tl4598146055%_)
                          (let ((_%e4598846013%_
                                 (gx#syntax-e _%tl4598146055%_)))
                            (let ((_%tl4599046020%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4598846013%_)))
                                  (_%hd4598946017%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4598846013%_))))
                              (_%__kont4876148762%_
                               _%tl4599046020%_
                               _%hd4598946017%_
                               _%hd4598046052%_)))
                          (let () (declare (not safe)) (_%g4597745996%_))))))
              (let () (declare (not safe)) (_%g4597745996%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx46066%_)
      (let* ((_%__stx4878648787%_ _%$stx46066%_)
             (_%g4607146111%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4878648787%_))))
        (let ((_%__kont4878948790%_
               (lambda (_%g4607346247%_ _%g4607446249%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4607446249%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%g4607346247%_ '()))
                                   '())))))
              (_%__kont4879148792%_
               (lambda (_%g4608446176%_
                        _%g4608546178%_
                        _%g4608646179%_
                        _%g4608746180%_)
                 (cons _%g4608746180%_
                       (cons _%g4608646179%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4608546178%_
                                               (foldr (lambda (_%g4620146204%_
                                                               _%g4620246207%_)
                                                        (cons _%g4620146204%_
                                                              _%g4620246207%_))
                                                      '()
                                                      _%g4608446176%_)))
                                   '()))))))
          (let* ((_%__match4884148842%_
                  (lambda (_%e4608846118%_
                           _%hd4608946122%_
                           _%tl4609046125%_
                           _%e4609146128%_
                           _%hd4609246132%_
                           _%tl4609346135%_
                           _%e4609446138%_
                           _%hd4609546142%_
                           _%tl4609646145%_
                           _%__splice4879348794%_
                           _%target4609746148%_
                           _%tl4609946151%_)
                    (letrec ((_%loop4610046154%_
                              (lambda (_%hd4609846158%_ _%body4610446161%_)
                                (if (gx#stx-pair? _%hd4609846158%_)
                                    (let ((_%e4610146163%_
                                           (gx#syntax-e _%hd4609846158%_)))
                                      (let ((_%lp-tl4610346170%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4610146163%_)))
                                            (_%lp-hd4610246167%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4610146163%_))))
                                        (_%loop4610046154%_
                                         _%lp-tl4610346170%_
                                         (cons _%lp-hd4610246167%_
                                               _%body4610446161%_))))
                                    (let ((_%body4610546173%_
                                           (reverse _%body4610446161%_)))
                                      (let ((_%g4608446176%_
                                             _%body4610546173%_)
                                            (_%g4608546178%_ _%tl4609646145%_)
                                            (_%g4608646179%_ _%hd4609546142%_)
                                            (_%g4608746180%_ _%hd4608946122%_))
                                        (if (gx#identifier? _%g4608646179%_)
                                            (_%__kont4879148792%_
                                             _%g4608446176%_
                                             _%g4608546178%_
                                             _%g4608646179%_
                                             _%g4608746180%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4607146111%_)))))))))
                      (_%loop4610046154%_ _%target4609746148%_ '()))))
                 (_%__match4881548816%_
                  (lambda (_%e4607546217%_
                           _%hd4607646221%_
                           _%tl4607746224%_
                           _%e4607846227%_
                           _%hd4607946231%_
                           _%tl4608046234%_
                           _%e4608146237%_
                           _%hd4608246241%_
                           _%tl4608346244%_)
                    (let ((_%g4607346247%_ _%hd4608246241%_)
                          (_%g4607446249%_ _%hd4607946231%_))
                      (if (gx#identifier? _%g4607446249%_)
                          (_%__kont4878948790%_
                           _%g4607346247%_
                           _%g4607446249%_)
                          (if (gx#stx-pair? _%hd4607946231%_)
                              (let ((_%e4609446138%_
                                     (gx#syntax-e _%hd4607946231%_)))
                                (let ((_%tl4609646145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4609446138%_)))
                                      (_%hd4609546142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4609446138%_))))
                                  (if (gx#stx-pair/null? _%tl4608046234%_)
                                      (let ((_%__splice4879348794%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4608046234%_
                                              '0)))
                                        (let ((_%tl4609946151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4879348794%_
                                                  '1)))
                                              (_%target4609746148%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4879348794%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4609946151%_)
                                              (_%__match4884148842%_
                                               _%e4607546217%_
                                               _%hd4607646221%_
                                               _%tl4607746224%_
                                               _%e4607846227%_
                                               _%hd4607946231%_
                                               _%tl4608046234%_
                                               _%e4609446138%_
                                               _%hd4609546142%_
                                               _%tl4609646145%_
                                               _%__splice4879348794%_
                                               _%target4609746148%_
                                               _%tl4609946151%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4607146111%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4607146111%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4607146111%_))))))))
            (if (gx#stx-pair? _%__stx4878648787%_)
                (let ((_%e4607546217%_ (gx#syntax-e _%__stx4878648787%_)))
                  (let ((_%tl4607746224%_
                         (let () (declare (not safe)) (##cdr _%e4607546217%_)))
                        (_%hd4607646221%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4607546217%_))))
                    (if (gx#stx-pair? _%tl4607746224%_)
                        (let ((_%e4607846227%_ (gx#syntax-e _%tl4607746224%_)))
                          (let ((_%tl4608046234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4607846227%_)))
                                (_%hd4607946231%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4607846227%_))))
                            (if (gx#stx-pair? _%tl4608046234%_)
                                (let ((_%e4608146237%_
                                       (gx#syntax-e _%tl4608046234%_)))
                                  (let ((_%tl4608346244%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4608146237%_)))
                                        (_%hd4608246241%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4608146237%_))))
                                    (if (gx#stx-null? _%tl4608346244%_)
                                        (_%__match4881548816%_
                                         _%e4607546217%_
                                         _%hd4607646221%_
                                         _%tl4607746224%_
                                         _%e4607846227%_
                                         _%hd4607946231%_
                                         _%tl4608046234%_
                                         _%e4608146237%_
                                         _%hd4608246241%_
                                         _%tl4608346244%_)
                                        (if (gx#stx-pair? _%hd4607946231%_)
                                            (let ((_%e4609446138%_
                                                   (gx#syntax-e
                                                    _%hd4607946231%_)))
                                              (let ((_%tl4609646145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4609446138%_)))
                                                    (_%hd4609546142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4609446138%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4608046234%_)
                                                    (let ((_%__splice4879348794%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4608046234%_
                                                            '0)))
                                                      (let ((_%tl4609946151%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4879348794%_ '1)))
                    (_%target4609746148%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4879348794%_ '0))))
                (if (gx#stx-null? _%tl4609946151%_)
                    (_%__match4884148842%_
                     _%e4607546217%_
                     _%hd4607646221%_
                     _%tl4607746224%_
                     _%e4607846227%_
                     _%hd4607946231%_
                     _%tl4608046234%_
                     _%e4609446138%_
                     _%hd4609546142%_
                     _%tl4609646145%_
                     _%__splice4879348794%_
                     _%target4609746148%_
                     _%tl4609946151%_)
                    (let () (declare (not safe)) (_%g4607146111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4607146111%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4607146111%_))))))
                                (if (gx#stx-pair? _%hd4607946231%_)
                                    (let ((_%e4609446138%_
                                           (gx#syntax-e _%hd4607946231%_)))
                                      (let ((_%tl4609646145%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4609446138%_)))
                                            (_%hd4609546142%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4609446138%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4608046234%_)
                                            (let ((_%__splice4879348794%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4608046234%_
                                                    '0)))
                                              (let ((_%tl4609946151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4879348794%_
                                                        '1)))
                                                    (_%target4609746148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4879348794%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4609946151%_)
                                                    (_%__match4884148842%_
                                                     _%e4607546217%_
                                                     _%hd4607646221%_
                                                     _%tl4607746224%_
                                                     _%e4607846227%_
                                                     _%hd4607946231%_
                                                     _%tl4608046234%_
                                                     _%e4609446138%_
                                                     _%hd4609546142%_
                                                     _%tl4609646145%_
                                                     _%__splice4879348794%_
                                                     _%target4609746148%_
                                                     _%tl4609946151%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4607146111%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4607146111%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4607146111%_))))))
                        (let () (declare (not safe)) (_%g4607146111%_)))))
                (let () (declare (not safe)) (_%g4607146111%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx46269%_)
      (let* ((_%__stx4884448845%_ _%$stx46269%_)
             (_%g4627446314%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4884448845%_))))
        (let ((_%__kont4884748848%_
               (lambda (_%g4627646450%_ _%g4627746452%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4627746452%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%g4627646450%_ '()))
                                   '())))))
              (_%__kont4884948850%_
               (lambda (_%g4628746379%_
                        _%g4628846381%_
                        _%g4628946382%_
                        _%g4629046383%_)
                 (cons _%g4629046383%_
                       (cons _%g4628946382%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4628846381%_
                                               (foldr (lambda (_%g4640446407%_
                                                               _%g4640546410%_)
                                                        (cons _%g4640446407%_
                                                              _%g4640546410%_))
                                                      '()
                                                      _%g4628746379%_)))
                                   '()))))))
          (let* ((_%__match4889948900%_
                  (lambda (_%e4629146321%_
                           _%hd4629246325%_
                           _%tl4629346328%_
                           _%e4629446331%_
                           _%hd4629546335%_
                           _%tl4629646338%_
                           _%e4629746341%_
                           _%hd4629846345%_
                           _%tl4629946348%_
                           _%__splice4885148852%_
                           _%target4630046351%_
                           _%tl4630246354%_)
                    (letrec ((_%loop4630346357%_
                              (lambda (_%hd4630146361%_ _%body4630746364%_)
                                (if (gx#stx-pair? _%hd4630146361%_)
                                    (let ((_%e4630446366%_
                                           (gx#syntax-e _%hd4630146361%_)))
                                      (let ((_%lp-tl4630646373%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4630446366%_)))
                                            (_%lp-hd4630546370%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4630446366%_))))
                                        (_%loop4630346357%_
                                         _%lp-tl4630646373%_
                                         (cons _%lp-hd4630546370%_
                                               _%body4630746364%_))))
                                    (let ((_%body4630846376%_
                                           (reverse _%body4630746364%_)))
                                      (let ((_%g4628746379%_
                                             _%body4630846376%_)
                                            (_%g4628846381%_ _%tl4629946348%_)
                                            (_%g4628946382%_ _%hd4629846345%_)
                                            (_%g4629046383%_ _%hd4629246325%_))
                                        (if (gx#identifier? _%g4628946382%_)
                                            (_%__kont4884948850%_
                                             _%g4628746379%_
                                             _%g4628846381%_
                                             _%g4628946382%_
                                             _%g4629046383%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4627446314%_)))))))))
                      (_%loop4630346357%_ _%target4630046351%_ '()))))
                 (_%__match4887348874%_
                  (lambda (_%e4627846420%_
                           _%hd4627946424%_
                           _%tl4628046427%_
                           _%e4628146430%_
                           _%hd4628246434%_
                           _%tl4628346437%_
                           _%e4628446440%_
                           _%hd4628546444%_
                           _%tl4628646447%_)
                    (let ((_%g4627646450%_ _%hd4628546444%_)
                          (_%g4627746452%_ _%hd4628246434%_))
                      (if (gx#identifier? _%g4627746452%_)
                          (_%__kont4884748848%_
                           _%g4627646450%_
                           _%g4627746452%_)
                          (if (gx#stx-pair? _%hd4628246434%_)
                              (let ((_%e4629746341%_
                                     (gx#syntax-e _%hd4628246434%_)))
                                (let ((_%tl4629946348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4629746341%_)))
                                      (_%hd4629846345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4629746341%_))))
                                  (if (gx#stx-pair/null? _%tl4628346437%_)
                                      (let ((_%__splice4885148852%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4628346437%_
                                              '0)))
                                        (let ((_%tl4630246354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4885148852%_
                                                  '1)))
                                              (_%target4630046351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4885148852%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4630246354%_)
                                              (_%__match4889948900%_
                                               _%e4627846420%_
                                               _%hd4627946424%_
                                               _%tl4628046427%_
                                               _%e4628146430%_
                                               _%hd4628246434%_
                                               _%tl4628346437%_
                                               _%e4629746341%_
                                               _%hd4629846345%_
                                               _%tl4629946348%_
                                               _%__splice4885148852%_
                                               _%target4630046351%_
                                               _%tl4630246354%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4627446314%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4627446314%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4627446314%_))))))))
            (if (gx#stx-pair? _%__stx4884448845%_)
                (let ((_%e4627846420%_ (gx#syntax-e _%__stx4884448845%_)))
                  (let ((_%tl4628046427%_
                         (let () (declare (not safe)) (##cdr _%e4627846420%_)))
                        (_%hd4627946424%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4627846420%_))))
                    (if (gx#stx-pair? _%tl4628046427%_)
                        (let ((_%e4628146430%_ (gx#syntax-e _%tl4628046427%_)))
                          (let ((_%tl4628346437%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4628146430%_)))
                                (_%hd4628246434%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4628146430%_))))
                            (if (gx#stx-pair? _%tl4628346437%_)
                                (let ((_%e4628446440%_
                                       (gx#syntax-e _%tl4628346437%_)))
                                  (let ((_%tl4628646447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4628446440%_)))
                                        (_%hd4628546444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4628446440%_))))
                                    (if (gx#stx-null? _%tl4628646447%_)
                                        (_%__match4887348874%_
                                         _%e4627846420%_
                                         _%hd4627946424%_
                                         _%tl4628046427%_
                                         _%e4628146430%_
                                         _%hd4628246434%_
                                         _%tl4628346437%_
                                         _%e4628446440%_
                                         _%hd4628546444%_
                                         _%tl4628646447%_)
                                        (if (gx#stx-pair? _%hd4628246434%_)
                                            (let ((_%e4629746341%_
                                                   (gx#syntax-e
                                                    _%hd4628246434%_)))
                                              (let ((_%tl4629946348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4629746341%_)))
                                                    (_%hd4629846345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4629746341%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4628346437%_)
                                                    (let ((_%__splice4885148852%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4628346437%_
                                                            '0)))
                                                      (let ((_%tl4630246354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4885148852%_ '1)))
                    (_%target4630046351%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4885148852%_ '0))))
                (if (gx#stx-null? _%tl4630246354%_)
                    (_%__match4889948900%_
                     _%e4627846420%_
                     _%hd4627946424%_
                     _%tl4628046427%_
                     _%e4628146430%_
                     _%hd4628246434%_
                     _%tl4628346437%_
                     _%e4629746341%_
                     _%hd4629846345%_
                     _%tl4629946348%_
                     _%__splice4885148852%_
                     _%target4630046351%_
                     _%tl4630246354%_)
                    (let () (declare (not safe)) (_%g4627446314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4627446314%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4627446314%_))))))
                                (if (gx#stx-pair? _%hd4628246434%_)
                                    (let ((_%e4629746341%_
                                           (gx#syntax-e _%hd4628246434%_)))
                                      (let ((_%tl4629946348%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4629746341%_)))
                                            (_%hd4629846345%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4629746341%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4628346437%_)
                                            (let ((_%__splice4885148852%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4628346437%_
                                                    '0)))
                                              (let ((_%tl4630246354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4885148852%_
                                                        '1)))
                                                    (_%target4630046351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4885148852%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4630246354%_)
                                                    (_%__match4889948900%_
                                                     _%e4627846420%_
                                                     _%hd4627946424%_
                                                     _%tl4628046427%_
                                                     _%e4628146430%_
                                                     _%hd4628246434%_
                                                     _%tl4628346437%_
                                                     _%e4629746341%_
                                                     _%hd4629846345%_
                                                     _%tl4629946348%_
                                                     _%__splice4885148852%_
                                                     _%target4630046351%_
                                                     _%tl4630246354%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4627446314%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4627446314%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4627446314%_))))))
                        (let () (declare (not safe)) (_%g4627446314%_)))))
                (let () (declare (not safe)) (_%g4627446314%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx46472%_)
      (let* ((_%__stx4890248903%_ _%$stx46472%_)
             (_%g4647746517%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4890248903%_))))
        (let ((_%__kont4890548906%_
               (lambda (_%g4647946653%_ _%g4648046655%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%g4648046655%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%g4647946653%_ '()))
                                   '())))))
              (_%__kont4890748908%_
               (lambda (_%g4649046582%_
                        _%g4649146584%_
                        _%g4649246585%_
                        _%g4649346586%_)
                 (cons _%g4649346586%_
                       (cons _%g4649246585%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%g4649146584%_
                                               (foldr (lambda (_%g4660746610%_
                                                               _%g4660846613%_)
                                                        (cons _%g4660746610%_
                                                              _%g4660846613%_))
                                                      '()
                                                      _%g4649046582%_)))
                                   '()))))))
          (let* ((_%__match4895748958%_
                  (lambda (_%e4649446524%_
                           _%hd4649546528%_
                           _%tl4649646531%_
                           _%e4649746534%_
                           _%hd4649846538%_
                           _%tl4649946541%_
                           _%e4650046544%_
                           _%hd4650146548%_
                           _%tl4650246551%_
                           _%__splice4890948910%_
                           _%target4650346554%_
                           _%tl4650546557%_)
                    (letrec ((_%loop4650646560%_
                              (lambda (_%hd4650446564%_ _%body4651046567%_)
                                (if (gx#stx-pair? _%hd4650446564%_)
                                    (let ((_%e4650746569%_
                                           (gx#syntax-e _%hd4650446564%_)))
                                      (let ((_%lp-tl4650946576%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4650746569%_)))
                                            (_%lp-hd4650846573%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4650746569%_))))
                                        (_%loop4650646560%_
                                         _%lp-tl4650946576%_
                                         (cons _%lp-hd4650846573%_
                                               _%body4651046567%_))))
                                    (let ((_%body4651146579%_
                                           (reverse _%body4651046567%_)))
                                      (let ((_%g4649046582%_
                                             _%body4651146579%_)
                                            (_%g4649146584%_ _%tl4650246551%_)
                                            (_%g4649246585%_ _%hd4650146548%_)
                                            (_%g4649346586%_ _%hd4649546528%_))
                                        (if (gx#identifier? _%g4649246585%_)
                                            (_%__kont4890748908%_
                                             _%g4649046582%_
                                             _%g4649146584%_
                                             _%g4649246585%_
                                             _%g4649346586%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4647746517%_)))))))))
                      (_%loop4650646560%_ _%target4650346554%_ '()))))
                 (_%__match4893148932%_
                  (lambda (_%e4648146623%_
                           _%hd4648246627%_
                           _%tl4648346630%_
                           _%e4648446633%_
                           _%hd4648546637%_
                           _%tl4648646640%_
                           _%e4648746643%_
                           _%hd4648846647%_
                           _%tl4648946650%_)
                    (let ((_%g4647946653%_ _%hd4648846647%_)
                          (_%g4648046655%_ _%hd4648546637%_))
                      (if (gx#identifier? _%g4648046655%_)
                          (_%__kont4890548906%_
                           _%g4647946653%_
                           _%g4648046655%_)
                          (if (gx#stx-pair? _%hd4648546637%_)
                              (let ((_%e4650046544%_
                                     (gx#syntax-e _%hd4648546637%_)))
                                (let ((_%tl4650246551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4650046544%_)))
                                      (_%hd4650146548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4650046544%_))))
                                  (if (gx#stx-pair/null? _%tl4648646640%_)
                                      (let ((_%__splice4890948910%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4648646640%_
                                              '0)))
                                        (let ((_%tl4650546557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4890948910%_
                                                  '1)))
                                              (_%target4650346554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4890948910%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4650546557%_)
                                              (_%__match4895748958%_
                                               _%e4648146623%_
                                               _%hd4648246627%_
                                               _%tl4648346630%_
                                               _%e4648446633%_
                                               _%hd4648546637%_
                                               _%tl4648646640%_
                                               _%e4650046544%_
                                               _%hd4650146548%_
                                               _%tl4650246551%_
                                               _%__splice4890948910%_
                                               _%target4650346554%_
                                               _%tl4650546557%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4647746517%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4647746517%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4647746517%_))))))))
            (if (gx#stx-pair? _%__stx4890248903%_)
                (let ((_%e4648146623%_ (gx#syntax-e _%__stx4890248903%_)))
                  (let ((_%tl4648346630%_
                         (let () (declare (not safe)) (##cdr _%e4648146623%_)))
                        (_%hd4648246627%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4648146623%_))))
                    (if (gx#stx-pair? _%tl4648346630%_)
                        (let ((_%e4648446633%_ (gx#syntax-e _%tl4648346630%_)))
                          (let ((_%tl4648646640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4648446633%_)))
                                (_%hd4648546637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4648446633%_))))
                            (if (gx#stx-pair? _%tl4648646640%_)
                                (let ((_%e4648746643%_
                                       (gx#syntax-e _%tl4648646640%_)))
                                  (let ((_%tl4648946650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4648746643%_)))
                                        (_%hd4648846647%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4648746643%_))))
                                    (if (gx#stx-null? _%tl4648946650%_)
                                        (_%__match4893148932%_
                                         _%e4648146623%_
                                         _%hd4648246627%_
                                         _%tl4648346630%_
                                         _%e4648446633%_
                                         _%hd4648546637%_
                                         _%tl4648646640%_
                                         _%e4648746643%_
                                         _%hd4648846647%_
                                         _%tl4648946650%_)
                                        (if (gx#stx-pair? _%hd4648546637%_)
                                            (let ((_%e4650046544%_
                                                   (gx#syntax-e
                                                    _%hd4648546637%_)))
                                              (let ((_%tl4650246551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4650046544%_)))
                                                    (_%hd4650146548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4650046544%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4648646640%_)
                                                    (let ((_%__splice4890948910%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4648646640%_
                                                            '0)))
                                                      (let ((_%tl4650546557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4890948910%_ '1)))
                    (_%target4650346554%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4890948910%_ '0))))
                (if (gx#stx-null? _%tl4650546557%_)
                    (_%__match4895748958%_
                     _%e4648146623%_
                     _%hd4648246627%_
                     _%tl4648346630%_
                     _%e4648446633%_
                     _%hd4648546637%_
                     _%tl4648646640%_
                     _%e4650046544%_
                     _%hd4650146548%_
                     _%tl4650246551%_
                     _%__splice4890948910%_
                     _%target4650346554%_
                     _%tl4650546557%_)
                    (let () (declare (not safe)) (_%g4647746517%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4647746517%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4647746517%_))))))
                                (if (gx#stx-pair? _%hd4648546637%_)
                                    (let ((_%e4650046544%_
                                           (gx#syntax-e _%hd4648546637%_)))
                                      (let ((_%tl4650246551%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4650046544%_)))
                                            (_%hd4650146548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4650046544%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4648646640%_)
                                            (let ((_%__splice4890948910%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4648646640%_
                                                    '0)))
                                              (let ((_%tl4650546557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4890948910%_
                                                        '1)))
                                                    (_%target4650346554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4890948910%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4650546557%_)
                                                    (_%__match4895748958%_
                                                     _%e4648146623%_
                                                     _%hd4648246627%_
                                                     _%tl4648346630%_
                                                     _%e4648446633%_
                                                     _%hd4648546637%_
                                                     _%tl4648646640%_
                                                     _%e4650046544%_
                                                     _%hd4650146548%_
                                                     _%tl4650246551%_
                                                     _%__splice4890948910%_
                                                     _%target4650346554%_
                                                     _%tl4650546557%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4647746517%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4647746517%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4647746517%_))))))
                        (let () (declare (not safe)) (_%g4647746517%_)))))
                (let () (declare (not safe)) (_%g4647746517%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx46675%_)
       (let* ((_%g4667846698%_
               (lambda (_%g4667946694%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4667946694%_)))
              (_%g4667746767%_
               (lambda (_%g4667946702%_)
                 (if (gx#stx-pair? _%g4667946702%_)
                     (let ((_%e4668146705%_ (gx#syntax-e _%g4667946702%_)))
                       (let ((_%hd4668246709%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4668146705%_)))
                             (_%tl4668346712%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4668146705%_))))
                         (if (gx#stx-pair/null? _%tl4668346712%_)
                             (let ((_g49052_
                                    (gx#syntax-split-splice
                                     _%tl4668346712%_
                                     '0)))
                               (begin
                                 (let ((_g49053_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49052_)
                                              (##values-length _g49052_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49053_ 2)))
                                       (error "Context expects 2 values"
                                              _g49053_)))
                                 (let ((_%target4668446715%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49052_ 0)))
                                       (_%tl4668646718%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49052_ 1))))
                                   (if (gx#stx-null? _%tl4668646718%_)
                                       (letrec ((_%loop4668746721%_
                                                 (lambda (_%hd4668546725%_
                                                          _%body4669146728%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4668546725%_)
                                                       (let ((_%e4668846730%_
                                                              (gx#syntax-e
                                                               _%hd4668546725%_)))
                                                         (let ((_%lp-hd4668946734%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4668846730%_)))
                       (_%lp-tl4669046737%_
                        (let () (declare (not safe)) (##cdr _%e4668846730%_))))
                   (_%loop4668746721%_
                    _%lp-tl4669046737%_
                    (cons _%lp-hd4668946734%_ _%body4669146728%_))))
               (let ((_%body4669246740%_ (reverse _%body4669146728%_)))
                 ((lambda (_%g4668046743%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4675846761%_
                                                _%g4675946764%_)
                                         (cons _%g4675846761%_
                                               _%g4675946764%_))
                                       '()
                                       _%g4668046743%_))))
                  _%body4669246740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4668746721%_
                                          _%target4668446715%_
                                          '()))
                                       (_%g4667846698%_ _%g4667946702%_)))))
                             (_%g4667846698%_ _%g4667946702%_))))
                     (_%g4667846698%_ _%g4667946702%_)))))
         (_%g4667746767%_ _%stx46675%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx46772%_)
       (let* ((_%g4677546795%_
               (lambda (_%g4677646791%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4677646791%_)))
              (_%g4677446864%_
               (lambda (_%g4677646799%_)
                 (if (gx#stx-pair? _%g4677646799%_)
                     (let ((_%e4677846802%_ (gx#syntax-e _%g4677646799%_)))
                       (let ((_%hd4677946806%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4677846802%_)))
                             (_%tl4678046809%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4677846802%_))))
                         (if (gx#stx-pair/null? _%tl4678046809%_)
                             (let ((_g49054_
                                    (gx#syntax-split-splice
                                     _%tl4678046809%_
                                     '0)))
                               (begin
                                 (let ((_g49055_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49054_)
                                              (##values-length _g49054_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49055_ 2)))
                                       (error "Context expects 2 values"
                                              _g49055_)))
                                 (let ((_%target4678146812%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49054_ 0)))
                                       (_%tl4678346815%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g49054_ 1))))
                                   (if (gx#stx-null? _%tl4678346815%_)
                                       (letrec ((_%loop4678446818%_
                                                 (lambda (_%hd4678246822%_
                                                          _%body4678846825%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4678246822%_)
                                                       (let ((_%e4678546827%_
                                                              (gx#syntax-e
                                                               _%hd4678246822%_)))
                                                         (let ((_%lp-hd4678646831%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4678546827%_)))
                       (_%lp-tl4678746834%_
                        (let () (declare (not safe)) (##cdr _%e4678546827%_))))
                   (_%loop4678446818%_
                    _%lp-tl4678746834%_
                    (cons _%lp-hd4678646831%_ _%body4678846825%_))))
               (let ((_%body4678946837%_ (reverse _%body4678846825%_)))
                 ((lambda (_%g4677746840%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4685546858%_
                                                _%g4685646861%_)
                                         (cons _%g4685546858%_
                                               _%g4685646861%_))
                                       '()
                                       _%g4677746840%_))))
                  _%body4678946837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4678446818%_
                                          _%target4678146812%_
                                          '()))
                                       (_%g4677546795%_ _%g4677646799%_)))))
                             (_%g4677546795%_ _%g4677646799%_))))
                     (_%g4677546795%_ _%g4677646799%_)))))
         (_%g4677446864%_ _%stx46772%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx46869%_)
       (let* ((_%g4687246896%_
               (lambda (_%g4687346892%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4687346892%_)))
              (_%g4687147022%_
               (lambda (_%g4687346900%_)
                 (if (gx#stx-pair? _%g4687346900%_)
                     (let ((_%e4687646903%_ (gx#syntax-e _%g4687346900%_)))
                       (let ((_%hd4687746907%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4687646903%_)))
                             (_%tl4687846910%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4687646903%_))))
                         (if (gx#stx-pair? _%tl4687846910%_)
                             (let ((_%e4687946913%_
                                    (gx#syntax-e _%tl4687846910%_)))
                               (let ((_%hd4688046917%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4687946913%_)))
                                     (_%tl4688146920%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4687946913%_))))
                                 (if (gx#stx-pair/null? _%tl4688146920%_)
                                     (let ((_g49056_
                                            (gx#syntax-split-splice
                                             _%tl4688146920%_
                                             '0)))
                                       (begin
                                         (let ((_g49057_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49056_)
                                                      (##values-length
                                                       _g49056_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49057_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49057_)))
                                         (let ((_%target4688246923%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49056_ 0)))
                                               (_%tl4688446926%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49056_ 1))))
                                           (if (gx#stx-null? _%tl4688446926%_)
                                               (letrec ((_%loop4688546929%_
                                                         (lambda (_%hd4688346933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4688946936%_)
                   (if (gx#stx-pair? _%hd4688346933%_)
                       (let ((_%e4688646938%_ (gx#syntax-e _%hd4688346933%_)))
                         (let ((_%lp-hd4688746942%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4688646938%_)))
                               (_%lp-tl4688846945%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4688646938%_))))
                           (_%loop4688546929%_
                            _%lp-tl4688846945%_
                            (cons _%lp-hd4688746942%_ _%id4688946936%_))))
                       (let ((_%id4689046948%_ (reverse _%id4688946936%_)))
                         ((lambda (_%g4687446951%_ _%g4687546953%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4697046973%_
                                                 _%g4697146976%_)
                                          (cons _%g4697046973%_
                                                _%g4697146976%_))
                                        '()
                                        _%g4687446951%_))
                                (let* ((_%keys46987%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4697846981%_
                                                         _%g4697946984%_)
                                                  (cons _%g4697846981%_
                                                        _%g4697946984%_))
                                                '()
                                                _%g4687446951%_)))
                                       (_%keytab46998%_
                                        (let ((_%ht46990%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4699246994%_)
                                             (hash-put!
                                              _%ht46990%_
                                              _%g4699246994%_
                                              '#t))
                                           _%keys46987%_)
                                          _%ht46990%_))
                                       (_%imports47001%_
                                        (gx#core-expand-import-source
                                         _%g4687546953%_))
                                       (_%fold-e47017%_
                                        (letrec ((_%fold-e47004%_
                                                  (lambda (_%in47007%_
                                                           _%r47009%_)
                                                    (if (gx#module-import?
                                                         _%in47007%_)
                                                        (if (hash-get
                                                             _%keytab46998%_
                                                             (gx#module-import-name
                                                              _%in47007%_))
                                                            (cons _%in47007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47009%_)
                    _%r47009%_)
                (if (gx#import-set? _%in47007%_)
                    (foldl _%fold-e47004%_
                           _%r47009%_
                           (gx#import-set-imports _%in47007%_))
                    _%r47009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47004%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47017%_
                                               '()
                                               _%imports47001%_)))
                                (_%g4687246896%_ _%g4687346900%_)))
                          _%id4689046948%_
                          _%hd4688046917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4688546929%_
                                                  _%target4688246923%_
                                                  '()))
                                               (_%g4687246896%_
                                                _%g4687346900%_)))))
                                     (_%g4687246896%_ _%g4687346900%_))))
                             (_%g4687246896%_ _%g4687346900%_))))
                     (_%g4687246896%_ _%g4687346900%_)))))
         (_%g4687147022%_ _%stx46869%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx47027%_)
       (let* ((_%g4703047054%_
               (lambda (_%g4703147050%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4703147050%_)))
              (_%g4702947180%_
               (lambda (_%g4703147058%_)
                 (if (gx#stx-pair? _%g4703147058%_)
                     (let ((_%e4703447061%_ (gx#syntax-e _%g4703147058%_)))
                       (let ((_%hd4703547065%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4703447061%_)))
                             (_%tl4703647068%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4703447061%_))))
                         (if (gx#stx-pair? _%tl4703647068%_)
                             (let ((_%e4703747071%_
                                    (gx#syntax-e _%tl4703647068%_)))
                               (let ((_%hd4703847075%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4703747071%_)))
                                     (_%tl4703947078%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4703747071%_))))
                                 (if (gx#stx-pair/null? _%tl4703947078%_)
                                     (let ((_g49058_
                                            (gx#syntax-split-splice
                                             _%tl4703947078%_
                                             '0)))
                                       (begin
                                         (let ((_g49059_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49058_)
                                                      (##values-length
                                                       _g49058_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49059_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49059_)))
                                         (let ((_%target4704047081%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49058_ 0)))
                                               (_%tl4704247084%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49058_ 1))))
                                           (if (gx#stx-null? _%tl4704247084%_)
                                               (letrec ((_%loop4704347087%_
                                                         (lambda (_%hd4704147091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4704747094%_)
                   (if (gx#stx-pair? _%hd4704147091%_)
                       (let ((_%e4704447096%_ (gx#syntax-e _%hd4704147091%_)))
                         (let ((_%lp-hd4704547100%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4704447096%_)))
                               (_%lp-tl4704647103%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4704447096%_))))
                           (_%loop4704347087%_
                            _%lp-tl4704647103%_
                            (cons _%lp-hd4704547100%_ _%id4704747094%_))))
                       (let ((_%id4704847106%_ (reverse _%id4704747094%_)))
                         ((lambda (_%g4703247109%_ _%g4703347111%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4712847131%_
                                                 _%g4712947134%_)
                                          (cons _%g4712847131%_
                                                _%g4712947134%_))
                                        '()
                                        _%g4703247109%_))
                                (let* ((_%keys47145%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4713647139%_
                                                         _%g4713747142%_)
                                                  (cons _%g4713647139%_
                                                        _%g4713747142%_))
                                                '()
                                                _%g4703247109%_)))
                                       (_%keytab47156%_
                                        (let ((_%ht47148%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4715047152%_)
                                             (hash-put!
                                              _%ht47148%_
                                              _%g4715047152%_
                                              '#t))
                                           _%keys47145%_)
                                          _%ht47148%_))
                                       (_%imports47159%_
                                        (gx#core-expand-import-source
                                         _%g4703347111%_))
                                       (_%fold-e47175%_
                                        (letrec ((_%fold-e47162%_
                                                  (lambda (_%in47165%_
                                                           _%r47167%_)
                                                    (if (gx#module-import?
                                                         _%in47165%_)
                                                        (if (hash-get
                                                             _%keytab47156%_
                                                             (gx#module-import-name
                                                              _%in47165%_))
                                                            _%r47167%_
                                                            (cons _%in47165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47167%_))
                (if (gx#import-set? _%in47165%_)
                    (foldl _%fold-e47162%_
                           _%r47167%_
                           (gx#import-set-imports _%in47165%_))
                    (cons _%in47165%_ _%r47167%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47162%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47175%_
                                               '()
                                               _%imports47159%_)))
                                (_%g4703047054%_ _%g4703147058%_)))
                          _%id4704847106%_
                          _%hd4703847075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4704347087%_
                                                  _%target4704047081%_
                                                  '()))
                                               (_%g4703047054%_
                                                _%g4703147058%_)))))
                                     (_%g4703047054%_ _%g4703147058%_))))
                             (_%g4703047054%_ _%g4703147058%_))))
                     (_%g4703047054%_ _%g4703147058%_)))))
         (_%g4702947180%_ _%stx47027%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in47232%_ _%rename47234%_)
      (gx#make-module-import
       (gx#module-import-source _%in47232%_)
       _%rename47234%_
       (gx#module-import-phi _%in47232%_)
       (gx#module-import-weak? _%in47232%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name47185%_ _%pre47187%_)
      (let* ((_%name4718847196%_ _%name47185%_)
             (_%else4719047208%_
              (lambda () (make-symbol _%pre47187%_ _%name47185%_)))
             (_%K4719247216%_
              (lambda (_%mark47212%_ _%id47214%_)
                (cons (make-symbol _%pre47187%_ _%id47214%_) _%mark47212%_))))
        (if (pair? _%name4718847196%_)
            (let ((_%hd4719347220%_
                   (let () (declare (not safe)) (##car _%name4718847196%_)))
                  (_%tl4719447223%_
                   (let () (declare (not safe)) (##cdr _%name4718847196%_))))
              (let* ((_%id47226%_ _%hd4719347220%_)
                     (_%mark47229%_ _%tl4719447223%_))
                (_%K4719247216%_ _%mark47229%_ _%id47226%_)))
            (_%else4719047208%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx47236%_)
       (let* ((_%g4723947272%_
               (lambda (_%g4724047268%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4724047268%_)))
              (_%g4723847463%_
               (lambda (_%g4724047276%_)
                 (if (gx#stx-pair? _%g4724047276%_)
                     (let ((_%e4724447279%_ (gx#syntax-e _%g4724047276%_)))
                       (let ((_%hd4724547283%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4724447279%_)))
                             (_%tl4724647286%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4724447279%_))))
                         (if (gx#stx-pair? _%tl4724647286%_)
                             (let ((_%e4724747289%_
                                    (gx#syntax-e _%tl4724647286%_)))
                               (let ((_%hd4724847293%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4724747289%_)))
                                     (_%tl4724947296%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4724747289%_))))
                                 (if (gx#stx-pair/null? _%tl4724947296%_)
                                     (let ((_g49060_
                                            (gx#syntax-split-splice
                                             _%tl4724947296%_
                                             '0)))
                                       (begin
                                         (let ((_g49061_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49060_)
                                                      (##values-length
                                                       _g49060_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49061_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49061_)))
                                         (let ((_%target4725047299%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49060_ 0)))
                                               (_%tl4725247302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49060_ 1))))
                                           (if (gx#stx-null? _%tl4725247302%_)
                                               (letrec ((_%loop4725347305%_
                                                         (lambda (_%hd4725147309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4725747312%_
                          _%id4725847313%_)
                   (if (gx#stx-pair? _%hd4725147309%_)
                       (let ((_%e4725447315%_ (gx#syntax-e _%hd4725147309%_)))
                         (let ((_%lp-hd4725547319%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4725447315%_)))
                               (_%lp-tl4725647322%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4725447315%_))))
                           (if (gx#stx-pair? _%lp-hd4725547319%_)
                               (let ((_%e4726147325%_
                                      (gx#syntax-e _%lp-hd4725547319%_)))
                                 (let ((_%hd4726247329%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4726147325%_)))
                                       (_%tl4726347332%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4726147325%_))))
                                   (if (gx#stx-pair? _%tl4726347332%_)
                                       (let ((_%e4726447335%_
                                              (gx#syntax-e _%tl4726347332%_)))
                                         (let ((_%hd4726547339%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4726447335%_)))
                                               (_%tl4726647342%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4726447335%_))))
                                           (if (gx#stx-null? _%tl4726647342%_)
                                               (_%loop4725347305%_
                                                _%lp-tl4725647322%_
                                                (cons _%hd4726547339%_
                                                      _%new-id4725747312%_)
                                                (cons _%hd4726247329%_
                                                      _%id4725847313%_))
                                               (_%g4723947272%_
                                                _%g4724047276%_))))
                                       (_%g4723947272%_ _%g4724047276%_))))
                               (_%g4723947272%_ _%g4724047276%_))))
                       (let ((_%new-id4725947345%_
                              (reverse _%new-id4725747312%_))
                             (_%id4726047347%_ (reverse _%id4725847313%_)))
                         ((lambda (_%g4724147349%_
                                   _%g4724247351%_
                                   _%g4724347352%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4737047373%_
                                                      _%g4737147376%_)
                                               (cons _%g4737047373%_
                                                     _%g4737147376%_))
                                             '()
                                             _%g4724247351%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4737847381%_
                                                      _%g4737947384%_)
                                               (cons _%g4737847381%_
                                                     _%g4737947384%_))
                                             '()
                                             _%g4724147349%_)))
                                (let* ((_%keytab47387%_ (make-hash-table))
                                       (_%found47390%_ (make-hash-table))
                                       (_%_47413%_
                                        (for-each
                                         (lambda (_%id47393%_ _%new-id47395%_)
                                           (hash-put!
                                            _%keytab47387%_
                                            (gx#core-identifier-key
                                             _%id47393%_)
                                            (gx#core-identifier-key
                                             _%new-id47395%_)))
                                         (foldr (lambda (_%g4739647399%_
                                                         _%g4739747402%_)
                                                  (cons _%g4739647399%_
                                                        _%g4739747402%_))
                                                '()
                                                _%g4724247351%_)
                                         (foldr (lambda (_%g4740447407%_
                                                         _%g4740547410%_)
                                                  (cons _%g4740447407%_
                                                        _%g4740547410%_))
                                                '()
                                                _%g4724147349%_)))
                                       (_%imports47416%_
                                        (gx#core-expand-import-source
                                         _%g4724347352%_))
                                       (_%fold-e47444%_
                                        (letrec ((_%fold-e47419%_
                                                  (lambda (_%in47422%_
                                                           _%r47424%_)
                                                    (if (gx#module-import?
                                                         _%in47422%_)
                                                        (let* ((_%name47428%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in47422%_))
                       (_%$e47431%_ (hash-get _%keytab47387%_ _%name47428%_)))
                  (if _%$e47431%_
                      ((lambda (_%rename47435%_)
                         (hash-put! _%found47390%_ _%name47428%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in47422%_
                                _%rename47435%_)
                               _%r47424%_))
                       _%$e47431%_)
                      (cons _%in47422%_ _%r47424%_)))
                (if (gx#import-set? _%in47422%_)
                    (foldl _%fold-e47419%_
                           _%r47424%_
                           (gx#import-set-imports _%in47422%_))
                    (cons _%in47422%_ _%r47424%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47419%_))
                                       (_%new-imports47447%_
                                        (foldl _%fold-e47444%_
                                               '()
                                               _%imports47416%_)))
                                  (for-each
                                   (lambda (_%id47452%_)
                                     (if (hash-get
                                          _%found47390%_
                                          (gx#core-identifier-key _%id47452%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx47236%_
                                          _%id47452%_)))
                                   (foldr (lambda (_%g4745447457%_
                                                   _%g4745547460%_)
                                            (cons _%g4745447457%_
                                                  _%g4745547460%_))
                                          '()
                                          _%g4724247351%_))
                                  (cons 'begin: _%new-imports47447%_))
                                (_%g4723947272%_ _%g4724047276%_)))
                          _%new-id4725947345%_
                          _%id4726047347%_
                          _%hd4724847293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4725347305%_
                                                  _%target4725047299%_
                                                  '()
                                                  '()))
                                               (_%g4723947272%_
                                                _%g4724047276%_)))))
                                     (_%g4723947272%_ _%g4724047276%_))))
                             (_%g4723947272%_ _%g4724047276%_))))
                     (_%g4723947272%_ _%g4724047276%_)))))
         (_%g4723847463%_ _%stx47236%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx47468%_)
       (let* ((_%g4747147489%_
               (lambda (_%g4747247485%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4747247485%_)))
              (_%g4747047574%_
               (lambda (_%g4747247493%_)
                 (if (gx#stx-pair? _%g4747247493%_)
                     (let ((_%e4747547496%_ (gx#syntax-e _%g4747247493%_)))
                       (let ((_%hd4747647500%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4747547496%_)))
                             (_%tl4747747503%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4747547496%_))))
                         (if (gx#stx-pair? _%tl4747747503%_)
                             (let ((_%e4747847506%_
                                    (gx#syntax-e _%tl4747747503%_)))
                               (let ((_%hd4747947510%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4747847506%_)))
                                     (_%tl4748047513%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4747847506%_))))
                                 (if (gx#stx-pair? _%tl4748047513%_)
                                     (let ((_%e4748147516%_
                                            (gx#syntax-e _%tl4748047513%_)))
                                       (let ((_%hd4748247520%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4748147516%_)))
                                             (_%tl4748347523%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4748147516%_))))
                                         (if (gx#stx-null? _%tl4748347523%_)
                                             ((lambda (_%g4747347526%_
                                                       _%g4747447528%_)
                                                (if (gx#identifier?
                                                     _%g4747347526%_)
                                                    (let* ((_%pre47544%_
                                                            (gx#stx-e
                                                             _%g4747347526%_))
                                                           (_%imports47547%_
                                                            (gx#core-expand-import-source
                                                             _%g4747447528%_))
                                                           (_%rename-e47553%_
                                                            (lambda (_%name47550%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name47550%_
                                                               _%pre47544%_)))
                                                           (_%fold-e47569%_
                                                            (letrec ((_%fold-e47556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in47559%_ _%r47561%_)
                                (if (gx#module-import? _%in47559%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in47559%_
                                           (_%rename-e47553%_
                                            (gx#module-import-name
                                             _%in47559%_)))
                                          _%r47561%_)
                                    (if (gx#import-set? _%in47559%_)
                                        (foldl _%fold-e47556%_
                                               _%r47561%_
                                               (gx#import-set-imports
                                                _%in47559%_))
                                        (cons _%in47559%_ _%r47561%_))))))
                      _%fold-e47556%_)))
              (cons 'begin: (foldl _%fold-e47569%_ '() _%imports47547%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4747147489%_
                                                     _%g4747247493%_)))
                                              _%hd4748247520%_
                                              _%hd4747947510%_)
                                             (_%g4747147489%_
                                              _%g4747247493%_))))
                                     (_%g4747147489%_ _%g4747247493%_))))
                             (_%g4747147489%_ _%g4747247493%_))))
                     (_%g4747147489%_ _%g4747247493%_)))))
         (_%g4747047574%_ _%stx47468%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx47578%_)
       (letrec ((_%flatten47581%_
                 (lambda (_%list-of-lists47832%_)
                   (foldr (lambda (_%v47835%_ _%acc47837%_)
                            (if (null? _%v47835%_)
                                _%acc47837%_
                                (if (pair? _%v47835%_)
                                    (append (_%flatten47581%_ _%v47835%_)
                                            _%acc47837%_)
                                    (cons _%v47835%_ _%acc47837%_))))
                          '()
                          _%list-of-lists47832%_)))
                (_%expand-path47583%_
                 (lambda (_%top47702%_ _%mod47704%_)
                   (let* ((_%__stx4896048961%_ _%mod47704%_)
                          (_%g4770747729%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4896048961%_))))
                     (let ((_%__kont4896348964%_
                            (lambda (_%g4770947795%_ _%g4771047797%_)
                              (map (lambda (_%mod47812%_)
                                     (gx#stx-identifier
                                      _%top47702%_
                                      _%top47702%_
                                      '"/"
                                      _%mod47812%_))
                                   (_%flatten47581%_
                                    (map (lambda (_%g4781447816%_)
                                           (_%expand-path47583%_
                                            _%g4771047797%_
                                            _%g4781447816%_))
                                         (foldr (lambda (_%g4781947822%_
                                                         _%g4782047825%_)
                                                  (cons _%g4781947822%_
                                                        _%g4782047825%_))
                                                '()
                                                _%g4770947795%_))))))
                           (_%__kont4896748968%_
                            (lambda (_%g4772347736%_)
                              (gx#stx-identifier
                               _%top47702%_
                               _%top47702%_
                               '"/"
                               _%g4772347736%_))))
                       (let* ((_%g4770647750%_
                               (lambda ()
                                 (let ((_%g4772347736%_ _%__stx4896048961%_))
                                   (if (or (gx#identifier? _%g4772347736%_)
                                           (gx#stx-fixnum? _%g4772347736%_))
                                       (_%__kont4896748968%_ _%g4772347736%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4770747729%_))))))
                              (_%__match4898348984%_
                               (lambda (_%e4771147757%_
                                        _%hd4771247761%_
                                        _%tl4771347764%_
                                        _%__splice4896548966%_
                                        _%target4771447767%_
                                        _%tl4771647770%_)
                                 (letrec ((_%loop4771747773%_
                                           (lambda (_%hd4771547777%_
                                                    _%mod4772147780%_)
                                             (if (gx#stx-pair?
                                                  _%hd4771547777%_)
                                                 (let ((_%e4771847782%_
                                                        (gx#syntax-e
                                                         _%hd4771547777%_)))
                                                   (let ((_%lp-tl4772047789%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4771847782%_)))
                                                         (_%lp-hd4771947786%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4771847782%_))))
                                                     (_%loop4771747773%_
                                                      _%lp-tl4772047789%_
                                                      (cons _%lp-hd4771947786%_
                                                            _%mod4772147780%_))))
                                                 (let ((_%mod4772247792%_
                                                        (reverse _%mod4772147780%_)))
                                                   (_%__kont4896348964%_
                                                    _%mod4772247792%_
                                                    _%hd4771247761%_))))))
                                   (_%loop4771747773%_
                                    _%target4771447767%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4896048961%_)
                             (let ((_%e4771147757%_
                                    (gx#syntax-e _%__stx4896048961%_)))
                               (let ((_%tl4771347764%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4771147757%_)))
                                     (_%hd4771247761%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4771147757%_))))
                                 (if (gx#stx-pair/null? _%tl4771347764%_)
                                     (let ((_%__splice4896548966%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4771347764%_
                                             '0)))
                                       (let ((_%tl4771647770%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4896548966%_
                                                 '1)))
                                             (_%target4771447767%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4896548966%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4771647770%_)
                                             (_%__match4898348984%_
                                              _%e4771147757%_
                                              _%hd4771247761%_
                                              _%tl4771347764%_
                                              _%__splice4896548966%_
                                              _%target4771447767%_
                                              _%tl4771647770%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4770647750%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4770647750%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4770647750%_)))))))))
         (let* ((_%g4758547609%_
                 (lambda (_%g4758647605%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4758647605%_)))
                (_%g4758447698%_
                 (lambda (_%g4758647613%_)
                   (if (gx#stx-pair? _%g4758647613%_)
                       (let ((_%e4758947616%_ (gx#syntax-e _%g4758647613%_)))
                         (let ((_%hd4759047620%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4758947616%_)))
                               (_%tl4759147623%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4758947616%_))))
                           (if (gx#stx-pair? _%tl4759147623%_)
                               (let ((_%e4759247626%_
                                      (gx#syntax-e _%tl4759147623%_)))
                                 (let ((_%hd4759347630%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4759247626%_)))
                                       (_%tl4759447633%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4759247626%_))))
                                   (if (gx#stx-pair/null? _%tl4759447633%_)
                                       (let ((_g49062_
                                              (gx#syntax-split-splice
                                               _%tl4759447633%_
                                               '0)))
                                         (begin
                                           (let ((_g49063_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49062_)
                                                        (##values-length
                                                         _g49062_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49063_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49063_)))
                                           (let ((_%target4759547636%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g49062_ 0)))
                                                 (_%tl4759747639%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g49062_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4759747639%_)
                                                 (letrec ((_%loop4759847642%_
                                                           (lambda (_%hd4759647646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4760247649%_)
                     (if (gx#stx-pair? _%hd4759647646%_)
                         (let ((_%e4759947651%_
                                (gx#syntax-e _%hd4759647646%_)))
                           (let ((_%lp-hd4760047655%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4759947651%_)))
                                 (_%lp-tl4760147658%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4759947651%_))))
                             (_%loop4759847642%_
                              _%lp-tl4760147658%_
                              (cons _%lp-hd4760047655%_ _%mod4760247649%_))))
                         (let ((_%mod4760347661%_ (reverse _%mod4760247649%_)))
                           ((lambda (_%g4758747664%_ _%g4758847666%_)
                              (cons 'begin:
                                    (_%flatten47581%_
                                     (map (lambda (_%g4768447686%_)
                                            (_%expand-path47583%_
                                             _%g4758847666%_
                                             _%g4768447686%_))
                                          (foldr (lambda (_%g4768947692%_
                                                          _%g4769047695%_)
                                                   (cons _%g4768947692%_
                                                         _%g4769047695%_))
                                                 '()
                                                 _%g4758747664%_)))))
                            _%mod4760347661%_
                            _%hd4759347630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4759847642%_
                                                    _%target4759547636%_
                                                    '()))
                                                 (_%g4758547609%_
                                                  _%g4758647613%_)))))
                                       (_%g4758547609%_ _%g4758647613%_))))
                               (_%g4758547609%_ _%g4758647613%_))))
                       (_%g4758547609%_ _%g4758647613%_)))))
           (_%g4758447698%_ _%stx47578%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx47847%_)
       (let* ((_%g4785047874%_
               (lambda (_%g4785147870%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4785147870%_)))
              (_%g4784948000%_
               (lambda (_%g4785147878%_)
                 (if (gx#stx-pair? _%g4785147878%_)
                     (let ((_%e4785447881%_ (gx#syntax-e _%g4785147878%_)))
                       (let ((_%hd4785547885%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4785447881%_)))
                             (_%tl4785647888%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4785447881%_))))
                         (if (gx#stx-pair? _%tl4785647888%_)
                             (let ((_%e4785747891%_
                                    (gx#syntax-e _%tl4785647888%_)))
                               (let ((_%hd4785847895%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4785747891%_)))
                                     (_%tl4785947898%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4785747891%_))))
                                 (if (gx#stx-pair/null? _%tl4785947898%_)
                                     (let ((_g49064_
                                            (gx#syntax-split-splice
                                             _%tl4785947898%_
                                             '0)))
                                       (begin
                                         (let ((_g49065_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49064_)
                                                      (##values-length
                                                       _g49064_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49065_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49065_)))
                                         (let ((_%target4786047901%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49064_ 0)))
                                               (_%tl4786247904%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49064_ 1))))
                                           (if (gx#stx-null? _%tl4786247904%_)
                                               (letrec ((_%loop4786347907%_
                                                         (lambda (_%hd4786147911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4786747914%_)
                   (if (gx#stx-pair? _%hd4786147911%_)
                       (let ((_%e4786447916%_ (gx#syntax-e _%hd4786147911%_)))
                         (let ((_%lp-hd4786547920%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4786447916%_)))
                               (_%lp-tl4786647923%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4786447916%_))))
                           (_%loop4786347907%_
                            _%lp-tl4786647923%_
                            (cons _%lp-hd4786547920%_ _%id4786747914%_))))
                       (let ((_%id4786847926%_ (reverse _%id4786747914%_)))
                         ((lambda (_%g4785247929%_ _%g4785347931%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4794847951%_
                                                 _%g4794947954%_)
                                          (cons _%g4794847951%_
                                                _%g4794947954%_))
                                        '()
                                        _%g4785247929%_))
                                (let* ((_%keys47965%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4795647959%_
                                                         _%g4795747962%_)
                                                  (cons _%g4795647959%_
                                                        _%g4795747962%_))
                                                '()
                                                _%g4785247929%_)))
                                       (_%keytab47976%_
                                        (let ((_%ht47968%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4797047972%_)
                                             (hash-put!
                                              _%ht47968%_
                                              _%g4797047972%_
                                              '#t))
                                           _%keys47965%_)
                                          _%ht47968%_))
                                       (_%exports47979%_
                                        (gx#core-expand-export-source
                                         _%g4785347931%_))
                                       (_%fold-e47995%_
                                        (letrec ((_%fold-e47982%_
                                                  (lambda (_%out47985%_
                                                           _%r47987%_)
                                                    (if (gx#module-export?
                                                         _%out47985%_)
                                                        (if (hash-get
                                                             _%keytab47976%_
                                                             (gx#module-export-name
                                                              _%out47985%_))
                                                            _%r47987%_
                                                            (cons _%out47985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r47987%_))
                (if (gx#export-set? _%out47985%_)
                    (foldl _%fold-e47982%_
                           _%r47987%_
                           (gx#export-set-exports _%out47985%_))
                    _%r47987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e47982%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e47995%_
                                               '()
                                               _%exports47979%_)))
                                (_%g4785047874%_ _%g4785147878%_)))
                          _%id4786847926%_
                          _%hd4785847895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4786347907%_
                                                  _%target4786047901%_
                                                  '()))
                                               (_%g4785047874%_
                                                _%g4785147878%_)))))
                                     (_%g4785047874%_ _%g4785147878%_))))
                             (_%g4785047874%_ _%g4785147878%_))))
                     (_%g4785047874%_ _%g4785147878%_)))))
         (_%g4784948000%_ _%stx47847%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx48005%_)
       (let* ((_%g4800848032%_
               (lambda (_%g4800948028%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4800948028%_)))
              (_%g4800748162%_
               (lambda (_%g4800948036%_)
                 (if (gx#stx-pair? _%g4800948036%_)
                     (let ((_%e4801248039%_ (gx#syntax-e _%g4800948036%_)))
                       (let ((_%hd4801348043%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4801248039%_)))
                             (_%tl4801448046%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4801248039%_))))
                         (if (gx#stx-pair? _%tl4801448046%_)
                             (let ((_%e4801548049%_
                                    (gx#syntax-e _%tl4801448046%_)))
                               (let ((_%hd4801648053%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4801548049%_)))
                                     (_%tl4801748056%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4801548049%_))))
                                 (if (gx#stx-pair/null? _%tl4801748056%_)
                                     (let ((_g49066_
                                            (gx#syntax-split-splice
                                             _%tl4801748056%_
                                             '0)))
                                       (begin
                                         (let ((_g49067_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49066_)
                                                      (##values-length
                                                       _g49066_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49067_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49067_)))
                                         (let ((_%target4801848059%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49066_ 0)))
                                               (_%tl4802048062%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49066_ 1))))
                                           (if (gx#stx-null? _%tl4802048062%_)
                                               (letrec ((_%loop4802148065%_
                                                         (lambda (_%hd4801948069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%filter-out4802548072%_)
                   (if (gx#stx-pair? _%hd4801948069%_)
                       (let ((_%e4802248074%_ (gx#syntax-e _%hd4801948069%_)))
                         (let ((_%lp-hd4802348078%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4802248074%_)))
                               (_%lp-tl4802448081%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4802248074%_))))
                           (_%loop4802148065%_
                            _%lp-tl4802448081%_
                            (cons _%lp-hd4802348078%_
                                  _%filter-out4802548072%_))))
                       (let ((_%filter-out4802648084%_
                              (reverse _%filter-out4802548072%_)))
                         ((lambda (_%g4801048087%_ _%g4801148089%_)
                            (let ((_%filtered48107%_ (make-hash-table)))
                              (letrec ((_%fold-out48110%_
                                        (lambda (_%out48152%_ _%r48154%_)
                                          (if (gx#module-export? _%out48152%_)
                                              (cons _%out48152%_ _%r48154%_)
                                              (if (gx#export-set? _%out48152%_)
                                                  (foldl _%fold-out48110%_
                                                         _%r48154%_
                                                         (gx#export-set-exports
                                                          _%out48152%_))
                                                  _%r48154%_)))))
                                (for-each
                                 (lambda (_%src48113%_)
                                   (let* ((_%exports48119%_
                                           (if (gx#identifier? _%src48113%_)
                                               (let ((_%mod48116%_
                                                      (gx#syntax-local-value
                                                       _%src48113%_)))
                                                 (if (gx#module-context?
                                                      _%mod48116%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a module context"
                                                      _%src48113%_))
                                                 (gx#module-context-export
                                                  _%mod48116%_))
                                               (gx#core-expand-export-source
                                                _%src48113%_)))
                                          (_%exports48122%_
                                           (foldl _%fold-out48110%_
                                                  '()
                                                  _%exports48119%_)))
                                     (for-each
                                      (lambda (_%out48127%_)
                                        (hash-put!
                                         _%filtered48107%_
                                         (gx#module-export-name _%out48127%_)
                                         '#t))
                                      _%exports48122%_)))
                                 (foldr (lambda (_%g4812948132%_
                                                 _%g4813048135%_)
                                          (cons _%g4812948132%_
                                                _%g4813048135%_))
                                        '()
                                        _%g4801048087%_))
                                (let* ((_%exports48138%_
                                        (gx#core-expand-export-source
                                         _%g4801148089%_))
                                       (_%exports48141%_
                                        (foldl _%fold-out48110%_
                                               '()
                                               _%exports48138%_))
                                       (_%exports48147%_
                                        (filter (lambda (_%out48144%_)
                                                  (not (hash-get
                                                        _%filtered48107%_
                                                        (gx#module-export-name
                                                         _%out48144%_))))
                                                _%exports48141%_)))
                                  (cons 'begin: _%exports48147%_)))))
                          _%filter-out4802648084%_
                          _%hd4801648053%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4802148065%_
                                                  _%target4801848059%_
                                                  '()))
                                               (_%g4800848032%_
                                                _%g4800948036%_)))))
                                     (_%g4800848032%_ _%g4800948036%_))))
                             (_%g4800848032%_ _%g4800948036%_))))
                     (_%g4800848032%_ _%g4800948036%_)))))
         (_%g4800748162%_ _%stx48005%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out48167%_ _%rename48169%_)
      (gx#make-module-export
       (gx#module-export-context _%out48167%_)
       (gx#module-export-key _%out48167%_)
       (gx#module-export-phi _%out48167%_)
       _%rename48169%_
       (gx#module-export-weak? _%out48167%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx48171%_)
       (let* ((_%g4817448207%_
               (lambda (_%g4817548203%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4817548203%_)))
              (_%g4817348398%_
               (lambda (_%g4817548211%_)
                 (if (gx#stx-pair? _%g4817548211%_)
                     (let ((_%e4817948214%_ (gx#syntax-e _%g4817548211%_)))
                       (let ((_%hd4818048218%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4817948214%_)))
                             (_%tl4818148221%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4817948214%_))))
                         (if (gx#stx-pair? _%tl4818148221%_)
                             (let ((_%e4818248224%_
                                    (gx#syntax-e _%tl4818148221%_)))
                               (let ((_%hd4818348228%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4818248224%_)))
                                     (_%tl4818448231%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4818248224%_))))
                                 (if (gx#stx-pair/null? _%tl4818448231%_)
                                     (let ((_g49068_
                                            (gx#syntax-split-splice
                                             _%tl4818448231%_
                                             '0)))
                                       (begin
                                         (let ((_g49069_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g49068_)
                                                      (##values-length
                                                       _g49068_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g49069_ 2)))
                                               (error "Context expects 2 values"
                                                      _g49069_)))
                                         (let ((_%target4818548234%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49068_ 0)))
                                               (_%tl4818748237%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g49068_ 1))))
                                           (if (gx#stx-null? _%tl4818748237%_)
                                               (letrec ((_%loop4818848240%_
                                                         (lambda (_%hd4818648244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4819248247%_
                          _%id4819348248%_)
                   (if (gx#stx-pair? _%hd4818648244%_)
                       (let ((_%e4818948250%_ (gx#syntax-e _%hd4818648244%_)))
                         (let ((_%lp-hd4819048254%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4818948250%_)))
                               (_%lp-tl4819148257%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4818948250%_))))
                           (if (gx#stx-pair? _%lp-hd4819048254%_)
                               (let ((_%e4819648260%_
                                      (gx#syntax-e _%lp-hd4819048254%_)))
                                 (let ((_%hd4819748264%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4819648260%_)))
                                       (_%tl4819848267%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4819648260%_))))
                                   (if (gx#stx-pair? _%tl4819848267%_)
                                       (let ((_%e4819948270%_
                                              (gx#syntax-e _%tl4819848267%_)))
                                         (let ((_%hd4820048274%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4819948270%_)))
                                               (_%tl4820148277%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4819948270%_))))
                                           (if (gx#stx-null? _%tl4820148277%_)
                                               (_%loop4818848240%_
                                                _%lp-tl4819148257%_
                                                (cons _%hd4820048274%_
                                                      _%new-id4819248247%_)
                                                (cons _%hd4819748264%_
                                                      _%id4819348248%_))
                                               (_%g4817448207%_
                                                _%g4817548211%_))))
                                       (_%g4817448207%_ _%g4817548211%_))))
                               (_%g4817448207%_ _%g4817548211%_))))
                       (let ((_%new-id4819448280%_
                              (reverse _%new-id4819248247%_))
                             (_%id4819548282%_ (reverse _%id4819348248%_)))
                         ((lambda (_%g4817648284%_
                                   _%g4817748286%_
                                   _%g4817848287%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4830548308%_
                                                      _%g4830648311%_)
                                               (cons _%g4830548308%_
                                                     _%g4830648311%_))
                                             '()
                                             _%g4817748286%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4831348316%_
                                                      _%g4831448319%_)
                                               (cons _%g4831348316%_
                                                     _%g4831448319%_))
                                             '()
                                             _%g4817648284%_)))
                                (let* ((_%keytab48322%_ (make-hash-table))
                                       (_%found48325%_ (make-hash-table))
                                       (_%_48348%_
                                        (for-each
                                         (lambda (_%id48328%_ _%new-id48330%_)
                                           (hash-put!
                                            _%keytab48322%_
                                            (gx#core-identifier-key
                                             _%id48328%_)
                                            (gx#core-identifier-key
                                             _%new-id48330%_)))
                                         (foldr (lambda (_%g4833148334%_
                                                         _%g4833248337%_)
                                                  (cons _%g4833148334%_
                                                        _%g4833248337%_))
                                                '()
                                                _%g4817748286%_)
                                         (foldr (lambda (_%g4833948342%_
                                                         _%g4834048345%_)
                                                  (cons _%g4833948342%_
                                                        _%g4834048345%_))
                                                '()
                                                _%g4817648284%_)))
                                       (_%exports48351%_
                                        (gx#core-expand-export-source
                                         _%g4817848287%_))
                                       (_%fold-e48379%_
                                        (letrec ((_%fold-e48354%_
                                                  (lambda (_%out48357%_
                                                           _%r48359%_)
                                                    (if (gx#module-export?
                                                         _%out48357%_)
                                                        (let* ((_%name48363%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out48357%_))
                       (_%$e48366%_ (hash-get _%keytab48322%_ _%name48363%_)))
                  (if _%$e48366%_
                      ((lambda (_%rename48370%_)
                         (hash-put! _%found48325%_ _%name48363%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out48357%_
                                _%rename48370%_)
                               _%r48359%_))
                       _%$e48366%_)
                      (cons _%out48357%_ _%r48359%_)))
                (if (gx#export-set? _%out48357%_)
                    (foldl _%fold-e48354%_
                           _%r48359%_
                           (gx#export-set-exports _%out48357%_))
                    (cons _%out48357%_ _%r48359%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e48354%_))
                                       (_%new-exports48382%_
                                        (foldl _%fold-e48379%_
                                               '()
                                               _%exports48351%_)))
                                  (for-each
                                   (lambda (_%id48387%_)
                                     (if (hash-get
                                          _%found48325%_
                                          (gx#core-identifier-key _%id48387%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx48171%_
                                          _%id48387%_)))
                                   (foldr (lambda (_%g4838948392%_
                                                   _%g4839048395%_)
                                            (cons _%g4838948392%_
                                                  _%g4839048395%_))
                                          '()
                                          _%g4817748286%_))
                                  (cons 'begin: _%new-exports48382%_))
                                (_%g4817448207%_ _%g4817548211%_)))
                          _%new-id4819448280%_
                          _%id4819548282%_
                          _%hd4818348228%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4818848240%_
                                                  _%target4818548234%_
                                                  '()
                                                  '()))
                                               (_%g4817448207%_
                                                _%g4817548211%_)))))
                                     (_%g4817448207%_ _%g4817548211%_))))
                             (_%g4817448207%_ _%g4817548211%_))))
                     (_%g4817448207%_ _%g4817548211%_)))))
         (_%g4817348398%_ _%stx48171%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx48403%_)
       (let* ((_%g4840648424%_
               (lambda (_%g4840748420%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4840748420%_)))
              (_%g4840548509%_
               (lambda (_%g4840748428%_)
                 (if (gx#stx-pair? _%g4840748428%_)
                     (let ((_%e4841048431%_ (gx#syntax-e _%g4840748428%_)))
                       (let ((_%hd4841148435%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4841048431%_)))
                             (_%tl4841248438%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4841048431%_))))
                         (if (gx#stx-pair? _%tl4841248438%_)
                             (let ((_%e4841348441%_
                                    (gx#syntax-e _%tl4841248438%_)))
                               (let ((_%hd4841448445%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4841348441%_)))
                                     (_%tl4841548448%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4841348441%_))))
                                 (if (gx#stx-pair? _%tl4841548448%_)
                                     (let ((_%e4841648451%_
                                            (gx#syntax-e _%tl4841548448%_)))
                                       (let ((_%hd4841748455%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4841648451%_)))
                                             (_%tl4841848458%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4841648451%_))))
                                         (if (gx#stx-null? _%tl4841848458%_)
                                             ((lambda (_%g4840848461%_
                                                       _%g4840948463%_)
                                                (if (gx#identifier?
                                                     _%g4840848461%_)
                                                    (let* ((_%pre48479%_
                                                            (gx#stx-e
                                                             _%g4840848461%_))
                                                           (_%exports48482%_
                                                            (gx#core-expand-export-source
                                                             _%g4840948463%_))
                                                           (_%rename-e48488%_
                                                            (lambda (_%name48485%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name48485%_
                                                               _%pre48479%_)))
                                                           (_%fold-e48504%_
                                                            (letrec ((_%fold-e48491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out48494%_ _%r48496%_)
                                (if (gx#module-export? _%out48494%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out48494%_
                                           (_%rename-e48488%_
                                            (gx#module-export-name
                                             _%out48494%_)))
                                          _%r48496%_)
                                    (if (gx#export-set? _%out48494%_)
                                        (foldl _%fold-e48491%_
                                               _%r48496%_
                                               (gx#export-set-exports
                                                _%out48494%_))
                                        (cons _%out48494%_ _%r48496%_))))))
                      _%fold-e48491%_)))
              (cons 'begin: (foldl _%fold-e48504%_ '() _%exports48482%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4840648424%_
                                                     _%g4840748428%_)))
                                              _%hd4841748455%_
                                              _%hd4841448445%_)
                                             (_%g4840648424%_
                                              _%g4840748428%_))))
                                     (_%g4840648424%_ _%g4840748428%_))))
                             (_%g4840648424%_ _%g4840748428%_))))
                     (_%g4840648424%_ _%g4840748428%_)))))
         (_%g4840548509%_ _%stx48403%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx48513%_)
       (letrec ((_%identifiers48516%_
                 (lambda (_%id48744%_ _%unchecked?48746%_)
                   (let ((_%info48748%_
                          (gx#syntax-local-value _%id48744%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info48748%_))
                         (cons _%id48744%_
                               (cons (let ((__obj49045 _%info48748%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj49045
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj49045
                                              '3
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj49045
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj49046
                                                         _%info48748%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj49046
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj49046
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj49046
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?48746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj49047 _%info48748%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49047
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49047
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49047
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj49048 _%info48748%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj49048
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj49048
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj49048
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj49049 _%info48748%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj49049
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj49049
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj49049
                                    'mutators)))))
                 (map cdr
                      (let ((__obj49050 _%info48748%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj49050
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj49050
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj49050 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor48751%_
                                                   (let ((__obj49051
                                                          _%info48748%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj49051
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj49051
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj49051
                                                          'constructor)))))
                                              (if _%ctor48751%_
                                                  (cons _%ctor48751%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx48513%_
                          _%id48744%_))))))
         (let* ((_%__stx4898648987%_ _%stx48513%_)
                (_%g4852048561%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4898648987%_))))
           (let ((_%__kont4898948990%_
                  (lambda (_%g4852248705%_ _%g4852348707%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4872648728%_)
                              (_%identifiers48516%_
                               _%g4872648728%_
                               (gx#stx-e _%g4852348707%_)))
                            (foldr (lambda (_%g4873148734%_ _%g4873248737%_)
                                     (cons _%g4873148734%_ _%g4873248737%_))
                                   '()
                                   _%g4852248705%_))))))
                 (_%__kont4899348994%_
                  (lambda (_%g4854348606%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4862248624%_)
                              (_%identifiers48516%_ _%g4862248624%_ '#f))
                            (foldr (lambda (_%g4862748630%_ _%g4862848633%_)
                                     (cons _%g4862748630%_ _%g4862848633%_))
                                   '()
                                   _%g4854348606%_)))))))
             (let* ((_%__match4904349044%_
                     (lambda (_%e4854448568%_
                              _%hd4854548572%_
                              _%tl4854648575%_
                              _%__splice4899548996%_
                              _%target4854748578%_
                              _%tl4854948581%_)
                       (letrec ((_%loop4855048584%_
                                 (lambda (_%hd4854848588%_ _%id4855448591%_)
                                   (if (gx#stx-pair? _%hd4854848588%_)
                                       (let ((_%e4855148593%_
                                              (gx#syntax-e _%hd4854848588%_)))
                                         (let ((_%lp-tl4855348600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4855148593%_)))
                                               (_%lp-hd4855248597%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4855148593%_))))
                                           (_%loop4855048584%_
                                            _%lp-tl4855348600%_
                                            (cons _%lp-hd4855248597%_
                                                  _%id4855448591%_))))
                                       (let ((_%id4855548603%_
                                              (reverse _%id4855448591%_)))
                                         (_%__kont4899348994%_
                                          _%id4855548603%_))))))
                         (_%loop4855048584%_ _%target4854748578%_ '()))))
                    (_%__match4902949030%_
                     (lambda (_%e4852448643%_
                              _%hd4852548647%_
                              _%tl4852648650%_
                              _%e4852748653%_
                              _%hd4852848657%_
                              _%tl4852948660%_
                              _%e4853048663%_
                              _%e4853148667%_
                              _%hd4853248671%_
                              _%tl4853348674%_
                              _%__splice4899148992%_
                              _%target4853448677%_
                              _%tl4853648680%_)
                       (letrec ((_%loop4853748683%_
                                 (lambda (_%hd4853548687%_ _%id4854148690%_)
                                   (if (gx#stx-pair? _%hd4853548687%_)
                                       (let ((_%e4853848692%_
                                              (gx#syntax-e _%hd4853548687%_)))
                                         (let ((_%lp-tl4854048699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4853848692%_)))
                                               (_%lp-hd4853948696%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4853848692%_))))
                                           (_%loop4853748683%_
                                            _%lp-tl4854048699%_
                                            (cons _%lp-hd4853948696%_
                                                  _%id4854148690%_))))
                                       (let ((_%id4854248702%_
                                              (reverse _%id4854148690%_)))
                                         (_%__kont4898948990%_
                                          _%id4854248702%_
                                          _%hd4853248671%_))))))
                         (_%loop4853748683%_ _%target4853448677%_ '())))))
               (if (gx#stx-pair? _%__stx4898648987%_)
                   (let ((_%e4852448643%_ (gx#syntax-e _%__stx4898648987%_)))
                     (let ((_%tl4852648650%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4852448643%_)))
                           (_%hd4852548647%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4852448643%_))))
                       (if (gx#stx-pair? _%tl4852648650%_)
                           (let ((_%e4852748653%_
                                  (gx#syntax-e _%tl4852648650%_)))
                             (let ((_%tl4852948660%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4852748653%_)))
                                   (_%hd4852848657%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4852748653%_))))
                               (if (gx#stx-datum? _%hd4852848657%_)
                                   (let ((_%e4853048663%_
                                          (gx#stx-e _%hd4852848657%_)))
                                     (if (equal? _%e4853048663%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4852948660%_)
                                             (let ((_%e4853148667%_
                                                    (gx#syntax-e
                                                     _%tl4852948660%_)))
                                               (let ((_%tl4853348674%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4853148667%_)))
                                                     (_%hd4853248671%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4853148667%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4853348674%_)
                                                     (let ((_%__splice4899148992%_
                                                            (gx#syntax-split-splice->vector
                                                             _%tl4853348674%_
                                                             '0)))
                                                       (let ((_%tl4853648680%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4899148992%_ '1)))
                     (_%target4853448677%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4899148992%_ '0))))
                 (if (gx#stx-null? _%tl4853648680%_)
                     (_%__match4902949030%_
                      _%e4852448643%_
                      _%hd4852548647%_
                      _%tl4852648650%_
                      _%e4852748653%_
                      _%hd4852848657%_
                      _%tl4852948660%_
                      _%e4853048663%_
                      _%e4853148667%_
                      _%hd4853248671%_
                      _%tl4853348674%_
                      _%__splice4899148992%_
                      _%target4853448677%_
                      _%tl4853648680%_)
                     (if (gx#stx-pair/null? _%tl4852648650%_)
                         (let ((_%__splice4899548996%_
                                (gx#syntax-split-splice->vector
                                 _%tl4852648650%_
                                 '0)))
                           (let ((_%tl4854948581%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4899548996%_ '1)))
                                 (_%target4854748578%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4899548996%_ '0))))
                             (if (gx#stx-null? _%tl4854948581%_)
                                 (_%__match4904349044%_
                                  _%e4852448643%_
                                  _%hd4852548647%_
                                  _%tl4852648650%_
                                  _%__splice4899548996%_
                                  _%target4854748578%_
                                  _%tl4854948581%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4852048561%_)))))
                         (let () (declare (not safe)) (_%g4852048561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4852648650%_)
                                                         (let ((_%__splice4899548996%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4852648650%_
                         '0)))
                   (let ((_%tl4854948581%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4899548996%_ '1)))
                         (_%target4854748578%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4899548996%_ '0))))
                     (if (gx#stx-null? _%tl4854948581%_)
                         (_%__match4904349044%_
                          _%e4852448643%_
                          _%hd4852548647%_
                          _%tl4852648650%_
                          _%__splice4899548996%_
                          _%target4854748578%_
                          _%tl4854948581%_)
                         (let () (declare (not safe)) (_%g4852048561%_)))))
                 (let () (declare (not safe)) (_%g4852048561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4852648650%_)
                                                 (let ((_%__splice4899548996%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4852648650%_
                                                         '0)))
                                                   (let ((_%tl4854948581%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4899548996%_
                                                             '1)))
                                                         (_%target4854748578%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4899548996%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4854948581%_)
                                                         (_%__match4904349044%_
                                                          _%e4852448643%_
                                                          _%hd4852548647%_
                                                          _%tl4852648650%_
                                                          _%__splice4899548996%_
                                                          _%target4854748578%_
                                                          _%tl4854948581%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4852048561%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4852048561%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4852648650%_)
                                             (let ((_%__splice4899548996%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4852648650%_
                                                     '0)))
                                               (let ((_%tl4854948581%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4899548996%_
                                                         '1)))
                                                     (_%target4854748578%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4899548996%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4854948581%_)
                                                     (_%__match4904349044%_
                                                      _%e4852448643%_
                                                      _%hd4852548647%_
                                                      _%tl4852648650%_
                                                      _%__splice4899548996%_
                                                      _%target4854748578%_
                                                      _%tl4854948581%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4852048561%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4852048561%_)))))
                                   (if (gx#stx-pair/null? _%tl4852648650%_)
                                       (let ((_%__splice4899548996%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4852648650%_
                                               '0)))
                                         (let ((_%tl4854948581%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4899548996%_
                                                   '1)))
                                               (_%target4854748578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4899548996%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4854948581%_)
                                               (_%__match4904349044%_
                                                _%e4852448643%_
                                                _%hd4852548647%_
                                                _%tl4852648650%_
                                                _%__splice4899548996%_
                                                _%target4854748578%_
                                                _%tl4854948581%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4852048561%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4852048561%_))))))
                           (if (gx#stx-pair/null? _%tl4852648650%_)
                               (let ((_%__splice4899548996%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4852648650%_
                                       '0)))
                                 (let ((_%tl4854948581%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4899548996%_
                                           '1)))
                                       (_%target4854748578%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4899548996%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4854948581%_)
                                       (_%__match4904349044%_
                                        _%e4852448643%_
                                        _%hd4852548647%_
                                        _%tl4852648650%_
                                        _%__splice4899548996%_
                                        _%target4854748578%_
                                        _%tl4854948581%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4852048561%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4852048561%_))))))
                   (let () (declare (not safe)) (_%g4852048561%_)))))))))))
