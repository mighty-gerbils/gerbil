(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41620%_)
      (let* ((_%__stx4427444275%_ _%$stx41620%_)
             (_%g4162541644%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4427444275%_))))
        (let ((_%__kont4427744278%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4427944280%_
               (lambda (_%L41671%_ _%L41673%_ _%L41674%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41673%_
                                   (cons (cons _%L41674%_ _%L41671%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4427444275%_)
              (let ((_%e4162741696%_ (gx#syntax-e _%__stx4427444275%_)))
                (let ((_%tl4162941703%_
                       (let () (declare (not safe)) (##cdr _%e4162741696%_)))
                      (_%hd4162841700%_
                       (let () (declare (not safe)) (##car _%e4162741696%_))))
                  (if (gx#stx-null? _%tl4162941703%_)
                      (_%__kont4427744278%_)
                      (if (gx#stx-pair? _%tl4162941703%_)
                          (let ((_%e4163641661%_
                                 (gx#syntax-e _%tl4162941703%_)))
                            (let ((_%tl4163841668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4163641661%_)))
                                  (_%hd4163741665%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4163641661%_))))
                              (_%__kont4427944280%_
                               _%tl4163841668%_
                               _%hd4163741665%_
                               _%hd4162841700%_)))
                          (let () (declare (not safe)) (_%g4162541644%_))))))
              (let () (declare (not safe)) (_%g4162541644%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41714%_)
      (let* ((_%__stx4430444305%_ _%$stx41714%_)
             (_%g4171941759%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4430444305%_))))
        (let ((_%__kont4430744308%_
               (lambda (_%L41897%_ _%L41899%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L41899%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L41897%_ '()))
                                   '())))))
              (_%__kont4430944310%_
               (lambda (_%L41826%_ _%L41828%_ _%L41829%_ _%L41830%_)
                 (cons _%L41830%_
                       (cons _%L41829%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41828%_
                                               (foldr (lambda (_%g4185141854%_
                                                               _%g4185241857%_)
                                                        (cons _%g4185141854%_
                                                              _%g4185241857%_))
                                                      '()
                                                      _%L41826%_)))
                                   '()))))))
          (let* ((_%__match4435944360%_
                  (lambda (_%e4173641766%_
                           _%hd4173741770%_
                           _%tl4173841773%_
                           _%e4173941776%_
                           _%hd4174041780%_
                           _%tl4174141783%_
                           _%e4174241786%_
                           _%hd4174341790%_
                           _%tl4174441793%_
                           _%__splice4431144312%_
                           _%target4174541796%_
                           _%tl4174741799%_)
                    (letrec ((_%loop4174841802%_
                              (lambda (_%hd4174641806%_ _%body4175241809%_)
                                (if (gx#stx-pair? _%hd4174641806%_)
                                    (let ((_%e4174941812%_
                                           (gx#syntax-e _%hd4174641806%_)))
                                      (let ((_%lp-tl4175141819%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4174941812%_)))
                                            (_%lp-hd4175041816%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4174941812%_))))
                                        (_%loop4174841802%_
                                         _%lp-tl4175141819%_
                                         (cons _%lp-hd4175041816%_
                                               _%body4175241809%_))))
                                    (let ((_%body4175341822%_
                                           (reverse _%body4175241809%_)))
                                      (let ((_%L41826%_ _%body4175341822%_)
                                            (_%L41828%_ _%tl4174441793%_)
                                            (_%L41829%_ _%hd4174341790%_)
                                            (_%L41830%_ _%hd4173741770%_))
                                        (if (gx#identifier? _%L41829%_)
                                            (_%__kont4430944310%_
                                             _%L41826%_
                                             _%L41828%_
                                             _%L41829%_
                                             _%L41830%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4171941759%_)))))))))
                      (_%loop4174841802%_ _%target4174541796%_ '()))))
                 (_%__match4433344334%_
                  (lambda (_%e4172341867%_
                           _%hd4172441871%_
                           _%tl4172541874%_
                           _%e4172641877%_
                           _%hd4172741881%_
                           _%tl4172841884%_
                           _%e4172941887%_
                           _%hd4173041891%_
                           _%tl4173141894%_)
                    (let ((_%L41897%_ _%hd4173041891%_)
                          (_%L41899%_ _%hd4172741881%_))
                      (if (gx#identifier? _%L41899%_)
                          (_%__kont4430744308%_ _%L41897%_ _%L41899%_)
                          (if (gx#stx-pair? _%hd4172741881%_)
                              (let ((_%e4174241786%_
                                     (gx#syntax-e _%hd4172741881%_)))
                                (let ((_%tl4174441793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4174241786%_)))
                                      (_%hd4174341790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4174241786%_))))
                                  (if (gx#stx-pair/null? _%tl4172841884%_)
                                      (let ((_%__splice4431144312%_
                                             (gx#syntax-split-splice
                                              _%tl4172841884%_
                                              '0)))
                                        (let ((_%tl4174741799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4431144312%_
                                                  '1)))
                                              (_%target4174541796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4431144312%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4174741799%_)
                                              (_%__match4435944360%_
                                               _%e4172341867%_
                                               _%hd4172441871%_
                                               _%tl4172541874%_
                                               _%e4172641877%_
                                               _%hd4172741881%_
                                               _%tl4172841884%_
                                               _%e4174241786%_
                                               _%hd4174341790%_
                                               _%tl4174441793%_
                                               _%__splice4431144312%_
                                               _%target4174541796%_
                                               _%tl4174741799%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4171941759%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4171941759%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4171941759%_))))))))
            (if (gx#stx-pair? _%__stx4430444305%_)
                (let ((_%e4172341867%_ (gx#syntax-e _%__stx4430444305%_)))
                  (let ((_%tl4172541874%_
                         (let () (declare (not safe)) (##cdr _%e4172341867%_)))
                        (_%hd4172441871%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4172341867%_))))
                    (if (gx#stx-pair? _%tl4172541874%_)
                        (let ((_%e4172641877%_ (gx#syntax-e _%tl4172541874%_)))
                          (let ((_%tl4172841884%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4172641877%_)))
                                (_%hd4172741881%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4172641877%_))))
                            (if (gx#stx-pair? _%tl4172841884%_)
                                (let ((_%e4172941887%_
                                       (gx#syntax-e _%tl4172841884%_)))
                                  (let ((_%tl4173141894%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4172941887%_)))
                                        (_%hd4173041891%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4172941887%_))))
                                    (if (gx#stx-null? _%tl4173141894%_)
                                        (_%__match4433344334%_
                                         _%e4172341867%_
                                         _%hd4172441871%_
                                         _%tl4172541874%_
                                         _%e4172641877%_
                                         _%hd4172741881%_
                                         _%tl4172841884%_
                                         _%e4172941887%_
                                         _%hd4173041891%_
                                         _%tl4173141894%_)
                                        (if (gx#stx-pair? _%hd4172741881%_)
                                            (let ((_%e4174241786%_
                                                   (gx#syntax-e
                                                    _%hd4172741881%_)))
                                              (let ((_%tl4174441793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4174241786%_)))
                                                    (_%hd4174341790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4174241786%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4172841884%_)
                                                    (let ((_%__splice4431144312%_
                                                           (gx#syntax-split-splice
                                                            _%tl4172841884%_
                                                            '0)))
                                                      (let ((_%tl4174741799%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4431144312%_ '1)))
                    (_%target4174541796%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4431144312%_ '0))))
                (if (gx#stx-null? _%tl4174741799%_)
                    (_%__match4435944360%_
                     _%e4172341867%_
                     _%hd4172441871%_
                     _%tl4172541874%_
                     _%e4172641877%_
                     _%hd4172741881%_
                     _%tl4172841884%_
                     _%e4174241786%_
                     _%hd4174341790%_
                     _%tl4174441793%_
                     _%__splice4431144312%_
                     _%target4174541796%_
                     _%tl4174741799%_)
                    (let () (declare (not safe)) (_%g4171941759%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4171941759%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4171941759%_))))))
                                (if (gx#stx-pair? _%hd4172741881%_)
                                    (let ((_%e4174241786%_
                                           (gx#syntax-e _%hd4172741881%_)))
                                      (let ((_%tl4174441793%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4174241786%_)))
                                            (_%hd4174341790%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4174241786%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4172841884%_)
                                            (let ((_%__splice4431144312%_
                                                   (gx#syntax-split-splice
                                                    _%tl4172841884%_
                                                    '0)))
                                              (let ((_%tl4174741799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4431144312%_
                                                        '1)))
                                                    (_%target4174541796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4431144312%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4174741799%_)
                                                    (_%__match4435944360%_
                                                     _%e4172341867%_
                                                     _%hd4172441871%_
                                                     _%tl4172541874%_
                                                     _%e4172641877%_
                                                     _%hd4172741881%_
                                                     _%tl4172841884%_
                                                     _%e4174241786%_
                                                     _%hd4174341790%_
                                                     _%tl4174441793%_
                                                     _%__splice4431144312%_
                                                     _%target4174541796%_
                                                     _%tl4174741799%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4171941759%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4171941759%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4171941759%_))))))
                        (let () (declare (not safe)) (_%g4171941759%_)))))
                (let () (declare (not safe)) (_%g4171941759%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx41919%_)
      (let* ((_%__stx4436244363%_ _%$stx41919%_)
             (_%g4192441964%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4436244363%_))))
        (let ((_%__kont4436544366%_
               (lambda (_%L42102%_ _%L42104%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42104%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42102%_ '()))
                                   '())))))
              (_%__kont4436744368%_
               (lambda (_%L42031%_ _%L42033%_ _%L42034%_ _%L42035%_)
                 (cons _%L42035%_
                       (cons _%L42034%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42033%_
                                               (foldr (lambda (_%g4205642059%_
                                                               _%g4205742062%_)
                                                        (cons _%g4205642059%_
                                                              _%g4205742062%_))
                                                      '()
                                                      _%L42031%_)))
                                   '()))))))
          (let* ((_%__match4441744418%_
                  (lambda (_%e4194141971%_
                           _%hd4194241975%_
                           _%tl4194341978%_
                           _%e4194441981%_
                           _%hd4194541985%_
                           _%tl4194641988%_
                           _%e4194741991%_
                           _%hd4194841995%_
                           _%tl4194941998%_
                           _%__splice4436944370%_
                           _%target4195042001%_
                           _%tl4195242004%_)
                    (letrec ((_%loop4195342007%_
                              (lambda (_%hd4195142011%_ _%body4195742014%_)
                                (if (gx#stx-pair? _%hd4195142011%_)
                                    (let ((_%e4195442017%_
                                           (gx#syntax-e _%hd4195142011%_)))
                                      (let ((_%lp-tl4195642024%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4195442017%_)))
                                            (_%lp-hd4195542021%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4195442017%_))))
                                        (_%loop4195342007%_
                                         _%lp-tl4195642024%_
                                         (cons _%lp-hd4195542021%_
                                               _%body4195742014%_))))
                                    (let ((_%body4195842027%_
                                           (reverse _%body4195742014%_)))
                                      (let ((_%L42031%_ _%body4195842027%_)
                                            (_%L42033%_ _%tl4194941998%_)
                                            (_%L42034%_ _%hd4194841995%_)
                                            (_%L42035%_ _%hd4194241975%_))
                                        (if (gx#identifier? _%L42034%_)
                                            (_%__kont4436744368%_
                                             _%L42031%_
                                             _%L42033%_
                                             _%L42034%_
                                             _%L42035%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4192441964%_)))))))))
                      (_%loop4195342007%_ _%target4195042001%_ '()))))
                 (_%__match4439144392%_
                  (lambda (_%e4192842072%_
                           _%hd4192942076%_
                           _%tl4193042079%_
                           _%e4193142082%_
                           _%hd4193242086%_
                           _%tl4193342089%_
                           _%e4193442092%_
                           _%hd4193542096%_
                           _%tl4193642099%_)
                    (let ((_%L42102%_ _%hd4193542096%_)
                          (_%L42104%_ _%hd4193242086%_))
                      (if (gx#identifier? _%L42104%_)
                          (_%__kont4436544366%_ _%L42102%_ _%L42104%_)
                          (if (gx#stx-pair? _%hd4193242086%_)
                              (let ((_%e4194741991%_
                                     (gx#syntax-e _%hd4193242086%_)))
                                (let ((_%tl4194941998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4194741991%_)))
                                      (_%hd4194841995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4194741991%_))))
                                  (if (gx#stx-pair/null? _%tl4193342089%_)
                                      (let ((_%__splice4436944370%_
                                             (gx#syntax-split-splice
                                              _%tl4193342089%_
                                              '0)))
                                        (let ((_%tl4195242004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4436944370%_
                                                  '1)))
                                              (_%target4195042001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4436944370%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4195242004%_)
                                              (_%__match4441744418%_
                                               _%e4192842072%_
                                               _%hd4192942076%_
                                               _%tl4193042079%_
                                               _%e4193142082%_
                                               _%hd4193242086%_
                                               _%tl4193342089%_
                                               _%e4194741991%_
                                               _%hd4194841995%_
                                               _%tl4194941998%_
                                               _%__splice4436944370%_
                                               _%target4195042001%_
                                               _%tl4195242004%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4192441964%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4192441964%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4192441964%_))))))))
            (if (gx#stx-pair? _%__stx4436244363%_)
                (let ((_%e4192842072%_ (gx#syntax-e _%__stx4436244363%_)))
                  (let ((_%tl4193042079%_
                         (let () (declare (not safe)) (##cdr _%e4192842072%_)))
                        (_%hd4192942076%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4192842072%_))))
                    (if (gx#stx-pair? _%tl4193042079%_)
                        (let ((_%e4193142082%_ (gx#syntax-e _%tl4193042079%_)))
                          (let ((_%tl4193342089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4193142082%_)))
                                (_%hd4193242086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4193142082%_))))
                            (if (gx#stx-pair? _%tl4193342089%_)
                                (let ((_%e4193442092%_
                                       (gx#syntax-e _%tl4193342089%_)))
                                  (let ((_%tl4193642099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4193442092%_)))
                                        (_%hd4193542096%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4193442092%_))))
                                    (if (gx#stx-null? _%tl4193642099%_)
                                        (_%__match4439144392%_
                                         _%e4192842072%_
                                         _%hd4192942076%_
                                         _%tl4193042079%_
                                         _%e4193142082%_
                                         _%hd4193242086%_
                                         _%tl4193342089%_
                                         _%e4193442092%_
                                         _%hd4193542096%_
                                         _%tl4193642099%_)
                                        (if (gx#stx-pair? _%hd4193242086%_)
                                            (let ((_%e4194741991%_
                                                   (gx#syntax-e
                                                    _%hd4193242086%_)))
                                              (let ((_%tl4194941998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4194741991%_)))
                                                    (_%hd4194841995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4194741991%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4193342089%_)
                                                    (let ((_%__splice4436944370%_
                                                           (gx#syntax-split-splice
                                                            _%tl4193342089%_
                                                            '0)))
                                                      (let ((_%tl4195242004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4436944370%_ '1)))
                    (_%target4195042001%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4436944370%_ '0))))
                (if (gx#stx-null? _%tl4195242004%_)
                    (_%__match4441744418%_
                     _%e4192842072%_
                     _%hd4192942076%_
                     _%tl4193042079%_
                     _%e4193142082%_
                     _%hd4193242086%_
                     _%tl4193342089%_
                     _%e4194741991%_
                     _%hd4194841995%_
                     _%tl4194941998%_
                     _%__splice4436944370%_
                     _%target4195042001%_
                     _%tl4195242004%_)
                    (let () (declare (not safe)) (_%g4192441964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4192441964%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4192441964%_))))))
                                (if (gx#stx-pair? _%hd4193242086%_)
                                    (let ((_%e4194741991%_
                                           (gx#syntax-e _%hd4193242086%_)))
                                      (let ((_%tl4194941998%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4194741991%_)))
                                            (_%hd4194841995%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4194741991%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4193342089%_)
                                            (let ((_%__splice4436944370%_
                                                   (gx#syntax-split-splice
                                                    _%tl4193342089%_
                                                    '0)))
                                              (let ((_%tl4195242004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4436944370%_
                                                        '1)))
                                                    (_%target4195042001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4436944370%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4195242004%_)
                                                    (_%__match4441744418%_
                                                     _%e4192842072%_
                                                     _%hd4192942076%_
                                                     _%tl4193042079%_
                                                     _%e4193142082%_
                                                     _%hd4193242086%_
                                                     _%tl4193342089%_
                                                     _%e4194741991%_
                                                     _%hd4194841995%_
                                                     _%tl4194941998%_
                                                     _%__splice4436944370%_
                                                     _%target4195042001%_
                                                     _%tl4195242004%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4192441964%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4192441964%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4192441964%_))))))
                        (let () (declare (not safe)) (_%g4192441964%_)))))
                (let () (declare (not safe)) (_%g4192441964%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42124%_)
      (let* ((_%__stx4442044421%_ _%$stx42124%_)
             (_%g4212942169%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4442044421%_))))
        (let ((_%__kont4442344424%_
               (lambda (_%L42307%_ _%L42309%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42309%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42307%_ '()))
                                   '())))))
              (_%__kont4442544426%_
               (lambda (_%L42236%_ _%L42238%_ _%L42239%_ _%L42240%_)
                 (cons _%L42240%_
                       (cons _%L42239%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42238%_
                                               (foldr (lambda (_%g4226142264%_
                                                               _%g4226242267%_)
                                                        (cons _%g4226142264%_
                                                              _%g4226242267%_))
                                                      '()
                                                      _%L42236%_)))
                                   '()))))))
          (let* ((_%__match4447544476%_
                  (lambda (_%e4214642176%_
                           _%hd4214742180%_
                           _%tl4214842183%_
                           _%e4214942186%_
                           _%hd4215042190%_
                           _%tl4215142193%_
                           _%e4215242196%_
                           _%hd4215342200%_
                           _%tl4215442203%_
                           _%__splice4442744428%_
                           _%target4215542206%_
                           _%tl4215742209%_)
                    (letrec ((_%loop4215842212%_
                              (lambda (_%hd4215642216%_ _%body4216242219%_)
                                (if (gx#stx-pair? _%hd4215642216%_)
                                    (let ((_%e4215942222%_
                                           (gx#syntax-e _%hd4215642216%_)))
                                      (let ((_%lp-tl4216142229%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4215942222%_)))
                                            (_%lp-hd4216042226%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4215942222%_))))
                                        (_%loop4215842212%_
                                         _%lp-tl4216142229%_
                                         (cons _%lp-hd4216042226%_
                                               _%body4216242219%_))))
                                    (let ((_%body4216342232%_
                                           (reverse _%body4216242219%_)))
                                      (let ((_%L42236%_ _%body4216342232%_)
                                            (_%L42238%_ _%tl4215442203%_)
                                            (_%L42239%_ _%hd4215342200%_)
                                            (_%L42240%_ _%hd4214742180%_))
                                        (if (gx#identifier? _%L42239%_)
                                            (_%__kont4442544426%_
                                             _%L42236%_
                                             _%L42238%_
                                             _%L42239%_
                                             _%L42240%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4212942169%_)))))))))
                      (_%loop4215842212%_ _%target4215542206%_ '()))))
                 (_%__match4444944450%_
                  (lambda (_%e4213342277%_
                           _%hd4213442281%_
                           _%tl4213542284%_
                           _%e4213642287%_
                           _%hd4213742291%_
                           _%tl4213842294%_
                           _%e4213942297%_
                           _%hd4214042301%_
                           _%tl4214142304%_)
                    (let ((_%L42307%_ _%hd4214042301%_)
                          (_%L42309%_ _%hd4213742291%_))
                      (if (gx#identifier? _%L42309%_)
                          (_%__kont4442344424%_ _%L42307%_ _%L42309%_)
                          (if (gx#stx-pair? _%hd4213742291%_)
                              (let ((_%e4215242196%_
                                     (gx#syntax-e _%hd4213742291%_)))
                                (let ((_%tl4215442203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4215242196%_)))
                                      (_%hd4215342200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4215242196%_))))
                                  (if (gx#stx-pair/null? _%tl4213842294%_)
                                      (let ((_%__splice4442744428%_
                                             (gx#syntax-split-splice
                                              _%tl4213842294%_
                                              '0)))
                                        (let ((_%tl4215742209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4442744428%_
                                                  '1)))
                                              (_%target4215542206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4442744428%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4215742209%_)
                                              (_%__match4447544476%_
                                               _%e4213342277%_
                                               _%hd4213442281%_
                                               _%tl4213542284%_
                                               _%e4213642287%_
                                               _%hd4213742291%_
                                               _%tl4213842294%_
                                               _%e4215242196%_
                                               _%hd4215342200%_
                                               _%tl4215442203%_
                                               _%__splice4442744428%_
                                               _%target4215542206%_
                                               _%tl4215742209%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4212942169%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4212942169%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4212942169%_))))))))
            (if (gx#stx-pair? _%__stx4442044421%_)
                (let ((_%e4213342277%_ (gx#syntax-e _%__stx4442044421%_)))
                  (let ((_%tl4213542284%_
                         (let () (declare (not safe)) (##cdr _%e4213342277%_)))
                        (_%hd4213442281%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4213342277%_))))
                    (if (gx#stx-pair? _%tl4213542284%_)
                        (let ((_%e4213642287%_ (gx#syntax-e _%tl4213542284%_)))
                          (let ((_%tl4213842294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4213642287%_)))
                                (_%hd4213742291%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4213642287%_))))
                            (if (gx#stx-pair? _%tl4213842294%_)
                                (let ((_%e4213942297%_
                                       (gx#syntax-e _%tl4213842294%_)))
                                  (let ((_%tl4214142304%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4213942297%_)))
                                        (_%hd4214042301%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4213942297%_))))
                                    (if (gx#stx-null? _%tl4214142304%_)
                                        (_%__match4444944450%_
                                         _%e4213342277%_
                                         _%hd4213442281%_
                                         _%tl4213542284%_
                                         _%e4213642287%_
                                         _%hd4213742291%_
                                         _%tl4213842294%_
                                         _%e4213942297%_
                                         _%hd4214042301%_
                                         _%tl4214142304%_)
                                        (if (gx#stx-pair? _%hd4213742291%_)
                                            (let ((_%e4215242196%_
                                                   (gx#syntax-e
                                                    _%hd4213742291%_)))
                                              (let ((_%tl4215442203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4215242196%_)))
                                                    (_%hd4215342200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4215242196%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4213842294%_)
                                                    (let ((_%__splice4442744428%_
                                                           (gx#syntax-split-splice
                                                            _%tl4213842294%_
                                                            '0)))
                                                      (let ((_%tl4215742209%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4442744428%_ '1)))
                    (_%target4215542206%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4442744428%_ '0))))
                (if (gx#stx-null? _%tl4215742209%_)
                    (_%__match4447544476%_
                     _%e4213342277%_
                     _%hd4213442281%_
                     _%tl4213542284%_
                     _%e4213642287%_
                     _%hd4213742291%_
                     _%tl4213842294%_
                     _%e4215242196%_
                     _%hd4215342200%_
                     _%tl4215442203%_
                     _%__splice4442744428%_
                     _%target4215542206%_
                     _%tl4215742209%_)
                    (let () (declare (not safe)) (_%g4212942169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4212942169%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4212942169%_))))))
                                (if (gx#stx-pair? _%hd4213742291%_)
                                    (let ((_%e4215242196%_
                                           (gx#syntax-e _%hd4213742291%_)))
                                      (let ((_%tl4215442203%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4215242196%_)))
                                            (_%hd4215342200%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4215242196%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4213842294%_)
                                            (let ((_%__splice4442744428%_
                                                   (gx#syntax-split-splice
                                                    _%tl4213842294%_
                                                    '0)))
                                              (let ((_%tl4215742209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4442744428%_
                                                        '1)))
                                                    (_%target4215542206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4442744428%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4215742209%_)
                                                    (_%__match4447544476%_
                                                     _%e4213342277%_
                                                     _%hd4213442281%_
                                                     _%tl4213542284%_
                                                     _%e4213642287%_
                                                     _%hd4213742291%_
                                                     _%tl4213842294%_
                                                     _%e4215242196%_
                                                     _%hd4215342200%_
                                                     _%tl4215442203%_
                                                     _%__splice4442744428%_
                                                     _%target4215542206%_
                                                     _%tl4215742209%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4212942169%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4212942169%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4212942169%_))))))
                        (let () (declare (not safe)) (_%g4212942169%_)))))
                (let () (declare (not safe)) (_%g4212942169%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42329%_)
       (let* ((_%g4233242352%_
               (lambda (_%g4233342348%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4233342348%_)))
              (_%g4233142423%_
               (lambda (_%g4233342356%_)
                 (if (gx#stx-pair? _%g4233342356%_)
                     (let ((_%e4233542359%_ (gx#syntax-e _%g4233342356%_)))
                       (let ((_%hd4233642363%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4233542359%_)))
                             (_%tl4233742366%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4233542359%_))))
                         (if (gx#stx-pair/null? _%tl4233742366%_)
                             (let ((_g44570_
                                    (gx#syntax-split-splice
                                     _%tl4233742366%_
                                     '0)))
                               (begin
                                 (let ((_g44571_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44570_)
                                              (##vector-length _g44570_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44571_ 2)))
                                       (error "Context expects 2 values"
                                              _g44571_)))
                                 (let ((_%target4233842369%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44570_ 0)))
                                       (_%tl4234042372%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44570_ 1))))
                                   (if (gx#stx-null? _%tl4234042372%_)
                                       (letrec ((_%loop4234142375%_
                                                 (lambda (_%hd4233942379%_
                                                          _%body4234542382%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4233942379%_)
                                                       (let ((_%e4234242385%_
                                                              (gx#syntax-e
                                                               _%hd4233942379%_)))
                                                         (let ((_%lp-hd4234342389%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4234242385%_)))
                       (_%lp-tl4234442392%_
                        (let () (declare (not safe)) (##cdr _%e4234242385%_))))
                   (_%loop4234142375%_
                    _%lp-tl4234442392%_
                    (cons _%lp-hd4234342389%_ _%body4234542382%_))))
               (let ((_%body4234642395%_ (reverse _%body4234542382%_)))
                 ((lambda (_%L42399%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4241442417%_
                                                _%g4241542420%_)
                                         (cons _%g4241442417%_
                                               _%g4241542420%_))
                                       '()
                                       _%L42399%_))))
                  _%body4234642395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4234142375%_
                                          _%target4233842369%_
                                          '()))
                                       (_%g4233242352%_ _%g4233342356%_)))))
                             (_%g4233242352%_ _%g4233342356%_))))
                     (_%g4233242352%_ _%g4233342356%_)))))
         (_%g4233142423%_ _%stx42329%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42428%_)
       (let* ((_%g4243142451%_
               (lambda (_%g4243242447%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4243242447%_)))
              (_%g4243042522%_
               (lambda (_%g4243242455%_)
                 (if (gx#stx-pair? _%g4243242455%_)
                     (let ((_%e4243442458%_ (gx#syntax-e _%g4243242455%_)))
                       (let ((_%hd4243542462%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4243442458%_)))
                             (_%tl4243642465%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4243442458%_))))
                         (if (gx#stx-pair/null? _%tl4243642465%_)
                             (let ((_g44572_
                                    (gx#syntax-split-splice
                                     _%tl4243642465%_
                                     '0)))
                               (begin
                                 (let ((_g44573_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44572_)
                                              (##vector-length _g44572_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44573_ 2)))
                                       (error "Context expects 2 values"
                                              _g44573_)))
                                 (let ((_%target4243742468%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44572_ 0)))
                                       (_%tl4243942471%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44572_ 1))))
                                   (if (gx#stx-null? _%tl4243942471%_)
                                       (letrec ((_%loop4244042474%_
                                                 (lambda (_%hd4243842478%_
                                                          _%body4244442481%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4243842478%_)
                                                       (let ((_%e4244142484%_
                                                              (gx#syntax-e
                                                               _%hd4243842478%_)))
                                                         (let ((_%lp-hd4244242488%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4244142484%_)))
                       (_%lp-tl4244342491%_
                        (let () (declare (not safe)) (##cdr _%e4244142484%_))))
                   (_%loop4244042474%_
                    _%lp-tl4244342491%_
                    (cons _%lp-hd4244242488%_ _%body4244442481%_))))
               (let ((_%body4244542494%_ (reverse _%body4244442481%_)))
                 ((lambda (_%L42498%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4251342516%_
                                                _%g4251442519%_)
                                         (cons _%g4251342516%_
                                               _%g4251442519%_))
                                       '()
                                       _%L42498%_))))
                  _%body4244542494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4244042474%_
                                          _%target4243742468%_
                                          '()))
                                       (_%g4243142451%_ _%g4243242455%_)))))
                             (_%g4243142451%_ _%g4243242455%_))))
                     (_%g4243142451%_ _%g4243242455%_)))))
         (_%g4243042522%_ _%stx42428%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42527%_)
       (let* ((_%g4253042554%_
               (lambda (_%g4253142550%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4253142550%_)))
              (_%g4252942682%_
               (lambda (_%g4253142558%_)
                 (if (gx#stx-pair? _%g4253142558%_)
                     (let ((_%e4253442561%_ (gx#syntax-e _%g4253142558%_)))
                       (let ((_%hd4253542565%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4253442561%_)))
                             (_%tl4253642568%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4253442561%_))))
                         (if (gx#stx-pair? _%tl4253642568%_)
                             (let ((_%e4253742571%_
                                    (gx#syntax-e _%tl4253642568%_)))
                               (let ((_%hd4253842575%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4253742571%_)))
                                     (_%tl4253942578%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4253742571%_))))
                                 (if (gx#stx-pair/null? _%tl4253942578%_)
                                     (let ((_g44574_
                                            (gx#syntax-split-splice
                                             _%tl4253942578%_
                                             '0)))
                                       (begin
                                         (let ((_g44575_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44574_)
                                                      (##vector-length
                                                       _g44574_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44575_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44575_)))
                                         (let ((_%target4254042581%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44574_ 0)))
                                               (_%tl4254242584%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44574_ 1))))
                                           (if (gx#stx-null? _%tl4254242584%_)
                                               (letrec ((_%loop4254342587%_
                                                         (lambda (_%hd4254142591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4254742594%_)
                   (if (gx#stx-pair? _%hd4254142591%_)
                       (let ((_%e4254442597%_ (gx#syntax-e _%hd4254142591%_)))
                         (let ((_%lp-hd4254542601%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4254442597%_)))
                               (_%lp-tl4254642604%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4254442597%_))))
                           (_%loop4254342587%_
                            _%lp-tl4254642604%_
                            (cons _%lp-hd4254542601%_ _%id4254742594%_))))
                       (let ((_%id4254842607%_ (reverse _%id4254742594%_)))
                         ((lambda (_%L42611%_ _%L42613%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4263042633%_
                                                 _%g4263142636%_)
                                          (cons _%g4263042633%_
                                                _%g4263142636%_))
                                        '()
                                        _%L42611%_))
                                (let* ((_%keys42647%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4263842641%_
                                                         _%g4263942644%_)
                                                  (cons _%g4263842641%_
                                                        _%g4263942644%_))
                                                '()
                                                _%L42611%_)))
                                       (_%keytab42658%_
                                        (let ((_%ht42650%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4265242654%_)
                                             (hash-put!
                                              _%ht42650%_
                                              _%g4265242654%_
                                              '#t))
                                           _%keys42647%_)
                                          _%ht42650%_))
                                       (_%imports42661%_
                                        (gx#core-expand-import-source
                                         _%L42613%_))
                                       (_%fold-e42677%_
                                        (letrec ((_%fold-e42664%_
                                                  (lambda (_%in42667%_
                                                           _%r42669%_)
                                                    (if (gx#module-import?
                                                         _%in42667%_)
                                                        (if (hash-get
                                                             _%keytab42658%_
                                                             (gx#module-import-name
                                                              _%in42667%_))
                                                            (cons _%in42667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42669%_)
                    _%r42669%_)
                (if (gx#import-set? _%in42667%_)
                    (foldl _%fold-e42664%_
                           _%r42669%_
                           (gx#import-set-imports _%in42667%_))
                    _%r42669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42664%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42677%_
                                               '()
                                               _%imports42661%_)))
                                (_%g4253042554%_ _%g4253142558%_)))
                          _%id4254842607%_
                          _%hd4253842575%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4254342587%_
                                                  _%target4254042581%_
                                                  '()))
                                               (_%g4253042554%_
                                                _%g4253142558%_)))))
                                     (_%g4253042554%_ _%g4253142558%_))))
                             (_%g4253042554%_ _%g4253142558%_))))
                     (_%g4253042554%_ _%g4253142558%_)))))
         (_%g4252942682%_ _%stx42527%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42687%_)
       (let* ((_%g4269042714%_
               (lambda (_%g4269142710%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4269142710%_)))
              (_%g4268942842%_
               (lambda (_%g4269142718%_)
                 (if (gx#stx-pair? _%g4269142718%_)
                     (let ((_%e4269442721%_ (gx#syntax-e _%g4269142718%_)))
                       (let ((_%hd4269542725%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4269442721%_)))
                             (_%tl4269642728%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4269442721%_))))
                         (if (gx#stx-pair? _%tl4269642728%_)
                             (let ((_%e4269742731%_
                                    (gx#syntax-e _%tl4269642728%_)))
                               (let ((_%hd4269842735%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4269742731%_)))
                                     (_%tl4269942738%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4269742731%_))))
                                 (if (gx#stx-pair/null? _%tl4269942738%_)
                                     (let ((_g44576_
                                            (gx#syntax-split-splice
                                             _%tl4269942738%_
                                             '0)))
                                       (begin
                                         (let ((_g44577_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44576_)
                                                      (##vector-length
                                                       _g44576_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44577_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44577_)))
                                         (let ((_%target4270042741%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44576_ 0)))
                                               (_%tl4270242744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44576_ 1))))
                                           (if (gx#stx-null? _%tl4270242744%_)
                                               (letrec ((_%loop4270342747%_
                                                         (lambda (_%hd4270142751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4270742754%_)
                   (if (gx#stx-pair? _%hd4270142751%_)
                       (let ((_%e4270442757%_ (gx#syntax-e _%hd4270142751%_)))
                         (let ((_%lp-hd4270542761%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4270442757%_)))
                               (_%lp-tl4270642764%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4270442757%_))))
                           (_%loop4270342747%_
                            _%lp-tl4270642764%_
                            (cons _%lp-hd4270542761%_ _%id4270742754%_))))
                       (let ((_%id4270842767%_ (reverse _%id4270742754%_)))
                         ((lambda (_%L42771%_ _%L42773%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4279042793%_
                                                 _%g4279142796%_)
                                          (cons _%g4279042793%_
                                                _%g4279142796%_))
                                        '()
                                        _%L42771%_))
                                (let* ((_%keys42807%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4279842801%_
                                                         _%g4279942804%_)
                                                  (cons _%g4279842801%_
                                                        _%g4279942804%_))
                                                '()
                                                _%L42771%_)))
                                       (_%keytab42818%_
                                        (let ((_%ht42810%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4281242814%_)
                                             (hash-put!
                                              _%ht42810%_
                                              _%g4281242814%_
                                              '#t))
                                           _%keys42807%_)
                                          _%ht42810%_))
                                       (_%imports42821%_
                                        (gx#core-expand-import-source
                                         _%L42773%_))
                                       (_%fold-e42837%_
                                        (letrec ((_%fold-e42824%_
                                                  (lambda (_%in42827%_
                                                           _%r42829%_)
                                                    (if (gx#module-import?
                                                         _%in42827%_)
                                                        (if (hash-get
                                                             _%keytab42818%_
                                                             (gx#module-import-name
                                                              _%in42827%_))
                                                            _%r42829%_
                                                            (cons _%in42827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42829%_))
                (if (gx#import-set? _%in42827%_)
                    (foldl _%fold-e42824%_
                           _%r42829%_
                           (gx#import-set-imports _%in42827%_))
                    (cons _%in42827%_ _%r42829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42824%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42837%_
                                               '()
                                               _%imports42821%_)))
                                (_%g4269042714%_ _%g4269142718%_)))
                          _%id4270842767%_
                          _%hd4269842735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4270342747%_
                                                  _%target4270042741%_
                                                  '()))
                                               (_%g4269042714%_
                                                _%g4269142718%_)))))
                                     (_%g4269042714%_ _%g4269142718%_))))
                             (_%g4269042714%_ _%g4269142718%_))))
                     (_%g4269042714%_ _%g4269142718%_)))))
         (_%g4268942842%_ _%stx42687%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in42894%_ _%rename42896%_)
      (gx#make-module-import
       (gx#module-import-source _%in42894%_)
       _%rename42896%_
       (gx#module-import-phi _%in42894%_)
       (gx#module-import-weak? _%in42894%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42847%_ _%pre42849%_)
      (let* ((_%name4285042858%_ _%name42847%_)
             (_%else4285242870%_
              (lambda () (make-symbol _%pre42849%_ _%name42847%_)))
             (_%K4285442878%_
              (lambda (_%mark42874%_ _%id42876%_)
                (cons (make-symbol _%pre42849%_ _%id42876%_) _%mark42874%_))))
        (if (pair? _%name4285042858%_)
            (let ((_%hd4285542882%_
                   (let () (declare (not safe)) (##car _%name4285042858%_)))
                  (_%tl4285642885%_
                   (let () (declare (not safe)) (##cdr _%name4285042858%_))))
              (let* ((_%id42888%_ _%hd4285542882%_)
                     (_%mark42891%_ _%tl4285642885%_))
                (_%K4285442878%_ _%mark42891%_ _%id42888%_)))
            (_%else4285242870%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx42898%_)
       (let* ((_%g4290142934%_
               (lambda (_%g4290242930%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4290242930%_)))
              (_%g4290043129%_
               (lambda (_%g4290242938%_)
                 (if (gx#stx-pair? _%g4290242938%_)
                     (let ((_%e4290642941%_ (gx#syntax-e _%g4290242938%_)))
                       (let ((_%hd4290742945%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4290642941%_)))
                             (_%tl4290842948%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4290642941%_))))
                         (if (gx#stx-pair? _%tl4290842948%_)
                             (let ((_%e4290942951%_
                                    (gx#syntax-e _%tl4290842948%_)))
                               (let ((_%hd4291042955%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4290942951%_)))
                                     (_%tl4291142958%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4290942951%_))))
                                 (if (gx#stx-pair/null? _%tl4291142958%_)
                                     (let ((_g44578_
                                            (gx#syntax-split-splice
                                             _%tl4291142958%_
                                             '0)))
                                       (begin
                                         (let ((_g44579_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44578_)
                                                      (##vector-length
                                                       _g44578_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44579_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44579_)))
                                         (let ((_%target4291242961%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44578_ 0)))
                                               (_%tl4291442964%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44578_ 1))))
                                           (if (gx#stx-null? _%tl4291442964%_)
                                               (letrec ((_%loop4291542967%_
                                                         (lambda (_%hd4291342971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4291942974%_
                          _%id4292042976%_)
                   (if (gx#stx-pair? _%hd4291342971%_)
                       (let ((_%e4291642979%_ (gx#syntax-e _%hd4291342971%_)))
                         (let ((_%lp-hd4291742983%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4291642979%_)))
                               (_%lp-tl4291842986%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4291642979%_))))
                           (if (gx#stx-pair? _%lp-hd4291742983%_)
                               (let ((_%e4292342989%_
                                      (gx#syntax-e _%lp-hd4291742983%_)))
                                 (let ((_%hd4292442993%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4292342989%_)))
                                       (_%tl4292542996%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4292342989%_))))
                                   (if (gx#stx-pair? _%tl4292542996%_)
                                       (let ((_%e4292642999%_
                                              (gx#syntax-e _%tl4292542996%_)))
                                         (let ((_%hd4292743003%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4292642999%_)))
                                               (_%tl4292843006%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4292642999%_))))
                                           (if (gx#stx-null? _%tl4292843006%_)
                                               (_%loop4291542967%_
                                                _%lp-tl4291842986%_
                                                (cons _%hd4292743003%_
                                                      _%new-id4291942974%_)
                                                (cons _%hd4292442993%_
                                                      _%id4292042976%_))
                                               (_%g4290142934%_
                                                _%g4290242938%_))))
                                       (_%g4290142934%_ _%g4290242938%_))))
                               (_%g4290142934%_ _%g4290242938%_))))
                       (let ((_%new-id4292143009%_
                              (reverse _%new-id4291942974%_))
                             (_%id4292243012%_ (reverse _%id4292042976%_)))
                         ((lambda (_%L43015%_ _%L43017%_ _%L43018%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4303643039%_
                                                      _%g4303743042%_)
                                               (cons _%g4303643039%_
                                                     _%g4303743042%_))
                                             '()
                                             _%L43017%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4304443047%_
                                                      _%g4304543050%_)
                                               (cons _%g4304443047%_
                                                     _%g4304543050%_))
                                             '()
                                             _%L43015%_)))
                                (let* ((_%keytab43053%_ (make-hash-table))
                                       (_%found43056%_ (make-hash-table))
                                       (_%_43079%_
                                        (for-each
                                         (lambda (_%id43059%_ _%new-id43061%_)
                                           (hash-put!
                                            _%keytab43053%_
                                            (gx#core-identifier-key
                                             _%id43059%_)
                                            (gx#core-identifier-key
                                             _%new-id43061%_)))
                                         (foldr (lambda (_%g4306243065%_
                                                         _%g4306343068%_)
                                                  (cons _%g4306243065%_
                                                        _%g4306343068%_))
                                                '()
                                                _%L43017%_)
                                         (foldr (lambda (_%g4307043073%_
                                                         _%g4307143076%_)
                                                  (cons _%g4307043073%_
                                                        _%g4307143076%_))
                                                '()
                                                _%L43015%_)))
                                       (_%imports43082%_
                                        (gx#core-expand-import-source
                                         _%L43018%_))
                                       (_%fold-e43110%_
                                        (letrec ((_%fold-e43085%_
                                                  (lambda (_%in43088%_
                                                           _%r43090%_)
                                                    (if (gx#module-import?
                                                         _%in43088%_)
                                                        (let* ((_%name43094%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43088%_))
                       (_%$e43097%_ (hash-get _%keytab43053%_ _%name43094%_)))
                  (if _%$e43097%_
                      ((lambda (_%rename43101%_)
                         (hash-put! _%found43056%_ _%name43094%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43088%_
                                _%rename43101%_)
                               _%r43090%_))
                       _%$e43097%_)
                      (cons _%in43088%_ _%r43090%_)))
                (if (gx#import-set? _%in43088%_)
                    (foldl _%fold-e43085%_
                           _%r43090%_
                           (gx#import-set-imports _%in43088%_))
                    (cons _%in43088%_ _%r43090%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43085%_))
                                       (_%new-imports43113%_
                                        (foldl _%fold-e43110%_
                                               '()
                                               _%imports43082%_)))
                                  (for-each
                                   (lambda (_%id43118%_)
                                     (if (hash-get
                                          _%found43056%_
                                          (gx#core-identifier-key _%id43118%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx42898%_
                                          _%id43118%_)))
                                   (foldr (lambda (_%g4312043123%_
                                                   _%g4312143126%_)
                                            (cons _%g4312043123%_
                                                  _%g4312143126%_))
                                          '()
                                          _%L43017%_))
                                  (cons 'begin: _%new-imports43113%_))
                                (_%g4290142934%_ _%g4290242938%_)))
                          _%new-id4292143009%_
                          _%id4292243012%_
                          _%hd4291042955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4291542967%_
                                                  _%target4291242961%_
                                                  '()
                                                  '()))
                                               (_%g4290142934%_
                                                _%g4290242938%_)))))
                                     (_%g4290142934%_ _%g4290242938%_))))
                             (_%g4290142934%_ _%g4290242938%_))))
                     (_%g4290142934%_ _%g4290242938%_)))))
         (_%g4290043129%_ _%stx42898%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43134%_)
       (let* ((_%g4313743155%_
               (lambda (_%g4313843151%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4313843151%_)))
              (_%g4313643240%_
               (lambda (_%g4313843159%_)
                 (if (gx#stx-pair? _%g4313843159%_)
                     (let ((_%e4314143162%_ (gx#syntax-e _%g4313843159%_)))
                       (let ((_%hd4314243166%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4314143162%_)))
                             (_%tl4314343169%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4314143162%_))))
                         (if (gx#stx-pair? _%tl4314343169%_)
                             (let ((_%e4314443172%_
                                    (gx#syntax-e _%tl4314343169%_)))
                               (let ((_%hd4314543176%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4314443172%_)))
                                     (_%tl4314643179%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4314443172%_))))
                                 (if (gx#stx-pair? _%tl4314643179%_)
                                     (let ((_%e4314743182%_
                                            (gx#syntax-e _%tl4314643179%_)))
                                       (let ((_%hd4314843186%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4314743182%_)))
                                             (_%tl4314943189%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4314743182%_))))
                                         (if (gx#stx-null? _%tl4314943189%_)
                                             ((lambda (_%L43192%_ _%L43194%_)
                                                (if (gx#identifier? _%L43192%_)
                                                    (let* ((_%pre43210%_
                                                            (gx#stx-e
                                                             _%L43192%_))
                                                           (_%imports43213%_
                                                            (gx#core-expand-import-source
                                                             _%L43194%_))
                                                           (_%rename-e43219%_
                                                            (lambda (_%name43216%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43216%_
                                                               _%pre43210%_)))
                                                           (_%fold-e43235%_
                                                            (letrec ((_%fold-e43222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43225%_ _%r43227%_)
                                (if (gx#module-import? _%in43225%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43225%_
                                           (_%rename-e43219%_
                                            (gx#module-import-name
                                             _%in43225%_)))
                                          _%r43227%_)
                                    (if (gx#import-set? _%in43225%_)
                                        (foldl _%fold-e43222%_
                                               _%r43227%_
                                               (gx#import-set-imports
                                                _%in43225%_))
                                        (cons _%in43225%_ _%r43227%_))))))
                      _%fold-e43222%_)))
              (cons 'begin: (foldl _%fold-e43235%_ '() _%imports43213%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4313743155%_
                                                     _%g4313843159%_)))
                                              _%hd4314843186%_
                                              _%hd4314543176%_)
                                             (_%g4313743155%_
                                              _%g4313843159%_))))
                                     (_%g4313743155%_ _%g4313843159%_))))
                             (_%g4313743155%_ _%g4313843159%_))))
                     (_%g4313743155%_ _%g4313843159%_)))))
         (_%g4313643240%_ _%stx43134%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43244%_)
       (letrec ((_%flatten43247%_
                 (lambda (_%list-of-lists43502%_)
                   (foldr (lambda (_%v43505%_ _%acc43507%_)
                            (if (null? _%v43505%_)
                                _%acc43507%_
                                (if (pair? _%v43505%_)
                                    (append (_%flatten43247%_ _%v43505%_)
                                            _%acc43507%_)
                                    (cons _%v43505%_ _%acc43507%_))))
                          '()
                          _%list-of-lists43502%_)))
                (_%expand-path43249%_
                 (lambda (_%top43370%_ _%mod43372%_)
                   (let* ((_%__stx4447844479%_ _%mod43372%_)
                          (_%g4337543397%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4447844479%_))))
                     (let ((_%__kont4448144482%_
                            (lambda (_%L43465%_ _%L43467%_)
                              (map (lambda (_%mod43482%_)
                                     (gx#stx-identifier
                                      _%top43370%_
                                      _%top43370%_
                                      '"/"
                                      _%mod43482%_))
                                   (_%flatten43247%_
                                    (map (lambda (_%g4348443486%_)
                                           (_%expand-path43249%_
                                            _%L43467%_
                                            _%g4348443486%_))
                                         (foldr (lambda (_%g4348943492%_
                                                         _%g4349043495%_)
                                                  (cons _%g4348943492%_
                                                        _%g4349043495%_))
                                                '()
                                                _%L43465%_))))))
                           (_%__kont4448544486%_
                            (lambda (_%L43404%_)
                              (gx#stx-identifier
                               _%top43370%_
                               _%top43370%_
                               '"/"
                               _%L43404%_))))
                       (let* ((_%g4337443418%_
                               (lambda ()
                                 (let ((_%L43404%_ _%__stx4447844479%_))
                                   (if (or (gx#identifier? _%L43404%_)
                                           (gx#stx-fixnum? _%L43404%_))
                                       (_%__kont4448544486%_ _%L43404%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4337543397%_))))))
                              (_%__match4450144502%_
                               (lambda (_%e4337943425%_
                                        _%hd4338043429%_
                                        _%tl4338143432%_
                                        _%__splice4448344484%_
                                        _%target4338243435%_
                                        _%tl4338443438%_)
                                 (letrec ((_%loop4338543441%_
                                           (lambda (_%hd4338343445%_
                                                    _%mod4338943448%_)
                                             (if (gx#stx-pair?
                                                  _%hd4338343445%_)
                                                 (let ((_%e4338643451%_
                                                        (gx#syntax-e
                                                         _%hd4338343445%_)))
                                                   (let ((_%lp-tl4338843458%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4338643451%_)))
                                                         (_%lp-hd4338743455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4338643451%_))))
                                                     (_%loop4338543441%_
                                                      _%lp-tl4338843458%_
                                                      (cons _%lp-hd4338743455%_
                                                            _%mod4338943448%_))))
                                                 (let ((_%mod4339043461%_
                                                        (reverse _%mod4338943448%_)))
                                                   (_%__kont4448144482%_
                                                    _%mod4339043461%_
                                                    _%hd4338043429%_))))))
                                   (_%loop4338543441%_
                                    _%target4338243435%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4447844479%_)
                             (let ((_%e4337943425%_
                                    (gx#syntax-e _%__stx4447844479%_)))
                               (let ((_%tl4338143432%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4337943425%_)))
                                     (_%hd4338043429%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4337943425%_))))
                                 (if (gx#stx-pair/null? _%tl4338143432%_)
                                     (let ((_%__splice4448344484%_
                                            (gx#syntax-split-splice
                                             _%tl4338143432%_
                                             '0)))
                                       (let ((_%tl4338443438%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4448344484%_
                                                 '1)))
                                             (_%target4338243435%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4448344484%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4338443438%_)
                                             (_%__match4450144502%_
                                              _%e4337943425%_
                                              _%hd4338043429%_
                                              _%tl4338143432%_
                                              _%__splice4448344484%_
                                              _%target4338243435%_
                                              _%tl4338443438%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4337443418%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4337443418%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4337443418%_)))))))))
         (let* ((_%g4325143275%_
                 (lambda (_%g4325243271%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4325243271%_)))
                (_%g4325043366%_
                 (lambda (_%g4325243279%_)
                   (if (gx#stx-pair? _%g4325243279%_)
                       (let ((_%e4325543282%_ (gx#syntax-e _%g4325243279%_)))
                         (let ((_%hd4325643286%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4325543282%_)))
                               (_%tl4325743289%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4325543282%_))))
                           (if (gx#stx-pair? _%tl4325743289%_)
                               (let ((_%e4325843292%_
                                      (gx#syntax-e _%tl4325743289%_)))
                                 (let ((_%hd4325943296%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4325843292%_)))
                                       (_%tl4326043299%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4325843292%_))))
                                   (if (gx#stx-pair/null? _%tl4326043299%_)
                                       (let ((_g44580_
                                              (gx#syntax-split-splice
                                               _%tl4326043299%_
                                               '0)))
                                         (begin
                                           (let ((_g44581_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44580_)
                                                        (##vector-length
                                                         _g44580_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44581_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44581_)))
                                           (let ((_%target4326143302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44580_ 0)))
                                                 (_%tl4326343305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44580_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4326343305%_)
                                                 (letrec ((_%loop4326443308%_
                                                           (lambda (_%hd4326243312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4326843315%_)
                     (if (gx#stx-pair? _%hd4326243312%_)
                         (let ((_%e4326543318%_
                                (gx#syntax-e _%hd4326243312%_)))
                           (let ((_%lp-hd4326643322%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4326543318%_)))
                                 (_%lp-tl4326743325%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4326543318%_))))
                             (_%loop4326443308%_
                              _%lp-tl4326743325%_
                              (cons _%lp-hd4326643322%_ _%mod4326843315%_))))
                         (let ((_%mod4326943328%_ (reverse _%mod4326843315%_)))
                           ((lambda (_%L43332%_ _%L43334%_)
                              (cons 'begin:
                                    (_%flatten43247%_
                                     (map (lambda (_%g4335243354%_)
                                            (_%expand-path43249%_
                                             _%L43334%_
                                             _%g4335243354%_))
                                          (foldr (lambda (_%g4335743360%_
                                                          _%g4335843363%_)
                                                   (cons _%g4335743360%_
                                                         _%g4335843363%_))
                                                 '()
                                                 _%L43332%_)))))
                            _%mod4326943328%_
                            _%hd4325943296%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4326443308%_
                                                    _%target4326143302%_
                                                    '()))
                                                 (_%g4325143275%_
                                                  _%g4325243279%_)))))
                                       (_%g4325143275%_ _%g4325243279%_))))
                               (_%g4325143275%_ _%g4325243279%_))))
                       (_%g4325143275%_ _%g4325243279%_)))))
           (_%g4325043366%_ _%stx43244%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43517%_)
       (let* ((_%g4352043544%_
               (lambda (_%g4352143540%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4352143540%_)))
              (_%g4351943672%_
               (lambda (_%g4352143548%_)
                 (if (gx#stx-pair? _%g4352143548%_)
                     (let ((_%e4352443551%_ (gx#syntax-e _%g4352143548%_)))
                       (let ((_%hd4352543555%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4352443551%_)))
                             (_%tl4352643558%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4352443551%_))))
                         (if (gx#stx-pair? _%tl4352643558%_)
                             (let ((_%e4352743561%_
                                    (gx#syntax-e _%tl4352643558%_)))
                               (let ((_%hd4352843565%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4352743561%_)))
                                     (_%tl4352943568%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4352743561%_))))
                                 (if (gx#stx-pair/null? _%tl4352943568%_)
                                     (let ((_g44582_
                                            (gx#syntax-split-splice
                                             _%tl4352943568%_
                                             '0)))
                                       (begin
                                         (let ((_g44583_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44582_)
                                                      (##vector-length
                                                       _g44582_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44583_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44583_)))
                                         (let ((_%target4353043571%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44582_ 0)))
                                               (_%tl4353243574%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44582_ 1))))
                                           (if (gx#stx-null? _%tl4353243574%_)
                                               (letrec ((_%loop4353343577%_
                                                         (lambda (_%hd4353143581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4353743584%_)
                   (if (gx#stx-pair? _%hd4353143581%_)
                       (let ((_%e4353443587%_ (gx#syntax-e _%hd4353143581%_)))
                         (let ((_%lp-hd4353543591%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4353443587%_)))
                               (_%lp-tl4353643594%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4353443587%_))))
                           (_%loop4353343577%_
                            _%lp-tl4353643594%_
                            (cons _%lp-hd4353543591%_ _%id4353743584%_))))
                       (let ((_%id4353843597%_ (reverse _%id4353743584%_)))
                         ((lambda (_%L43601%_ _%L43603%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4362043623%_
                                                 _%g4362143626%_)
                                          (cons _%g4362043623%_
                                                _%g4362143626%_))
                                        '()
                                        _%L43601%_))
                                (let* ((_%keys43637%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4362843631%_
                                                         _%g4362943634%_)
                                                  (cons _%g4362843631%_
                                                        _%g4362943634%_))
                                                '()
                                                _%L43601%_)))
                                       (_%keytab43648%_
                                        (let ((_%ht43640%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4364243644%_)
                                             (hash-put!
                                              _%ht43640%_
                                              _%g4364243644%_
                                              '#t))
                                           _%keys43637%_)
                                          _%ht43640%_))
                                       (_%exports43651%_
                                        (gx#core-expand-export-source
                                         _%L43603%_))
                                       (_%fold-e43667%_
                                        (letrec ((_%fold-e43654%_
                                                  (lambda (_%out43657%_
                                                           _%r43659%_)
                                                    (if (gx#module-export?
                                                         _%out43657%_)
                                                        (if (hash-get
                                                             _%keytab43648%_
                                                             (gx#module-export-name
                                                              _%out43657%_))
                                                            _%r43659%_
                                                            (cons _%out43657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43659%_))
                (if (gx#export-set? _%out43657%_)
                    (foldl _%fold-e43654%_
                           _%r43659%_
                           (gx#export-set-exports _%out43657%_))
                    _%r43659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43654%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43667%_
                                               '()
                                               _%exports43651%_)))
                                (_%g4352043544%_ _%g4352143548%_)))
                          _%id4353843597%_
                          _%hd4352843565%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4353343577%_
                                                  _%target4353043571%_
                                                  '()))
                                               (_%g4352043544%_
                                                _%g4352143548%_)))))
                                     (_%g4352043544%_ _%g4352143548%_))))
                             (_%g4352043544%_ _%g4352143548%_))))
                     (_%g4352043544%_ _%g4352143548%_)))))
         (_%g4351943672%_ _%stx43517%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43677%_ _%rename43679%_)
      (gx#make-module-export
       (gx#module-export-context _%out43677%_)
       (gx#module-export-key _%out43677%_)
       (gx#module-export-phi _%out43677%_)
       _%rename43679%_
       (gx#module-export-weak? _%out43677%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43681%_)
       (let* ((_%g4368443717%_
               (lambda (_%g4368543713%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4368543713%_)))
              (_%g4368343912%_
               (lambda (_%g4368543721%_)
                 (if (gx#stx-pair? _%g4368543721%_)
                     (let ((_%e4368943724%_ (gx#syntax-e _%g4368543721%_)))
                       (let ((_%hd4369043728%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4368943724%_)))
                             (_%tl4369143731%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4368943724%_))))
                         (if (gx#stx-pair? _%tl4369143731%_)
                             (let ((_%e4369243734%_
                                    (gx#syntax-e _%tl4369143731%_)))
                               (let ((_%hd4369343738%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4369243734%_)))
                                     (_%tl4369443741%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4369243734%_))))
                                 (if (gx#stx-pair/null? _%tl4369443741%_)
                                     (let ((_g44584_
                                            (gx#syntax-split-splice
                                             _%tl4369443741%_
                                             '0)))
                                       (begin
                                         (let ((_g44585_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44584_)
                                                      (##vector-length
                                                       _g44584_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44585_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44585_)))
                                         (let ((_%target4369543744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44584_ 0)))
                                               (_%tl4369743747%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44584_ 1))))
                                           (if (gx#stx-null? _%tl4369743747%_)
                                               (letrec ((_%loop4369843750%_
                                                         (lambda (_%hd4369643754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4370243757%_
                          _%id4370343759%_)
                   (if (gx#stx-pair? _%hd4369643754%_)
                       (let ((_%e4369943762%_ (gx#syntax-e _%hd4369643754%_)))
                         (let ((_%lp-hd4370043766%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4369943762%_)))
                               (_%lp-tl4370143769%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4369943762%_))))
                           (if (gx#stx-pair? _%lp-hd4370043766%_)
                               (let ((_%e4370643772%_
                                      (gx#syntax-e _%lp-hd4370043766%_)))
                                 (let ((_%hd4370743776%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4370643772%_)))
                                       (_%tl4370843779%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4370643772%_))))
                                   (if (gx#stx-pair? _%tl4370843779%_)
                                       (let ((_%e4370943782%_
                                              (gx#syntax-e _%tl4370843779%_)))
                                         (let ((_%hd4371043786%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4370943782%_)))
                                               (_%tl4371143789%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4370943782%_))))
                                           (if (gx#stx-null? _%tl4371143789%_)
                                               (_%loop4369843750%_
                                                _%lp-tl4370143769%_
                                                (cons _%hd4371043786%_
                                                      _%new-id4370243757%_)
                                                (cons _%hd4370743776%_
                                                      _%id4370343759%_))
                                               (_%g4368443717%_
                                                _%g4368543721%_))))
                                       (_%g4368443717%_ _%g4368543721%_))))
                               (_%g4368443717%_ _%g4368543721%_))))
                       (let ((_%new-id4370443792%_
                              (reverse _%new-id4370243757%_))
                             (_%id4370543795%_ (reverse _%id4370343759%_)))
                         ((lambda (_%L43798%_ _%L43800%_ _%L43801%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4381943822%_
                                                      _%g4382043825%_)
                                               (cons _%g4381943822%_
                                                     _%g4382043825%_))
                                             '()
                                             _%L43800%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4382743830%_
                                                      _%g4382843833%_)
                                               (cons _%g4382743830%_
                                                     _%g4382843833%_))
                                             '()
                                             _%L43798%_)))
                                (let* ((_%keytab43836%_ (make-hash-table))
                                       (_%found43839%_ (make-hash-table))
                                       (_%_43862%_
                                        (for-each
                                         (lambda (_%id43842%_ _%new-id43844%_)
                                           (hash-put!
                                            _%keytab43836%_
                                            (gx#core-identifier-key
                                             _%id43842%_)
                                            (gx#core-identifier-key
                                             _%new-id43844%_)))
                                         (foldr (lambda (_%g4384543848%_
                                                         _%g4384643851%_)
                                                  (cons _%g4384543848%_
                                                        _%g4384643851%_))
                                                '()
                                                _%L43800%_)
                                         (foldr (lambda (_%g4385343856%_
                                                         _%g4385443859%_)
                                                  (cons _%g4385343856%_
                                                        _%g4385443859%_))
                                                '()
                                                _%L43798%_)))
                                       (_%exports43865%_
                                        (gx#core-expand-export-source
                                         _%L43801%_))
                                       (_%fold-e43893%_
                                        (letrec ((_%fold-e43868%_
                                                  (lambda (_%out43871%_
                                                           _%r43873%_)
                                                    (if (gx#module-export?
                                                         _%out43871%_)
                                                        (let* ((_%name43877%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43871%_))
                       (_%$e43880%_ (hash-get _%keytab43836%_ _%name43877%_)))
                  (if _%$e43880%_
                      ((lambda (_%rename43884%_)
                         (hash-put! _%found43839%_ _%name43877%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43871%_
                                _%rename43884%_)
                               _%r43873%_))
                       _%$e43880%_)
                      (cons _%out43871%_ _%r43873%_)))
                (if (gx#export-set? _%out43871%_)
                    (foldl _%fold-e43868%_
                           _%r43873%_
                           (gx#export-set-exports _%out43871%_))
                    (cons _%out43871%_ _%r43873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43868%_))
                                       (_%new-exports43896%_
                                        (foldl _%fold-e43893%_
                                               '()
                                               _%exports43865%_)))
                                  (for-each
                                   (lambda (_%id43901%_)
                                     (if (hash-get
                                          _%found43839%_
                                          (gx#core-identifier-key _%id43901%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43681%_
                                          _%id43901%_)))
                                   (foldr (lambda (_%g4390343906%_
                                                   _%g4390443909%_)
                                            (cons _%g4390343906%_
                                                  _%g4390443909%_))
                                          '()
                                          _%L43800%_))
                                  (cons 'begin: _%new-exports43896%_))
                                (_%g4368443717%_ _%g4368543721%_)))
                          _%new-id4370443792%_
                          _%id4370543795%_
                          _%hd4369343738%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4369843750%_
                                                  _%target4369543744%_
                                                  '()
                                                  '()))
                                               (_%g4368443717%_
                                                _%g4368543721%_)))))
                                     (_%g4368443717%_ _%g4368543721%_))))
                             (_%g4368443717%_ _%g4368543721%_))))
                     (_%g4368443717%_ _%g4368543721%_)))))
         (_%g4368343912%_ _%stx43681%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx43917%_)
       (let* ((_%g4392043938%_
               (lambda (_%g4392143934%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4392143934%_)))
              (_%g4391944023%_
               (lambda (_%g4392143942%_)
                 (if (gx#stx-pair? _%g4392143942%_)
                     (let ((_%e4392443945%_ (gx#syntax-e _%g4392143942%_)))
                       (let ((_%hd4392543949%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4392443945%_)))
                             (_%tl4392643952%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4392443945%_))))
                         (if (gx#stx-pair? _%tl4392643952%_)
                             (let ((_%e4392743955%_
                                    (gx#syntax-e _%tl4392643952%_)))
                               (let ((_%hd4392843959%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4392743955%_)))
                                     (_%tl4392943962%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4392743955%_))))
                                 (if (gx#stx-pair? _%tl4392943962%_)
                                     (let ((_%e4393043965%_
                                            (gx#syntax-e _%tl4392943962%_)))
                                       (let ((_%hd4393143969%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4393043965%_)))
                                             (_%tl4393243972%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4393043965%_))))
                                         (if (gx#stx-null? _%tl4393243972%_)
                                             ((lambda (_%L43975%_ _%L43977%_)
                                                (if (gx#identifier? _%L43975%_)
                                                    (let* ((_%pre43993%_
                                                            (gx#stx-e
                                                             _%L43975%_))
                                                           (_%exports43996%_
                                                            (gx#core-expand-export-source
                                                             _%L43977%_))
                                                           (_%rename-e44002%_
                                                            (lambda (_%name43999%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43999%_
                                                               _%pre43993%_)))
                                                           (_%fold-e44018%_
                                                            (letrec ((_%fold-e44005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44008%_ _%r44010%_)
                                (if (gx#module-export? _%out44008%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44008%_
                                           (_%rename-e44002%_
                                            (gx#module-export-name
                                             _%out44008%_)))
                                          _%r44010%_)
                                    (if (gx#export-set? _%out44008%_)
                                        (foldl _%fold-e44005%_
                                               _%r44010%_
                                               (gx#export-set-exports
                                                _%out44008%_))
                                        (cons _%out44008%_ _%r44010%_))))))
                      _%fold-e44005%_)))
              (cons 'begin: (foldl _%fold-e44018%_ '() _%exports43996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4392043938%_
                                                     _%g4392143942%_)))
                                              _%hd4393143969%_
                                              _%hd4392843959%_)
                                             (_%g4392043938%_
                                              _%g4392143942%_))))
                                     (_%g4392043938%_ _%g4392143942%_))))
                             (_%g4392043938%_ _%g4392143942%_))))
                     (_%g4392043938%_ _%g4392143942%_)))))
         (_%g4391944023%_ _%stx43917%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44027%_)
       (letrec ((_%identifiers44030%_
                 (lambda (_%id44262%_ _%unchecked?44264%_)
                   (let ((_%info44266%_
                          (gx#syntax-local-value _%id44262%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44266%_))
                         (cons _%id44262%_
                               (cons (let ((__obj44563 _%info44266%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44563
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44563
                                              '12
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj44563
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44564
                                                         _%info44266%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44564
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44564
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj44564
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44565 _%info44266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44565
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44565
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44565
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44566 _%info44266%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44566
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44566
                                                 '17
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj44566
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44567 _%info44266%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44567
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44567
                                      '16
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj44567
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44568 _%info44266%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44568
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44568
                               '15
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj44568 'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44269%_
                                                   (let ((__obj44569
                                                          _%info44266%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44569
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44569
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj44569
                                                          'constructor)))))
                                              (if _%ctor44269%_
                                                  (cons _%ctor44269%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44027%_
                          _%id44262%_))))))
         (let* ((_%__stx4450444505%_ _%stx44027%_)
                (_%g4403444075%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4450444505%_))))
           (let ((_%__kont4450744508%_
                  (lambda (_%L44223%_ _%L44225%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4424444246%_)
                              (_%identifiers44030%_
                               _%g4424444246%_
                               (gx#stx-e _%L44225%_)))
                            (foldr (lambda (_%g4424944252%_ _%g4425044255%_)
                                     (cons _%g4424944252%_ _%g4425044255%_))
                                   '()
                                   _%L44223%_))))))
                 (_%__kont4451144512%_
                  (lambda (_%L44122%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4413844140%_)
                              (_%identifiers44030%_ _%g4413844140%_ '#f))
                            (foldr (lambda (_%g4414344146%_ _%g4414444149%_)
                                     (cons _%g4414344146%_ _%g4414444149%_))
                                   '()
                                   _%L44122%_)))))))
             (let* ((_%__match4456144562%_
                     (lambda (_%e4405844082%_
                              _%hd4405944086%_
                              _%tl4406044089%_
                              _%__splice4451344514%_
                              _%target4406144092%_
                              _%tl4406344095%_)
                       (letrec ((_%loop4406444098%_
                                 (lambda (_%hd4406244102%_ _%id4406844105%_)
                                   (if (gx#stx-pair? _%hd4406244102%_)
                                       (let ((_%e4406544108%_
                                              (gx#syntax-e _%hd4406244102%_)))
                                         (let ((_%lp-tl4406744115%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4406544108%_)))
                                               (_%lp-hd4406644112%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4406544108%_))))
                                           (_%loop4406444098%_
                                            _%lp-tl4406744115%_
                                            (cons _%lp-hd4406644112%_
                                                  _%id4406844105%_))))
                                       (let ((_%id4406944118%_
                                              (reverse _%id4406844105%_)))
                                         (_%__kont4451144512%_
                                          _%id4406944118%_))))))
                         (_%loop4406444098%_ _%target4406144092%_ '()))))
                    (_%__match4454744548%_
                     (lambda (_%e4403844159%_
                              _%hd4403944163%_
                              _%tl4404044166%_
                              _%e4404144169%_
                              _%hd4404244173%_
                              _%tl4404344176%_
                              _%e4404444179%_
                              _%e4404544183%_
                              _%hd4404644187%_
                              _%tl4404744190%_
                              _%__splice4450944510%_
                              _%target4404844193%_
                              _%tl4405044196%_)
                       (letrec ((_%loop4405144199%_
                                 (lambda (_%hd4404944203%_ _%id4405544206%_)
                                   (if (gx#stx-pair? _%hd4404944203%_)
                                       (let ((_%e4405244209%_
                                              (gx#syntax-e _%hd4404944203%_)))
                                         (let ((_%lp-tl4405444216%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4405244209%_)))
                                               (_%lp-hd4405344213%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4405244209%_))))
                                           (_%loop4405144199%_
                                            _%lp-tl4405444216%_
                                            (cons _%lp-hd4405344213%_
                                                  _%id4405544206%_))))
                                       (let ((_%id4405644219%_
                                              (reverse _%id4405544206%_)))
                                         (_%__kont4450744508%_
                                          _%id4405644219%_
                                          _%hd4404644187%_))))))
                         (_%loop4405144199%_ _%target4404844193%_ '())))))
               (if (gx#stx-pair? _%__stx4450444505%_)
                   (let ((_%e4403844159%_ (gx#syntax-e _%__stx4450444505%_)))
                     (let ((_%tl4404044166%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4403844159%_)))
                           (_%hd4403944163%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4403844159%_))))
                       (if (gx#stx-pair? _%tl4404044166%_)
                           (let ((_%e4404144169%_
                                  (gx#syntax-e _%tl4404044166%_)))
                             (let ((_%tl4404344176%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4404144169%_)))
                                   (_%hd4404244173%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4404144169%_))))
                               (if (gx#stx-datum? _%hd4404244173%_)
                                   (let ((_%e4404444179%_
                                          (gx#stx-e _%hd4404244173%_)))
                                     (if (equal? _%e4404444179%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4404344176%_)
                                             (let ((_%e4404544183%_
                                                    (gx#syntax-e
                                                     _%tl4404344176%_)))
                                               (let ((_%tl4404744190%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4404544183%_)))
                                                     (_%hd4404644187%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4404544183%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4404744190%_)
                                                     (let ((_%__splice4450944510%_
                                                            (gx#syntax-split-splice
                                                             _%tl4404744190%_
                                                             '0)))
                                                       (let ((_%tl4405044196%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4450944510%_ '1)))
                     (_%target4404844193%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4450944510%_ '0))))
                 (if (gx#stx-null? _%tl4405044196%_)
                     (_%__match4454744548%_
                      _%e4403844159%_
                      _%hd4403944163%_
                      _%tl4404044166%_
                      _%e4404144169%_
                      _%hd4404244173%_
                      _%tl4404344176%_
                      _%e4404444179%_
                      _%e4404544183%_
                      _%hd4404644187%_
                      _%tl4404744190%_
                      _%__splice4450944510%_
                      _%target4404844193%_
                      _%tl4405044196%_)
                     (if (gx#stx-pair/null? _%tl4404044166%_)
                         (let ((_%__splice4451344514%_
                                (gx#syntax-split-splice _%tl4404044166%_ '0)))
                           (let ((_%tl4406344095%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4451344514%_ '1)))
                                 (_%target4406144092%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4451344514%_ '0))))
                             (if (gx#stx-null? _%tl4406344095%_)
                                 (_%__match4456144562%_
                                  _%e4403844159%_
                                  _%hd4403944163%_
                                  _%tl4404044166%_
                                  _%__splice4451344514%_
                                  _%target4406144092%_
                                  _%tl4406344095%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4403444075%_)))))
                         (let () (declare (not safe)) (_%g4403444075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4404044166%_)
                                                         (let ((_%__splice4451344514%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4404044166%_
                         '0)))
                   (let ((_%tl4406344095%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4451344514%_ '1)))
                         (_%target4406144092%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4451344514%_ '0))))
                     (if (gx#stx-null? _%tl4406344095%_)
                         (_%__match4456144562%_
                          _%e4403844159%_
                          _%hd4403944163%_
                          _%tl4404044166%_
                          _%__splice4451344514%_
                          _%target4406144092%_
                          _%tl4406344095%_)
                         (let () (declare (not safe)) (_%g4403444075%_)))))
                 (let () (declare (not safe)) (_%g4403444075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4404044166%_)
                                                 (let ((_%__splice4451344514%_
                                                        (gx#syntax-split-splice
                                                         _%tl4404044166%_
                                                         '0)))
                                                   (let ((_%tl4406344095%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4451344514%_
                                                             '1)))
                                                         (_%target4406144092%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4451344514%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4406344095%_)
                                                         (_%__match4456144562%_
                                                          _%e4403844159%_
                                                          _%hd4403944163%_
                                                          _%tl4404044166%_
                                                          _%__splice4451344514%_
                                                          _%target4406144092%_
                                                          _%tl4406344095%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4403444075%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4403444075%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4404044166%_)
                                             (let ((_%__splice4451344514%_
                                                    (gx#syntax-split-splice
                                                     _%tl4404044166%_
                                                     '0)))
                                               (let ((_%tl4406344095%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4451344514%_
                                                         '1)))
                                                     (_%target4406144092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4451344514%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4406344095%_)
                                                     (_%__match4456144562%_
                                                      _%e4403844159%_
                                                      _%hd4403944163%_
                                                      _%tl4404044166%_
                                                      _%__splice4451344514%_
                                                      _%target4406144092%_
                                                      _%tl4406344095%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4403444075%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4403444075%_)))))
                                   (if (gx#stx-pair/null? _%tl4404044166%_)
                                       (let ((_%__splice4451344514%_
                                              (gx#syntax-split-splice
                                               _%tl4404044166%_
                                               '0)))
                                         (let ((_%tl4406344095%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4451344514%_
                                                   '1)))
                                               (_%target4406144092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4451344514%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4406344095%_)
                                               (_%__match4456144562%_
                                                _%e4403844159%_
                                                _%hd4403944163%_
                                                _%tl4404044166%_
                                                _%__splice4451344514%_
                                                _%target4406144092%_
                                                _%tl4406344095%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4403444075%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4403444075%_))))))
                           (if (gx#stx-pair/null? _%tl4404044166%_)
                               (let ((_%__splice4451344514%_
                                      (gx#syntax-split-splice
                                       _%tl4404044166%_
                                       '0)))
                                 (let ((_%tl4406344095%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4451344514%_
                                           '1)))
                                       (_%target4406144092%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4451344514%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4406344095%_)
                                       (_%__match4456144562%_
                                        _%e4403844159%_
                                        _%hd4403944163%_
                                        _%tl4404044166%_
                                        _%__splice4451344514%_
                                        _%target4406144092%_
                                        _%tl4406344095%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4403444075%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4403444075%_))))))
                   (let () (declare (not safe)) (_%g4403444075%_)))))))))))
