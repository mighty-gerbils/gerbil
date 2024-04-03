(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41914%_)
      (let* ((_%__stx4456844569%_ _%$stx41914%_)
             (_%g4191941938%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4456844569%_))))
        (let ((_%__kont4457144572%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4457344574%_
               (lambda (_%L41965%_ _%L41967%_ _%L41968%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41967%_
                                   (cons (cons _%L41968%_ _%L41965%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4456844569%_)
              (let ((_%e4192341990%_ (gx#syntax-e _%__stx4456844569%_)))
                (let ((_%tl4192141997%_
                       (let () (declare (not safe)) (##cdr _%e4192341990%_)))
                      (_%hd4192241994%_
                       (let () (declare (not safe)) (##car _%e4192341990%_))))
                  (if (gx#stx-null? _%tl4192141997%_)
                      (_%__kont4457144572%_)
                      (if (gx#stx-pair? _%tl4192141997%_)
                          (let ((_%e4193241955%_
                                 (gx#syntax-e _%tl4192141997%_)))
                            (let ((_%tl4193041962%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4193241955%_)))
                                  (_%hd4193141959%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4193241955%_))))
                              (_%__kont4457344574%_
                               _%tl4193041962%_
                               _%hd4193141959%_
                               _%hd4192241994%_)))
                          (let () (declare (not safe)) (_%g4191941938%_))))))
              (let () (declare (not safe)) (_%g4191941938%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx42008%_)
      (let* ((_%__stx4459844599%_ _%$stx42008%_)
             (_%g4201342053%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4459844599%_))))
        (let ((_%__kont4460144602%_
               (lambda (_%L42191%_ _%L42193%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42193%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L42191%_ '()))
                                   '())))))
              (_%__kont4460344604%_
               (lambda (_%L42120%_ _%L42122%_ _%L42123%_ _%L42124%_)
                 (cons _%L42124%_
                       (cons _%L42123%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42122%_
                                               (foldr (lambda (_%g4214542148%_
                                                               _%g4214642151%_)
                                                        (cons _%g4214542148%_
                                                              _%g4214642151%_))
                                                      '()
                                                      _%L42120%_)))
                                   '()))))))
          (let* ((_%__match4465344654%_
                  (lambda (_%e4203242060%_
                           _%hd4203142064%_
                           _%tl4203042067%_
                           _%e4203542070%_
                           _%hd4203442074%_
                           _%tl4203342077%_
                           _%e4203842080%_
                           _%hd4203742084%_
                           _%tl4203642087%_
                           _%__splice4460544606%_
                           _%target4203942090%_
                           _%tl4204142093%_)
                    (letrec ((_%loop4204242096%_
                              (lambda (_%hd4204042100%_ _%body4204642103%_)
                                (if (gx#stx-pair? _%hd4204042100%_)
                                    (let ((_%e4204342106%_
                                           (gx#syntax-e _%hd4204042100%_)))
                                      (let ((_%lp-tl4204542113%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4204342106%_)))
                                            (_%lp-hd4204442110%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4204342106%_))))
                                        (_%loop4204242096%_
                                         _%lp-tl4204542113%_
                                         (cons _%lp-hd4204442110%_
                                               _%body4204642103%_))))
                                    (let ((_%body4204742116%_
                                           (reverse _%body4204642103%_)))
                                      (let ((_%L42120%_ _%body4204742116%_)
                                            (_%L42122%_ _%tl4203642087%_)
                                            (_%L42123%_ _%hd4203742084%_)
                                            (_%L42124%_ _%hd4203142064%_))
                                        (if (gx#identifier? _%L42123%_)
                                            (_%__kont4460344604%_
                                             _%L42120%_
                                             _%L42122%_
                                             _%L42123%_
                                             _%L42124%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4201342053%_)))))))))
                      (_%loop4204242096%_ _%target4203942090%_ '()))))
                 (_%__match4462744628%_
                  (lambda (_%e4201942161%_
                           _%hd4201842165%_
                           _%tl4201742168%_
                           _%e4202242171%_
                           _%hd4202142175%_
                           _%tl4202042178%_
                           _%e4202542181%_
                           _%hd4202442185%_
                           _%tl4202342188%_)
                    (let ((_%L42191%_ _%hd4202442185%_)
                          (_%L42193%_ _%hd4202142175%_))
                      (if (gx#identifier? _%L42193%_)
                          (_%__kont4460144602%_ _%L42191%_ _%L42193%_)
                          (if (gx#stx-pair? _%hd4202142175%_)
                              (let ((_%e4203842080%_
                                     (gx#syntax-e _%hd4202142175%_)))
                                (let ((_%tl4203642087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4203842080%_)))
                                      (_%hd4203742084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4203842080%_))))
                                  (if (gx#stx-pair/null? _%tl4202042178%_)
                                      (let ((_%__splice4460544606%_
                                             (gx#syntax-split-splice
                                              _%tl4202042178%_
                                              '0)))
                                        (let ((_%tl4204142093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4460544606%_
                                                  '1)))
                                              (_%target4203942090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4460544606%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4204142093%_)
                                              (_%__match4465344654%_
                                               _%e4201942161%_
                                               _%hd4201842165%_
                                               _%tl4201742168%_
                                               _%e4202242171%_
                                               _%hd4202142175%_
                                               _%tl4202042178%_
                                               _%e4203842080%_
                                               _%hd4203742084%_
                                               _%tl4203642087%_
                                               _%__splice4460544606%_
                                               _%target4203942090%_
                                               _%tl4204142093%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4201342053%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4201342053%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4201342053%_))))))))
            (if (gx#stx-pair? _%__stx4459844599%_)
                (let ((_%e4201942161%_ (gx#syntax-e _%__stx4459844599%_)))
                  (let ((_%tl4201742168%_
                         (let () (declare (not safe)) (##cdr _%e4201942161%_)))
                        (_%hd4201842165%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4201942161%_))))
                    (if (gx#stx-pair? _%tl4201742168%_)
                        (let ((_%e4202242171%_ (gx#syntax-e _%tl4201742168%_)))
                          (let ((_%tl4202042178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4202242171%_)))
                                (_%hd4202142175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4202242171%_))))
                            (if (gx#stx-pair? _%tl4202042178%_)
                                (let ((_%e4202542181%_
                                       (gx#syntax-e _%tl4202042178%_)))
                                  (let ((_%tl4202342188%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4202542181%_)))
                                        (_%hd4202442185%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4202542181%_))))
                                    (if (gx#stx-null? _%tl4202342188%_)
                                        (_%__match4462744628%_
                                         _%e4201942161%_
                                         _%hd4201842165%_
                                         _%tl4201742168%_
                                         _%e4202242171%_
                                         _%hd4202142175%_
                                         _%tl4202042178%_
                                         _%e4202542181%_
                                         _%hd4202442185%_
                                         _%tl4202342188%_)
                                        (if (gx#stx-pair? _%hd4202142175%_)
                                            (let ((_%e4203842080%_
                                                   (gx#syntax-e
                                                    _%hd4202142175%_)))
                                              (let ((_%tl4203642087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4203842080%_)))
                                                    (_%hd4203742084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4203842080%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4202042178%_)
                                                    (let ((_%__splice4460544606%_
                                                           (gx#syntax-split-splice
                                                            _%tl4202042178%_
                                                            '0)))
                                                      (let ((_%tl4204142093%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4460544606%_ '1)))
                    (_%target4203942090%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4460544606%_ '0))))
                (if (gx#stx-null? _%tl4204142093%_)
                    (_%__match4465344654%_
                     _%e4201942161%_
                     _%hd4201842165%_
                     _%tl4201742168%_
                     _%e4202242171%_
                     _%hd4202142175%_
                     _%tl4202042178%_
                     _%e4203842080%_
                     _%hd4203742084%_
                     _%tl4203642087%_
                     _%__splice4460544606%_
                     _%target4203942090%_
                     _%tl4204142093%_)
                    (let () (declare (not safe)) (_%g4201342053%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4201342053%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4201342053%_))))))
                                (if (gx#stx-pair? _%hd4202142175%_)
                                    (let ((_%e4203842080%_
                                           (gx#syntax-e _%hd4202142175%_)))
                                      (let ((_%tl4203642087%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4203842080%_)))
                                            (_%hd4203742084%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4203842080%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4202042178%_)
                                            (let ((_%__splice4460544606%_
                                                   (gx#syntax-split-splice
                                                    _%tl4202042178%_
                                                    '0)))
                                              (let ((_%tl4204142093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4460544606%_
                                                        '1)))
                                                    (_%target4203942090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4460544606%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4204142093%_)
                                                    (_%__match4465344654%_
                                                     _%e4201942161%_
                                                     _%hd4201842165%_
                                                     _%tl4201742168%_
                                                     _%e4202242171%_
                                                     _%hd4202142175%_
                                                     _%tl4202042178%_
                                                     _%e4203842080%_
                                                     _%hd4203742084%_
                                                     _%tl4203642087%_
                                                     _%__splice4460544606%_
                                                     _%target4203942090%_
                                                     _%tl4204142093%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4201342053%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4201342053%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4201342053%_))))))
                        (let () (declare (not safe)) (_%g4201342053%_)))))
                (let () (declare (not safe)) (_%g4201342053%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42213%_)
      (let* ((_%__stx4465644657%_ _%$stx42213%_)
             (_%g4221842258%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4465644657%_))))
        (let ((_%__kont4465944660%_
               (lambda (_%L42396%_ _%L42398%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42398%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42396%_ '()))
                                   '())))))
              (_%__kont4466144662%_
               (lambda (_%L42325%_ _%L42327%_ _%L42328%_ _%L42329%_)
                 (cons _%L42329%_
                       (cons _%L42328%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42327%_
                                               (foldr (lambda (_%g4235042353%_
                                                               _%g4235142356%_)
                                                        (cons _%g4235042353%_
                                                              _%g4235142356%_))
                                                      '()
                                                      _%L42325%_)))
                                   '()))))))
          (let* ((_%__match4471144712%_
                  (lambda (_%e4223742265%_
                           _%hd4223642269%_
                           _%tl4223542272%_
                           _%e4224042275%_
                           _%hd4223942279%_
                           _%tl4223842282%_
                           _%e4224342285%_
                           _%hd4224242289%_
                           _%tl4224142292%_
                           _%__splice4466344664%_
                           _%target4224442295%_
                           _%tl4224642298%_)
                    (letrec ((_%loop4224742301%_
                              (lambda (_%hd4224542305%_ _%body4225142308%_)
                                (if (gx#stx-pair? _%hd4224542305%_)
                                    (let ((_%e4224842311%_
                                           (gx#syntax-e _%hd4224542305%_)))
                                      (let ((_%lp-tl4225042318%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4224842311%_)))
                                            (_%lp-hd4224942315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4224842311%_))))
                                        (_%loop4224742301%_
                                         _%lp-tl4225042318%_
                                         (cons _%lp-hd4224942315%_
                                               _%body4225142308%_))))
                                    (let ((_%body4225242321%_
                                           (reverse _%body4225142308%_)))
                                      (let ((_%L42325%_ _%body4225242321%_)
                                            (_%L42327%_ _%tl4224142292%_)
                                            (_%L42328%_ _%hd4224242289%_)
                                            (_%L42329%_ _%hd4223642269%_))
                                        (if (gx#identifier? _%L42328%_)
                                            (_%__kont4466144662%_
                                             _%L42325%_
                                             _%L42327%_
                                             _%L42328%_
                                             _%L42329%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221842258%_)))))))))
                      (_%loop4224742301%_ _%target4224442295%_ '()))))
                 (_%__match4468544686%_
                  (lambda (_%e4222442366%_
                           _%hd4222342370%_
                           _%tl4222242373%_
                           _%e4222742376%_
                           _%hd4222642380%_
                           _%tl4222542383%_
                           _%e4223042386%_
                           _%hd4222942390%_
                           _%tl4222842393%_)
                    (let ((_%L42396%_ _%hd4222942390%_)
                          (_%L42398%_ _%hd4222642380%_))
                      (if (gx#identifier? _%L42398%_)
                          (_%__kont4465944660%_ _%L42396%_ _%L42398%_)
                          (if (gx#stx-pair? _%hd4222642380%_)
                              (let ((_%e4224342285%_
                                     (gx#syntax-e _%hd4222642380%_)))
                                (let ((_%tl4224142292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4224342285%_)))
                                      (_%hd4224242289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4224342285%_))))
                                  (if (gx#stx-pair/null? _%tl4222542383%_)
                                      (let ((_%__splice4466344664%_
                                             (gx#syntax-split-splice
                                              _%tl4222542383%_
                                              '0)))
                                        (let ((_%tl4224642298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4466344664%_
                                                  '1)))
                                              (_%target4224442295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4466344664%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4224642298%_)
                                              (_%__match4471144712%_
                                               _%e4222442366%_
                                               _%hd4222342370%_
                                               _%tl4222242373%_
                                               _%e4222742376%_
                                               _%hd4222642380%_
                                               _%tl4222542383%_
                                               _%e4224342285%_
                                               _%hd4224242289%_
                                               _%tl4224142292%_
                                               _%__splice4466344664%_
                                               _%target4224442295%_
                                               _%tl4224642298%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4221842258%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4221842258%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4221842258%_))))))))
            (if (gx#stx-pair? _%__stx4465644657%_)
                (let ((_%e4222442366%_ (gx#syntax-e _%__stx4465644657%_)))
                  (let ((_%tl4222242373%_
                         (let () (declare (not safe)) (##cdr _%e4222442366%_)))
                        (_%hd4222342370%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4222442366%_))))
                    (if (gx#stx-pair? _%tl4222242373%_)
                        (let ((_%e4222742376%_ (gx#syntax-e _%tl4222242373%_)))
                          (let ((_%tl4222542383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4222742376%_)))
                                (_%hd4222642380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4222742376%_))))
                            (if (gx#stx-pair? _%tl4222542383%_)
                                (let ((_%e4223042386%_
                                       (gx#syntax-e _%tl4222542383%_)))
                                  (let ((_%tl4222842393%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4223042386%_)))
                                        (_%hd4222942390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4223042386%_))))
                                    (if (gx#stx-null? _%tl4222842393%_)
                                        (_%__match4468544686%_
                                         _%e4222442366%_
                                         _%hd4222342370%_
                                         _%tl4222242373%_
                                         _%e4222742376%_
                                         _%hd4222642380%_
                                         _%tl4222542383%_
                                         _%e4223042386%_
                                         _%hd4222942390%_
                                         _%tl4222842393%_)
                                        (if (gx#stx-pair? _%hd4222642380%_)
                                            (let ((_%e4224342285%_
                                                   (gx#syntax-e
                                                    _%hd4222642380%_)))
                                              (let ((_%tl4224142292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4224342285%_)))
                                                    (_%hd4224242289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4224342285%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4222542383%_)
                                                    (let ((_%__splice4466344664%_
                                                           (gx#syntax-split-splice
                                                            _%tl4222542383%_
                                                            '0)))
                                                      (let ((_%tl4224642298%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4466344664%_ '1)))
                    (_%target4224442295%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4466344664%_ '0))))
                (if (gx#stx-null? _%tl4224642298%_)
                    (_%__match4471144712%_
                     _%e4222442366%_
                     _%hd4222342370%_
                     _%tl4222242373%_
                     _%e4222742376%_
                     _%hd4222642380%_
                     _%tl4222542383%_
                     _%e4224342285%_
                     _%hd4224242289%_
                     _%tl4224142292%_
                     _%__splice4466344664%_
                     _%target4224442295%_
                     _%tl4224642298%_)
                    (let () (declare (not safe)) (_%g4221842258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4221842258%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221842258%_))))))
                                (if (gx#stx-pair? _%hd4222642380%_)
                                    (let ((_%e4224342285%_
                                           (gx#syntax-e _%hd4222642380%_)))
                                      (let ((_%tl4224142292%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4224342285%_)))
                                            (_%hd4224242289%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4224342285%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4222542383%_)
                                            (let ((_%__splice4466344664%_
                                                   (gx#syntax-split-splice
                                                    _%tl4222542383%_
                                                    '0)))
                                              (let ((_%tl4224642298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4466344664%_
                                                        '1)))
                                                    (_%target4224442295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4466344664%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4224642298%_)
                                                    (_%__match4471144712%_
                                                     _%e4222442366%_
                                                     _%hd4222342370%_
                                                     _%tl4222242373%_
                                                     _%e4222742376%_
                                                     _%hd4222642380%_
                                                     _%tl4222542383%_
                                                     _%e4224342285%_
                                                     _%hd4224242289%_
                                                     _%tl4224142292%_
                                                     _%__splice4466344664%_
                                                     _%target4224442295%_
                                                     _%tl4224642298%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4221842258%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221842258%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4221842258%_))))))
                        (let () (declare (not safe)) (_%g4221842258%_)))))
                (let () (declare (not safe)) (_%g4221842258%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42418%_)
      (let* ((_%__stx4471444715%_ _%$stx42418%_)
             (_%g4242342463%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4471444715%_))))
        (let ((_%__kont4471744718%_
               (lambda (_%L42601%_ _%L42603%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42603%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42601%_ '()))
                                   '())))))
              (_%__kont4471944720%_
               (lambda (_%L42530%_ _%L42532%_ _%L42533%_ _%L42534%_)
                 (cons _%L42534%_
                       (cons _%L42533%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42532%_
                                               (foldr (lambda (_%g4255542558%_
                                                               _%g4255642561%_)
                                                        (cons _%g4255542558%_
                                                              _%g4255642561%_))
                                                      '()
                                                      _%L42530%_)))
                                   '()))))))
          (let* ((_%__match4476944770%_
                  (lambda (_%e4244242470%_
                           _%hd4244142474%_
                           _%tl4244042477%_
                           _%e4244542480%_
                           _%hd4244442484%_
                           _%tl4244342487%_
                           _%e4244842490%_
                           _%hd4244742494%_
                           _%tl4244642497%_
                           _%__splice4472144722%_
                           _%target4244942500%_
                           _%tl4245142503%_)
                    (letrec ((_%loop4245242506%_
                              (lambda (_%hd4245042510%_ _%body4245642513%_)
                                (if (gx#stx-pair? _%hd4245042510%_)
                                    (let ((_%e4245342516%_
                                           (gx#syntax-e _%hd4245042510%_)))
                                      (let ((_%lp-tl4245542523%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4245342516%_)))
                                            (_%lp-hd4245442520%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4245342516%_))))
                                        (_%loop4245242506%_
                                         _%lp-tl4245542523%_
                                         (cons _%lp-hd4245442520%_
                                               _%body4245642513%_))))
                                    (let ((_%body4245742526%_
                                           (reverse _%body4245642513%_)))
                                      (let ((_%L42530%_ _%body4245742526%_)
                                            (_%L42532%_ _%tl4244642497%_)
                                            (_%L42533%_ _%hd4244742494%_)
                                            (_%L42534%_ _%hd4244142474%_))
                                        (if (gx#identifier? _%L42533%_)
                                            (_%__kont4471944720%_
                                             _%L42530%_
                                             _%L42532%_
                                             _%L42533%_
                                             _%L42534%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4242342463%_)))))))))
                      (_%loop4245242506%_ _%target4244942500%_ '()))))
                 (_%__match4474344744%_
                  (lambda (_%e4242942571%_
                           _%hd4242842575%_
                           _%tl4242742578%_
                           _%e4243242581%_
                           _%hd4243142585%_
                           _%tl4243042588%_
                           _%e4243542591%_
                           _%hd4243442595%_
                           _%tl4243342598%_)
                    (let ((_%L42601%_ _%hd4243442595%_)
                          (_%L42603%_ _%hd4243142585%_))
                      (if (gx#identifier? _%L42603%_)
                          (_%__kont4471744718%_ _%L42601%_ _%L42603%_)
                          (if (gx#stx-pair? _%hd4243142585%_)
                              (let ((_%e4244842490%_
                                     (gx#syntax-e _%hd4243142585%_)))
                                (let ((_%tl4244642497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4244842490%_)))
                                      (_%hd4244742494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4244842490%_))))
                                  (if (gx#stx-pair/null? _%tl4243042588%_)
                                      (let ((_%__splice4472144722%_
                                             (gx#syntax-split-splice
                                              _%tl4243042588%_
                                              '0)))
                                        (let ((_%tl4245142503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4472144722%_
                                                  '1)))
                                              (_%target4244942500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4472144722%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4245142503%_)
                                              (_%__match4476944770%_
                                               _%e4242942571%_
                                               _%hd4242842575%_
                                               _%tl4242742578%_
                                               _%e4243242581%_
                                               _%hd4243142585%_
                                               _%tl4243042588%_
                                               _%e4244842490%_
                                               _%hd4244742494%_
                                               _%tl4244642497%_
                                               _%__splice4472144722%_
                                               _%target4244942500%_
                                               _%tl4245142503%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4242342463%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4242342463%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4242342463%_))))))))
            (if (gx#stx-pair? _%__stx4471444715%_)
                (let ((_%e4242942571%_ (gx#syntax-e _%__stx4471444715%_)))
                  (let ((_%tl4242742578%_
                         (let () (declare (not safe)) (##cdr _%e4242942571%_)))
                        (_%hd4242842575%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4242942571%_))))
                    (if (gx#stx-pair? _%tl4242742578%_)
                        (let ((_%e4243242581%_ (gx#syntax-e _%tl4242742578%_)))
                          (let ((_%tl4243042588%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4243242581%_)))
                                (_%hd4243142585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4243242581%_))))
                            (if (gx#stx-pair? _%tl4243042588%_)
                                (let ((_%e4243542591%_
                                       (gx#syntax-e _%tl4243042588%_)))
                                  (let ((_%tl4243342598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4243542591%_)))
                                        (_%hd4243442595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4243542591%_))))
                                    (if (gx#stx-null? _%tl4243342598%_)
                                        (_%__match4474344744%_
                                         _%e4242942571%_
                                         _%hd4242842575%_
                                         _%tl4242742578%_
                                         _%e4243242581%_
                                         _%hd4243142585%_
                                         _%tl4243042588%_
                                         _%e4243542591%_
                                         _%hd4243442595%_
                                         _%tl4243342598%_)
                                        (if (gx#stx-pair? _%hd4243142585%_)
                                            (let ((_%e4244842490%_
                                                   (gx#syntax-e
                                                    _%hd4243142585%_)))
                                              (let ((_%tl4244642497%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4244842490%_)))
                                                    (_%hd4244742494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4244842490%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4243042588%_)
                                                    (let ((_%__splice4472144722%_
                                                           (gx#syntax-split-splice
                                                            _%tl4243042588%_
                                                            '0)))
                                                      (let ((_%tl4245142503%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4472144722%_ '1)))
                    (_%target4244942500%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4472144722%_ '0))))
                (if (gx#stx-null? _%tl4245142503%_)
                    (_%__match4476944770%_
                     _%e4242942571%_
                     _%hd4242842575%_
                     _%tl4242742578%_
                     _%e4243242581%_
                     _%hd4243142585%_
                     _%tl4243042588%_
                     _%e4244842490%_
                     _%hd4244742494%_
                     _%tl4244642497%_
                     _%__splice4472144722%_
                     _%target4244942500%_
                     _%tl4245142503%_)
                    (let () (declare (not safe)) (_%g4242342463%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4242342463%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4242342463%_))))))
                                (if (gx#stx-pair? _%hd4243142585%_)
                                    (let ((_%e4244842490%_
                                           (gx#syntax-e _%hd4243142585%_)))
                                      (let ((_%tl4244642497%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4244842490%_)))
                                            (_%hd4244742494%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4244842490%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4243042588%_)
                                            (let ((_%__splice4472144722%_
                                                   (gx#syntax-split-splice
                                                    _%tl4243042588%_
                                                    '0)))
                                              (let ((_%tl4245142503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4472144722%_
                                                        '1)))
                                                    (_%target4244942500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4472144722%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4245142503%_)
                                                    (_%__match4476944770%_
                                                     _%e4242942571%_
                                                     _%hd4242842575%_
                                                     _%tl4242742578%_
                                                     _%e4243242581%_
                                                     _%hd4243142585%_
                                                     _%tl4243042588%_
                                                     _%e4244842490%_
                                                     _%hd4244742494%_
                                                     _%tl4244642497%_
                                                     _%__splice4472144722%_
                                                     _%target4244942500%_
                                                     _%tl4245142503%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4242342463%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4242342463%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4242342463%_))))))
                        (let () (declare (not safe)) (_%g4242342463%_)))))
                (let () (declare (not safe)) (_%g4242342463%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42623%_)
       (let* ((_%g4262642646%_
               (lambda (_%g4262742642%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4262742642%_)))
              (_%g4262542717%_
               (lambda (_%g4262742650%_)
                 (if (gx#stx-pair? _%g4262742650%_)
                     (let ((_%e4263142653%_ (gx#syntax-e _%g4262742650%_)))
                       (let ((_%hd4263042657%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4263142653%_)))
                             (_%tl4262942660%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4263142653%_))))
                         (if (gx#stx-pair/null? _%tl4262942660%_)
                             (let ((_g44864_
                                    (gx#syntax-split-splice
                                     _%tl4262942660%_
                                     '0)))
                               (begin
                                 (let ((_g44865_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44864_)
                                              (##vector-length _g44864_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44865_ 2)))
                                       (error "Context expects 2 values"
                                              _g44865_)))
                                 (let ((_%target4263242663%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44864_ 0)))
                                       (_%tl4263442666%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44864_ 1))))
                                   (if (gx#stx-null? _%tl4263442666%_)
                                       (letrec ((_%loop4263542669%_
                                                 (lambda (_%hd4263342673%_
                                                          _%body4263942676%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4263342673%_)
                                                       (let ((_%e4263642679%_
                                                              (gx#syntax-e
                                                               _%hd4263342673%_)))
                                                         (let ((_%lp-hd4263742683%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4263642679%_)))
                       (_%lp-tl4263842686%_
                        (let () (declare (not safe)) (##cdr _%e4263642679%_))))
                   (_%loop4263542669%_
                    _%lp-tl4263842686%_
                    (cons _%lp-hd4263742683%_ _%body4263942676%_))))
               (let ((_%body4264042689%_ (reverse _%body4263942676%_)))
                 ((lambda (_%L42693%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4270842711%_
                                                _%g4270942714%_)
                                         (cons _%g4270842711%_
                                               _%g4270942714%_))
                                       '()
                                       _%L42693%_))))
                  _%body4264042689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4263542669%_
                                          _%target4263242663%_
                                          '()))
                                       (_%g4262642646%_ _%g4262742650%_)))))
                             (_%g4262642646%_ _%g4262742650%_))))
                     (_%g4262642646%_ _%g4262742650%_)))))
         (_%g4262542717%_ _%stx42623%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42722%_)
       (let* ((_%g4272542745%_
               (lambda (_%g4272642741%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4272642741%_)))
              (_%g4272442816%_
               (lambda (_%g4272642749%_)
                 (if (gx#stx-pair? _%g4272642749%_)
                     (let ((_%e4273042752%_ (gx#syntax-e _%g4272642749%_)))
                       (let ((_%hd4272942756%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4273042752%_)))
                             (_%tl4272842759%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4273042752%_))))
                         (if (gx#stx-pair/null? _%tl4272842759%_)
                             (let ((_g44866_
                                    (gx#syntax-split-splice
                                     _%tl4272842759%_
                                     '0)))
                               (begin
                                 (let ((_g44867_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44866_)
                                              (##vector-length _g44866_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44867_ 2)))
                                       (error "Context expects 2 values"
                                              _g44867_)))
                                 (let ((_%target4273142762%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44866_ 0)))
                                       (_%tl4273342765%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44866_ 1))))
                                   (if (gx#stx-null? _%tl4273342765%_)
                                       (letrec ((_%loop4273442768%_
                                                 (lambda (_%hd4273242772%_
                                                          _%body4273842775%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4273242772%_)
                                                       (let ((_%e4273542778%_
                                                              (gx#syntax-e
                                                               _%hd4273242772%_)))
                                                         (let ((_%lp-hd4273642782%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4273542778%_)))
                       (_%lp-tl4273742785%_
                        (let () (declare (not safe)) (##cdr _%e4273542778%_))))
                   (_%loop4273442768%_
                    _%lp-tl4273742785%_
                    (cons _%lp-hd4273642782%_ _%body4273842775%_))))
               (let ((_%body4273942788%_ (reverse _%body4273842775%_)))
                 ((lambda (_%L42792%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4280742810%_
                                                _%g4280842813%_)
                                         (cons _%g4280742810%_
                                               _%g4280842813%_))
                                       '()
                                       _%L42792%_))))
                  _%body4273942788%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4273442768%_
                                          _%target4273142762%_
                                          '()))
                                       (_%g4272542745%_ _%g4272642749%_)))))
                             (_%g4272542745%_ _%g4272642749%_))))
                     (_%g4272542745%_ _%g4272642749%_)))))
         (_%g4272442816%_ _%stx42722%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42821%_)
       (let* ((_%g4282442848%_
               (lambda (_%g4282542844%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4282542844%_)))
              (_%g4282342976%_
               (lambda (_%g4282542852%_)
                 (if (gx#stx-pair? _%g4282542852%_)
                     (let ((_%e4283042855%_ (gx#syntax-e _%g4282542852%_)))
                       (let ((_%hd4282942859%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4283042855%_)))
                             (_%tl4282842862%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4283042855%_))))
                         (if (gx#stx-pair? _%tl4282842862%_)
                             (let ((_%e4283342865%_
                                    (gx#syntax-e _%tl4282842862%_)))
                               (let ((_%hd4283242869%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4283342865%_)))
                                     (_%tl4283142872%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4283342865%_))))
                                 (if (gx#stx-pair/null? _%tl4283142872%_)
                                     (let ((_g44868_
                                            (gx#syntax-split-splice
                                             _%tl4283142872%_
                                             '0)))
                                       (begin
                                         (let ((_g44869_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44868_)
                                                      (##vector-length
                                                       _g44868_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44869_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44869_)))
                                         (let ((_%target4283442875%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44868_ 0)))
                                               (_%tl4283642878%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44868_ 1))))
                                           (if (gx#stx-null? _%tl4283642878%_)
                                               (letrec ((_%loop4283742881%_
                                                         (lambda (_%hd4283542885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4284142888%_)
                   (if (gx#stx-pair? _%hd4283542885%_)
                       (let ((_%e4283842891%_ (gx#syntax-e _%hd4283542885%_)))
                         (let ((_%lp-hd4283942895%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4283842891%_)))
                               (_%lp-tl4284042898%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4283842891%_))))
                           (_%loop4283742881%_
                            _%lp-tl4284042898%_
                            (cons _%lp-hd4283942895%_ _%id4284142888%_))))
                       (let ((_%id4284242901%_ (reverse _%id4284142888%_)))
                         ((lambda (_%L42905%_ _%L42907%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4292442927%_
                                                 _%g4292542930%_)
                                          (cons _%g4292442927%_
                                                _%g4292542930%_))
                                        '()
                                        _%L42905%_))
                                (let* ((_%keys42941%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4293242935%_
                                                         _%g4293342938%_)
                                                  (cons _%g4293242935%_
                                                        _%g4293342938%_))
                                                '()
                                                _%L42905%_)))
                                       (_%keytab42952%_
                                        (let ((_%ht42944%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4294642948%_)
                                             (hash-put!
                                              _%ht42944%_
                                              _%g4294642948%_
                                              '#t))
                                           _%keys42941%_)
                                          _%ht42944%_))
                                       (_%imports42955%_
                                        (gx#core-expand-import-source
                                         _%L42907%_))
                                       (_%fold-e42971%_
                                        (letrec ((_%fold-e42958%_
                                                  (lambda (_%in42961%_
                                                           _%r42963%_)
                                                    (if (gx#module-import?
                                                         _%in42961%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab42952%_
                                                               (gx#module-import-name
                                                                _%in42961%_))
                                                              (cons _%in42961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r42963%_)
                      _%r42963%_))
                (if (gx#import-set? _%in42961%_)
                    (let ()
                      (foldl _%fold-e42958%_
                             _%r42963%_
                             (gx#import-set-imports _%in42961%_)))
                    (let () _%r42963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42958%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42971%_
                                               '()
                                               _%imports42955%_)))
                                (_%g4282442848%_ _%g4282542852%_)))
                          _%id4284242901%_
                          _%hd4283242869%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4283742881%_
                                                  _%target4283442875%_
                                                  '()))
                                               (_%g4282442848%_
                                                _%g4282542852%_)))))
                                     (_%g4282442848%_ _%g4282542852%_))))
                             (_%g4282442848%_ _%g4282542852%_))))
                     (_%g4282442848%_ _%g4282542852%_)))))
         (_%g4282342976%_ _%stx42821%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42981%_)
       (let* ((_%g4298443008%_
               (lambda (_%g4298543004%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4298543004%_)))
              (_%g4298343136%_
               (lambda (_%g4298543012%_)
                 (if (gx#stx-pair? _%g4298543012%_)
                     (let ((_%e4299043015%_ (gx#syntax-e _%g4298543012%_)))
                       (let ((_%hd4298943019%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4299043015%_)))
                             (_%tl4298843022%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4299043015%_))))
                         (if (gx#stx-pair? _%tl4298843022%_)
                             (let ((_%e4299343025%_
                                    (gx#syntax-e _%tl4298843022%_)))
                               (let ((_%hd4299243029%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4299343025%_)))
                                     (_%tl4299143032%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4299343025%_))))
                                 (if (gx#stx-pair/null? _%tl4299143032%_)
                                     (let ((_g44870_
                                            (gx#syntax-split-splice
                                             _%tl4299143032%_
                                             '0)))
                                       (begin
                                         (let ((_g44871_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44870_)
                                                      (##vector-length
                                                       _g44870_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44871_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44871_)))
                                         (let ((_%target4299443035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44870_ 0)))
                                               (_%tl4299643038%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44870_ 1))))
                                           (if (gx#stx-null? _%tl4299643038%_)
                                               (letrec ((_%loop4299743041%_
                                                         (lambda (_%hd4299543045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4300143048%_)
                   (if (gx#stx-pair? _%hd4299543045%_)
                       (let ((_%e4299843051%_ (gx#syntax-e _%hd4299543045%_)))
                         (let ((_%lp-hd4299943055%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4299843051%_)))
                               (_%lp-tl4300043058%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4299843051%_))))
                           (_%loop4299743041%_
                            _%lp-tl4300043058%_
                            (cons _%lp-hd4299943055%_ _%id4300143048%_))))
                       (let ((_%id4300243061%_ (reverse _%id4300143048%_)))
                         ((lambda (_%L43065%_ _%L43067%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4308443087%_
                                                 _%g4308543090%_)
                                          (cons _%g4308443087%_
                                                _%g4308543090%_))
                                        '()
                                        _%L43065%_))
                                (let* ((_%keys43101%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4309243095%_
                                                         _%g4309343098%_)
                                                  (cons _%g4309243095%_
                                                        _%g4309343098%_))
                                                '()
                                                _%L43065%_)))
                                       (_%keytab43112%_
                                        (let ((_%ht43104%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4310643108%_)
                                             (hash-put!
                                              _%ht43104%_
                                              _%g4310643108%_
                                              '#t))
                                           _%keys43101%_)
                                          _%ht43104%_))
                                       (_%imports43115%_
                                        (gx#core-expand-import-source
                                         _%L43067%_))
                                       (_%fold-e43131%_
                                        (letrec ((_%fold-e43118%_
                                                  (lambda (_%in43121%_
                                                           _%r43123%_)
                                                    (if (gx#module-import?
                                                         _%in43121%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab43112%_
                                                               (gx#module-import-name
                                                                _%in43121%_))
                                                              _%r43123%_
                                                              (cons _%in43121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r43123%_)))
                (if (gx#import-set? _%in43121%_)
                    (let ()
                      (foldl _%fold-e43118%_
                             _%r43123%_
                             (gx#import-set-imports _%in43121%_)))
                    (let () (cons _%in43121%_ _%r43123%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43118%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43131%_
                                               '()
                                               _%imports43115%_)))
                                (_%g4298443008%_ _%g4298543012%_)))
                          _%id4300243061%_
                          _%hd4299243029%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4299743041%_
                                                  _%target4299443035%_
                                                  '()))
                                               (_%g4298443008%_
                                                _%g4298543012%_)))))
                                     (_%g4298443008%_ _%g4298543012%_))))
                             (_%g4298443008%_ _%g4298543012%_))))
                     (_%g4298443008%_ _%g4298543012%_)))))
         (_%g4298343136%_ _%stx42981%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in43188%_ _%rename43190%_)
      (gx#make-module-import
       (gx#module-import-source _%in43188%_)
       _%rename43190%_
       (gx#module-import-phi _%in43188%_)
       (gx#module-import-weak? _%in43188%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name43141%_ _%pre43143%_)
      (let* ((_%name4314443152%_ _%name43141%_)
             (_%else4314643164%_
              (lambda () (make-symbol _%pre43143%_ _%name43141%_)))
             (_%K4314843172%_
              (lambda (_%mark43168%_ _%id43170%_)
                (cons (make-symbol _%pre43143%_ _%id43170%_) _%mark43168%_))))
        (if (let () (declare (not safe)) (##pair? _%name4314443152%_))
            (let ((_%hd4314943176%_
                   (let () (declare (not safe)) (##car _%name4314443152%_)))
                  (_%tl4315043179%_
                   (let () (declare (not safe)) (##cdr _%name4314443152%_))))
              (let* ((_%id43182%_ _%hd4314943176%_)
                     (_%mark43185%_ _%tl4315043179%_))
                (declare (not safe))
                (_%K4314843172%_ _%mark43185%_ _%id43182%_)))
            (let () (declare (not safe)) (_%else4314643164%_))))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx43192%_)
       (let* ((_%g4319543228%_
               (lambda (_%g4319643224%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4319643224%_)))
              (_%g4319443423%_
               (lambda (_%g4319643232%_)
                 (if (gx#stx-pair? _%g4319643232%_)
                     (let ((_%e4320243235%_ (gx#syntax-e _%g4319643232%_)))
                       (let ((_%hd4320143239%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4320243235%_)))
                             (_%tl4320043242%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4320243235%_))))
                         (if (gx#stx-pair? _%tl4320043242%_)
                             (let ((_%e4320543245%_
                                    (gx#syntax-e _%tl4320043242%_)))
                               (let ((_%hd4320443249%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4320543245%_)))
                                     (_%tl4320343252%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4320543245%_))))
                                 (if (gx#stx-pair/null? _%tl4320343252%_)
                                     (let ((_g44872_
                                            (gx#syntax-split-splice
                                             _%tl4320343252%_
                                             '0)))
                                       (begin
                                         (let ((_g44873_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44872_)
                                                      (##vector-length
                                                       _g44872_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44873_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44873_)))
                                         (let ((_%target4320643255%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44872_ 0)))
                                               (_%tl4320843258%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44872_ 1))))
                                           (if (gx#stx-null? _%tl4320843258%_)
                                               (letrec ((_%loop4320943261%_
                                                         (lambda (_%hd4320743265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4321343268%_
                          _%id4321443270%_)
                   (if (gx#stx-pair? _%hd4320743265%_)
                       (let ((_%e4321043273%_ (gx#syntax-e _%hd4320743265%_)))
                         (let ((_%lp-hd4321143277%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4321043273%_)))
                               (_%lp-tl4321243280%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4321043273%_))))
                           (if (gx#stx-pair? _%lp-hd4321143277%_)
                               (let ((_%e4321943283%_
                                      (gx#syntax-e _%lp-hd4321143277%_)))
                                 (let ((_%hd4321843287%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4321943283%_)))
                                       (_%tl4321743290%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4321943283%_))))
                                   (if (gx#stx-pair? _%tl4321743290%_)
                                       (let ((_%e4322243293%_
                                              (gx#syntax-e _%tl4321743290%_)))
                                         (let ((_%hd4322143297%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4322243293%_)))
                                               (_%tl4322043300%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4322243293%_))))
                                           (if (gx#stx-null? _%tl4322043300%_)
                                               (_%loop4320943261%_
                                                _%lp-tl4321243280%_
                                                (cons _%hd4322143297%_
                                                      _%new-id4321343268%_)
                                                (cons _%hd4321843287%_
                                                      _%id4321443270%_))
                                               (_%g4319543228%_
                                                _%g4319643232%_))))
                                       (_%g4319543228%_ _%g4319643232%_))))
                               (_%g4319543228%_ _%g4319643232%_))))
                       (let ((_%new-id4321543303%_
                              (reverse _%new-id4321343268%_))
                             (_%id4321643306%_ (reverse _%id4321443270%_)))
                         ((lambda (_%L43309%_ _%L43311%_ _%L43312%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4333043333%_
                                                      _%g4333143336%_)
                                               (cons _%g4333043333%_
                                                     _%g4333143336%_))
                                             '()
                                             _%L43311%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4333843341%_
                                                      _%g4333943344%_)
                                               (cons _%g4333843341%_
                                                     _%g4333943344%_))
                                             '()
                                             _%L43309%_)))
                                (let* ((_%keytab43347%_ (make-hash-table))
                                       (_%found43350%_ (make-hash-table))
                                       (_%_43373%_
                                        (for-each
                                         (lambda (_%id43353%_ _%new-id43355%_)
                                           (hash-put!
                                            _%keytab43347%_
                                            (gx#core-identifier-key
                                             _%id43353%_)
                                            (gx#core-identifier-key
                                             _%new-id43355%_)))
                                         (foldr (lambda (_%g4335643359%_
                                                         _%g4335743362%_)
                                                  (cons _%g4335643359%_
                                                        _%g4335743362%_))
                                                '()
                                                _%L43311%_)
                                         (foldr (lambda (_%g4336443367%_
                                                         _%g4336543370%_)
                                                  (cons _%g4336443367%_
                                                        _%g4336543370%_))
                                                '()
                                                _%L43309%_)))
                                       (_%imports43376%_
                                        (gx#core-expand-import-source
                                         _%L43312%_))
                                       (_%fold-e43404%_
                                        (letrec ((_%fold-e43379%_
                                                  (lambda (_%in43382%_
                                                           _%r43384%_)
                                                    (if (gx#module-import?
                                                         _%in43382%_)
                                                        (let ()
                                                          (let* ((_%name43388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#module-import-name _%in43382%_))
                         (_%$e43391%_
                          (hash-get _%keytab43347%_ _%name43388%_)))
                    (if _%$e43391%_
                        ((lambda (_%rename43395%_)
                           (hash-put! _%found43350%_ _%name43388%_ '#t)
                           (cons (let ()
                                   (declare (not safe))
                                   (|gerbil/core/module-sugar[1]#module-import-rename|
                                    _%in43382%_
                                    _%rename43395%_))
                                 _%r43384%_))
                         _%$e43391%_)
                        (let () (cons _%in43382%_ _%r43384%_)))))
                (if (gx#import-set? _%in43382%_)
                    (let ()
                      (foldl _%fold-e43379%_
                             _%r43384%_
                             (gx#import-set-imports _%in43382%_)))
                    (let () (cons _%in43382%_ _%r43384%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43379%_))
                                       (_%new-imports43407%_
                                        (foldl _%fold-e43404%_
                                               '()
                                               _%imports43376%_)))
                                  (for-each
                                   (lambda (_%id43412%_)
                                     (if (hash-get
                                          _%found43350%_
                                          (gx#core-identifier-key _%id43412%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx43192%_
                                          _%id43412%_)))
                                   (foldr (lambda (_%g4341443417%_
                                                   _%g4341543420%_)
                                            (cons _%g4341443417%_
                                                  _%g4341543420%_))
                                          '()
                                          _%L43311%_))
                                  (cons 'begin: _%new-imports43407%_))
                                (_%g4319543228%_ _%g4319643232%_)))
                          _%new-id4321543303%_
                          _%id4321643306%_
                          _%hd4320443249%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4320943261%_
                                                  _%target4320643255%_
                                                  '()
                                                  '()))
                                               (_%g4319543228%_
                                                _%g4319643232%_)))))
                                     (_%g4319543228%_ _%g4319643232%_))))
                             (_%g4319543228%_ _%g4319643232%_))))
                     (_%g4319543228%_ _%g4319643232%_)))))
         (_%g4319443423%_ _%stx43192%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43428%_)
       (let* ((_%g4343143449%_
               (lambda (_%g4343243445%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4343243445%_)))
              (_%g4343043534%_
               (lambda (_%g4343243453%_)
                 (if (gx#stx-pair? _%g4343243453%_)
                     (let ((_%e4343743456%_ (gx#syntax-e _%g4343243453%_)))
                       (let ((_%hd4343643460%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4343743456%_)))
                             (_%tl4343543463%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4343743456%_))))
                         (if (gx#stx-pair? _%tl4343543463%_)
                             (let ((_%e4344043466%_
                                    (gx#syntax-e _%tl4343543463%_)))
                               (let ((_%hd4343943470%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4344043466%_)))
                                     (_%tl4343843473%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4344043466%_))))
                                 (if (gx#stx-pair? _%tl4343843473%_)
                                     (let ((_%e4344343476%_
                                            (gx#syntax-e _%tl4343843473%_)))
                                       (let ((_%hd4344243480%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4344343476%_)))
                                             (_%tl4344143483%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4344343476%_))))
                                         (if (gx#stx-null? _%tl4344143483%_)
                                             ((lambda (_%L43486%_ _%L43488%_)
                                                (if (gx#identifier? _%L43486%_)
                                                    (let* ((_%pre43504%_
                                                            (gx#stx-e
                                                             _%L43486%_))
                                                           (_%imports43507%_
                                                            (gx#core-expand-import-source
                                                             _%L43488%_))
                                                           (_%rename-e43513%_
                                                            (lambda (_%name43510%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _%name43510%_
                         _%pre43504%_))))
                   (_%fold-e43529%_
                    (letrec ((_%fold-e43516%_
                              (lambda (_%in43519%_ _%r43521%_)
                                (if (gx#module-import? _%in43519%_)
                                    (let ()
                                      (cons (let ((__tmp44874
                                                   (_%rename-e43513%_
                                                    (gx#module-import-name
                                                     _%in43519%_))))
                                              (declare (not safe))
                                              (|gerbil/core/module-sugar[1]#module-import-rename|
                                               _%in43519%_
                                               __tmp44874))
                                            _%r43521%_))
                                    (if (gx#import-set? _%in43519%_)
                                        (let ()
                                          (foldl _%fold-e43516%_
                                                 _%r43521%_
                                                 (gx#import-set-imports
                                                  _%in43519%_)))
                                        (let ()
                                          (cons _%in43519%_ _%r43521%_)))))))
                      _%fold-e43516%_)))
              (cons 'begin: (foldl _%fold-e43529%_ '() _%imports43507%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4343143449%_
                                                     _%g4343243453%_)))
                                              _%hd4344243480%_
                                              _%hd4343943470%_)
                                             (_%g4343143449%_
                                              _%g4343243453%_))))
                                     (_%g4343143449%_ _%g4343243453%_))))
                             (_%g4343143449%_ _%g4343243453%_))))
                     (_%g4343143449%_ _%g4343243453%_)))))
         (_%g4343043534%_ _%stx43428%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43538%_)
       (letrec ((_%flatten43541%_
                 (lambda (_%list-of-lists43796%_)
                   (foldr (lambda (_%v43799%_ _%acc43801%_)
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%v43799%_))
                                (let () _%acc43801%_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _%v43799%_))
                                    (let ()
                                      (append (_%flatten43541%_ _%v43799%_)
                                              _%acc43801%_))
                                    (let () (cons _%v43799%_ _%acc43801%_)))))
                          '()
                          _%list-of-lists43796%_)))
                (_%expand-path43543%_
                 (lambda (_%top43664%_ _%mod43666%_)
                   (let* ((_%__stx4477244773%_ _%mod43666%_)
                          (_%g4366943691%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4477244773%_))))
                     (let ((_%__kont4477544776%_
                            (lambda (_%L43759%_ _%L43761%_)
                              (map (lambda (_%mod43776%_)
                                     (gx#stx-identifier
                                      _%top43664%_
                                      _%top43664%_
                                      '"/"
                                      _%mod43776%_))
                                   (_%flatten43541%_
                                    (map (lambda (_%g4377843780%_)
                                           (_%expand-path43543%_
                                            _%L43761%_
                                            _%g4377843780%_))
                                         (foldr (lambda (_%g4378343786%_
                                                         _%g4378443789%_)
                                                  (cons _%g4378343786%_
                                                        _%g4378443789%_))
                                                '()
                                                _%L43759%_))))))
                           (_%__kont4477944780%_
                            (lambda (_%L43698%_)
                              (gx#stx-identifier
                               _%top43664%_
                               _%top43664%_
                               '"/"
                               _%L43698%_))))
                       (let* ((_%g4366843712%_
                               (lambda ()
                                 (let ((_%L43698%_ _%__stx4477244773%_))
                                   (if (or (gx#identifier? _%L43698%_)
                                           (gx#stx-fixnum? _%L43698%_))
                                       (_%__kont4477944780%_ _%L43698%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4366943691%_))))))
                              (_%__match4479544796%_
                               (lambda (_%e4367543719%_
                                        _%hd4367443723%_
                                        _%tl4367343726%_
                                        _%__splice4477744778%_
                                        _%target4367643729%_
                                        _%tl4367843732%_)
                                 (letrec ((_%loop4367943735%_
                                           (lambda (_%hd4367743739%_
                                                    _%mod4368343742%_)
                                             (if (gx#stx-pair?
                                                  _%hd4367743739%_)
                                                 (let ((_%e4368043745%_
                                                        (gx#syntax-e
                                                         _%hd4367743739%_)))
                                                   (let ((_%lp-tl4368243752%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4368043745%_)))
                                                         (_%lp-hd4368143749%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4368043745%_))))
                                                     (_%loop4367943735%_
                                                      _%lp-tl4368243752%_
                                                      (cons _%lp-hd4368143749%_
                                                            _%mod4368343742%_))))
                                                 (let ((_%mod4368443755%_
                                                        (reverse _%mod4368343742%_)))
                                                   (_%__kont4477544776%_
                                                    _%mod4368443755%_
                                                    _%hd4367443723%_))))))
                                   (_%loop4367943735%_
                                    _%target4367643729%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4477244773%_)
                             (let ((_%e4367543719%_
                                    (gx#syntax-e _%__stx4477244773%_)))
                               (let ((_%tl4367343726%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4367543719%_)))
                                     (_%hd4367443723%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4367543719%_))))
                                 (if (gx#stx-pair/null? _%tl4367343726%_)
                                     (let ((_%__splice4477744778%_
                                            (gx#syntax-split-splice
                                             _%tl4367343726%_
                                             '0)))
                                       (let ((_%tl4367843732%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4477744778%_
                                                 '1)))
                                             (_%target4367643729%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4477744778%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4367843732%_)
                                             (_%__match4479544796%_
                                              _%e4367543719%_
                                              _%hd4367443723%_
                                              _%tl4367343726%_
                                              _%__splice4477744778%_
                                              _%target4367643729%_
                                              _%tl4367843732%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4366843712%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4366843712%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4366843712%_)))))))))
         (let* ((_%g4354543569%_
                 (lambda (_%g4354643565%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4354643565%_)))
                (_%g4354443660%_
                 (lambda (_%g4354643573%_)
                   (if (gx#stx-pair? _%g4354643573%_)
                       (let ((_%e4355143576%_ (gx#syntax-e _%g4354643573%_)))
                         (let ((_%hd4355043580%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4355143576%_)))
                               (_%tl4354943583%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4355143576%_))))
                           (if (gx#stx-pair? _%tl4354943583%_)
                               (let ((_%e4355443586%_
                                      (gx#syntax-e _%tl4354943583%_)))
                                 (let ((_%hd4355343590%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4355443586%_)))
                                       (_%tl4355243593%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4355443586%_))))
                                   (if (gx#stx-pair/null? _%tl4355243593%_)
                                       (let ((_g44875_
                                              (gx#syntax-split-splice
                                               _%tl4355243593%_
                                               '0)))
                                         (begin
                                           (let ((_g44876_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44875_)
                                                        (##vector-length
                                                         _g44875_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44876_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44876_)))
                                           (let ((_%target4355543596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44875_ 0)))
                                                 (_%tl4355743599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44875_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4355743599%_)
                                                 (letrec ((_%loop4355843602%_
                                                           (lambda (_%hd4355643606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4356243609%_)
                     (if (gx#stx-pair? _%hd4355643606%_)
                         (let ((_%e4355943612%_
                                (gx#syntax-e _%hd4355643606%_)))
                           (let ((_%lp-hd4356043616%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4355943612%_)))
                                 (_%lp-tl4356143619%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4355943612%_))))
                             (_%loop4355843602%_
                              _%lp-tl4356143619%_
                              (cons _%lp-hd4356043616%_ _%mod4356243609%_))))
                         (let ((_%mod4356343622%_ (reverse _%mod4356243609%_)))
                           ((lambda (_%L43626%_ _%L43628%_)
                              (cons 'begin:
                                    (_%flatten43541%_
                                     (map (lambda (_%g4364643648%_)
                                            (_%expand-path43543%_
                                             _%L43628%_
                                             _%g4364643648%_))
                                          (foldr (lambda (_%g4365143654%_
                                                          _%g4365243657%_)
                                                   (cons _%g4365143654%_
                                                         _%g4365243657%_))
                                                 '()
                                                 _%L43626%_)))))
                            _%mod4356343622%_
                            _%hd4355343590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4355843602%_
                                                    _%target4355543596%_
                                                    '()))
                                                 (_%g4354543569%_
                                                  _%g4354643573%_)))))
                                       (_%g4354543569%_ _%g4354643573%_))))
                               (_%g4354543569%_ _%g4354643573%_))))
                       (_%g4354543569%_ _%g4354643573%_)))))
           (_%g4354443660%_ _%stx43538%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43811%_)
       (let* ((_%g4381443838%_
               (lambda (_%g4381543834%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4381543834%_)))
              (_%g4381343966%_
               (lambda (_%g4381543842%_)
                 (if (gx#stx-pair? _%g4381543842%_)
                     (let ((_%e4382043845%_ (gx#syntax-e _%g4381543842%_)))
                       (let ((_%hd4381943849%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4382043845%_)))
                             (_%tl4381843852%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4382043845%_))))
                         (if (gx#stx-pair? _%tl4381843852%_)
                             (let ((_%e4382343855%_
                                    (gx#syntax-e _%tl4381843852%_)))
                               (let ((_%hd4382243859%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4382343855%_)))
                                     (_%tl4382143862%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4382343855%_))))
                                 (if (gx#stx-pair/null? _%tl4382143862%_)
                                     (let ((_g44877_
                                            (gx#syntax-split-splice
                                             _%tl4382143862%_
                                             '0)))
                                       (begin
                                         (let ((_g44878_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44877_)
                                                      (##vector-length
                                                       _g44877_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44878_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44878_)))
                                         (let ((_%target4382443865%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44877_ 0)))
                                               (_%tl4382643868%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44877_ 1))))
                                           (if (gx#stx-null? _%tl4382643868%_)
                                               (letrec ((_%loop4382743871%_
                                                         (lambda (_%hd4382543875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4383143878%_)
                   (if (gx#stx-pair? _%hd4382543875%_)
                       (let ((_%e4382843881%_ (gx#syntax-e _%hd4382543875%_)))
                         (let ((_%lp-hd4382943885%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4382843881%_)))
                               (_%lp-tl4383043888%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4382843881%_))))
                           (_%loop4382743871%_
                            _%lp-tl4383043888%_
                            (cons _%lp-hd4382943885%_ _%id4383143878%_))))
                       (let ((_%id4383243891%_ (reverse _%id4383143878%_)))
                         ((lambda (_%L43895%_ _%L43897%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4391443917%_
                                                 _%g4391543920%_)
                                          (cons _%g4391443917%_
                                                _%g4391543920%_))
                                        '()
                                        _%L43895%_))
                                (let* ((_%keys43931%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4392243925%_
                                                         _%g4392343928%_)
                                                  (cons _%g4392243925%_
                                                        _%g4392343928%_))
                                                '()
                                                _%L43895%_)))
                                       (_%keytab43942%_
                                        (let ((_%ht43934%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4393643938%_)
                                             (hash-put!
                                              _%ht43934%_
                                              _%g4393643938%_
                                              '#t))
                                           _%keys43931%_)
                                          _%ht43934%_))
                                       (_%exports43945%_
                                        (gx#core-expand-export-source
                                         _%L43897%_))
                                       (_%fold-e43961%_
                                        (letrec ((_%fold-e43948%_
                                                  (lambda (_%out43951%_
                                                           _%r43953%_)
                                                    (if (gx#module-export?
                                                         _%out43951%_)
                                                        (let ()
                                                          (if (hash-get
                                                               _%keytab43942%_
                                                               (gx#module-export-name
                                                                _%out43951%_))
                                                              _%r43953%_
                                                              (cons _%out43951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r43953%_)))
                (if (gx#export-set? _%out43951%_)
                    (let ()
                      (foldl _%fold-e43948%_
                             _%r43953%_
                             (gx#export-set-exports _%out43951%_)))
                    (let () _%r43953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43948%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43961%_
                                               '()
                                               _%exports43945%_)))
                                (_%g4381443838%_ _%g4381543842%_)))
                          _%id4383243891%_
                          _%hd4382243859%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4382743871%_
                                                  _%target4382443865%_
                                                  '()))
                                               (_%g4381443838%_
                                                _%g4381543842%_)))))
                                     (_%g4381443838%_ _%g4381543842%_))))
                             (_%g4381443838%_ _%g4381543842%_))))
                     (_%g4381443838%_ _%g4381543842%_)))))
         (_%g4381343966%_ _%stx43811%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43971%_ _%rename43973%_)
      (gx#make-module-export
       (gx#module-export-context _%out43971%_)
       (gx#module-export-key _%out43971%_)
       (gx#module-export-phi _%out43971%_)
       _%rename43973%_
       (gx#module-export-weak? _%out43971%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43975%_)
       (let* ((_%g4397844011%_
               (lambda (_%g4397944007%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4397944007%_)))
              (_%g4397744206%_
               (lambda (_%g4397944015%_)
                 (if (gx#stx-pair? _%g4397944015%_)
                     (let ((_%e4398544018%_ (gx#syntax-e _%g4397944015%_)))
                       (let ((_%hd4398444022%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4398544018%_)))
                             (_%tl4398344025%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4398544018%_))))
                         (if (gx#stx-pair? _%tl4398344025%_)
                             (let ((_%e4398844028%_
                                    (gx#syntax-e _%tl4398344025%_)))
                               (let ((_%hd4398744032%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4398844028%_)))
                                     (_%tl4398644035%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4398844028%_))))
                                 (if (gx#stx-pair/null? _%tl4398644035%_)
                                     (let ((_g44879_
                                            (gx#syntax-split-splice
                                             _%tl4398644035%_
                                             '0)))
                                       (begin
                                         (let ((_g44880_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44879_)
                                                      (##vector-length
                                                       _g44879_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44880_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44880_)))
                                         (let ((_%target4398944038%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44879_ 0)))
                                               (_%tl4399144041%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44879_ 1))))
                                           (if (gx#stx-null? _%tl4399144041%_)
                                               (letrec ((_%loop4399244044%_
                                                         (lambda (_%hd4399044048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4399644051%_
                          _%id4399744053%_)
                   (if (gx#stx-pair? _%hd4399044048%_)
                       (let ((_%e4399344056%_ (gx#syntax-e _%hd4399044048%_)))
                         (let ((_%lp-hd4399444060%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4399344056%_)))
                               (_%lp-tl4399544063%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4399344056%_))))
                           (if (gx#stx-pair? _%lp-hd4399444060%_)
                               (let ((_%e4400244066%_
                                      (gx#syntax-e _%lp-hd4399444060%_)))
                                 (let ((_%hd4400144070%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4400244066%_)))
                                       (_%tl4400044073%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4400244066%_))))
                                   (if (gx#stx-pair? _%tl4400044073%_)
                                       (let ((_%e4400544076%_
                                              (gx#syntax-e _%tl4400044073%_)))
                                         (let ((_%hd4400444080%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4400544076%_)))
                                               (_%tl4400344083%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4400544076%_))))
                                           (if (gx#stx-null? _%tl4400344083%_)
                                               (_%loop4399244044%_
                                                _%lp-tl4399544063%_
                                                (cons _%hd4400444080%_
                                                      _%new-id4399644051%_)
                                                (cons _%hd4400144070%_
                                                      _%id4399744053%_))
                                               (_%g4397844011%_
                                                _%g4397944015%_))))
                                       (_%g4397844011%_ _%g4397944015%_))))
                               (_%g4397844011%_ _%g4397944015%_))))
                       (let ((_%new-id4399844086%_
                              (reverse _%new-id4399644051%_))
                             (_%id4399944089%_ (reverse _%id4399744053%_)))
                         ((lambda (_%L44092%_ _%L44094%_ _%L44095%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4411344116%_
                                                      _%g4411444119%_)
                                               (cons _%g4411344116%_
                                                     _%g4411444119%_))
                                             '()
                                             _%L44094%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4412144124%_
                                                      _%g4412244127%_)
                                               (cons _%g4412144124%_
                                                     _%g4412244127%_))
                                             '()
                                             _%L44092%_)))
                                (let* ((_%keytab44130%_ (make-hash-table))
                                       (_%found44133%_ (make-hash-table))
                                       (_%_44156%_
                                        (for-each
                                         (lambda (_%id44136%_ _%new-id44138%_)
                                           (hash-put!
                                            _%keytab44130%_
                                            (gx#core-identifier-key
                                             _%id44136%_)
                                            (gx#core-identifier-key
                                             _%new-id44138%_)))
                                         (foldr (lambda (_%g4413944142%_
                                                         _%g4414044145%_)
                                                  (cons _%g4413944142%_
                                                        _%g4414044145%_))
                                                '()
                                                _%L44094%_)
                                         (foldr (lambda (_%g4414744150%_
                                                         _%g4414844153%_)
                                                  (cons _%g4414744150%_
                                                        _%g4414844153%_))
                                                '()
                                                _%L44092%_)))
                                       (_%exports44159%_
                                        (gx#core-expand-export-source
                                         _%L44095%_))
                                       (_%fold-e44187%_
                                        (letrec ((_%fold-e44162%_
                                                  (lambda (_%out44165%_
                                                           _%r44167%_)
                                                    (if (gx#module-export?
                                                         _%out44165%_)
                                                        (let ()
                                                          (let* ((_%name44171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#module-export-name _%out44165%_))
                         (_%$e44174%_
                          (hash-get _%keytab44130%_ _%name44171%_)))
                    (if _%$e44174%_
                        ((lambda (_%rename44178%_)
                           (hash-put! _%found44133%_ _%name44171%_ '#t)
                           (cons (let ()
                                   (declare (not safe))
                                   (|gerbil/core/module-sugar[1]#module-export-rename|
                                    _%out44165%_
                                    _%rename44178%_))
                                 _%r44167%_))
                         _%$e44174%_)
                        (let () (cons _%out44165%_ _%r44167%_)))))
                (if (gx#export-set? _%out44165%_)
                    (let ()
                      (foldl _%fold-e44162%_
                             _%r44167%_
                             (gx#export-set-exports _%out44165%_)))
                    (let () (cons _%out44165%_ _%r44167%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e44162%_))
                                       (_%new-exports44190%_
                                        (foldl _%fold-e44187%_
                                               '()
                                               _%exports44159%_)))
                                  (for-each
                                   (lambda (_%id44195%_)
                                     (if (hash-get
                                          _%found44133%_
                                          (gx#core-identifier-key _%id44195%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43975%_
                                          _%id44195%_)))
                                   (foldr (lambda (_%g4419744200%_
                                                   _%g4419844203%_)
                                            (cons _%g4419744200%_
                                                  _%g4419844203%_))
                                          '()
                                          _%L44094%_))
                                  (cons 'begin: _%new-exports44190%_))
                                (_%g4397844011%_ _%g4397944015%_)))
                          _%new-id4399844086%_
                          _%id4399944089%_
                          _%hd4398744032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4399244044%_
                                                  _%target4398944038%_
                                                  '()
                                                  '()))
                                               (_%g4397844011%_
                                                _%g4397944015%_)))))
                                     (_%g4397844011%_ _%g4397944015%_))))
                             (_%g4397844011%_ _%g4397944015%_))))
                     (_%g4397844011%_ _%g4397944015%_)))))
         (_%g4397744206%_ _%stx43975%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx44211%_)
       (let* ((_%g4421444232%_
               (lambda (_%g4421544228%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4421544228%_)))
              (_%g4421344317%_
               (lambda (_%g4421544236%_)
                 (if (gx#stx-pair? _%g4421544236%_)
                     (let ((_%e4422044239%_ (gx#syntax-e _%g4421544236%_)))
                       (let ((_%hd4421944243%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4422044239%_)))
                             (_%tl4421844246%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4422044239%_))))
                         (if (gx#stx-pair? _%tl4421844246%_)
                             (let ((_%e4422344249%_
                                    (gx#syntax-e _%tl4421844246%_)))
                               (let ((_%hd4422244253%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4422344249%_)))
                                     (_%tl4422144256%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4422344249%_))))
                                 (if (gx#stx-pair? _%tl4422144256%_)
                                     (let ((_%e4422644259%_
                                            (gx#syntax-e _%tl4422144256%_)))
                                       (let ((_%hd4422544263%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4422644259%_)))
                                             (_%tl4422444266%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4422644259%_))))
                                         (if (gx#stx-null? _%tl4422444266%_)
                                             ((lambda (_%L44269%_ _%L44271%_)
                                                (if (gx#identifier? _%L44269%_)
                                                    (let* ((_%pre44287%_
                                                            (gx#stx-e
                                                             _%L44269%_))
                                                           (_%exports44290%_
                                                            (gx#core-expand-export-source
                                                             _%L44271%_))
                                                           (_%rename-e44296%_
                                                            (lambda (_%name44293%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                         _%name44293%_
                         _%pre44287%_))))
                   (_%fold-e44312%_
                    (letrec ((_%fold-e44299%_
                              (lambda (_%out44302%_ _%r44304%_)
                                (if (gx#module-export? _%out44302%_)
                                    (let ()
                                      (cons (let ((__tmp44881
                                                   (_%rename-e44296%_
                                                    (gx#module-export-name
                                                     _%out44302%_))))
                                              (declare (not safe))
                                              (|gerbil/core/module-sugar[1]#module-export-rename|
                                               _%out44302%_
                                               __tmp44881))
                                            _%r44304%_))
                                    (if (gx#export-set? _%out44302%_)
                                        (let ()
                                          (foldl _%fold-e44299%_
                                                 _%r44304%_
                                                 (gx#export-set-exports
                                                  _%out44302%_)))
                                        (let ()
                                          (cons _%out44302%_ _%r44304%_)))))))
                      _%fold-e44299%_)))
              (cons 'begin: (foldl _%fold-e44312%_ '() _%exports44290%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4421444232%_
                                                     _%g4421544236%_)))
                                              _%hd4422544263%_
                                              _%hd4422244253%_)
                                             (_%g4421444232%_
                                              _%g4421544236%_))))
                                     (_%g4421444232%_ _%g4421544236%_))))
                             (_%g4421444232%_ _%g4421544236%_))))
                     (_%g4421444232%_ _%g4421544236%_)))))
         (_%g4421344317%_ _%stx44211%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44321%_)
       (letrec ((_%identifiers44324%_
                 (lambda (_%id44556%_ _%unchecked?44558%_)
                   (let ((_%info44560%_
                          (gx#syntax-local-value _%id44556%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44560%_))
                         (cons _%id44556%_
                               (cons (let ((__obj44857 _%info44560%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44857
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44857
                                              '12
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj44857
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44858
                                                         _%info44560%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44858
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44858
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj44858
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44859 _%info44560%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44859
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44859
                                                 '18
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44859
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44860 _%info44560%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44860
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44860
                                                 '17
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44860
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44861 _%info44560%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44861
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44861
                                      '16
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj44861
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44862 _%info44560%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44862
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44862
                               '15
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj44862
                             'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44563%_
                                                   (let ((__obj44863
                                                          _%info44560%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44863
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44863
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj44863
                                                          'constructor)))))
                                              (if _%ctor44563%_
                                                  (cons _%ctor44563%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44321%_
                          _%id44556%_))))))
         (let* ((_%__stx4479844799%_ _%stx44321%_)
                (_%g4432844369%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4479844799%_))))
           (let ((_%__kont4480144802%_
                  (lambda (_%L44517%_ _%L44519%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4453844540%_)
                              (_%identifiers44324%_
                               _%g4453844540%_
                               (gx#stx-e _%L44519%_)))
                            (foldr (lambda (_%g4454344546%_ _%g4454444549%_)
                                     (cons _%g4454344546%_ _%g4454444549%_))
                                   '()
                                   _%L44517%_))))))
                 (_%__kont4480544806%_
                  (lambda (_%L44416%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4443244434%_)
                              (_%identifiers44324%_ _%g4443244434%_ '#f))
                            (foldr (lambda (_%g4443744440%_ _%g4443844443%_)
                                     (cons _%g4443744440%_ _%g4443844443%_))
                                   '()
                                   _%L44416%_)))))))
             (let* ((_%__match4485544856%_
                     (lambda (_%e4435444376%_
                              _%hd4435344380%_
                              _%tl4435244383%_
                              _%__splice4480744808%_
                              _%target4435544386%_
                              _%tl4435744389%_)
                       (letrec ((_%loop4435844392%_
                                 (lambda (_%hd4435644396%_ _%id4436244399%_)
                                   (if (gx#stx-pair? _%hd4435644396%_)
                                       (let ((_%e4435944402%_
                                              (gx#syntax-e _%hd4435644396%_)))
                                         (let ((_%lp-tl4436144409%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4435944402%_)))
                                               (_%lp-hd4436044406%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4435944402%_))))
                                           (_%loop4435844392%_
                                            _%lp-tl4436144409%_
                                            (cons _%lp-hd4436044406%_
                                                  _%id4436244399%_))))
                                       (let ((_%id4436344412%_
                                              (reverse _%id4436244399%_)))
                                         (_%__kont4480544806%_
                                          _%id4436344412%_))))))
                         (_%loop4435844392%_ _%target4435544386%_ '()))))
                    (_%__match4484144842%_
                     (lambda (_%e4433444453%_
                              _%hd4433344457%_
                              _%tl4433244460%_
                              _%e4433744463%_
                              _%hd4433644467%_
                              _%tl4433544470%_
                              _%e4433844473%_
                              _%e4434144477%_
                              _%hd4434044481%_
                              _%tl4433944484%_
                              _%__splice4480344804%_
                              _%target4434244487%_
                              _%tl4434444490%_)
                       (letrec ((_%loop4434544493%_
                                 (lambda (_%hd4434344497%_ _%id4434944500%_)
                                   (if (gx#stx-pair? _%hd4434344497%_)
                                       (let ((_%e4434644503%_
                                              (gx#syntax-e _%hd4434344497%_)))
                                         (let ((_%lp-tl4434844510%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4434644503%_)))
                                               (_%lp-hd4434744507%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4434644503%_))))
                                           (_%loop4434544493%_
                                            _%lp-tl4434844510%_
                                            (cons _%lp-hd4434744507%_
                                                  _%id4434944500%_))))
                                       (let ((_%id4435044513%_
                                              (reverse _%id4434944500%_)))
                                         (_%__kont4480144802%_
                                          _%id4435044513%_
                                          _%hd4434044481%_))))))
                         (_%loop4434544493%_ _%target4434244487%_ '())))))
               (if (gx#stx-pair? _%__stx4479844799%_)
                   (let ((_%e4433444453%_ (gx#syntax-e _%__stx4479844799%_)))
                     (let ((_%tl4433244460%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4433444453%_)))
                           (_%hd4433344457%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4433444453%_))))
                       (if (gx#stx-pair? _%tl4433244460%_)
                           (let ((_%e4433744463%_
                                  (gx#syntax-e _%tl4433244460%_)))
                             (let ((_%tl4433544470%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4433744463%_)))
                                   (_%hd4433644467%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4433744463%_))))
                               (if (gx#stx-datum? _%hd4433644467%_)
                                   (let ((_%e4433844473%_
                                          (gx#stx-e _%hd4433644467%_)))
                                     (if (equal? _%e4433844473%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4433544470%_)
                                             (let ((_%e4434144477%_
                                                    (gx#syntax-e
                                                     _%tl4433544470%_)))
                                               (let ((_%tl4433944484%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4434144477%_)))
                                                     (_%hd4434044481%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4434144477%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4433944484%_)
                                                     (let ((_%__splice4480344804%_
                                                            (gx#syntax-split-splice
                                                             _%tl4433944484%_
                                                             '0)))
                                                       (let ((_%tl4434444490%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4480344804%_ '1)))
                     (_%target4434244487%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4480344804%_ '0))))
                 (if (gx#stx-null? _%tl4434444490%_)
                     (_%__match4484144842%_
                      _%e4433444453%_
                      _%hd4433344457%_
                      _%tl4433244460%_
                      _%e4433744463%_
                      _%hd4433644467%_
                      _%tl4433544470%_
                      _%e4433844473%_
                      _%e4434144477%_
                      _%hd4434044481%_
                      _%tl4433944484%_
                      _%__splice4480344804%_
                      _%target4434244487%_
                      _%tl4434444490%_)
                     (if (gx#stx-pair/null? _%tl4433244460%_)
                         (let ((_%__splice4480744808%_
                                (gx#syntax-split-splice _%tl4433244460%_ '0)))
                           (let ((_%tl4435744389%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4480744808%_ '1)))
                                 (_%target4435544386%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4480744808%_ '0))))
                             (if (gx#stx-null? _%tl4435744389%_)
                                 (_%__match4485544856%_
                                  _%e4433444453%_
                                  _%hd4433344457%_
                                  _%tl4433244460%_
                                  _%__splice4480744808%_
                                  _%target4435544386%_
                                  _%tl4435744389%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4432844369%_)))))
                         (let () (declare (not safe)) (_%g4432844369%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4433244460%_)
                                                         (let ((_%__splice4480744808%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4433244460%_
                         '0)))
                   (let ((_%tl4435744389%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4480744808%_ '1)))
                         (_%target4435544386%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4480744808%_ '0))))
                     (if (gx#stx-null? _%tl4435744389%_)
                         (_%__match4485544856%_
                          _%e4433444453%_
                          _%hd4433344457%_
                          _%tl4433244460%_
                          _%__splice4480744808%_
                          _%target4435544386%_
                          _%tl4435744389%_)
                         (let () (declare (not safe)) (_%g4432844369%_)))))
                 (let () (declare (not safe)) (_%g4432844369%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4433244460%_)
                                                 (let ((_%__splice4480744808%_
                                                        (gx#syntax-split-splice
                                                         _%tl4433244460%_
                                                         '0)))
                                                   (let ((_%tl4435744389%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4480744808%_
                                                             '1)))
                                                         (_%target4435544386%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4480744808%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4435744389%_)
                                                         (_%__match4485544856%_
                                                          _%e4433444453%_
                                                          _%hd4433344457%_
                                                          _%tl4433244460%_
                                                          _%__splice4480744808%_
                                                          _%target4435544386%_
                                                          _%tl4435744389%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4432844369%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4432844369%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4433244460%_)
                                             (let ((_%__splice4480744808%_
                                                    (gx#syntax-split-splice
                                                     _%tl4433244460%_
                                                     '0)))
                                               (let ((_%tl4435744389%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4480744808%_
                                                         '1)))
                                                     (_%target4435544386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4480744808%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4435744389%_)
                                                     (_%__match4485544856%_
                                                      _%e4433444453%_
                                                      _%hd4433344457%_
                                                      _%tl4433244460%_
                                                      _%__splice4480744808%_
                                                      _%target4435544386%_
                                                      _%tl4435744389%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4432844369%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4432844369%_)))))
                                   (if (gx#stx-pair/null? _%tl4433244460%_)
                                       (let ((_%__splice4480744808%_
                                              (gx#syntax-split-splice
                                               _%tl4433244460%_
                                               '0)))
                                         (let ((_%tl4435744389%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4480744808%_
                                                   '1)))
                                               (_%target4435544386%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4480744808%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4435744389%_)
                                               (_%__match4485544856%_
                                                _%e4433444453%_
                                                _%hd4433344457%_
                                                _%tl4433244460%_
                                                _%__splice4480744808%_
                                                _%target4435544386%_
                                                _%tl4435744389%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4432844369%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4432844369%_))))))
                           (if (gx#stx-pair/null? _%tl4433244460%_)
                               (let ((_%__splice4480744808%_
                                      (gx#syntax-split-splice
                                       _%tl4433244460%_
                                       '0)))
                                 (let ((_%tl4435744389%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4480744808%_
                                           '1)))
                                       (_%target4435544386%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4480744808%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4435744389%_)
                                       (_%__match4485544856%_
                                        _%e4433444453%_
                                        _%hd4433344457%_
                                        _%tl4433244460%_
                                        _%__splice4480744808%_
                                        _%target4435544386%_
                                        _%tl4435744389%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4432844369%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4432844369%_))))))
                   (let () (declare (not safe)) (_%g4432844369%_)))))))))))
