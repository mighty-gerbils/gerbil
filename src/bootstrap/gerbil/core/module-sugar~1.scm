(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx47424%_)
      (let* ((_%__stx5020850209%_ _%$stx47424%_)
             (_%$%g4742947448%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5020850209%_))))
        (let ((_%__kont5021150212%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont5021350214%_
               (lambda (_%$%g4743447475%_ _%$%g4743547477%_ _%$%g4743647478%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%$%g4743547477%_
                                   (cons (cons _%$%g4743647478%_
                                               _%$%g4743447475%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%$%g4743547477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx5020850209%_)
              (let ((_%$%e4743147500%_ (gx#syntax-e _%__stx5020850209%_)))
                (let ((_%$%tl4743347507%_
                       (let () (declare (not safe)) (##cdr _%$%e4743147500%_)))
                      (_%$%hd4743247504%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4743147500%_))))
                  (if (gx#stx-null? _%$%tl4743347507%_)
                      (_%__kont5021150212%_)
                      (if (gx#stx-pair? _%$%tl4743347507%_)
                          (let ((_%$%e4744047465%_
                                 (gx#syntax-e _%$%tl4743347507%_)))
                            (let ((_%$%tl4744247472%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4744047465%_)))
                                  (_%$%hd4744147469%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4744047465%_))))
                              (_%__kont5021350214%_
                               _%$%tl4744247472%_
                               _%$%hd4744147469%_
                               _%$%hd4743247504%_)))
                          (let () (declare (not safe)) (_%$%g4742947448%_))))))
              (let () (declare (not safe)) (_%$%g4742947448%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx47518%_)
      (let* ((_%__stx5023850239%_ _%$stx47518%_)
             (_%$%g4752347563%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5023850239%_))))
        (let ((_%__kont5024150242%_
               (lambda (_%$%g4752547699%_ _%$%g4752647701%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4752647701%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%$%g4752547699%_ '()))
                                   '())))))
              (_%__kont5024350244%_
               (lambda (_%$%g4753647628%_
                        _%$%g4753747630%_
                        _%$%g4753847631%_
                        _%$%g4753947632%_)
                 (cons _%$%g4753947632%_
                       (cons _%$%g4753847631%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4753747630%_
                                               (foldr (lambda (_%$%g4765347656%_
                                                               _%$%g4765447659%_)
                                                        (cons _%$%g4765347656%_
                                                              _%$%g4765447659%_))
                                                      '()
                                                      _%$%g4753647628%_)))
                                   '()))))))
          (let* ((_%__match5029350294%_
                  (lambda (_%$%e4754047570%_
                           _%$%hd4754147574%_
                           _%$%tl4754247577%_
                           _%$%e4754347580%_
                           _%$%hd4754447584%_
                           _%$%tl4754547587%_
                           _%$%e4754647590%_
                           _%$%hd4754747594%_
                           _%$%tl4754847597%_
                           _%__splice5024550246%_
                           _%$%target4754947600%_
                           _%$%tl4755147603%_)
                    (letrec ((_%$%loop4755247606%_
                              (lambda (_%$%hd4755047610%_ _%$%body4755647613%_)
                                (if (gx#stx-pair? _%$%hd4755047610%_)
                                    (let ((_%$%e4755347615%_
                                           (gx#syntax-e _%$%hd4755047610%_)))
                                      (let ((_%$%lp-tl4755547622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4755347615%_)))
                                            (_%$%lp-hd4755447619%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4755347615%_))))
                                        (_%$%loop4755247606%_
                                         _%$%lp-tl4755547622%_
                                         (cons _%$%lp-hd4755447619%_
                                               _%$%body4755647613%_))))
                                    (let ((_%$%body4755747625%_
                                           (reverse _%$%body4755647613%_)))
                                      (let ((_%$%g4753647628%_
                                             _%$%body4755747625%_)
                                            (_%$%g4753747630%_
                                             _%$%tl4754847597%_)
                                            (_%$%g4753847631%_
                                             _%$%hd4754747594%_)
                                            (_%$%g4753947632%_
                                             _%$%hd4754147574%_))
                                        (if (gx#identifier? _%$%g4753847631%_)
                                            (_%__kont5024350244%_
                                             _%$%g4753647628%_
                                             _%$%g4753747630%_
                                             _%$%g4753847631%_
                                             _%$%g4753947632%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4752347563%_)))))))))
                      (_%$%loop4755247606%_ _%$%target4754947600%_ '()))))
                 (_%__match5026750268%_
                  (lambda (_%$%e4752747669%_
                           _%$%hd4752847673%_
                           _%$%tl4752947676%_
                           _%$%e4753047679%_
                           _%$%hd4753147683%_
                           _%$%tl4753247686%_
                           _%$%e4753347689%_
                           _%$%hd4753447693%_
                           _%$%tl4753547696%_)
                    (let ((_%$%g4752547699%_ _%$%hd4753447693%_)
                          (_%$%g4752647701%_ _%$%hd4753147683%_))
                      (if (gx#identifier? _%$%g4752647701%_)
                          (_%__kont5024150242%_
                           _%$%g4752547699%_
                           _%$%g4752647701%_)
                          (if (gx#stx-pair? _%$%hd4753147683%_)
                              (let ((_%$%e4754647590%_
                                     (gx#syntax-e _%$%hd4753147683%_)))
                                (let ((_%$%tl4754847597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4754647590%_)))
                                      (_%$%hd4754747594%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4754647590%_))))
                                  (if (gx#stx-pair/null? _%$%tl4753247686%_)
                                      (let ((_%__splice5024550246%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4753247686%_
                                              '0)))
                                        (let ((_%$%tl4755147603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5024550246%_
                                                  '1)))
                                              (_%$%target4754947600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5024550246%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4755147603%_)
                                              (_%__match5029350294%_
                                               _%$%e4752747669%_
                                               _%$%hd4752847673%_
                                               _%$%tl4752947676%_
                                               _%$%e4753047679%_
                                               _%$%hd4753147683%_
                                               _%$%tl4753247686%_
                                               _%$%e4754647590%_
                                               _%$%hd4754747594%_
                                               _%$%tl4754847597%_
                                               _%__splice5024550246%_
                                               _%$%target4754947600%_
                                               _%$%tl4755147603%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4752347563%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4752347563%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4752347563%_))))))))
            (if (gx#stx-pair? _%__stx5023850239%_)
                (let ((_%$%e4752747669%_ (gx#syntax-e _%__stx5023850239%_)))
                  (let ((_%$%tl4752947676%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4752747669%_)))
                        (_%$%hd4752847673%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4752747669%_))))
                    (if (gx#stx-pair? _%$%tl4752947676%_)
                        (let ((_%$%e4753047679%_
                               (gx#syntax-e _%$%tl4752947676%_)))
                          (let ((_%$%tl4753247686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4753047679%_)))
                                (_%$%hd4753147683%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4753047679%_))))
                            (if (gx#stx-pair? _%$%tl4753247686%_)
                                (let ((_%$%e4753347689%_
                                       (gx#syntax-e _%$%tl4753247686%_)))
                                  (let ((_%$%tl4753547696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4753347689%_)))
                                        (_%$%hd4753447693%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4753347689%_))))
                                    (if (gx#stx-null? _%$%tl4753547696%_)
                                        (_%__match5026750268%_
                                         _%$%e4752747669%_
                                         _%$%hd4752847673%_
                                         _%$%tl4752947676%_
                                         _%$%e4753047679%_
                                         _%$%hd4753147683%_
                                         _%$%tl4753247686%_
                                         _%$%e4753347689%_
                                         _%$%hd4753447693%_
                                         _%$%tl4753547696%_)
                                        (if (gx#stx-pair? _%$%hd4753147683%_)
                                            (let ((_%$%e4754647590%_
                                                   (gx#syntax-e
                                                    _%$%hd4753147683%_)))
                                              (let ((_%$%tl4754847597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4754647590%_)))
                                                    (_%$%hd4754747594%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4754647590%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4753247686%_)
                                                    (let ((_%__splice5024550246%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4753247686%_
                                                            '0)))
                                                      (let ((_%$%tl4755147603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5024550246%_ '1)))
                    (_%$%target4754947600%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5024550246%_ '0))))
                (if (gx#stx-null? _%$%tl4755147603%_)
                    (_%__match5029350294%_
                     _%$%e4752747669%_
                     _%$%hd4752847673%_
                     _%$%tl4752947676%_
                     _%$%e4753047679%_
                     _%$%hd4753147683%_
                     _%$%tl4753247686%_
                     _%$%e4754647590%_
                     _%$%hd4754747594%_
                     _%$%tl4754847597%_
                     _%__splice5024550246%_
                     _%$%target4754947600%_
                     _%$%tl4755147603%_)
                    (let () (declare (not safe)) (_%$%g4752347563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4752347563%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4752347563%_))))))
                                (if (gx#stx-pair? _%$%hd4753147683%_)
                                    (let ((_%$%e4754647590%_
                                           (gx#syntax-e _%$%hd4753147683%_)))
                                      (let ((_%$%tl4754847597%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4754647590%_)))
                                            (_%$%hd4754747594%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4754647590%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4753247686%_)
                                            (let ((_%__splice5024550246%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4753247686%_
                                                    '0)))
                                              (let ((_%$%tl4755147603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5024550246%_
                                                        '1)))
                                                    (_%$%target4754947600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5024550246%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4755147603%_)
                                                    (_%__match5029350294%_
                                                     _%$%e4752747669%_
                                                     _%$%hd4752847673%_
                                                     _%$%tl4752947676%_
                                                     _%$%e4753047679%_
                                                     _%$%hd4753147683%_
                                                     _%$%tl4753247686%_
                                                     _%$%e4754647590%_
                                                     _%$%hd4754747594%_
                                                     _%$%tl4754847597%_
                                                     _%__splice5024550246%_
                                                     _%$%target4754947600%_
                                                     _%$%tl4755147603%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4752347563%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4752347563%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4752347563%_))))))
                        (let () (declare (not safe)) (_%$%g4752347563%_)))))
                (let () (declare (not safe)) (_%$%g4752347563%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx47721%_)
      (let* ((_%__stx5029650297%_ _%$stx47721%_)
             (_%$%g4772647766%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5029650297%_))))
        (let ((_%__kont5029950300%_
               (lambda (_%$%g4772847902%_ _%$%g4772947904%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4772947904%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%$%g4772847902%_ '()))
                                   '())))))
              (_%__kont5030150302%_
               (lambda (_%$%g4773947831%_
                        _%$%g4774047833%_
                        _%$%g4774147834%_
                        _%$%g4774247835%_)
                 (cons _%$%g4774247835%_
                       (cons _%$%g4774147834%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4774047833%_
                                               (foldr (lambda (_%$%g4785647859%_
                                                               _%$%g4785747862%_)
                                                        (cons _%$%g4785647859%_
                                                              _%$%g4785747862%_))
                                                      '()
                                                      _%$%g4773947831%_)))
                                   '()))))))
          (let* ((_%__match5035150352%_
                  (lambda (_%$%e4774347773%_
                           _%$%hd4774447777%_
                           _%$%tl4774547780%_
                           _%$%e4774647783%_
                           _%$%hd4774747787%_
                           _%$%tl4774847790%_
                           _%$%e4774947793%_
                           _%$%hd4775047797%_
                           _%$%tl4775147800%_
                           _%__splice5030350304%_
                           _%$%target4775247803%_
                           _%$%tl4775447806%_)
                    (letrec ((_%$%loop4775547809%_
                              (lambda (_%$%hd4775347813%_ _%$%body4775947816%_)
                                (if (gx#stx-pair? _%$%hd4775347813%_)
                                    (let ((_%$%e4775647818%_
                                           (gx#syntax-e _%$%hd4775347813%_)))
                                      (let ((_%$%lp-tl4775847825%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4775647818%_)))
                                            (_%$%lp-hd4775747822%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4775647818%_))))
                                        (_%$%loop4775547809%_
                                         _%$%lp-tl4775847825%_
                                         (cons _%$%lp-hd4775747822%_
                                               _%$%body4775947816%_))))
                                    (let ((_%$%body4776047828%_
                                           (reverse _%$%body4775947816%_)))
                                      (let ((_%$%g4773947831%_
                                             _%$%body4776047828%_)
                                            (_%$%g4774047833%_
                                             _%$%tl4775147800%_)
                                            (_%$%g4774147834%_
                                             _%$%hd4775047797%_)
                                            (_%$%g4774247835%_
                                             _%$%hd4774447777%_))
                                        (if (gx#identifier? _%$%g4774147834%_)
                                            (_%__kont5030150302%_
                                             _%$%g4773947831%_
                                             _%$%g4774047833%_
                                             _%$%g4774147834%_
                                             _%$%g4774247835%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4772647766%_)))))))))
                      (_%$%loop4775547809%_ _%$%target4775247803%_ '()))))
                 (_%__match5032550326%_
                  (lambda (_%$%e4773047872%_
                           _%$%hd4773147876%_
                           _%$%tl4773247879%_
                           _%$%e4773347882%_
                           _%$%hd4773447886%_
                           _%$%tl4773547889%_
                           _%$%e4773647892%_
                           _%$%hd4773747896%_
                           _%$%tl4773847899%_)
                    (let ((_%$%g4772847902%_ _%$%hd4773747896%_)
                          (_%$%g4772947904%_ _%$%hd4773447886%_))
                      (if (gx#identifier? _%$%g4772947904%_)
                          (_%__kont5029950300%_
                           _%$%g4772847902%_
                           _%$%g4772947904%_)
                          (if (gx#stx-pair? _%$%hd4773447886%_)
                              (let ((_%$%e4774947793%_
                                     (gx#syntax-e _%$%hd4773447886%_)))
                                (let ((_%$%tl4775147800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4774947793%_)))
                                      (_%$%hd4775047797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4774947793%_))))
                                  (if (gx#stx-pair/null? _%$%tl4773547889%_)
                                      (let ((_%__splice5030350304%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4773547889%_
                                              '0)))
                                        (let ((_%$%tl4775447806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5030350304%_
                                                  '1)))
                                              (_%$%target4775247803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5030350304%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4775447806%_)
                                              (_%__match5035150352%_
                                               _%$%e4773047872%_
                                               _%$%hd4773147876%_
                                               _%$%tl4773247879%_
                                               _%$%e4773347882%_
                                               _%$%hd4773447886%_
                                               _%$%tl4773547889%_
                                               _%$%e4774947793%_
                                               _%$%hd4775047797%_
                                               _%$%tl4775147800%_
                                               _%__splice5030350304%_
                                               _%$%target4775247803%_
                                               _%$%tl4775447806%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4772647766%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4772647766%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4772647766%_))))))))
            (if (gx#stx-pair? _%__stx5029650297%_)
                (let ((_%$%e4773047872%_ (gx#syntax-e _%__stx5029650297%_)))
                  (let ((_%$%tl4773247879%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4773047872%_)))
                        (_%$%hd4773147876%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4773047872%_))))
                    (if (gx#stx-pair? _%$%tl4773247879%_)
                        (let ((_%$%e4773347882%_
                               (gx#syntax-e _%$%tl4773247879%_)))
                          (let ((_%$%tl4773547889%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4773347882%_)))
                                (_%$%hd4773447886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4773347882%_))))
                            (if (gx#stx-pair? _%$%tl4773547889%_)
                                (let ((_%$%e4773647892%_
                                       (gx#syntax-e _%$%tl4773547889%_)))
                                  (let ((_%$%tl4773847899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4773647892%_)))
                                        (_%$%hd4773747896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4773647892%_))))
                                    (if (gx#stx-null? _%$%tl4773847899%_)
                                        (_%__match5032550326%_
                                         _%$%e4773047872%_
                                         _%$%hd4773147876%_
                                         _%$%tl4773247879%_
                                         _%$%e4773347882%_
                                         _%$%hd4773447886%_
                                         _%$%tl4773547889%_
                                         _%$%e4773647892%_
                                         _%$%hd4773747896%_
                                         _%$%tl4773847899%_)
                                        (if (gx#stx-pair? _%$%hd4773447886%_)
                                            (let ((_%$%e4774947793%_
                                                   (gx#syntax-e
                                                    _%$%hd4773447886%_)))
                                              (let ((_%$%tl4775147800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4774947793%_)))
                                                    (_%$%hd4775047797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4774947793%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4773547889%_)
                                                    (let ((_%__splice5030350304%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4773547889%_
                                                            '0)))
                                                      (let ((_%$%tl4775447806%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5030350304%_ '1)))
                    (_%$%target4775247803%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5030350304%_ '0))))
                (if (gx#stx-null? _%$%tl4775447806%_)
                    (_%__match5035150352%_
                     _%$%e4773047872%_
                     _%$%hd4773147876%_
                     _%$%tl4773247879%_
                     _%$%e4773347882%_
                     _%$%hd4773447886%_
                     _%$%tl4773547889%_
                     _%$%e4774947793%_
                     _%$%hd4775047797%_
                     _%$%tl4775147800%_
                     _%__splice5030350304%_
                     _%$%target4775247803%_
                     _%$%tl4775447806%_)
                    (let () (declare (not safe)) (_%$%g4772647766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4772647766%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4772647766%_))))))
                                (if (gx#stx-pair? _%$%hd4773447886%_)
                                    (let ((_%$%e4774947793%_
                                           (gx#syntax-e _%$%hd4773447886%_)))
                                      (let ((_%$%tl4775147800%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4774947793%_)))
                                            (_%$%hd4775047797%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4774947793%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4773547889%_)
                                            (let ((_%__splice5030350304%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4773547889%_
                                                    '0)))
                                              (let ((_%$%tl4775447806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5030350304%_
                                                        '1)))
                                                    (_%$%target4775247803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5030350304%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4775447806%_)
                                                    (_%__match5035150352%_
                                                     _%$%e4773047872%_
                                                     _%$%hd4773147876%_
                                                     _%$%tl4773247879%_
                                                     _%$%e4773347882%_
                                                     _%$%hd4773447886%_
                                                     _%$%tl4773547889%_
                                                     _%$%e4774947793%_
                                                     _%$%hd4775047797%_
                                                     _%$%tl4775147800%_
                                                     _%__splice5030350304%_
                                                     _%$%target4775247803%_
                                                     _%$%tl4775447806%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4772647766%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4772647766%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4772647766%_))))))
                        (let () (declare (not safe)) (_%$%g4772647766%_)))))
                (let () (declare (not safe)) (_%$%g4772647766%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx47924%_)
      (let* ((_%__stx5035450355%_ _%$stx47924%_)
             (_%$%g4792947969%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5035450355%_))))
        (let ((_%__kont5035750358%_
               (lambda (_%$%g4793148105%_ _%$%g4793248107%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g4793248107%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%$%g4793148105%_ '()))
                                   '())))))
              (_%__kont5035950360%_
               (lambda (_%$%g4794248034%_
                        _%$%g4794348036%_
                        _%$%g4794448037%_
                        _%$%g4794548038%_)
                 (cons _%$%g4794548038%_
                       (cons _%$%g4794448037%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g4794348036%_
                                               (foldr (lambda (_%$%g4805948062%_
                                                               _%$%g4806048065%_)
                                                        (cons _%$%g4805948062%_
                                                              _%$%g4806048065%_))
                                                      '()
                                                      _%$%g4794248034%_)))
                                   '()))))))
          (let* ((_%__match5040950410%_
                  (lambda (_%$%e4794647976%_
                           _%$%hd4794747980%_
                           _%$%tl4794847983%_
                           _%$%e4794947986%_
                           _%$%hd4795047990%_
                           _%$%tl4795147993%_
                           _%$%e4795247996%_
                           _%$%hd4795348000%_
                           _%$%tl4795448003%_
                           _%__splice5036150362%_
                           _%$%target4795548006%_
                           _%$%tl4795748009%_)
                    (letrec ((_%$%loop4795848012%_
                              (lambda (_%$%hd4795648016%_ _%$%body4796248019%_)
                                (if (gx#stx-pair? _%$%hd4795648016%_)
                                    (let ((_%$%e4795948021%_
                                           (gx#syntax-e _%$%hd4795648016%_)))
                                      (let ((_%$%lp-tl4796148028%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4795948021%_)))
                                            (_%$%lp-hd4796048025%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4795948021%_))))
                                        (_%$%loop4795848012%_
                                         _%$%lp-tl4796148028%_
                                         (cons _%$%lp-hd4796048025%_
                                               _%$%body4796248019%_))))
                                    (let ((_%$%body4796348031%_
                                           (reverse _%$%body4796248019%_)))
                                      (let ((_%$%g4794248034%_
                                             _%$%body4796348031%_)
                                            (_%$%g4794348036%_
                                             _%$%tl4795448003%_)
                                            (_%$%g4794448037%_
                                             _%$%hd4795348000%_)
                                            (_%$%g4794548038%_
                                             _%$%hd4794747980%_))
                                        (if (gx#identifier? _%$%g4794448037%_)
                                            (_%__kont5035950360%_
                                             _%$%g4794248034%_
                                             _%$%g4794348036%_
                                             _%$%g4794448037%_
                                             _%$%g4794548038%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4792947969%_)))))))))
                      (_%$%loop4795848012%_ _%$%target4795548006%_ '()))))
                 (_%__match5038350384%_
                  (lambda (_%$%e4793348075%_
                           _%$%hd4793448079%_
                           _%$%tl4793548082%_
                           _%$%e4793648085%_
                           _%$%hd4793748089%_
                           _%$%tl4793848092%_
                           _%$%e4793948095%_
                           _%$%hd4794048099%_
                           _%$%tl4794148102%_)
                    (let ((_%$%g4793148105%_ _%$%hd4794048099%_)
                          (_%$%g4793248107%_ _%$%hd4793748089%_))
                      (if (gx#identifier? _%$%g4793248107%_)
                          (_%__kont5035750358%_
                           _%$%g4793148105%_
                           _%$%g4793248107%_)
                          (if (gx#stx-pair? _%$%hd4793748089%_)
                              (let ((_%$%e4795247996%_
                                     (gx#syntax-e _%$%hd4793748089%_)))
                                (let ((_%$%tl4795448003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4795247996%_)))
                                      (_%$%hd4795348000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4795247996%_))))
                                  (if (gx#stx-pair/null? _%$%tl4793848092%_)
                                      (let ((_%__splice5036150362%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4793848092%_
                                              '0)))
                                        (let ((_%$%tl4795748009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5036150362%_
                                                  '1)))
                                              (_%$%target4795548006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5036150362%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4795748009%_)
                                              (_%__match5040950410%_
                                               _%$%e4793348075%_
                                               _%$%hd4793448079%_
                                               _%$%tl4793548082%_
                                               _%$%e4793648085%_
                                               _%$%hd4793748089%_
                                               _%$%tl4793848092%_
                                               _%$%e4795247996%_
                                               _%$%hd4795348000%_
                                               _%$%tl4795448003%_
                                               _%__splice5036150362%_
                                               _%$%target4795548006%_
                                               _%$%tl4795748009%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4792947969%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4792947969%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4792947969%_))))))))
            (if (gx#stx-pair? _%__stx5035450355%_)
                (let ((_%$%e4793348075%_ (gx#syntax-e _%__stx5035450355%_)))
                  (let ((_%$%tl4793548082%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4793348075%_)))
                        (_%$%hd4793448079%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4793348075%_))))
                    (if (gx#stx-pair? _%$%tl4793548082%_)
                        (let ((_%$%e4793648085%_
                               (gx#syntax-e _%$%tl4793548082%_)))
                          (let ((_%$%tl4793848092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4793648085%_)))
                                (_%$%hd4793748089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4793648085%_))))
                            (if (gx#stx-pair? _%$%tl4793848092%_)
                                (let ((_%$%e4793948095%_
                                       (gx#syntax-e _%$%tl4793848092%_)))
                                  (let ((_%$%tl4794148102%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4793948095%_)))
                                        (_%$%hd4794048099%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4793948095%_))))
                                    (if (gx#stx-null? _%$%tl4794148102%_)
                                        (_%__match5038350384%_
                                         _%$%e4793348075%_
                                         _%$%hd4793448079%_
                                         _%$%tl4793548082%_
                                         _%$%e4793648085%_
                                         _%$%hd4793748089%_
                                         _%$%tl4793848092%_
                                         _%$%e4793948095%_
                                         _%$%hd4794048099%_
                                         _%$%tl4794148102%_)
                                        (if (gx#stx-pair? _%$%hd4793748089%_)
                                            (let ((_%$%e4795247996%_
                                                   (gx#syntax-e
                                                    _%$%hd4793748089%_)))
                                              (let ((_%$%tl4795448003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4795247996%_)))
                                                    (_%$%hd4795348000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4795247996%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4793848092%_)
                                                    (let ((_%__splice5036150362%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4793848092%_
                                                            '0)))
                                                      (let ((_%$%tl4795748009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5036150362%_ '1)))
                    (_%$%target4795548006%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5036150362%_ '0))))
                (if (gx#stx-null? _%$%tl4795748009%_)
                    (_%__match5040950410%_
                     _%$%e4793348075%_
                     _%$%hd4793448079%_
                     _%$%tl4793548082%_
                     _%$%e4793648085%_
                     _%$%hd4793748089%_
                     _%$%tl4793848092%_
                     _%$%e4795247996%_
                     _%$%hd4795348000%_
                     _%$%tl4795448003%_
                     _%__splice5036150362%_
                     _%$%target4795548006%_
                     _%$%tl4795748009%_)
                    (let () (declare (not safe)) (_%$%g4792947969%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4792947969%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4792947969%_))))))
                                (if (gx#stx-pair? _%$%hd4793748089%_)
                                    (let ((_%$%e4795247996%_
                                           (gx#syntax-e _%$%hd4793748089%_)))
                                      (let ((_%$%tl4795448003%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4795247996%_)))
                                            (_%$%hd4795348000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4795247996%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4793848092%_)
                                            (let ((_%__splice5036150362%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4793848092%_
                                                    '0)))
                                              (let ((_%$%tl4795748009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5036150362%_
                                                        '1)))
                                                    (_%$%target4795548006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5036150362%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4795748009%_)
                                                    (_%__match5040950410%_
                                                     _%$%e4793348075%_
                                                     _%$%hd4793448079%_
                                                     _%$%tl4793548082%_
                                                     _%$%e4793648085%_
                                                     _%$%hd4793748089%_
                                                     _%$%tl4793848092%_
                                                     _%$%e4795247996%_
                                                     _%$%hd4795348000%_
                                                     _%$%tl4795448003%_
                                                     _%__splice5036150362%_
                                                     _%$%target4795548006%_
                                                     _%$%tl4795748009%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4792947969%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4792947969%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g4792947969%_))))))
                        (let () (declare (not safe)) (_%$%g4792947969%_)))))
                (let () (declare (not safe)) (_%$%g4792947969%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx48127%_)
       (let* ((_%$%g4813048150%_
               (lambda (_%$%g4813148146%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4813148146%_)))
              (_%$%g4812948219%_
               (lambda (_%$%g4813148154%_)
                 (if (gx#stx-pair? _%$%g4813148154%_)
                     (let ((_%$%e4813348157%_ (gx#syntax-e _%$%g4813148154%_)))
                       (let ((_%$%hd4813448161%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4813348157%_)))
                             (_%$%tl4813548164%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4813348157%_))))
                         (if (gx#stx-pair/null? _%$%tl4813548164%_)
                             (let ((_g50504_
                                    (gx#syntax-split-splice
                                     _%$%tl4813548164%_
                                     '0)))
                               (begin
                                 (let ((_g50505_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50504_)
                                              (##values-length _g50504_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50505_ 2)))
                                       (error "Context expects 2 values"
                                              _g50505_)))
                                 (let ((_%$%target4813648167%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50504_ 0)))
                                       (_%$%tl4813848170%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50504_ 1))))
                                   (if (gx#stx-null? _%$%tl4813848170%_)
                                       (letrec ((_%$%loop4813948173%_
                                                 (lambda (_%$%hd4813748177%_
                                                          _%$%body4814348180%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd4813748177%_)
                                                       (let ((_%$%e4814048182%_
                                                              (gx#syntax-e
                                                               _%$%hd4813748177%_)))
                                                         (let ((_%$%lp-hd4814148186%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4814048182%_)))
                       (_%$%lp-tl4814248189%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4814048182%_))))
                   (_%$%loop4813948173%_
                    _%$%lp-tl4814248189%_
                    (cons _%$%lp-hd4814148186%_ _%$%body4814348180%_))))
               (let ((_%$%body4814448192%_ (reverse _%$%body4814348180%_)))
                 (cons 'phi:
                       (cons '1
                             (foldr (lambda (_%$%g4821048213%_
                                             _%$%g4821148216%_)
                                      (cons _%$%g4821048213%_
                                            _%$%g4821148216%_))
                                    '()
                                    _%$%body4814448192%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop4813948173%_
                                          _%$%target4813648167%_
                                          '()))
                                       (_%$%g4813048150%_
                                        _%$%g4813148154%_)))))
                             (_%$%g4813048150%_ _%$%g4813148154%_))))
                     (_%$%g4813048150%_ _%$%g4813148154%_)))))
         (_%$%g4812948219%_ _%stx48127%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx48224%_)
       (let* ((_%$%g4822748247%_
               (lambda (_%$%g4822848243%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4822848243%_)))
              (_%$%g4822648316%_
               (lambda (_%$%g4822848251%_)
                 (if (gx#stx-pair? _%$%g4822848251%_)
                     (let ((_%$%e4823048254%_ (gx#syntax-e _%$%g4822848251%_)))
                       (let ((_%$%hd4823148258%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4823048254%_)))
                             (_%$%tl4823248261%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4823048254%_))))
                         (if (gx#stx-pair/null? _%$%tl4823248261%_)
                             (let ((_g50506_
                                    (gx#syntax-split-splice
                                     _%$%tl4823248261%_
                                     '0)))
                               (begin
                                 (let ((_g50507_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g50506_)
                                              (##values-length _g50506_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g50507_ 2)))
                                       (error "Context expects 2 values"
                                              _g50507_)))
                                 (let ((_%$%target4823348264%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50506_ 0)))
                                       (_%$%tl4823548267%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g50506_ 1))))
                                   (if (gx#stx-null? _%$%tl4823548267%_)
                                       (letrec ((_%$%loop4823648270%_
                                                 (lambda (_%$%hd4823448274%_
                                                          _%$%body4824048277%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd4823448274%_)
                                                       (let ((_%$%e4823748279%_
                                                              (gx#syntax-e
                                                               _%$%hd4823448274%_)))
                                                         (let ((_%$%lp-hd4823848283%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e4823748279%_)))
                       (_%$%lp-tl4823948286%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e4823748279%_))))
                   (_%$%loop4823648270%_
                    _%$%lp-tl4823948286%_
                    (cons _%$%lp-hd4823848283%_ _%$%body4824048277%_))))
               (let ((_%$%body4824148289%_ (reverse _%$%body4824048277%_)))
                 (cons 'phi:
                       (cons '-1
                             (foldr (lambda (_%$%g4830748310%_
                                             _%$%g4830848313%_)
                                      (cons _%$%g4830748310%_
                                            _%$%g4830848313%_))
                                    '()
                                    _%$%body4824148289%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop4823648270%_
                                          _%$%target4823348264%_
                                          '()))
                                       (_%$%g4822748247%_
                                        _%$%g4822848251%_)))))
                             (_%$%g4822748247%_ _%$%g4822848251%_))))
                     (_%$%g4822748247%_ _%$%g4822848251%_)))))
         (_%$%g4822648316%_ _%stx48224%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx48321%_)
       (let* ((_%$%g4832448348%_
               (lambda (_%$%g4832548344%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4832548344%_)))
              (_%$%g4832348474%_
               (lambda (_%$%g4832548352%_)
                 (if (gx#stx-pair? _%$%g4832548352%_)
                     (let ((_%$%e4832848355%_ (gx#syntax-e _%$%g4832548352%_)))
                       (let ((_%$%hd4832948359%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4832848355%_)))
                             (_%$%tl4833048362%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4832848355%_))))
                         (if (gx#stx-pair? _%$%tl4833048362%_)
                             (let ((_%$%e4833148365%_
                                    (gx#syntax-e _%$%tl4833048362%_)))
                               (let ((_%$%hd4833248369%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4833148365%_)))
                                     (_%$%tl4833348372%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4833148365%_))))
                                 (if (gx#stx-pair/null? _%$%tl4833348372%_)
                                     (let ((_g50508_
                                            (gx#syntax-split-splice
                                             _%$%tl4833348372%_
                                             '0)))
                                       (begin
                                         (let ((_g50509_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50508_)
                                                      (##values-length
                                                       _g50508_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50509_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50509_)))
                                         (let ((_%$%target4833448375%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50508_ 0)))
                                               (_%$%tl4833648378%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50508_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4833648378%_)
                                               (letrec ((_%$%loop4833748381%_
                                                         (lambda (_%$%hd4833548385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4834148388%_)
                   (if (gx#stx-pair? _%$%hd4833548385%_)
                       (let ((_%$%e4833848390%_
                              (gx#syntax-e _%$%hd4833548385%_)))
                         (let ((_%$%lp-hd4833948394%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4833848390%_)))
                               (_%$%lp-tl4834048397%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4833848390%_))))
                           (_%$%loop4833748381%_
                            _%$%lp-tl4834048397%_
                            (cons _%$%lp-hd4833948394%_ _%$%id4834148388%_))))
                       (let ((_%$%id4834248400%_ (reverse _%$%id4834148388%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4842248425%_
                                              _%$%g4842348428%_)
                                       (cons _%$%g4842248425%_
                                             _%$%g4842348428%_))
                                     '()
                                     _%$%id4834248400%_))
                             (let* ((_%keys48439%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4843048433%_
                                                      _%$%g4843148436%_)
                                               (cons _%$%g4843048433%_
                                                     _%$%g4843148436%_))
                                             '()
                                             _%$%id4834248400%_)))
                                    (_%keytab48450%_
                                     (let ((_%ht48442%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4844448446%_)
                                          (hash-put!
                                           _%ht48442%_
                                           _%$%g4844448446%_
                                           '#t))
                                        _%keys48439%_)
                                       _%ht48442%_))
                                    (_%imports48453%_
                                     (gx#core-expand-import-source
                                      _%$%hd4833248369%_))
                                    (_%fold-e48469%_
                                     (letrec ((_%fold-e48456%_
                                               (lambda (_%in48459%_ _%r48461%_)
                                                 (if (gx#module-import?
                                                      _%in48459%_)
                                                     (if (hash-get
                                                          _%keytab48450%_
                                                          (gx#module-import-name
                                                           _%in48459%_))
                                                         (cons _%in48459%_
                                                               _%r48461%_)
                                                         _%r48461%_)
                                                     (if (gx#import-set?
                                                          _%in48459%_)
                                                         (foldl _%fold-e48456%_
                                                                _%r48461%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in48459%_))
                 _%r48461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48456%_)))
                               (cons 'begin:
                                     (foldl _%fold-e48469%_
                                            '()
                                            _%imports48453%_)))
                             (_%$%g4832448348%_ _%$%g4832548352%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4833748381%_
                                                  _%$%target4833448375%_
                                                  '()))
                                               (_%$%g4832448348%_
                                                _%$%g4832548352%_)))))
                                     (_%$%g4832448348%_ _%$%g4832548352%_))))
                             (_%$%g4832448348%_ _%$%g4832548352%_))))
                     (_%$%g4832448348%_ _%$%g4832548352%_)))))
         (_%$%g4832348474%_ _%stx48321%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx48479%_)
       (let* ((_%$%g4848248506%_
               (lambda (_%$%g4848348502%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4848348502%_)))
              (_%$%g4848148632%_
               (lambda (_%$%g4848348510%_)
                 (if (gx#stx-pair? _%$%g4848348510%_)
                     (let ((_%$%e4848648513%_ (gx#syntax-e _%$%g4848348510%_)))
                       (let ((_%$%hd4848748517%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4848648513%_)))
                             (_%$%tl4848848520%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4848648513%_))))
                         (if (gx#stx-pair? _%$%tl4848848520%_)
                             (let ((_%$%e4848948523%_
                                    (gx#syntax-e _%$%tl4848848520%_)))
                               (let ((_%$%hd4849048527%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4848948523%_)))
                                     (_%$%tl4849148530%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4848948523%_))))
                                 (if (gx#stx-pair/null? _%$%tl4849148530%_)
                                     (let ((_g50510_
                                            (gx#syntax-split-splice
                                             _%$%tl4849148530%_
                                             '0)))
                                       (begin
                                         (let ((_g50511_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50510_)
                                                      (##values-length
                                                       _g50510_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50511_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50511_)))
                                         (let ((_%$%target4849248533%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50510_ 0)))
                                               (_%$%tl4849448536%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50510_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4849448536%_)
                                               (letrec ((_%$%loop4849548539%_
                                                         (lambda (_%$%hd4849348543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4849948546%_)
                   (if (gx#stx-pair? _%$%hd4849348543%_)
                       (let ((_%$%e4849648548%_
                              (gx#syntax-e _%$%hd4849348543%_)))
                         (let ((_%$%lp-hd4849748552%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4849648548%_)))
                               (_%$%lp-tl4849848555%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4849648548%_))))
                           (_%$%loop4849548539%_
                            _%$%lp-tl4849848555%_
                            (cons _%$%lp-hd4849748552%_ _%$%id4849948546%_))))
                       (let ((_%$%id4850048558%_ (reverse _%$%id4849948546%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4858048583%_
                                              _%$%g4858148586%_)
                                       (cons _%$%g4858048583%_
                                             _%$%g4858148586%_))
                                     '()
                                     _%$%id4850048558%_))
                             (let* ((_%keys48597%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4858848591%_
                                                      _%$%g4858948594%_)
                                               (cons _%$%g4858848591%_
                                                     _%$%g4858948594%_))
                                             '()
                                             _%$%id4850048558%_)))
                                    (_%keytab48608%_
                                     (let ((_%ht48600%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4860248604%_)
                                          (hash-put!
                                           _%ht48600%_
                                           _%$%g4860248604%_
                                           '#t))
                                        _%keys48597%_)
                                       _%ht48600%_))
                                    (_%imports48611%_
                                     (gx#core-expand-import-source
                                      _%$%hd4849048527%_))
                                    (_%fold-e48627%_
                                     (letrec ((_%fold-e48614%_
                                               (lambda (_%in48617%_ _%r48619%_)
                                                 (if (gx#module-import?
                                                      _%in48617%_)
                                                     (if (hash-get
                                                          _%keytab48608%_
                                                          (gx#module-import-name
                                                           _%in48617%_))
                                                         _%r48619%_
                                                         (cons _%in48617%_
                                                               _%r48619%_))
                                                     (if (gx#import-set?
                                                          _%in48617%_)
                                                         (foldl _%fold-e48614%_
                                                                _%r48619%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in48617%_))
                 (cons _%in48617%_ _%r48619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48614%_)))
                               (cons 'begin:
                                     (foldl _%fold-e48627%_
                                            '()
                                            _%imports48611%_)))
                             (_%$%g4848248506%_ _%$%g4848348510%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4849548539%_
                                                  _%$%target4849248533%_
                                                  '()))
                                               (_%$%g4848248506%_
                                                _%$%g4848348510%_)))))
                                     (_%$%g4848248506%_ _%$%g4848348510%_))))
                             (_%$%g4848248506%_ _%$%g4848348510%_))))
                     (_%$%g4848248506%_ _%$%g4848348510%_)))))
         (_%$%g4848148632%_ _%stx48479%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in48684%_ _%rename48686%_)
      (gx#make-module-import
       (gx#module-import-source _%in48684%_)
       _%rename48686%_
       (gx#module-import-phi _%in48684%_)
       (gx#module-import-weak? _%in48684%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name48637%_ _%pre48639%_)
      (let* ((_%$%name4864048648%_ _%name48637%_)
             (_%$%else4864248660%_
              (lambda () (make-symbol _%pre48639%_ _%name48637%_)))
             (_%$%K4864448668%_
              (lambda (_%mark48664%_ _%id48666%_)
                (cons (make-symbol _%pre48639%_ _%id48666%_) _%mark48664%_))))
        (if (pair? _%$%name4864048648%_)
            (let ((_%$%hd4864548672%_
                   (let () (declare (not safe)) (##car _%$%name4864048648%_)))
                  (_%$%tl4864648675%_
                   (let () (declare (not safe)) (##cdr _%$%name4864048648%_))))
              (let* ((_%id48678%_ _%$%hd4864548672%_)
                     (_%mark48681%_ _%$%tl4864648675%_))
                (_%$%K4864448668%_ _%mark48681%_ _%id48678%_)))
            (_%$%else4864248660%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx48688%_)
       (let* ((_%$%g4869148724%_
               (lambda (_%$%g4869248720%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4869248720%_)))
              (_%$%g4869048915%_
               (lambda (_%$%g4869248728%_)
                 (if (gx#stx-pair? _%$%g4869248728%_)
                     (let ((_%$%e4869648731%_ (gx#syntax-e _%$%g4869248728%_)))
                       (let ((_%$%hd4869748735%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4869648731%_)))
                             (_%$%tl4869848738%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4869648731%_))))
                         (if (gx#stx-pair? _%$%tl4869848738%_)
                             (let ((_%$%e4869948741%_
                                    (gx#syntax-e _%$%tl4869848738%_)))
                               (let ((_%$%hd4870048745%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4869948741%_)))
                                     (_%$%tl4870148748%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4869948741%_))))
                                 (if (gx#stx-pair/null? _%$%tl4870148748%_)
                                     (let ((_g50512_
                                            (gx#syntax-split-splice
                                             _%$%tl4870148748%_
                                             '0)))
                                       (begin
                                         (let ((_g50513_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50512_)
                                                      (##values-length
                                                       _g50512_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50513_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50513_)))
                                         (let ((_%$%target4870248751%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50512_ 0)))
                                               (_%$%tl4870448754%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50512_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4870448754%_)
                                               (letrec ((_%$%loop4870548757%_
                                                         (lambda (_%$%hd4870348761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id4870948764%_
                          _%$%id4871048765%_)
                   (if (gx#stx-pair? _%$%hd4870348761%_)
                       (let ((_%$%e4870648767%_
                              (gx#syntax-e _%$%hd4870348761%_)))
                         (let ((_%$%lp-hd4870748771%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4870648767%_)))
                               (_%$%lp-tl4870848774%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4870648767%_))))
                           (if (gx#stx-pair? _%$%lp-hd4870748771%_)
                               (let ((_%$%e4871348777%_
                                      (gx#syntax-e _%$%lp-hd4870748771%_)))
                                 (let ((_%$%hd4871448781%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4871348777%_)))
                                       (_%$%tl4871548784%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4871348777%_))))
                                   (if (gx#stx-pair? _%$%tl4871548784%_)
                                       (let ((_%$%e4871648787%_
                                              (gx#syntax-e
                                               _%$%tl4871548784%_)))
                                         (let ((_%$%hd4871748791%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4871648787%_)))
                                               (_%$%tl4871848794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4871648787%_))))
                                           (if (gx#stx-null?
                                                _%$%tl4871848794%_)
                                               (_%$%loop4870548757%_
                                                _%$%lp-tl4870848774%_
                                                (cons _%$%hd4871748791%_
                                                      _%$%new-id4870948764%_)
                                                (cons _%$%hd4871448781%_
                                                      _%$%id4871048765%_))
                                               (_%$%g4869148724%_
                                                _%$%g4869248728%_))))
                                       (_%$%g4869148724%_ _%$%g4869248728%_))))
                               (_%$%g4869148724%_ _%$%g4869248728%_))))
                       (let ((_%$%new-id4871148797%_
                              (reverse _%$%new-id4870948764%_))
                             (_%$%id4871248799%_ (reverse _%$%id4871048765%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g4882248825%_
                                                   _%$%g4882348828%_)
                                            (cons _%$%g4882248825%_
                                                  _%$%g4882348828%_))
                                          '()
                                          _%$%id4871248799%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g4883048833%_
                                                   _%$%g4883148836%_)
                                            (cons _%$%g4883048833%_
                                                  _%$%g4883148836%_))
                                          '()
                                          _%$%new-id4871148797%_)))
                             (let* ((_%keytab48839%_ (make-hash-table))
                                    (_%found48842%_ (make-hash-table))
                                    (_%_48865%_
                                     (for-each
                                      (lambda (_%id48845%_ _%new-id48847%_)
                                        (hash-put!
                                         _%keytab48839%_
                                         (gx#core-identifier-key _%id48845%_)
                                         (gx#core-identifier-key
                                          _%new-id48847%_)))
                                      (foldr (lambda (_%$%g4884848851%_
                                                      _%$%g4884948854%_)
                                               (cons _%$%g4884848851%_
                                                     _%$%g4884948854%_))
                                             '()
                                             _%$%id4871248799%_)
                                      (foldr (lambda (_%$%g4885648859%_
                                                      _%$%g4885748862%_)
                                               (cons _%$%g4885648859%_
                                                     _%$%g4885748862%_))
                                             '()
                                             _%$%new-id4871148797%_)))
                                    (_%imports48868%_
                                     (gx#core-expand-import-source
                                      _%$%hd4870048745%_))
                                    (_%fold-e48896%_
                                     (letrec ((_%fold-e48871%_
                                               (lambda (_%in48874%_ _%r48876%_)
                                                 (if (gx#module-import?
                                                      _%in48874%_)
                                                     (let* ((_%name48880%_
                                                             (gx#module-import-name
                                                              _%in48874%_))
                                                            (_%$e48883%_
                                                             (hash-get
                                                              _%keytab48839%_
                                                              _%name48880%_)))
                                                       (if _%$e48883%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found48842%_
                                                              _%name48880%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-import-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in48874%_
                            _%$e48883%_)
                           _%r48876%_))
                   (cons _%in48874%_ _%r48876%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%in48874%_)
                                                         (foldl _%fold-e48871%_
                                                                _%r48876%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in48874%_))
                 (cons _%in48874%_ _%r48876%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e48871%_))
                                    (_%new-imports48899%_
                                     (foldl _%fold-e48896%_
                                            '()
                                            _%imports48868%_)))
                               (for-each
                                (lambda (_%id48904%_)
                                  (if (hash-get
                                       _%found48842%_
                                       (gx#core-identifier-key _%id48904%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the import set"
                                       _%stx48688%_
                                       _%id48904%_)))
                                (foldr (lambda (_%$%g4890648909%_
                                                _%$%g4890748912%_)
                                         (cons _%$%g4890648909%_
                                               _%$%g4890748912%_))
                                       '()
                                       _%$%id4871248799%_))
                               (cons 'begin: _%new-imports48899%_))
                             (_%$%g4869148724%_ _%$%g4869248728%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4870548757%_
                                                  _%$%target4870248751%_
                                                  '()
                                                  '()))
                                               (_%$%g4869148724%_
                                                _%$%g4869248728%_)))))
                                     (_%$%g4869148724%_ _%$%g4869248728%_))))
                             (_%$%g4869148724%_ _%$%g4869248728%_))))
                     (_%$%g4869148724%_ _%$%g4869248728%_)))))
         (_%$%g4869048915%_ _%stx48688%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx48920%_)
       (let* ((_%$%g4892348941%_
               (lambda (_%$%g4892448937%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4892448937%_)))
              (_%$%g4892249026%_
               (lambda (_%$%g4892448945%_)
                 (if (gx#stx-pair? _%$%g4892448945%_)
                     (let ((_%$%e4892748948%_ (gx#syntax-e _%$%g4892448945%_)))
                       (let ((_%$%hd4892848952%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4892748948%_)))
                             (_%$%tl4892948955%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4892748948%_))))
                         (if (gx#stx-pair? _%$%tl4892948955%_)
                             (let ((_%$%e4893048958%_
                                    (gx#syntax-e _%$%tl4892948955%_)))
                               (let ((_%$%hd4893148962%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4893048958%_)))
                                     (_%$%tl4893248965%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4893048958%_))))
                                 (if (gx#stx-pair? _%$%tl4893248965%_)
                                     (let ((_%$%e4893348968%_
                                            (gx#syntax-e _%$%tl4893248965%_)))
                                       (let ((_%$%hd4893448972%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4893348968%_)))
                                             (_%$%tl4893548975%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4893348968%_))))
                                         (if (gx#stx-null? _%$%tl4893548975%_)
                                             (if (gx#identifier?
                                                  _%$%hd4893448972%_)
                                                 (let* ((_%pre48996%_
                                                         (gx#stx-e
                                                          _%$%hd4893448972%_))
                                                        (_%imports48999%_
                                                         (gx#core-expand-import-source
                                                          _%$%hd4893148962%_))
                                                        (_%rename-e49005%_
                                                         (lambda (_%name49002%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name49002%_
                                                            _%pre48996%_)))
                                                        (_%fold-e49021%_
                                                         (letrec ((_%fold-e49008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%in49011%_ _%r49013%_)
                             (if (gx#module-import? _%in49011%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                        _%in49011%_
                                        (_%rename-e49005%_
                                         (gx#module-import-name _%in49011%_)))
                                       _%r49013%_)
                                 (if (gx#import-set? _%in49011%_)
                                     (foldl _%fold-e49008%_
                                            _%r49013%_
                                            (gx#import-set-imports
                                             _%in49011%_))
                                     (cons _%in49011%_ _%r49013%_))))))
                   _%fold-e49008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e49021%_
                                                                '()
                                                                _%imports48999%_)))
                                                 (_%$%g4892348941%_
                                                  _%$%g4892448945%_))
                                             (_%$%g4892348941%_
                                              _%$%g4892448945%_))))
                                     (_%$%g4892348941%_ _%$%g4892448945%_))))
                             (_%$%g4892348941%_ _%$%g4892448945%_))))
                     (_%$%g4892348941%_ _%$%g4892448945%_)))))
         (_%$%g4892249026%_ _%stx48920%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx49030%_)
       (letrec ((_%flatten49033%_
                 (lambda (_%list-of-lists49284%_)
                   (foldr (lambda (_%v49287%_ _%acc49289%_)
                            (if (null? _%v49287%_)
                                _%acc49289%_
                                (if (pair? _%v49287%_)
                                    (append (_%flatten49033%_ _%v49287%_)
                                            _%acc49289%_)
                                    (cons _%v49287%_ _%acc49289%_))))
                          '()
                          _%list-of-lists49284%_)))
                (_%expand-path49035%_
                 (lambda (_%top49154%_ _%mod49156%_)
                   (let* ((_%__stx5041250413%_ _%mod49156%_)
                          (_%$%g4915949181%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx5041250413%_))))
                     (let ((_%__kont5041550416%_
                            (lambda (_%$%g4916149247%_ _%$%g4916249249%_)
                              (map (lambda (_%mod49264%_)
                                     (gx#stx-identifier
                                      _%top49154%_
                                      _%top49154%_
                                      '"/"
                                      _%mod49264%_))
                                   (_%flatten49033%_
                                    (map (lambda (_%$%g4926649268%_)
                                           (_%expand-path49035%_
                                            _%$%g4916249249%_
                                            _%$%g4926649268%_))
                                         (foldr (lambda (_%$%g4927149274%_
                                                         _%$%g4927249277%_)
                                                  (cons _%$%g4927149274%_
                                                        _%$%g4927249277%_))
                                                '()
                                                _%$%g4916149247%_))))))
                           (_%__kont5041950420%_
                            (lambda (_%$%g4917549188%_)
                              (gx#stx-identifier
                               _%top49154%_
                               _%top49154%_
                               '"/"
                               _%$%g4917549188%_))))
                       (let* ((_%$%g4915849202%_
                               (lambda ()
                                 (let ((_%$%g4917549188%_ _%__stx5041250413%_))
                                   (if (or (gx#identifier? _%$%g4917549188%_)
                                           (gx#stx-fixnum? _%$%g4917549188%_))
                                       (_%__kont5041950420%_ _%$%g4917549188%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4915949181%_))))))
                              (_%__match5043550436%_
                               (lambda (_%$%e4916349209%_
                                        _%$%hd4916449213%_
                                        _%$%tl4916549216%_
                                        _%__splice5041750418%_
                                        _%$%target4916649219%_
                                        _%$%tl4916849222%_)
                                 (letrec ((_%$%loop4916949225%_
                                           (lambda (_%$%hd4916749229%_
                                                    _%$%mod4917349232%_)
                                             (if (gx#stx-pair?
                                                  _%$%hd4916749229%_)
                                                 (let ((_%$%e4917049234%_
                                                        (gx#syntax-e
                                                         _%$%hd4916749229%_)))
                                                   (let ((_%$%lp-tl4917249241%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4917049234%_)))
                                                         (_%$%lp-hd4917149238%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4917049234%_))))
                                                     (_%$%loop4916949225%_
                                                      _%$%lp-tl4917249241%_
                                                      (cons _%$%lp-hd4917149238%_
                                                            _%$%mod4917349232%_))))
                                                 (let ((_%$%mod4917449244%_
                                                        (reverse _%$%mod4917349232%_)))
                                                   (_%__kont5041550416%_
                                                    _%$%mod4917449244%_
                                                    _%$%hd4916449213%_))))))
                                   (_%$%loop4916949225%_
                                    _%$%target4916649219%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx5041250413%_)
                             (let ((_%$%e4916349209%_
                                    (gx#syntax-e _%__stx5041250413%_)))
                               (let ((_%$%tl4916549216%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4916349209%_)))
                                     (_%$%hd4916449213%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4916349209%_))))
                                 (if (gx#stx-pair/null? _%$%tl4916549216%_)
                                     (let ((_%__splice5041750418%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4916549216%_
                                             '0)))
                                       (let ((_%$%tl4916849222%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5041750418%_
                                                 '1)))
                                             (_%$%target4916649219%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5041750418%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4916849222%_)
                                             (_%__match5043550436%_
                                              _%$%e4916349209%_
                                              _%$%hd4916449213%_
                                              _%$%tl4916549216%_
                                              _%__splice5041750418%_
                                              _%$%target4916649219%_
                                              _%$%tl4916849222%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g4915849202%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$%g4915849202%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$%g4915849202%_)))))))))
         (let* ((_%$%g4903749061%_
                 (lambda (_%$%g4903849057%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%$%g4903849057%_)))
                (_%$%g4903649150%_
                 (lambda (_%$%g4903849065%_)
                   (if (gx#stx-pair? _%$%g4903849065%_)
                       (let ((_%$%e4904149068%_
                              (gx#syntax-e _%$%g4903849065%_)))
                         (let ((_%$%hd4904249072%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4904149068%_)))
                               (_%$%tl4904349075%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4904149068%_))))
                           (if (gx#stx-pair? _%$%tl4904349075%_)
                               (let ((_%$%e4904449078%_
                                      (gx#syntax-e _%$%tl4904349075%_)))
                                 (let ((_%$%hd4904549082%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4904449078%_)))
                                       (_%$%tl4904649085%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4904449078%_))))
                                   (if (gx#stx-pair/null? _%$%tl4904649085%_)
                                       (let ((_g50514_
                                              (gx#syntax-split-splice
                                               _%$%tl4904649085%_
                                               '0)))
                                         (begin
                                           (let ((_g50515_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50514_)
                                                        (##values-length
                                                         _g50514_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50515_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50515_)))
                                           (let ((_%$%target4904749088%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g50514_ 0)))
                                                 (_%$%tl4904949091%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g50514_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl4904949091%_)
                                                 (letrec ((_%$%loop4905049094%_
                                                           (lambda (_%$%hd4904849098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%mod4905449101%_)
                     (if (gx#stx-pair? _%$%hd4904849098%_)
                         (let ((_%$%e4905149103%_
                                (gx#syntax-e _%$%hd4904849098%_)))
                           (let ((_%$%lp-hd4905249107%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e4905149103%_)))
                                 (_%$%lp-tl4905349110%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e4905149103%_))))
                             (_%$%loop4905049094%_
                              _%$%lp-tl4905349110%_
                              (cons _%$%lp-hd4905249107%_
                                    _%$%mod4905449101%_))))
                         (let ((_%$%mod4905549113%_
                                (reverse _%$%mod4905449101%_)))
                           (cons 'begin:
                                 (_%flatten49033%_
                                  (map (lambda (_%$%g4913649138%_)
                                         (_%expand-path49035%_
                                          _%$%hd4904549082%_
                                          _%$%g4913649138%_))
                                       (foldr (lambda (_%$%g4914149144%_
                                                       _%$%g4914249147%_)
                                                (cons _%$%g4914149144%_
                                                      _%$%g4914249147%_))
                                              '()
                                              _%$%mod4905549113%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop4905049094%_
                                                    _%$%target4904749088%_
                                                    '()))
                                                 (_%$%g4903749061%_
                                                  _%$%g4903849065%_)))))
                                       (_%$%g4903749061%_ _%$%g4903849065%_))))
                               (_%$%g4903749061%_ _%$%g4903849065%_))))
                       (_%$%g4903749061%_ _%$%g4903849065%_)))))
           (_%$%g4903649150%_ _%stx49030%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx49299%_)
       (let* ((_%$%g4930249326%_
               (lambda (_%$%g4930349322%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4930349322%_)))
              (_%$%g4930149452%_
               (lambda (_%$%g4930349330%_)
                 (if (gx#stx-pair? _%$%g4930349330%_)
                     (let ((_%$%e4930649333%_ (gx#syntax-e _%$%g4930349330%_)))
                       (let ((_%$%hd4930749337%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4930649333%_)))
                             (_%$%tl4930849340%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4930649333%_))))
                         (if (gx#stx-pair? _%$%tl4930849340%_)
                             (let ((_%$%e4930949343%_
                                    (gx#syntax-e _%$%tl4930849340%_)))
                               (let ((_%$%hd4931049347%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4930949343%_)))
                                     (_%$%tl4931149350%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4930949343%_))))
                                 (if (gx#stx-pair/null? _%$%tl4931149350%_)
                                     (let ((_g50516_
                                            (gx#syntax-split-splice
                                             _%$%tl4931149350%_
                                             '0)))
                                       (begin
                                         (let ((_g50517_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50516_)
                                                      (##values-length
                                                       _g50516_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50517_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50517_)))
                                         (let ((_%$%target4931249353%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50516_ 0)))
                                               (_%$%tl4931449356%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50516_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4931449356%_)
                                               (letrec ((_%$%loop4931549359%_
                                                         (lambda (_%$%hd4931349363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id4931949366%_)
                   (if (gx#stx-pair? _%$%hd4931349363%_)
                       (let ((_%$%e4931649368%_
                              (gx#syntax-e _%$%hd4931349363%_)))
                         (let ((_%$%lp-hd4931749372%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4931649368%_)))
                               (_%$%lp-tl4931849375%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4931649368%_))))
                           (_%$%loop4931549359%_
                            _%$%lp-tl4931849375%_
                            (cons _%$%lp-hd4931749372%_ _%$%id4931949366%_))))
                       (let ((_%$%id4932049378%_ (reverse _%$%id4931949366%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g4940049403%_
                                              _%$%g4940149406%_)
                                       (cons _%$%g4940049403%_
                                             _%$%g4940149406%_))
                                     '()
                                     _%$%id4932049378%_))
                             (let* ((_%keys49417%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g4940849411%_
                                                      _%$%g4940949414%_)
                                               (cons _%$%g4940849411%_
                                                     _%$%g4940949414%_))
                                             '()
                                             _%$%id4932049378%_)))
                                    (_%keytab49428%_
                                     (let ((_%ht49420%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g4942249424%_)
                                          (hash-put!
                                           _%ht49420%_
                                           _%$%g4942249424%_
                                           '#t))
                                        _%keys49417%_)
                                       _%ht49420%_))
                                    (_%exports49431%_
                                     (gx#core-expand-export-source
                                      _%$%hd4931049347%_))
                                    (_%fold-e49447%_
                                     (letrec ((_%fold-e49434%_
                                               (lambda (_%out49437%_
                                                        _%r49439%_)
                                                 (if (gx#module-export?
                                                      _%out49437%_)
                                                     (if (hash-get
                                                          _%keytab49428%_
                                                          (gx#module-export-name
                                                           _%out49437%_))
                                                         _%r49439%_
                                                         (cons _%out49437%_
                                                               _%r49439%_))
                                                     (if (gx#export-set?
                                                          _%out49437%_)
                                                         (foldl _%fold-e49434%_
                                                                _%r49439%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out49437%_))
                 _%r49439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e49434%_)))
                               (cons 'begin:
                                     (foldl _%fold-e49447%_
                                            '()
                                            _%exports49431%_)))
                             (_%$%g4930249326%_ _%$%g4930349330%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4931549359%_
                                                  _%$%target4931249353%_
                                                  '()))
                                               (_%$%g4930249326%_
                                                _%$%g4930349330%_)))))
                                     (_%$%g4930249326%_ _%$%g4930349330%_))))
                             (_%$%g4930249326%_ _%$%g4930349330%_))))
                     (_%$%g4930249326%_ _%$%g4930349330%_)))))
         (_%$%g4930149452%_ _%stx49299%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx49457%_)
       (let* ((_%$%g4946049484%_
               (lambda (_%$%g4946149480%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4946149480%_)))
              (_%$%g4945949614%_
               (lambda (_%$%g4946149488%_)
                 (if (gx#stx-pair? _%$%g4946149488%_)
                     (let ((_%$%e4946449491%_ (gx#syntax-e _%$%g4946149488%_)))
                       (let ((_%$%hd4946549495%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4946449491%_)))
                             (_%$%tl4946649498%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4946449491%_))))
                         (if (gx#stx-pair? _%$%tl4946649498%_)
                             (let ((_%$%e4946749501%_
                                    (gx#syntax-e _%$%tl4946649498%_)))
                               (let ((_%$%hd4946849505%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4946749501%_)))
                                     (_%$%tl4946949508%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4946749501%_))))
                                 (if (gx#stx-pair/null? _%$%tl4946949508%_)
                                     (let ((_g50518_
                                            (gx#syntax-split-splice
                                             _%$%tl4946949508%_
                                             '0)))
                                       (begin
                                         (let ((_g50519_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50518_)
                                                      (##values-length
                                                       _g50518_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50519_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50519_)))
                                         (let ((_%$%target4947049511%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50518_ 0)))
                                               (_%$%tl4947249514%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50518_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4947249514%_)
                                               (letrec ((_%$%loop4947349517%_
                                                         (lambda (_%$%hd4947149521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%filter-out4947749524%_)
                   (if (gx#stx-pair? _%$%hd4947149521%_)
                       (let ((_%$%e4947449526%_
                              (gx#syntax-e _%$%hd4947149521%_)))
                         (let ((_%$%lp-hd4947549530%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4947449526%_)))
                               (_%$%lp-tl4947649533%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4947449526%_))))
                           (_%$%loop4947349517%_
                            _%$%lp-tl4947649533%_
                            (cons _%$%lp-hd4947549530%_
                                  _%$%filter-out4947749524%_))))
                       (let* ((_%$%filter-out4947849536%_
                               (reverse _%$%filter-out4947749524%_))
                              (_%filtered49559%_ (make-hash-table)))
                         (letrec ((_%fold-out49562%_
                                   (lambda (_%out49604%_ _%r49606%_)
                                     (if (gx#module-export? _%out49604%_)
                                         (cons _%out49604%_ _%r49606%_)
                                         (if (gx#export-set? _%out49604%_)
                                             (foldl _%fold-out49562%_
                                                    _%r49606%_
                                                    (gx#export-set-exports
                                                     _%out49604%_))
                                             _%r49606%_)))))
                           (for-each
                            (lambda (_%src49565%_)
                              (let* ((_%exports49571%_
                                      (if (gx#identifier? _%src49565%_)
                                          (let ((_%mod49568%_
                                                 (gx#syntax-local-value
                                                  _%src49565%_)))
                                            (if (gx#module-context?
                                                 _%mod49568%_)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"not a module context"
                                                 _%src49565%_))
                                            (gx#module-context-export
                                             _%mod49568%_))
                                          (gx#core-expand-export-source
                                           _%src49565%_)))
                                     (_%exports49574%_
                                      (foldl _%fold-out49562%_
                                             '()
                                             _%exports49571%_)))
                                (for-each
                                 (lambda (_%out49579%_)
                                   (hash-put!
                                    _%filtered49559%_
                                    (gx#module-export-name _%out49579%_)
                                    '#t))
                                 _%exports49574%_)))
                            (foldr (lambda (_%$%g4958149584%_
                                            _%$%g4958249587%_)
                                     (cons _%$%g4958149584%_
                                           _%$%g4958249587%_))
                                   '()
                                   _%$%filter-out4947849536%_))
                           (let* ((_%exports49590%_
                                   (gx#core-expand-export-source
                                    _%$%hd4946849505%_))
                                  (_%exports49593%_
                                   (foldl _%fold-out49562%_
                                          '()
                                          _%exports49590%_))
                                  (_%exports49599%_
                                   (filter (lambda (_%out49596%_)
                                             (not (hash-get
                                                   _%filtered49559%_
                                                   (gx#module-export-name
                                                    _%out49596%_))))
                                           _%exports49593%_)))
                             (cons 'begin: _%exports49599%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4947349517%_
                                                  _%$%target4947049511%_
                                                  '()))
                                               (_%$%g4946049484%_
                                                _%$%g4946149488%_)))))
                                     (_%$%g4946049484%_ _%$%g4946149488%_))))
                             (_%$%g4946049484%_ _%$%g4946149488%_))))
                     (_%$%g4946049484%_ _%$%g4946149488%_)))))
         (_%$%g4945949614%_ _%stx49457%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out49619%_ _%rename49621%_)
      (gx#make-module-export
       (gx#module-export-context _%out49619%_)
       (gx#module-export-key _%out49619%_)
       (gx#module-export-phi _%out49619%_)
       _%rename49621%_
       (gx#module-export-weak? _%out49619%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx49623%_)
       (let* ((_%$%g4962649659%_
               (lambda (_%$%g4962749655%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4962749655%_)))
              (_%$%g4962549850%_
               (lambda (_%$%g4962749663%_)
                 (if (gx#stx-pair? _%$%g4962749663%_)
                     (let ((_%$%e4963149666%_ (gx#syntax-e _%$%g4962749663%_)))
                       (let ((_%$%hd4963249670%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4963149666%_)))
                             (_%$%tl4963349673%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4963149666%_))))
                         (if (gx#stx-pair? _%$%tl4963349673%_)
                             (let ((_%$%e4963449676%_
                                    (gx#syntax-e _%$%tl4963349673%_)))
                               (let ((_%$%hd4963549680%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4963449676%_)))
                                     (_%$%tl4963649683%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4963449676%_))))
                                 (if (gx#stx-pair/null? _%$%tl4963649683%_)
                                     (let ((_g50520_
                                            (gx#syntax-split-splice
                                             _%$%tl4963649683%_
                                             '0)))
                                       (begin
                                         (let ((_g50521_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g50520_)
                                                      (##values-length
                                                       _g50520_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g50521_ 2)))
                                               (error "Context expects 2 values"
                                                      _g50521_)))
                                         (let ((_%$%target4963749686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50520_ 0)))
                                               (_%$%tl4963949689%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g50520_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl4963949689%_)
                                               (letrec ((_%$%loop4964049692%_
                                                         (lambda (_%$%hd4963849696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id4964449699%_
                          _%$%id4964549700%_)
                   (if (gx#stx-pair? _%$%hd4963849696%_)
                       (let ((_%$%e4964149702%_
                              (gx#syntax-e _%$%hd4963849696%_)))
                         (let ((_%$%lp-hd4964249706%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4964149702%_)))
                               (_%$%lp-tl4964349709%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4964149702%_))))
                           (if (gx#stx-pair? _%$%lp-hd4964249706%_)
                               (let ((_%$%e4964849712%_
                                      (gx#syntax-e _%$%lp-hd4964249706%_)))
                                 (let ((_%$%hd4964949716%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e4964849712%_)))
                                       (_%$%tl4965049719%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e4964849712%_))))
                                   (if (gx#stx-pair? _%$%tl4965049719%_)
                                       (let ((_%$%e4965149722%_
                                              (gx#syntax-e
                                               _%$%tl4965049719%_)))
                                         (let ((_%$%hd4965249726%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4965149722%_)))
                                               (_%$%tl4965349729%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4965149722%_))))
                                           (if (gx#stx-null?
                                                _%$%tl4965349729%_)
                                               (_%$%loop4964049692%_
                                                _%$%lp-tl4964349709%_
                                                (cons _%$%hd4965249726%_
                                                      _%$%new-id4964449699%_)
                                                (cons _%$%hd4964949716%_
                                                      _%$%id4964549700%_))
                                               (_%$%g4962649659%_
                                                _%$%g4962749663%_))))
                                       (_%$%g4962649659%_ _%$%g4962749663%_))))
                               (_%$%g4962649659%_ _%$%g4962749663%_))))
                       (let ((_%$%new-id4964649732%_
                              (reverse _%$%new-id4964449699%_))
                             (_%$%id4964749734%_ (reverse _%$%id4964549700%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g4975749760%_
                                                   _%$%g4975849763%_)
                                            (cons _%$%g4975749760%_
                                                  _%$%g4975849763%_))
                                          '()
                                          _%$%id4964749734%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g4976549768%_
                                                   _%$%g4976649771%_)
                                            (cons _%$%g4976549768%_
                                                  _%$%g4976649771%_))
                                          '()
                                          _%$%new-id4964649732%_)))
                             (let* ((_%keytab49774%_ (make-hash-table))
                                    (_%found49777%_ (make-hash-table))
                                    (_%_49800%_
                                     (for-each
                                      (lambda (_%id49780%_ _%new-id49782%_)
                                        (hash-put!
                                         _%keytab49774%_
                                         (gx#core-identifier-key _%id49780%_)
                                         (gx#core-identifier-key
                                          _%new-id49782%_)))
                                      (foldr (lambda (_%$%g4978349786%_
                                                      _%$%g4978449789%_)
                                               (cons _%$%g4978349786%_
                                                     _%$%g4978449789%_))
                                             '()
                                             _%$%id4964749734%_)
                                      (foldr (lambda (_%$%g4979149794%_
                                                      _%$%g4979249797%_)
                                               (cons _%$%g4979149794%_
                                                     _%$%g4979249797%_))
                                             '()
                                             _%$%new-id4964649732%_)))
                                    (_%exports49803%_
                                     (gx#core-expand-export-source
                                      _%$%hd4963549680%_))
                                    (_%fold-e49831%_
                                     (letrec ((_%fold-e49806%_
                                               (lambda (_%out49809%_
                                                        _%r49811%_)
                                                 (if (gx#module-export?
                                                      _%out49809%_)
                                                     (let* ((_%name49815%_
                                                             (gx#module-export-name
                                                              _%out49809%_))
                                                            (_%$e49818%_
                                                             (hash-get
                                                              _%keytab49774%_
                                                              _%name49815%_)))
                                                       (if _%$e49818%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found49777%_
                                                              _%name49815%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-export-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%out49809%_
                            _%$e49818%_)
                           _%r49811%_))
                   (cons _%out49809%_ _%r49811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#export-set?
                                                          _%out49809%_)
                                                         (foldl _%fold-e49806%_
                                                                _%r49811%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out49809%_))
                 (cons _%out49809%_ _%r49811%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e49806%_))
                                    (_%new-exports49834%_
                                     (foldl _%fold-e49831%_
                                            '()
                                            _%exports49803%_)))
                               (for-each
                                (lambda (_%id49839%_)
                                  (if (hash-get
                                       _%found49777%_
                                       (gx#core-identifier-key _%id49839%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the export set"
                                       _%stx49623%_
                                       _%id49839%_)))
                                (foldr (lambda (_%$%g4984149844%_
                                                _%$%g4984249847%_)
                                         (cons _%$%g4984149844%_
                                               _%$%g4984249847%_))
                                       '()
                                       _%$%id4964749734%_))
                               (cons 'begin: _%new-exports49834%_))
                             (_%$%g4962649659%_ _%$%g4962749663%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4964049692%_
                                                  _%$%target4963749686%_
                                                  '()
                                                  '()))
                                               (_%$%g4962649659%_
                                                _%$%g4962749663%_)))))
                                     (_%$%g4962649659%_ _%$%g4962749663%_))))
                             (_%$%g4962649659%_ _%$%g4962749663%_))))
                     (_%$%g4962649659%_ _%$%g4962749663%_)))))
         (_%$%g4962549850%_ _%stx49623%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx49855%_)
       (let* ((_%$%g4985849876%_
               (lambda (_%$%g4985949872%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4985949872%_)))
              (_%$%g4985749961%_
               (lambda (_%$%g4985949880%_)
                 (if (gx#stx-pair? _%$%g4985949880%_)
                     (let ((_%$%e4986249883%_ (gx#syntax-e _%$%g4985949880%_)))
                       (let ((_%$%hd4986349887%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4986249883%_)))
                             (_%$%tl4986449890%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4986249883%_))))
                         (if (gx#stx-pair? _%$%tl4986449890%_)
                             (let ((_%$%e4986549893%_
                                    (gx#syntax-e _%$%tl4986449890%_)))
                               (let ((_%$%hd4986649897%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4986549893%_)))
                                     (_%$%tl4986749900%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4986549893%_))))
                                 (if (gx#stx-pair? _%$%tl4986749900%_)
                                     (let ((_%$%e4986849903%_
                                            (gx#syntax-e _%$%tl4986749900%_)))
                                       (let ((_%$%hd4986949907%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4986849903%_)))
                                             (_%$%tl4987049910%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4986849903%_))))
                                         (if (gx#stx-null? _%$%tl4987049910%_)
                                             (if (gx#identifier?
                                                  _%$%hd4986949907%_)
                                                 (let* ((_%pre49931%_
                                                         (gx#stx-e
                                                          _%$%hd4986949907%_))
                                                        (_%exports49934%_
                                                         (gx#core-expand-export-source
                                                          _%$%hd4986649897%_))
                                                        (_%rename-e49940%_
                                                         (lambda (_%name49937%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name49937%_
                                                            _%pre49931%_)))
                                                        (_%fold-e49956%_
                                                         (letrec ((_%fold-e49943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%out49946%_ _%r49948%_)
                             (if (gx#module-export? _%out49946%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                        _%out49946%_
                                        (_%rename-e49940%_
                                         (gx#module-export-name _%out49946%_)))
                                       _%r49948%_)
                                 (if (gx#export-set? _%out49946%_)
                                     (foldl _%fold-e49943%_
                                            _%r49948%_
                                            (gx#export-set-exports
                                             _%out49946%_))
                                     (cons _%out49946%_ _%r49948%_))))))
                   _%fold-e49943%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e49956%_
                                                                '()
                                                                _%exports49934%_)))
                                                 (_%$%g4985849876%_
                                                  _%$%g4985949880%_))
                                             (_%$%g4985849876%_
                                              _%$%g4985949880%_))))
                                     (_%$%g4985849876%_ _%$%g4985949880%_))))
                             (_%$%g4985849876%_ _%$%g4985949880%_))))
                     (_%$%g4985849876%_ _%$%g4985949880%_)))))
         (_%$%g4985749961%_ _%stx49855%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx49965%_)
       (letrec ((_%identifiers49968%_
                 (lambda (_%id50196%_ _%unchecked?50198%_)
                   (let ((_%info50200%_
                          (gx#syntax-local-value _%id50196%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info50200%_))
                         (cons _%id50196%_
                               (cons (let ((__obj50497 _%info50200%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj50497
                                              'gerbil/core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj50497
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj50497
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj50498
                                                         _%info50200%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj50498
                                                           'gerbil/core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj50498
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj50498
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?50198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj50499 _%info50200%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj50499
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj50499
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj50499
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj50500 _%info50200%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj50500
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj50500
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj50500
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj50501 _%info50200%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj50501
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj50501
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj50501
                                    'mutators)))))
                 (map cdr
                      (let ((__obj50502 _%info50200%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj50502
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj50502
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj50502 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor50203%_
                                                   (let ((__obj50503
                                                          _%info50200%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj50503
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj50503
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj50503
                                                          'constructor)))))
                                              (if _%ctor50203%_
                                                  (cons _%ctor50203%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx49965%_
                          _%id50196%_))))))
         (let* ((_%__stx5043850439%_ _%stx49965%_)
                (_%$%g4997250013%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx5043850439%_))))
           (let ((_%__kont5044150442%_
                  (lambda (_%$%g4997450157%_ _%$%g4997550159%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5017850180%_)
                              (_%identifiers49968%_
                               _%$%g5017850180%_
                               (gx#stx-e _%$%g4997550159%_)))
                            (foldr (lambda (_%$%g5018350186%_
                                            _%$%g5018450189%_)
                                     (cons _%$%g5018350186%_
                                           _%$%g5018450189%_))
                                   '()
                                   _%$%g4997450157%_))))))
                 (_%__kont5044550446%_
                  (lambda (_%$%g4999550058%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5007450076%_)
                              (_%identifiers49968%_ _%$%g5007450076%_ '#f))
                            (foldr (lambda (_%$%g5007950082%_
                                            _%$%g5008050085%_)
                                     (cons _%$%g5007950082%_
                                           _%$%g5008050085%_))
                                   '()
                                   _%$%g4999550058%_)))))))
             (let* ((_%__match5049550496%_
                     (lambda (_%$%e4999650020%_
                              _%$%hd4999750024%_
                              _%$%tl4999850027%_
                              _%__splice5044750448%_
                              _%$%target4999950030%_
                              _%$%tl5000150033%_)
                       (letrec ((_%$%loop5000250036%_
                                 (lambda (_%$%hd5000050040%_
                                          _%$%id5000650043%_)
                                   (if (gx#stx-pair? _%$%hd5000050040%_)
                                       (let ((_%$%e5000350045%_
                                              (gx#syntax-e
                                               _%$%hd5000050040%_)))
                                         (let ((_%$%lp-tl5000550052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5000350045%_)))
                                               (_%$%lp-hd5000450049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5000350045%_))))
                                           (_%$%loop5000250036%_
                                            _%$%lp-tl5000550052%_
                                            (cons _%$%lp-hd5000450049%_
                                                  _%$%id5000650043%_))))
                                       (let ((_%$%id5000750055%_
                                              (reverse _%$%id5000650043%_)))
                                         (_%__kont5044550446%_
                                          _%$%id5000750055%_))))))
                         (_%$%loop5000250036%_ _%$%target4999950030%_ '()))))
                    (_%__match5048150482%_
                     (lambda (_%$%e4997650095%_
                              _%$%hd4997750099%_
                              _%$%tl4997850102%_
                              _%$%e4997950105%_
                              _%$%hd4998050109%_
                              _%$%tl4998150112%_
                              _%$%e4998250115%_
                              _%$%e4998350119%_
                              _%$%hd4998450123%_
                              _%$%tl4998550126%_
                              _%__splice5044350444%_
                              _%$%target4998650129%_
                              _%$%tl4998850132%_)
                       (letrec ((_%$%loop4998950135%_
                                 (lambda (_%$%hd4998750139%_
                                          _%$%id4999350142%_)
                                   (if (gx#stx-pair? _%$%hd4998750139%_)
                                       (let ((_%$%e4999050144%_
                                              (gx#syntax-e
                                               _%$%hd4998750139%_)))
                                         (let ((_%$%lp-tl4999250151%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e4999050144%_)))
                                               (_%$%lp-hd4999150148%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e4999050144%_))))
                                           (_%$%loop4998950135%_
                                            _%$%lp-tl4999250151%_
                                            (cons _%$%lp-hd4999150148%_
                                                  _%$%id4999350142%_))))
                                       (let ((_%$%id4999450154%_
                                              (reverse _%$%id4999350142%_)))
                                         (_%__kont5044150442%_
                                          _%$%id4999450154%_
                                          _%$%hd4998450123%_))))))
                         (_%$%loop4998950135%_ _%$%target4998650129%_ '())))))
               (if (gx#stx-pair? _%__stx5043850439%_)
                   (let ((_%$%e4997650095%_ (gx#syntax-e _%__stx5043850439%_)))
                     (let ((_%$%tl4997850102%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e4997650095%_)))
                           (_%$%hd4997750099%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e4997650095%_))))
                       (if (gx#stx-pair? _%$%tl4997850102%_)
                           (let ((_%$%e4997950105%_
                                  (gx#syntax-e _%$%tl4997850102%_)))
                             (let ((_%$%tl4998150112%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e4997950105%_)))
                                   (_%$%hd4998050109%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e4997950105%_))))
                               (if (gx#stx-datum? _%$%hd4998050109%_)
                                   (let ((_%$%e4998250115%_
                                          (gx#stx-e _%$%hd4998050109%_)))
                                     (if (equal? _%$%e4998250115%_ 'unchecked:)
                                         (if (gx#stx-pair? _%$%tl4998150112%_)
                                             (let ((_%$%e4998350119%_
                                                    (gx#syntax-e
                                                     _%$%tl4998150112%_)))
                                               (let ((_%$%tl4998550126%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4998350119%_)))
                                                     (_%$%hd4998450123%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4998350119%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4998550126%_)
                                                     (let ((_%__splice5044350444%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4998550126%_
                                                             '0)))
                                                       (let ((_%$%tl4998850132%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice5044350444%_ '1)))
                     (_%$%target4998650129%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice5044350444%_ '0))))
                 (if (gx#stx-null? _%$%tl4998850132%_)
                     (_%__match5048150482%_
                      _%$%e4997650095%_
                      _%$%hd4997750099%_
                      _%$%tl4997850102%_
                      _%$%e4997950105%_
                      _%$%hd4998050109%_
                      _%$%tl4998150112%_
                      _%$%e4998250115%_
                      _%$%e4998350119%_
                      _%$%hd4998450123%_
                      _%$%tl4998550126%_
                      _%__splice5044350444%_
                      _%$%target4998650129%_
                      _%$%tl4998850132%_)
                     (if (gx#stx-pair/null? _%$%tl4997850102%_)
                         (let ((_%__splice5044750448%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4997850102%_
                                 '0)))
                           (let ((_%$%tl5000150033%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5044750448%_ '1)))
                                 (_%$%target4999950030%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5044750448%_ '0))))
                             (if (gx#stx-null? _%$%tl5000150033%_)
                                 (_%__match5049550496%_
                                  _%$%e4997650095%_
                                  _%$%hd4997750099%_
                                  _%$%tl4997850102%_
                                  _%__splice5044750448%_
                                  _%$%target4999950030%_
                                  _%$%tl5000150033%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%$%g4997250013%_)))))
                         (let () (declare (not safe)) (_%$%g4997250013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4997850102%_)
                                                         (let ((_%__splice5044750448%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4997850102%_
                         '0)))
                   (let ((_%$%tl5000150033%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5044750448%_ '1)))
                         (_%$%target4999950030%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5044750448%_ '0))))
                     (if (gx#stx-null? _%$%tl5000150033%_)
                         (_%__match5049550496%_
                          _%$%e4997650095%_
                          _%$%hd4997750099%_
                          _%$%tl4997850102%_
                          _%__splice5044750448%_
                          _%$%target4999950030%_
                          _%$%tl5000150033%_)
                         (let () (declare (not safe)) (_%$%g4997250013%_)))))
                 (let () (declare (not safe)) (_%$%g4997250013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4997850102%_)
                                                 (let ((_%__splice5044750448%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4997850102%_
                                                         '0)))
                                                   (let ((_%$%tl5000150033%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5044750448%_
                                                             '1)))
                                                         (_%$%target4999950030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5044750448%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5000150033%_)
                                                         (_%__match5049550496%_
                                                          _%$%e4997650095%_
                                                          _%$%hd4997750099%_
                                                          _%$%tl4997850102%_
                                                          _%__splice5044750448%_
                                                          _%$%target4999950030%_
                                                          _%$%tl5000150033%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%$%g4997250013%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%$%g4997250013%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4997850102%_)
                                             (let ((_%__splice5044750448%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4997850102%_
                                                     '0)))
                                               (let ((_%$%tl5000150033%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5044750448%_
                                                         '1)))
                                                     (_%$%target4999950030%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5044750448%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl5000150033%_)
                                                     (_%__match5049550496%_
                                                      _%$%e4997650095%_
                                                      _%$%hd4997750099%_
                                                      _%$%tl4997850102%_
                                                      _%__splice5044750448%_
                                                      _%$%target4999950030%_
                                                      _%$%tl5000150033%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g4997250013%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g4997250013%_)))))
                                   (if (gx#stx-pair/null? _%$%tl4997850102%_)
                                       (let ((_%__splice5044750448%_
                                              (gx#syntax-split-splice->vector
                                               _%$%tl4997850102%_
                                               '0)))
                                         (let ((_%$%tl5000150033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5044750448%_
                                                   '1)))
                                               (_%$%target4999950030%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5044750448%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl5000150033%_)
                                               (_%__match5049550496%_
                                                _%$%e4997650095%_
                                                _%$%hd4997750099%_
                                                _%$%tl4997850102%_
                                                _%__splice5044750448%_
                                                _%$%target4999950030%_
                                                _%$%tl5000150033%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g4997250013%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4997250013%_))))))
                           (if (gx#stx-pair/null? _%$%tl4997850102%_)
                               (let ((_%__splice5044750448%_
                                      (gx#syntax-split-splice->vector
                                       _%$%tl4997850102%_
                                       '0)))
                                 (let ((_%$%tl5000150033%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5044750448%_
                                           '1)))
                                       (_%$%target4999950030%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5044750448%_
                                           '0))))
                                   (if (gx#stx-null? _%$%tl5000150033%_)
                                       (_%__match5049550496%_
                                        _%$%e4997650095%_
                                        _%$%hd4997750099%_
                                        _%$%tl4997850102%_
                                        _%__splice5044750448%_
                                        _%$%target4999950030%_
                                        _%$%tl5000150033%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g4997250013%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g4997250013%_))))))
                   (let () (declare (not safe)) (_%$%g4997250013%_)))))))))))
