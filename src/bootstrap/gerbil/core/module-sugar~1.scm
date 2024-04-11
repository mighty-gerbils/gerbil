(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx41701%_)
      (let* ((_%__stx4435544356%_ _%$stx41701%_)
             (_%g4170641725%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4435544356%_))))
        (let ((_%__kont4435844359%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont4436044361%_
               (lambda (_%L41752%_ _%L41754%_ _%L41755%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%L41754%_
                                   (cons (cons _%L41755%_ _%L41752%_) '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%L41754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx4435544356%_)
              (let ((_%e4170841777%_ (gx#syntax-e _%__stx4435544356%_)))
                (let ((_%tl4171041784%_
                       (let () (declare (not safe)) (##cdr _%e4170841777%_)))
                      (_%hd4170941781%_
                       (let () (declare (not safe)) (##car _%e4170841777%_))))
                  (if (gx#stx-null? _%tl4171041784%_)
                      (_%__kont4435844359%_)
                      (if (gx#stx-pair? _%tl4171041784%_)
                          (let ((_%e4171741742%_
                                 (gx#syntax-e _%tl4171041784%_)))
                            (let ((_%tl4171941749%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4171741742%_)))
                                  (_%hd4171841746%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4171741742%_))))
                              (_%__kont4436044361%_
                               _%tl4171941749%_
                               _%hd4171841746%_
                               _%hd4170941781%_)))
                          (let () (declare (not safe)) (_%g4170641725%_))))))
              (let () (declare (not safe)) (_%g4170641725%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx41795%_)
      (let* ((_%__stx4438544386%_ _%$stx41795%_)
             (_%g4180041840%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4438544386%_))))
        (let ((_%__kont4438844389%_
               (lambda (_%L41978%_ _%L41980%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L41980%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%L41978%_ '()))
                                   '())))))
              (_%__kont4439044391%_
               (lambda (_%L41907%_ _%L41909%_ _%L41910%_ _%L41911%_)
                 (cons _%L41911%_
                       (cons _%L41910%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L41909%_
                                               (foldr (lambda (_%g4193241935%_
                                                               _%g4193341938%_)
                                                        (cons _%g4193241935%_
                                                              _%g4193341938%_))
                                                      '()
                                                      _%L41907%_)))
                                   '()))))))
          (let* ((_%__match4444044441%_
                  (lambda (_%e4181741847%_
                           _%hd4181841851%_
                           _%tl4181941854%_
                           _%e4182041857%_
                           _%hd4182141861%_
                           _%tl4182241864%_
                           _%e4182341867%_
                           _%hd4182441871%_
                           _%tl4182541874%_
                           _%__splice4439244393%_
                           _%target4182641877%_
                           _%tl4182841880%_)
                    (letrec ((_%loop4182941883%_
                              (lambda (_%hd4182741887%_ _%body4183341890%_)
                                (if (gx#stx-pair? _%hd4182741887%_)
                                    (let ((_%e4183041893%_
                                           (gx#syntax-e _%hd4182741887%_)))
                                      (let ((_%lp-tl4183241900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4183041893%_)))
                                            (_%lp-hd4183141897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4183041893%_))))
                                        (_%loop4182941883%_
                                         _%lp-tl4183241900%_
                                         (cons _%lp-hd4183141897%_
                                               _%body4183341890%_))))
                                    (let ((_%body4183441903%_
                                           (reverse _%body4183341890%_)))
                                      (let ((_%L41907%_ _%body4183441903%_)
                                            (_%L41909%_ _%tl4182541874%_)
                                            (_%L41910%_ _%hd4182441871%_)
                                            (_%L41911%_ _%hd4181841851%_))
                                        (if (gx#identifier? _%L41910%_)
                                            (_%__kont4439044391%_
                                             _%L41907%_
                                             _%L41909%_
                                             _%L41910%_
                                             _%L41911%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4180041840%_)))))))))
                      (_%loop4182941883%_ _%target4182641877%_ '()))))
                 (_%__match4441444415%_
                  (lambda (_%e4180441948%_
                           _%hd4180541952%_
                           _%tl4180641955%_
                           _%e4180741958%_
                           _%hd4180841962%_
                           _%tl4180941965%_
                           _%e4181041968%_
                           _%hd4181141972%_
                           _%tl4181241975%_)
                    (let ((_%L41978%_ _%hd4181141972%_)
                          (_%L41980%_ _%hd4180841962%_))
                      (if (gx#identifier? _%L41980%_)
                          (_%__kont4438844389%_ _%L41978%_ _%L41980%_)
                          (if (gx#stx-pair? _%hd4180841962%_)
                              (let ((_%e4182341867%_
                                     (gx#syntax-e _%hd4180841962%_)))
                                (let ((_%tl4182541874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4182341867%_)))
                                      (_%hd4182441871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4182341867%_))))
                                  (if (gx#stx-pair/null? _%tl4180941965%_)
                                      (let ((_%__splice4439244393%_
                                             (gx#syntax-split-splice
                                              _%tl4180941965%_
                                              '0)))
                                        (let ((_%tl4182841880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4439244393%_
                                                  '1)))
                                              (_%target4182641877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4439244393%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4182841880%_)
                                              (_%__match4444044441%_
                                               _%e4180441948%_
                                               _%hd4180541952%_
                                               _%tl4180641955%_
                                               _%e4180741958%_
                                               _%hd4180841962%_
                                               _%tl4180941965%_
                                               _%e4182341867%_
                                               _%hd4182441871%_
                                               _%tl4182541874%_
                                               _%__splice4439244393%_
                                               _%target4182641877%_
                                               _%tl4182841880%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4180041840%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4180041840%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4180041840%_))))))))
            (if (gx#stx-pair? _%__stx4438544386%_)
                (let ((_%e4180441948%_ (gx#syntax-e _%__stx4438544386%_)))
                  (let ((_%tl4180641955%_
                         (let () (declare (not safe)) (##cdr _%e4180441948%_)))
                        (_%hd4180541952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4180441948%_))))
                    (if (gx#stx-pair? _%tl4180641955%_)
                        (let ((_%e4180741958%_ (gx#syntax-e _%tl4180641955%_)))
                          (let ((_%tl4180941965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4180741958%_)))
                                (_%hd4180841962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4180741958%_))))
                            (if (gx#stx-pair? _%tl4180941965%_)
                                (let ((_%e4181041968%_
                                       (gx#syntax-e _%tl4180941965%_)))
                                  (let ((_%tl4181241975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4181041968%_)))
                                        (_%hd4181141972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4181041968%_))))
                                    (if (gx#stx-null? _%tl4181241975%_)
                                        (_%__match4441444415%_
                                         _%e4180441948%_
                                         _%hd4180541952%_
                                         _%tl4180641955%_
                                         _%e4180741958%_
                                         _%hd4180841962%_
                                         _%tl4180941965%_
                                         _%e4181041968%_
                                         _%hd4181141972%_
                                         _%tl4181241975%_)
                                        (if (gx#stx-pair? _%hd4180841962%_)
                                            (let ((_%e4182341867%_
                                                   (gx#syntax-e
                                                    _%hd4180841962%_)))
                                              (let ((_%tl4182541874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4182341867%_)))
                                                    (_%hd4182441871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4182341867%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4180941965%_)
                                                    (let ((_%__splice4439244393%_
                                                           (gx#syntax-split-splice
                                                            _%tl4180941965%_
                                                            '0)))
                                                      (let ((_%tl4182841880%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4439244393%_ '1)))
                    (_%target4182641877%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4439244393%_ '0))))
                (if (gx#stx-null? _%tl4182841880%_)
                    (_%__match4444044441%_
                     _%e4180441948%_
                     _%hd4180541952%_
                     _%tl4180641955%_
                     _%e4180741958%_
                     _%hd4180841962%_
                     _%tl4180941965%_
                     _%e4182341867%_
                     _%hd4182441871%_
                     _%tl4182541874%_
                     _%__splice4439244393%_
                     _%target4182641877%_
                     _%tl4182841880%_)
                    (let () (declare (not safe)) (_%g4180041840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4180041840%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4180041840%_))))))
                                (if (gx#stx-pair? _%hd4180841962%_)
                                    (let ((_%e4182341867%_
                                           (gx#syntax-e _%hd4180841962%_)))
                                      (let ((_%tl4182541874%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4182341867%_)))
                                            (_%hd4182441871%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4182341867%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4180941965%_)
                                            (let ((_%__splice4439244393%_
                                                   (gx#syntax-split-splice
                                                    _%tl4180941965%_
                                                    '0)))
                                              (let ((_%tl4182841880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4439244393%_
                                                        '1)))
                                                    (_%target4182641877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4439244393%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4182841880%_)
                                                    (_%__match4444044441%_
                                                     _%e4180441948%_
                                                     _%hd4180541952%_
                                                     _%tl4180641955%_
                                                     _%e4180741958%_
                                                     _%hd4180841962%_
                                                     _%tl4180941965%_
                                                     _%e4182341867%_
                                                     _%hd4182441871%_
                                                     _%tl4182541874%_
                                                     _%__splice4439244393%_
                                                     _%target4182641877%_
                                                     _%tl4182841880%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4180041840%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4180041840%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4180041840%_))))))
                        (let () (declare (not safe)) (_%g4180041840%_)))))
                (let () (declare (not safe)) (_%g4180041840%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx42000%_)
      (let* ((_%__stx4444344444%_ _%$stx42000%_)
             (_%g4200542045%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4444344444%_))))
        (let ((_%__kont4444644447%_
               (lambda (_%L42183%_ _%L42185%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42185%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%L42183%_ '()))
                                   '())))))
              (_%__kont4444844449%_
               (lambda (_%L42112%_ _%L42114%_ _%L42115%_ _%L42116%_)
                 (cons _%L42116%_
                       (cons _%L42115%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42114%_
                                               (foldr (lambda (_%g4213742140%_
                                                               _%g4213842143%_)
                                                        (cons _%g4213742140%_
                                                              _%g4213842143%_))
                                                      '()
                                                      _%L42112%_)))
                                   '()))))))
          (let* ((_%__match4449844499%_
                  (lambda (_%e4202242052%_
                           _%hd4202342056%_
                           _%tl4202442059%_
                           _%e4202542062%_
                           _%hd4202642066%_
                           _%tl4202742069%_
                           _%e4202842072%_
                           _%hd4202942076%_
                           _%tl4203042079%_
                           _%__splice4445044451%_
                           _%target4203142082%_
                           _%tl4203342085%_)
                    (letrec ((_%loop4203442088%_
                              (lambda (_%hd4203242092%_ _%body4203842095%_)
                                (if (gx#stx-pair? _%hd4203242092%_)
                                    (let ((_%e4203542098%_
                                           (gx#syntax-e _%hd4203242092%_)))
                                      (let ((_%lp-tl4203742105%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4203542098%_)))
                                            (_%lp-hd4203642102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4203542098%_))))
                                        (_%loop4203442088%_
                                         _%lp-tl4203742105%_
                                         (cons _%lp-hd4203642102%_
                                               _%body4203842095%_))))
                                    (let ((_%body4203942108%_
                                           (reverse _%body4203842095%_)))
                                      (let ((_%L42112%_ _%body4203942108%_)
                                            (_%L42114%_ _%tl4203042079%_)
                                            (_%L42115%_ _%hd4202942076%_)
                                            (_%L42116%_ _%hd4202342056%_))
                                        (if (gx#identifier? _%L42115%_)
                                            (_%__kont4444844449%_
                                             _%L42112%_
                                             _%L42114%_
                                             _%L42115%_
                                             _%L42116%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4200542045%_)))))))))
                      (_%loop4203442088%_ _%target4203142082%_ '()))))
                 (_%__match4447244473%_
                  (lambda (_%e4200942153%_
                           _%hd4201042157%_
                           _%tl4201142160%_
                           _%e4201242163%_
                           _%hd4201342167%_
                           _%tl4201442170%_
                           _%e4201542173%_
                           _%hd4201642177%_
                           _%tl4201742180%_)
                    (let ((_%L42183%_ _%hd4201642177%_)
                          (_%L42185%_ _%hd4201342167%_))
                      (if (gx#identifier? _%L42185%_)
                          (_%__kont4444644447%_ _%L42183%_ _%L42185%_)
                          (if (gx#stx-pair? _%hd4201342167%_)
                              (let ((_%e4202842072%_
                                     (gx#syntax-e _%hd4201342167%_)))
                                (let ((_%tl4203042079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4202842072%_)))
                                      (_%hd4202942076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4202842072%_))))
                                  (if (gx#stx-pair/null? _%tl4201442170%_)
                                      (let ((_%__splice4445044451%_
                                             (gx#syntax-split-splice
                                              _%tl4201442170%_
                                              '0)))
                                        (let ((_%tl4203342085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4445044451%_
                                                  '1)))
                                              (_%target4203142082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4445044451%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4203342085%_)
                                              (_%__match4449844499%_
                                               _%e4200942153%_
                                               _%hd4201042157%_
                                               _%tl4201142160%_
                                               _%e4201242163%_
                                               _%hd4201342167%_
                                               _%tl4201442170%_
                                               _%e4202842072%_
                                               _%hd4202942076%_
                                               _%tl4203042079%_
                                               _%__splice4445044451%_
                                               _%target4203142082%_
                                               _%tl4203342085%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4200542045%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4200542045%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4200542045%_))))))))
            (if (gx#stx-pair? _%__stx4444344444%_)
                (let ((_%e4200942153%_ (gx#syntax-e _%__stx4444344444%_)))
                  (let ((_%tl4201142160%_
                         (let () (declare (not safe)) (##cdr _%e4200942153%_)))
                        (_%hd4201042157%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4200942153%_))))
                    (if (gx#stx-pair? _%tl4201142160%_)
                        (let ((_%e4201242163%_ (gx#syntax-e _%tl4201142160%_)))
                          (let ((_%tl4201442170%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4201242163%_)))
                                (_%hd4201342167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4201242163%_))))
                            (if (gx#stx-pair? _%tl4201442170%_)
                                (let ((_%e4201542173%_
                                       (gx#syntax-e _%tl4201442170%_)))
                                  (let ((_%tl4201742180%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4201542173%_)))
                                        (_%hd4201642177%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4201542173%_))))
                                    (if (gx#stx-null? _%tl4201742180%_)
                                        (_%__match4447244473%_
                                         _%e4200942153%_
                                         _%hd4201042157%_
                                         _%tl4201142160%_
                                         _%e4201242163%_
                                         _%hd4201342167%_
                                         _%tl4201442170%_
                                         _%e4201542173%_
                                         _%hd4201642177%_
                                         _%tl4201742180%_)
                                        (if (gx#stx-pair? _%hd4201342167%_)
                                            (let ((_%e4202842072%_
                                                   (gx#syntax-e
                                                    _%hd4201342167%_)))
                                              (let ((_%tl4203042079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4202842072%_)))
                                                    (_%hd4202942076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4202842072%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4201442170%_)
                                                    (let ((_%__splice4445044451%_
                                                           (gx#syntax-split-splice
                                                            _%tl4201442170%_
                                                            '0)))
                                                      (let ((_%tl4203342085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4445044451%_ '1)))
                    (_%target4203142082%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4445044451%_ '0))))
                (if (gx#stx-null? _%tl4203342085%_)
                    (_%__match4449844499%_
                     _%e4200942153%_
                     _%hd4201042157%_
                     _%tl4201142160%_
                     _%e4201242163%_
                     _%hd4201342167%_
                     _%tl4201442170%_
                     _%e4202842072%_
                     _%hd4202942076%_
                     _%tl4203042079%_
                     _%__splice4445044451%_
                     _%target4203142082%_
                     _%tl4203342085%_)
                    (let () (declare (not safe)) (_%g4200542045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4200542045%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4200542045%_))))))
                                (if (gx#stx-pair? _%hd4201342167%_)
                                    (let ((_%e4202842072%_
                                           (gx#syntax-e _%hd4201342167%_)))
                                      (let ((_%tl4203042079%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4202842072%_)))
                                            (_%hd4202942076%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4202842072%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4201442170%_)
                                            (let ((_%__splice4445044451%_
                                                   (gx#syntax-split-splice
                                                    _%tl4201442170%_
                                                    '0)))
                                              (let ((_%tl4203342085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4445044451%_
                                                        '1)))
                                                    (_%target4203142082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4445044451%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4203342085%_)
                                                    (_%__match4449844499%_
                                                     _%e4200942153%_
                                                     _%hd4201042157%_
                                                     _%tl4201142160%_
                                                     _%e4201242163%_
                                                     _%hd4201342167%_
                                                     _%tl4201442170%_
                                                     _%e4202842072%_
                                                     _%hd4202942076%_
                                                     _%tl4203042079%_
                                                     _%__splice4445044451%_
                                                     _%target4203142082%_
                                                     _%tl4203342085%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4200542045%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4200542045%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4200542045%_))))))
                        (let () (declare (not safe)) (_%g4200542045%_)))))
                (let () (declare (not safe)) (_%g4200542045%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx42205%_)
      (let* ((_%__stx4450144502%_ _%$stx42205%_)
             (_%g4221042250%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4450144502%_))))
        (let ((_%__kont4450444505%_
               (lambda (_%L42388%_ _%L42390%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%L42390%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%L42388%_ '()))
                                   '())))))
              (_%__kont4450644507%_
               (lambda (_%L42317%_ _%L42319%_ _%L42320%_ _%L42321%_)
                 (cons _%L42321%_
                       (cons _%L42320%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%L42319%_
                                               (foldr (lambda (_%g4234242345%_
                                                               _%g4234342348%_)
                                                        (cons _%g4234242345%_
                                                              _%g4234342348%_))
                                                      '()
                                                      _%L42317%_)))
                                   '()))))))
          (let* ((_%__match4455644557%_
                  (lambda (_%e4222742257%_
                           _%hd4222842261%_
                           _%tl4222942264%_
                           _%e4223042267%_
                           _%hd4223142271%_
                           _%tl4223242274%_
                           _%e4223342277%_
                           _%hd4223442281%_
                           _%tl4223542284%_
                           _%__splice4450844509%_
                           _%target4223642287%_
                           _%tl4223842290%_)
                    (letrec ((_%loop4223942293%_
                              (lambda (_%hd4223742297%_ _%body4224342300%_)
                                (if (gx#stx-pair? _%hd4223742297%_)
                                    (let ((_%e4224042303%_
                                           (gx#syntax-e _%hd4223742297%_)))
                                      (let ((_%lp-tl4224242310%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4224042303%_)))
                                            (_%lp-hd4224142307%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4224042303%_))))
                                        (_%loop4223942293%_
                                         _%lp-tl4224242310%_
                                         (cons _%lp-hd4224142307%_
                                               _%body4224342300%_))))
                                    (let ((_%body4224442313%_
                                           (reverse _%body4224342300%_)))
                                      (let ((_%L42317%_ _%body4224442313%_)
                                            (_%L42319%_ _%tl4223542284%_)
                                            (_%L42320%_ _%hd4223442281%_)
                                            (_%L42321%_ _%hd4222842261%_))
                                        (if (gx#identifier? _%L42320%_)
                                            (_%__kont4450644507%_
                                             _%L42317%_
                                             _%L42319%_
                                             _%L42320%_
                                             _%L42321%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221042250%_)))))))))
                      (_%loop4223942293%_ _%target4223642287%_ '()))))
                 (_%__match4453044531%_
                  (lambda (_%e4221442358%_
                           _%hd4221542362%_
                           _%tl4221642365%_
                           _%e4221742368%_
                           _%hd4221842372%_
                           _%tl4221942375%_
                           _%e4222042378%_
                           _%hd4222142382%_
                           _%tl4222242385%_)
                    (let ((_%L42388%_ _%hd4222142382%_)
                          (_%L42390%_ _%hd4221842372%_))
                      (if (gx#identifier? _%L42390%_)
                          (_%__kont4450444505%_ _%L42388%_ _%L42390%_)
                          (if (gx#stx-pair? _%hd4221842372%_)
                              (let ((_%e4223342277%_
                                     (gx#syntax-e _%hd4221842372%_)))
                                (let ((_%tl4223542284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4223342277%_)))
                                      (_%hd4223442281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4223342277%_))))
                                  (if (gx#stx-pair/null? _%tl4221942375%_)
                                      (let ((_%__splice4450844509%_
                                             (gx#syntax-split-splice
                                              _%tl4221942375%_
                                              '0)))
                                        (let ((_%tl4223842290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4450844509%_
                                                  '1)))
                                              (_%target4223642287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4450844509%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4223842290%_)
                                              (_%__match4455644557%_
                                               _%e4221442358%_
                                               _%hd4221542362%_
                                               _%tl4221642365%_
                                               _%e4221742368%_
                                               _%hd4221842372%_
                                               _%tl4221942375%_
                                               _%e4223342277%_
                                               _%hd4223442281%_
                                               _%tl4223542284%_
                                               _%__splice4450844509%_
                                               _%target4223642287%_
                                               _%tl4223842290%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4221042250%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4221042250%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4221042250%_))))))))
            (if (gx#stx-pair? _%__stx4450144502%_)
                (let ((_%e4221442358%_ (gx#syntax-e _%__stx4450144502%_)))
                  (let ((_%tl4221642365%_
                         (let () (declare (not safe)) (##cdr _%e4221442358%_)))
                        (_%hd4221542362%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4221442358%_))))
                    (if (gx#stx-pair? _%tl4221642365%_)
                        (let ((_%e4221742368%_ (gx#syntax-e _%tl4221642365%_)))
                          (let ((_%tl4221942375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4221742368%_)))
                                (_%hd4221842372%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4221742368%_))))
                            (if (gx#stx-pair? _%tl4221942375%_)
                                (let ((_%e4222042378%_
                                       (gx#syntax-e _%tl4221942375%_)))
                                  (let ((_%tl4222242385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4222042378%_)))
                                        (_%hd4222142382%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4222042378%_))))
                                    (if (gx#stx-null? _%tl4222242385%_)
                                        (_%__match4453044531%_
                                         _%e4221442358%_
                                         _%hd4221542362%_
                                         _%tl4221642365%_
                                         _%e4221742368%_
                                         _%hd4221842372%_
                                         _%tl4221942375%_
                                         _%e4222042378%_
                                         _%hd4222142382%_
                                         _%tl4222242385%_)
                                        (if (gx#stx-pair? _%hd4221842372%_)
                                            (let ((_%e4223342277%_
                                                   (gx#syntax-e
                                                    _%hd4221842372%_)))
                                              (let ((_%tl4223542284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4223342277%_)))
                                                    (_%hd4223442281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4223342277%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl4221942375%_)
                                                    (let ((_%__splice4450844509%_
                                                           (gx#syntax-split-splice
                                                            _%tl4221942375%_
                                                            '0)))
                                                      (let ((_%tl4223842290%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4450844509%_ '1)))
                    (_%target4223642287%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4450844509%_ '0))))
                (if (gx#stx-null? _%tl4223842290%_)
                    (_%__match4455644557%_
                     _%e4221442358%_
                     _%hd4221542362%_
                     _%tl4221642365%_
                     _%e4221742368%_
                     _%hd4221842372%_
                     _%tl4221942375%_
                     _%e4223342277%_
                     _%hd4223442281%_
                     _%tl4223542284%_
                     _%__splice4450844509%_
                     _%target4223642287%_
                     _%tl4223842290%_)
                    (let () (declare (not safe)) (_%g4221042250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4221042250%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221042250%_))))))
                                (if (gx#stx-pair? _%hd4221842372%_)
                                    (let ((_%e4223342277%_
                                           (gx#syntax-e _%hd4221842372%_)))
                                      (let ((_%tl4223542284%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4223342277%_)))
                                            (_%hd4223442281%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4223342277%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4221942375%_)
                                            (let ((_%__splice4450844509%_
                                                   (gx#syntax-split-splice
                                                    _%tl4221942375%_
                                                    '0)))
                                              (let ((_%tl4223842290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4450844509%_
                                                        '1)))
                                                    (_%target4223642287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4450844509%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4223842290%_)
                                                    (_%__match4455644557%_
                                                     _%e4221442358%_
                                                     _%hd4221542362%_
                                                     _%tl4221642365%_
                                                     _%e4221742368%_
                                                     _%hd4221842372%_
                                                     _%tl4221942375%_
                                                     _%e4223342277%_
                                                     _%hd4223442281%_
                                                     _%tl4223542284%_
                                                     _%__splice4450844509%_
                                                     _%target4223642287%_
                                                     _%tl4223842290%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4221042250%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4221042250%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4221042250%_))))))
                        (let () (declare (not safe)) (_%g4221042250%_)))))
                (let () (declare (not safe)) (_%g4221042250%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx42410%_)
       (let* ((_%g4241342433%_
               (lambda (_%g4241442429%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4241442429%_)))
              (_%g4241242504%_
               (lambda (_%g4241442437%_)
                 (if (gx#stx-pair? _%g4241442437%_)
                     (let ((_%e4241642440%_ (gx#syntax-e _%g4241442437%_)))
                       (let ((_%hd4241742444%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4241642440%_)))
                             (_%tl4241842447%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4241642440%_))))
                         (if (gx#stx-pair/null? _%tl4241842447%_)
                             (let ((_g44651_
                                    (gx#syntax-split-splice
                                     _%tl4241842447%_
                                     '0)))
                               (begin
                                 (let ((_g44652_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44651_)
                                              (##vector-length _g44651_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44652_ 2)))
                                       (error "Context expects 2 values"
                                              _g44652_)))
                                 (let ((_%target4241942450%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44651_ 0)))
                                       (_%tl4242142453%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44651_ 1))))
                                   (if (gx#stx-null? _%tl4242142453%_)
                                       (letrec ((_%loop4242242456%_
                                                 (lambda (_%hd4242042460%_
                                                          _%body4242642463%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4242042460%_)
                                                       (let ((_%e4242342466%_
                                                              (gx#syntax-e
                                                               _%hd4242042460%_)))
                                                         (let ((_%lp-hd4242442470%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4242342466%_)))
                       (_%lp-tl4242542473%_
                        (let () (declare (not safe)) (##cdr _%e4242342466%_))))
                   (_%loop4242242456%_
                    _%lp-tl4242542473%_
                    (cons _%lp-hd4242442470%_ _%body4242642463%_))))
               (let ((_%body4242742476%_ (reverse _%body4242642463%_)))
                 ((lambda (_%L42480%_)
                    (cons 'phi:
                          (cons '1
                                (foldr (lambda (_%g4249542498%_
                                                _%g4249642501%_)
                                         (cons _%g4249542498%_
                                               _%g4249642501%_))
                                       '()
                                       _%L42480%_))))
                  _%body4242742476%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4242242456%_
                                          _%target4241942450%_
                                          '()))
                                       (_%g4241342433%_ _%g4241442437%_)))))
                             (_%g4241342433%_ _%g4241442437%_))))
                     (_%g4241342433%_ _%g4241442437%_)))))
         (_%g4241242504%_ _%stx42410%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx42509%_)
       (let* ((_%g4251242532%_
               (lambda (_%g4251342528%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4251342528%_)))
              (_%g4251142603%_
               (lambda (_%g4251342536%_)
                 (if (gx#stx-pair? _%g4251342536%_)
                     (let ((_%e4251542539%_ (gx#syntax-e _%g4251342536%_)))
                       (let ((_%hd4251642543%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4251542539%_)))
                             (_%tl4251742546%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4251542539%_))))
                         (if (gx#stx-pair/null? _%tl4251742546%_)
                             (let ((_g44653_
                                    (gx#syntax-split-splice
                                     _%tl4251742546%_
                                     '0)))
                               (begin
                                 (let ((_g44654_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g44653_)
                                              (##vector-length _g44653_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g44654_ 2)))
                                       (error "Context expects 2 values"
                                              _g44654_)))
                                 (let ((_%target4251842549%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44653_ 0)))
                                       (_%tl4252042552%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g44653_ 1))))
                                   (if (gx#stx-null? _%tl4252042552%_)
                                       (letrec ((_%loop4252142555%_
                                                 (lambda (_%hd4251942559%_
                                                          _%body4252542562%_)
                                                   (if (gx#stx-pair?
                                                        _%hd4251942559%_)
                                                       (let ((_%e4252242565%_
                                                              (gx#syntax-e
                                                               _%hd4251942559%_)))
                                                         (let ((_%lp-hd4252342569%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e4252242565%_)))
                       (_%lp-tl4252442572%_
                        (let () (declare (not safe)) (##cdr _%e4252242565%_))))
                   (_%loop4252142555%_
                    _%lp-tl4252442572%_
                    (cons _%lp-hd4252342569%_ _%body4252542562%_))))
               (let ((_%body4252642575%_ (reverse _%body4252542562%_)))
                 ((lambda (_%L42579%_)
                    (cons 'phi:
                          (cons '-1
                                (foldr (lambda (_%g4259442597%_
                                                _%g4259542600%_)
                                         (cons _%g4259442597%_
                                               _%g4259542600%_))
                                       '()
                                       _%L42579%_))))
                  _%body4252642575%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop4252142555%_
                                          _%target4251842549%_
                                          '()))
                                       (_%g4251242532%_ _%g4251342536%_)))))
                             (_%g4251242532%_ _%g4251342536%_))))
                     (_%g4251242532%_ _%g4251342536%_)))))
         (_%g4251142603%_ _%stx42509%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx42608%_)
       (let* ((_%g4261142635%_
               (lambda (_%g4261242631%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4261242631%_)))
              (_%g4261042763%_
               (lambda (_%g4261242639%_)
                 (if (gx#stx-pair? _%g4261242639%_)
                     (let ((_%e4261542642%_ (gx#syntax-e _%g4261242639%_)))
                       (let ((_%hd4261642646%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4261542642%_)))
                             (_%tl4261742649%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4261542642%_))))
                         (if (gx#stx-pair? _%tl4261742649%_)
                             (let ((_%e4261842652%_
                                    (gx#syntax-e _%tl4261742649%_)))
                               (let ((_%hd4261942656%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4261842652%_)))
                                     (_%tl4262042659%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4261842652%_))))
                                 (if (gx#stx-pair/null? _%tl4262042659%_)
                                     (let ((_g44655_
                                            (gx#syntax-split-splice
                                             _%tl4262042659%_
                                             '0)))
                                       (begin
                                         (let ((_g44656_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44655_)
                                                      (##vector-length
                                                       _g44655_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44656_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44656_)))
                                         (let ((_%target4262142662%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44655_ 0)))
                                               (_%tl4262342665%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44655_ 1))))
                                           (if (gx#stx-null? _%tl4262342665%_)
                                               (letrec ((_%loop4262442668%_
                                                         (lambda (_%hd4262242672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4262842675%_)
                   (if (gx#stx-pair? _%hd4262242672%_)
                       (let ((_%e4262542678%_ (gx#syntax-e _%hd4262242672%_)))
                         (let ((_%lp-hd4262642682%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4262542678%_)))
                               (_%lp-tl4262742685%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4262542678%_))))
                           (_%loop4262442668%_
                            _%lp-tl4262742685%_
                            (cons _%lp-hd4262642682%_ _%id4262842675%_))))
                       (let ((_%id4262942688%_ (reverse _%id4262842675%_)))
                         ((lambda (_%L42692%_ _%L42694%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4271142714%_
                                                 _%g4271242717%_)
                                          (cons _%g4271142714%_
                                                _%g4271242717%_))
                                        '()
                                        _%L42692%_))
                                (let* ((_%keys42728%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4271942722%_
                                                         _%g4272042725%_)
                                                  (cons _%g4271942722%_
                                                        _%g4272042725%_))
                                                '()
                                                _%L42692%_)))
                                       (_%keytab42739%_
                                        (let ((_%ht42731%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4273342735%_)
                                             (hash-put!
                                              _%ht42731%_
                                              _%g4273342735%_
                                              '#t))
                                           _%keys42728%_)
                                          _%ht42731%_))
                                       (_%imports42742%_
                                        (gx#core-expand-import-source
                                         _%L42694%_))
                                       (_%fold-e42758%_
                                        (letrec ((_%fold-e42745%_
                                                  (lambda (_%in42748%_
                                                           _%r42750%_)
                                                    (if (gx#module-import?
                                                         _%in42748%_)
                                                        (if (hash-get
                                                             _%keytab42739%_
                                                             (gx#module-import-name
                                                              _%in42748%_))
                                                            (cons _%in42748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42750%_)
                    _%r42750%_)
                (if (gx#import-set? _%in42748%_)
                    (foldl _%fold-e42745%_
                           _%r42750%_
                           (gx#import-set-imports _%in42748%_))
                    _%r42750%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42745%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42758%_
                                               '()
                                               _%imports42742%_)))
                                (_%g4261142635%_ _%g4261242639%_)))
                          _%id4262942688%_
                          _%hd4261942656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4262442668%_
                                                  _%target4262142662%_
                                                  '()))
                                               (_%g4261142635%_
                                                _%g4261242639%_)))))
                                     (_%g4261142635%_ _%g4261242639%_))))
                             (_%g4261142635%_ _%g4261242639%_))))
                     (_%g4261142635%_ _%g4261242639%_)))))
         (_%g4261042763%_ _%stx42608%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx42768%_)
       (let* ((_%g4277142795%_
               (lambda (_%g4277242791%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4277242791%_)))
              (_%g4277042923%_
               (lambda (_%g4277242799%_)
                 (if (gx#stx-pair? _%g4277242799%_)
                     (let ((_%e4277542802%_ (gx#syntax-e _%g4277242799%_)))
                       (let ((_%hd4277642806%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4277542802%_)))
                             (_%tl4277742809%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4277542802%_))))
                         (if (gx#stx-pair? _%tl4277742809%_)
                             (let ((_%e4277842812%_
                                    (gx#syntax-e _%tl4277742809%_)))
                               (let ((_%hd4277942816%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4277842812%_)))
                                     (_%tl4278042819%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4277842812%_))))
                                 (if (gx#stx-pair/null? _%tl4278042819%_)
                                     (let ((_g44657_
                                            (gx#syntax-split-splice
                                             _%tl4278042819%_
                                             '0)))
                                       (begin
                                         (let ((_g44658_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44657_)
                                                      (##vector-length
                                                       _g44657_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44658_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44658_)))
                                         (let ((_%target4278142822%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44657_ 0)))
                                               (_%tl4278342825%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44657_ 1))))
                                           (if (gx#stx-null? _%tl4278342825%_)
                                               (letrec ((_%loop4278442828%_
                                                         (lambda (_%hd4278242832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4278842835%_)
                   (if (gx#stx-pair? _%hd4278242832%_)
                       (let ((_%e4278542838%_ (gx#syntax-e _%hd4278242832%_)))
                         (let ((_%lp-hd4278642842%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4278542838%_)))
                               (_%lp-tl4278742845%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4278542838%_))))
                           (_%loop4278442828%_
                            _%lp-tl4278742845%_
                            (cons _%lp-hd4278642842%_ _%id4278842835%_))))
                       (let ((_%id4278942848%_ (reverse _%id4278842835%_)))
                         ((lambda (_%L42852%_ _%L42854%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4287142874%_
                                                 _%g4287242877%_)
                                          (cons _%g4287142874%_
                                                _%g4287242877%_))
                                        '()
                                        _%L42852%_))
                                (let* ((_%keys42888%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4287942882%_
                                                         _%g4288042885%_)
                                                  (cons _%g4287942882%_
                                                        _%g4288042885%_))
                                                '()
                                                _%L42852%_)))
                                       (_%keytab42899%_
                                        (let ((_%ht42891%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4289342895%_)
                                             (hash-put!
                                              _%ht42891%_
                                              _%g4289342895%_
                                              '#t))
                                           _%keys42888%_)
                                          _%ht42891%_))
                                       (_%imports42902%_
                                        (gx#core-expand-import-source
                                         _%L42854%_))
                                       (_%fold-e42918%_
                                        (letrec ((_%fold-e42905%_
                                                  (lambda (_%in42908%_
                                                           _%r42910%_)
                                                    (if (gx#module-import?
                                                         _%in42908%_)
                                                        (if (hash-get
                                                             _%keytab42899%_
                                                             (gx#module-import-name
                                                              _%in42908%_))
                                                            _%r42910%_
                                                            (cons _%in42908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r42910%_))
                (if (gx#import-set? _%in42908%_)
                    (foldl _%fold-e42905%_
                           _%r42910%_
                           (gx#import-set-imports _%in42908%_))
                    (cons _%in42908%_ _%r42910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e42905%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e42918%_
                                               '()
                                               _%imports42902%_)))
                                (_%g4277142795%_ _%g4277242799%_)))
                          _%id4278942848%_
                          _%hd4277942816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4278442828%_
                                                  _%target4278142822%_
                                                  '()))
                                               (_%g4277142795%_
                                                _%g4277242799%_)))))
                                     (_%g4277142795%_ _%g4277242799%_))))
                             (_%g4277142795%_ _%g4277242799%_))))
                     (_%g4277142795%_ _%g4277242799%_)))))
         (_%g4277042923%_ _%stx42768%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in42975%_ _%rename42977%_)
      (gx#make-module-import
       (gx#module-import-source _%in42975%_)
       _%rename42977%_
       (gx#module-import-phi _%in42975%_)
       (gx#module-import-weak? _%in42975%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name42928%_ _%pre42930%_)
      (let* ((_%name4293142939%_ _%name42928%_)
             (_%else4293342951%_
              (lambda () (make-symbol _%pre42930%_ _%name42928%_)))
             (_%K4293542959%_
              (lambda (_%mark42955%_ _%id42957%_)
                (cons (make-symbol _%pre42930%_ _%id42957%_) _%mark42955%_))))
        (if (let () (declare (not safe)) (##pair? _%name4293142939%_))
            (let ((_%hd4293642963%_
                   (let () (declare (not safe)) (##car _%name4293142939%_)))
                  (_%tl4293742966%_
                   (let () (declare (not safe)) (##cdr _%name4293142939%_))))
              (let* ((_%id42969%_ _%hd4293642963%_)
                     (_%mark42972%_ _%tl4293742966%_))
                (_%K4293542959%_ _%mark42972%_ _%id42969%_)))
            (_%else4293342951%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx42979%_)
       (let* ((_%g4298243015%_
               (lambda (_%g4298343011%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4298343011%_)))
              (_%g4298143210%_
               (lambda (_%g4298343019%_)
                 (if (gx#stx-pair? _%g4298343019%_)
                     (let ((_%e4298743022%_ (gx#syntax-e _%g4298343019%_)))
                       (let ((_%hd4298843026%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4298743022%_)))
                             (_%tl4298943029%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4298743022%_))))
                         (if (gx#stx-pair? _%tl4298943029%_)
                             (let ((_%e4299043032%_
                                    (gx#syntax-e _%tl4298943029%_)))
                               (let ((_%hd4299143036%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4299043032%_)))
                                     (_%tl4299243039%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4299043032%_))))
                                 (if (gx#stx-pair/null? _%tl4299243039%_)
                                     (let ((_g44659_
                                            (gx#syntax-split-splice
                                             _%tl4299243039%_
                                             '0)))
                                       (begin
                                         (let ((_g44660_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44659_)
                                                      (##vector-length
                                                       _g44659_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44660_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44660_)))
                                         (let ((_%target4299343042%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44659_ 0)))
                                               (_%tl4299543045%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44659_ 1))))
                                           (if (gx#stx-null? _%tl4299543045%_)
                                               (letrec ((_%loop4299643048%_
                                                         (lambda (_%hd4299443052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4300043055%_
                          _%id4300143057%_)
                   (if (gx#stx-pair? _%hd4299443052%_)
                       (let ((_%e4299743060%_ (gx#syntax-e _%hd4299443052%_)))
                         (let ((_%lp-hd4299843064%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4299743060%_)))
                               (_%lp-tl4299943067%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4299743060%_))))
                           (if (gx#stx-pair? _%lp-hd4299843064%_)
                               (let ((_%e4300443070%_
                                      (gx#syntax-e _%lp-hd4299843064%_)))
                                 (let ((_%hd4300543074%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4300443070%_)))
                                       (_%tl4300643077%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4300443070%_))))
                                   (if (gx#stx-pair? _%tl4300643077%_)
                                       (let ((_%e4300743080%_
                                              (gx#syntax-e _%tl4300643077%_)))
                                         (let ((_%hd4300843084%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4300743080%_)))
                                               (_%tl4300943087%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4300743080%_))))
                                           (if (gx#stx-null? _%tl4300943087%_)
                                               (_%loop4299643048%_
                                                _%lp-tl4299943067%_
                                                (cons _%hd4300843084%_
                                                      _%new-id4300043055%_)
                                                (cons _%hd4300543074%_
                                                      _%id4300143057%_))
                                               (_%g4298243015%_
                                                _%g4298343019%_))))
                                       (_%g4298243015%_ _%g4298343019%_))))
                               (_%g4298243015%_ _%g4298343019%_))))
                       (let ((_%new-id4300243090%_
                              (reverse _%new-id4300043055%_))
                             (_%id4300343093%_ (reverse _%id4300143057%_)))
                         ((lambda (_%L43096%_ _%L43098%_ _%L43099%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4311743120%_
                                                      _%g4311843123%_)
                                               (cons _%g4311743120%_
                                                     _%g4311843123%_))
                                             '()
                                             _%L43098%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4312543128%_
                                                      _%g4312643131%_)
                                               (cons _%g4312543128%_
                                                     _%g4312643131%_))
                                             '()
                                             _%L43096%_)))
                                (let* ((_%keytab43134%_ (make-hash-table))
                                       (_%found43137%_ (make-hash-table))
                                       (_%_43160%_
                                        (for-each
                                         (lambda (_%id43140%_ _%new-id43142%_)
                                           (hash-put!
                                            _%keytab43134%_
                                            (gx#core-identifier-key
                                             _%id43140%_)
                                            (gx#core-identifier-key
                                             _%new-id43142%_)))
                                         (foldr (lambda (_%g4314343146%_
                                                         _%g4314443149%_)
                                                  (cons _%g4314343146%_
                                                        _%g4314443149%_))
                                                '()
                                                _%L43098%_)
                                         (foldr (lambda (_%g4315143154%_
                                                         _%g4315243157%_)
                                                  (cons _%g4315143154%_
                                                        _%g4315243157%_))
                                                '()
                                                _%L43096%_)))
                                       (_%imports43163%_
                                        (gx#core-expand-import-source
                                         _%L43099%_))
                                       (_%fold-e43191%_
                                        (letrec ((_%fold-e43166%_
                                                  (lambda (_%in43169%_
                                                           _%r43171%_)
                                                    (if (gx#module-import?
                                                         _%in43169%_)
                                                        (let* ((_%name43175%_
                                                                (gx#module-import-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in43169%_))
                       (_%$e43178%_ (hash-get _%keytab43134%_ _%name43175%_)))
                  (if _%$e43178%_
                      ((lambda (_%rename43182%_)
                         (hash-put! _%found43137%_ _%name43175%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                _%in43169%_
                                _%rename43182%_)
                               _%r43171%_))
                       _%$e43178%_)
                      (cons _%in43169%_ _%r43171%_)))
                (if (gx#import-set? _%in43169%_)
                    (foldl _%fold-e43166%_
                           _%r43171%_
                           (gx#import-set-imports _%in43169%_))
                    (cons _%in43169%_ _%r43171%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43166%_))
                                       (_%new-imports43194%_
                                        (foldl _%fold-e43191%_
                                               '()
                                               _%imports43163%_)))
                                  (for-each
                                   (lambda (_%id43199%_)
                                     (if (hash-get
                                          _%found43137%_
                                          (gx#core-identifier-key _%id43199%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the import set"
                                          _%stx42979%_
                                          _%id43199%_)))
                                   (foldr (lambda (_%g4320143204%_
                                                   _%g4320243207%_)
                                            (cons _%g4320143204%_
                                                  _%g4320243207%_))
                                          '()
                                          _%L43098%_))
                                  (cons 'begin: _%new-imports43194%_))
                                (_%g4298243015%_ _%g4298343019%_)))
                          _%new-id4300243090%_
                          _%id4300343093%_
                          _%hd4299143036%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4299643048%_
                                                  _%target4299343042%_
                                                  '()
                                                  '()))
                                               (_%g4298243015%_
                                                _%g4298343019%_)))))
                                     (_%g4298243015%_ _%g4298343019%_))))
                             (_%g4298243015%_ _%g4298343019%_))))
                     (_%g4298243015%_ _%g4298343019%_)))))
         (_%g4298143210%_ _%stx42979%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx43215%_)
       (let* ((_%g4321843236%_
               (lambda (_%g4321943232%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4321943232%_)))
              (_%g4321743321%_
               (lambda (_%g4321943240%_)
                 (if (gx#stx-pair? _%g4321943240%_)
                     (let ((_%e4322243243%_ (gx#syntax-e _%g4321943240%_)))
                       (let ((_%hd4322343247%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4322243243%_)))
                             (_%tl4322443250%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4322243243%_))))
                         (if (gx#stx-pair? _%tl4322443250%_)
                             (let ((_%e4322543253%_
                                    (gx#syntax-e _%tl4322443250%_)))
                               (let ((_%hd4322643257%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4322543253%_)))
                                     (_%tl4322743260%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4322543253%_))))
                                 (if (gx#stx-pair? _%tl4322743260%_)
                                     (let ((_%e4322843263%_
                                            (gx#syntax-e _%tl4322743260%_)))
                                       (let ((_%hd4322943267%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4322843263%_)))
                                             (_%tl4323043270%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4322843263%_))))
                                         (if (gx#stx-null? _%tl4323043270%_)
                                             ((lambda (_%L43273%_ _%L43275%_)
                                                (if (gx#identifier? _%L43273%_)
                                                    (let* ((_%pre43291%_
                                                            (gx#stx-e
                                                             _%L43273%_))
                                                           (_%imports43294%_
                                                            (gx#core-expand-import-source
                                                             _%L43275%_))
                                                           (_%rename-e43300%_
                                                            (lambda (_%name43297%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name43297%_
                                                               _%pre43291%_)))
                                                           (_%fold-e43316%_
                                                            (letrec ((_%fold-e43303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%in43306%_ _%r43308%_)
                                (if (gx#module-import? _%in43306%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                           _%in43306%_
                                           (_%rename-e43300%_
                                            (gx#module-import-name
                                             _%in43306%_)))
                                          _%r43308%_)
                                    (if (gx#import-set? _%in43306%_)
                                        (foldl _%fold-e43303%_
                                               _%r43308%_
                                               (gx#import-set-imports
                                                _%in43306%_))
                                        (cons _%in43306%_ _%r43308%_))))))
                      _%fold-e43303%_)))
              (cons 'begin: (foldl _%fold-e43316%_ '() _%imports43294%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4321843236%_
                                                     _%g4321943240%_)))
                                              _%hd4322943267%_
                                              _%hd4322643257%_)
                                             (_%g4321843236%_
                                              _%g4321943240%_))))
                                     (_%g4321843236%_ _%g4321943240%_))))
                             (_%g4321843236%_ _%g4321943240%_))))
                     (_%g4321843236%_ _%g4321943240%_)))))
         (_%g4321743321%_ _%stx43215%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx43325%_)
       (letrec ((_%flatten43328%_
                 (lambda (_%list-of-lists43583%_)
                   (foldr (lambda (_%v43586%_ _%acc43588%_)
                            (if (null? _%v43586%_)
                                _%acc43588%_
                                (if (pair? _%v43586%_)
                                    (append (_%flatten43328%_ _%v43586%_)
                                            _%acc43588%_)
                                    (cons _%v43586%_ _%acc43588%_))))
                          '()
                          _%list-of-lists43583%_)))
                (_%expand-path43330%_
                 (lambda (_%top43451%_ _%mod43453%_)
                   (let* ((_%__stx4455944560%_ _%mod43453%_)
                          (_%g4345643478%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx4455944560%_))))
                     (let ((_%__kont4456244563%_
                            (lambda (_%L43546%_ _%L43548%_)
                              (map (lambda (_%mod43563%_)
                                     (gx#stx-identifier
                                      _%top43451%_
                                      _%top43451%_
                                      '"/"
                                      _%mod43563%_))
                                   (_%flatten43328%_
                                    (map (lambda (_%g4356543567%_)
                                           (_%expand-path43330%_
                                            _%L43548%_
                                            _%g4356543567%_))
                                         (foldr (lambda (_%g4357043573%_
                                                         _%g4357143576%_)
                                                  (cons _%g4357043573%_
                                                        _%g4357143576%_))
                                                '()
                                                _%L43546%_))))))
                           (_%__kont4456644567%_
                            (lambda (_%L43485%_)
                              (gx#stx-identifier
                               _%top43451%_
                               _%top43451%_
                               '"/"
                               _%L43485%_))))
                       (let* ((_%g4345543499%_
                               (lambda ()
                                 (let ((_%L43485%_ _%__stx4455944560%_))
                                   (if (or (gx#identifier? _%L43485%_)
                                           (gx#stx-fixnum? _%L43485%_))
                                       (_%__kont4456644567%_ _%L43485%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4345643478%_))))))
                              (_%__match4458244583%_
                               (lambda (_%e4346043506%_
                                        _%hd4346143510%_
                                        _%tl4346243513%_
                                        _%__splice4456444565%_
                                        _%target4346343516%_
                                        _%tl4346543519%_)
                                 (letrec ((_%loop4346643522%_
                                           (lambda (_%hd4346443526%_
                                                    _%mod4347043529%_)
                                             (if (gx#stx-pair?
                                                  _%hd4346443526%_)
                                                 (let ((_%e4346743532%_
                                                        (gx#syntax-e
                                                         _%hd4346443526%_)))
                                                   (let ((_%lp-tl4346943539%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4346743532%_)))
                                                         (_%lp-hd4346843536%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4346743532%_))))
                                                     (_%loop4346643522%_
                                                      _%lp-tl4346943539%_
                                                      (cons _%lp-hd4346843536%_
                                                            _%mod4347043529%_))))
                                                 (let ((_%mod4347143542%_
                                                        (reverse _%mod4347043529%_)))
                                                   (_%__kont4456244563%_
                                                    _%mod4347143542%_
                                                    _%hd4346143510%_))))))
                                   (_%loop4346643522%_
                                    _%target4346343516%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx4455944560%_)
                             (let ((_%e4346043506%_
                                    (gx#syntax-e _%__stx4455944560%_)))
                               (let ((_%tl4346243513%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4346043506%_)))
                                     (_%hd4346143510%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4346043506%_))))
                                 (if (gx#stx-pair/null? _%tl4346243513%_)
                                     (let ((_%__splice4456444565%_
                                            (gx#syntax-split-splice
                                             _%tl4346243513%_
                                             '0)))
                                       (let ((_%tl4346543519%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4456444565%_
                                                 '1)))
                                             (_%target4346343516%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4456444565%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4346543519%_)
                                             (_%__match4458244583%_
                                              _%e4346043506%_
                                              _%hd4346143510%_
                                              _%tl4346243513%_
                                              _%__splice4456444565%_
                                              _%target4346343516%_
                                              _%tl4346543519%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4345543499%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4345543499%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4345543499%_)))))))))
         (let* ((_%g4333243356%_
                 (lambda (_%g4333343352%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%g4333343352%_)))
                (_%g4333143447%_
                 (lambda (_%g4333343360%_)
                   (if (gx#stx-pair? _%g4333343360%_)
                       (let ((_%e4333643363%_ (gx#syntax-e _%g4333343360%_)))
                         (let ((_%hd4333743367%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4333643363%_)))
                               (_%tl4333843370%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4333643363%_))))
                           (if (gx#stx-pair? _%tl4333843370%_)
                               (let ((_%e4333943373%_
                                      (gx#syntax-e _%tl4333843370%_)))
                                 (let ((_%hd4334043377%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4333943373%_)))
                                       (_%tl4334143380%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4333943373%_))))
                                   (if (gx#stx-pair/null? _%tl4334143380%_)
                                       (let ((_g44661_
                                              (gx#syntax-split-splice
                                               _%tl4334143380%_
                                               '0)))
                                         (begin
                                           (let ((_g44662_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g44661_)
                                                        (##vector-length
                                                         _g44661_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g44662_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g44662_)))
                                           (let ((_%target4334243383%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g44661_ 0)))
                                                 (_%tl4334443386%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g44661_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl4334443386%_)
                                                 (letrec ((_%loop4334543389%_
                                                           (lambda (_%hd4334343393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%mod4334943396%_)
                     (if (gx#stx-pair? _%hd4334343393%_)
                         (let ((_%e4334643399%_
                                (gx#syntax-e _%hd4334343393%_)))
                           (let ((_%lp-hd4334743403%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4334643399%_)))
                                 (_%lp-tl4334843406%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4334643399%_))))
                             (_%loop4334543389%_
                              _%lp-tl4334843406%_
                              (cons _%lp-hd4334743403%_ _%mod4334943396%_))))
                         (let ((_%mod4335043409%_ (reverse _%mod4334943396%_)))
                           ((lambda (_%L43413%_ _%L43415%_)
                              (cons 'begin:
                                    (_%flatten43328%_
                                     (map (lambda (_%g4343343435%_)
                                            (_%expand-path43330%_
                                             _%L43415%_
                                             _%g4343343435%_))
                                          (foldr (lambda (_%g4343843441%_
                                                          _%g4343943444%_)
                                                   (cons _%g4343843441%_
                                                         _%g4343943444%_))
                                                 '()
                                                 _%L43413%_)))))
                            _%mod4335043409%_
                            _%hd4334043377%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop4334543389%_
                                                    _%target4334243383%_
                                                    '()))
                                                 (_%g4333243356%_
                                                  _%g4333343360%_)))))
                                       (_%g4333243356%_ _%g4333343360%_))))
                               (_%g4333243356%_ _%g4333343360%_))))
                       (_%g4333243356%_ _%g4333343360%_)))))
           (_%g4333143447%_ _%stx43325%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx43598%_)
       (let* ((_%g4360143625%_
               (lambda (_%g4360243621%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4360243621%_)))
              (_%g4360043753%_
               (lambda (_%g4360243629%_)
                 (if (gx#stx-pair? _%g4360243629%_)
                     (let ((_%e4360543632%_ (gx#syntax-e _%g4360243629%_)))
                       (let ((_%hd4360643636%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4360543632%_)))
                             (_%tl4360743639%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4360543632%_))))
                         (if (gx#stx-pair? _%tl4360743639%_)
                             (let ((_%e4360843642%_
                                    (gx#syntax-e _%tl4360743639%_)))
                               (let ((_%hd4360943646%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4360843642%_)))
                                     (_%tl4361043649%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4360843642%_))))
                                 (if (gx#stx-pair/null? _%tl4361043649%_)
                                     (let ((_g44663_
                                            (gx#syntax-split-splice
                                             _%tl4361043649%_
                                             '0)))
                                       (begin
                                         (let ((_g44664_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44663_)
                                                      (##vector-length
                                                       _g44663_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44664_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44664_)))
                                         (let ((_%target4361143652%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44663_ 0)))
                                               (_%tl4361343655%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44663_ 1))))
                                           (if (gx#stx-null? _%tl4361343655%_)
                                               (letrec ((_%loop4361443658%_
                                                         (lambda (_%hd4361243662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id4361843665%_)
                   (if (gx#stx-pair? _%hd4361243662%_)
                       (let ((_%e4361543668%_ (gx#syntax-e _%hd4361243662%_)))
                         (let ((_%lp-hd4361643672%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4361543668%_)))
                               (_%lp-tl4361743675%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4361543668%_))))
                           (_%loop4361443658%_
                            _%lp-tl4361743675%_
                            (cons _%lp-hd4361643672%_ _%id4361843665%_))))
                       (let ((_%id4361943678%_ (reverse _%id4361843665%_)))
                         ((lambda (_%L43682%_ _%L43684%_)
                            (if (gx#identifier-list?
                                 (foldr (lambda (_%g4370143704%_
                                                 _%g4370243707%_)
                                          (cons _%g4370143704%_
                                                _%g4370243707%_))
                                        '()
                                        _%L43682%_))
                                (let* ((_%keys43718%_
                                        (gx#stx-map
                                         gx#core-identifier-key
                                         (foldr (lambda (_%g4370943712%_
                                                         _%g4371043715%_)
                                                  (cons _%g4370943712%_
                                                        _%g4371043715%_))
                                                '()
                                                _%L43682%_)))
                                       (_%keytab43729%_
                                        (let ((_%ht43721%_ (make-hash-table)))
                                          (for-each
                                           (lambda (_%g4372343725%_)
                                             (hash-put!
                                              _%ht43721%_
                                              _%g4372343725%_
                                              '#t))
                                           _%keys43718%_)
                                          _%ht43721%_))
                                       (_%exports43732%_
                                        (gx#core-expand-export-source
                                         _%L43684%_))
                                       (_%fold-e43748%_
                                        (letrec ((_%fold-e43735%_
                                                  (lambda (_%out43738%_
                                                           _%r43740%_)
                                                    (if (gx#module-export?
                                                         _%out43738%_)
                                                        (if (hash-get
                                                             _%keytab43729%_
                                                             (gx#module-export-name
                                                              _%out43738%_))
                                                            _%r43740%_
                                                            (cons _%out43738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r43740%_))
                (if (gx#export-set? _%out43738%_)
                    (foldl _%fold-e43735%_
                           _%r43740%_
                           (gx#export-set-exports _%out43738%_))
                    _%r43740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43735%_)))
                                  (cons 'begin:
                                        (foldl _%fold-e43748%_
                                               '()
                                               _%exports43732%_)))
                                (_%g4360143625%_ _%g4360243629%_)))
                          _%id4361943678%_
                          _%hd4360943646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4361443658%_
                                                  _%target4361143652%_
                                                  '()))
                                               (_%g4360143625%_
                                                _%g4360243629%_)))))
                                     (_%g4360143625%_ _%g4360243629%_))))
                             (_%g4360143625%_ _%g4360243629%_))))
                     (_%g4360143625%_ _%g4360243629%_)))))
         (_%g4360043753%_ _%stx43598%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out43758%_ _%rename43760%_)
      (gx#make-module-export
       (gx#module-export-context _%out43758%_)
       (gx#module-export-key _%out43758%_)
       (gx#module-export-phi _%out43758%_)
       _%rename43760%_
       (gx#module-export-weak? _%out43758%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx43762%_)
       (let* ((_%g4376543798%_
               (lambda (_%g4376643794%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4376643794%_)))
              (_%g4376443993%_
               (lambda (_%g4376643802%_)
                 (if (gx#stx-pair? _%g4376643802%_)
                     (let ((_%e4377043805%_ (gx#syntax-e _%g4376643802%_)))
                       (let ((_%hd4377143809%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4377043805%_)))
                             (_%tl4377243812%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4377043805%_))))
                         (if (gx#stx-pair? _%tl4377243812%_)
                             (let ((_%e4377343815%_
                                    (gx#syntax-e _%tl4377243812%_)))
                               (let ((_%hd4377443819%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4377343815%_)))
                                     (_%tl4377543822%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4377343815%_))))
                                 (if (gx#stx-pair/null? _%tl4377543822%_)
                                     (let ((_g44665_
                                            (gx#syntax-split-splice
                                             _%tl4377543822%_
                                             '0)))
                                       (begin
                                         (let ((_g44666_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g44665_)
                                                      (##vector-length
                                                       _g44665_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g44666_ 2)))
                                               (error "Context expects 2 values"
                                                      _g44666_)))
                                         (let ((_%target4377643825%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44665_ 0)))
                                               (_%tl4377843828%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g44665_ 1))))
                                           (if (gx#stx-null? _%tl4377843828%_)
                                               (letrec ((_%loop4377943831%_
                                                         (lambda (_%hd4377743835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%new-id4378343838%_
                          _%id4378443840%_)
                   (if (gx#stx-pair? _%hd4377743835%_)
                       (let ((_%e4378043843%_ (gx#syntax-e _%hd4377743835%_)))
                         (let ((_%lp-hd4378143847%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4378043843%_)))
                               (_%lp-tl4378243850%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4378043843%_))))
                           (if (gx#stx-pair? _%lp-hd4378143847%_)
                               (let ((_%e4378743853%_
                                      (gx#syntax-e _%lp-hd4378143847%_)))
                                 (let ((_%hd4378843857%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4378743853%_)))
                                       (_%tl4378943860%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4378743853%_))))
                                   (if (gx#stx-pair? _%tl4378943860%_)
                                       (let ((_%e4379043863%_
                                              (gx#syntax-e _%tl4378943860%_)))
                                         (let ((_%hd4379143867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4379043863%_)))
                                               (_%tl4379243870%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4379043863%_))))
                                           (if (gx#stx-null? _%tl4379243870%_)
                                               (_%loop4377943831%_
                                                _%lp-tl4378243850%_
                                                (cons _%hd4379143867%_
                                                      _%new-id4378343838%_)
                                                (cons _%hd4378843857%_
                                                      _%id4378443840%_))
                                               (_%g4376543798%_
                                                _%g4376643802%_))))
                                       (_%g4376543798%_ _%g4376643802%_))))
                               (_%g4376543798%_ _%g4376643802%_))))
                       (let ((_%new-id4378543873%_
                              (reverse _%new-id4378343838%_))
                             (_%id4378643876%_ (reverse _%id4378443840%_)))
                         ((lambda (_%L43879%_ _%L43881%_ _%L43882%_)
                            (if (and (gx#identifier-list?
                                      (foldr (lambda (_%g4390043903%_
                                                      _%g4390143906%_)
                                               (cons _%g4390043903%_
                                                     _%g4390143906%_))
                                             '()
                                             _%L43881%_))
                                     (gx#identifier-list?
                                      (foldr (lambda (_%g4390843911%_
                                                      _%g4390943914%_)
                                               (cons _%g4390843911%_
                                                     _%g4390943914%_))
                                             '()
                                             _%L43879%_)))
                                (let* ((_%keytab43917%_ (make-hash-table))
                                       (_%found43920%_ (make-hash-table))
                                       (_%_43943%_
                                        (for-each
                                         (lambda (_%id43923%_ _%new-id43925%_)
                                           (hash-put!
                                            _%keytab43917%_
                                            (gx#core-identifier-key
                                             _%id43923%_)
                                            (gx#core-identifier-key
                                             _%new-id43925%_)))
                                         (foldr (lambda (_%g4392643929%_
                                                         _%g4392743932%_)
                                                  (cons _%g4392643929%_
                                                        _%g4392743932%_))
                                                '()
                                                _%L43881%_)
                                         (foldr (lambda (_%g4393443937%_
                                                         _%g4393543940%_)
                                                  (cons _%g4393443937%_
                                                        _%g4393543940%_))
                                                '()
                                                _%L43879%_)))
                                       (_%exports43946%_
                                        (gx#core-expand-export-source
                                         _%L43882%_))
                                       (_%fold-e43974%_
                                        (letrec ((_%fold-e43949%_
                                                  (lambda (_%out43952%_
                                                           _%r43954%_)
                                                    (if (gx#module-export?
                                                         _%out43952%_)
                                                        (let* ((_%name43958%_
                                                                (gx#module-export-name
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out43952%_))
                       (_%$e43961%_ (hash-get _%keytab43917%_ _%name43958%_)))
                  (if _%$e43961%_
                      ((lambda (_%rename43965%_)
                         (hash-put! _%found43920%_ _%name43958%_ '#t)
                         (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                _%out43952%_
                                _%rename43965%_)
                               _%r43954%_))
                       _%$e43961%_)
                      (cons _%out43952%_ _%r43954%_)))
                (if (gx#export-set? _%out43952%_)
                    (foldl _%fold-e43949%_
                           _%r43954%_
                           (gx#export-set-exports _%out43952%_))
                    (cons _%out43952%_ _%r43954%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%fold-e43949%_))
                                       (_%new-exports43977%_
                                        (foldl _%fold-e43974%_
                                               '()
                                               _%exports43946%_)))
                                  (for-each
                                   (lambda (_%id43982%_)
                                     (if (hash-get
                                          _%found43920%_
                                          (gx#core-identifier-key _%id43982%_))
                                         '#!void
                                         (gx#raise-syntax-error
                                          '#f
                                          '"bad syntax; identifier is not in the export set"
                                          _%stx43762%_
                                          _%id43982%_)))
                                   (foldr (lambda (_%g4398443987%_
                                                   _%g4398543990%_)
                                            (cons _%g4398443987%_
                                                  _%g4398543990%_))
                                          '()
                                          _%L43881%_))
                                  (cons 'begin: _%new-exports43977%_))
                                (_%g4376543798%_ _%g4376643802%_)))
                          _%new-id4378543873%_
                          _%id4378643876%_
                          _%hd4377443819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4377943831%_
                                                  _%target4377643825%_
                                                  '()
                                                  '()))
                                               (_%g4376543798%_
                                                _%g4376643802%_)))))
                                     (_%g4376543798%_ _%g4376643802%_))))
                             (_%g4376543798%_ _%g4376643802%_))))
                     (_%g4376543798%_ _%g4376643802%_)))))
         (_%g4376443993%_ _%stx43762%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx43998%_)
       (let* ((_%g4400144019%_
               (lambda (_%g4400244015%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4400244015%_)))
              (_%g4400044104%_
               (lambda (_%g4400244023%_)
                 (if (gx#stx-pair? _%g4400244023%_)
                     (let ((_%e4400544026%_ (gx#syntax-e _%g4400244023%_)))
                       (let ((_%hd4400644030%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4400544026%_)))
                             (_%tl4400744033%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4400544026%_))))
                         (if (gx#stx-pair? _%tl4400744033%_)
                             (let ((_%e4400844036%_
                                    (gx#syntax-e _%tl4400744033%_)))
                               (let ((_%hd4400944040%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e4400844036%_)))
                                     (_%tl4401044043%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e4400844036%_))))
                                 (if (gx#stx-pair? _%tl4401044043%_)
                                     (let ((_%e4401144046%_
                                            (gx#syntax-e _%tl4401044043%_)))
                                       (let ((_%hd4401244050%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4401144046%_)))
                                             (_%tl4401344053%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4401144046%_))))
                                         (if (gx#stx-null? _%tl4401344053%_)
                                             ((lambda (_%L44056%_ _%L44058%_)
                                                (if (gx#identifier? _%L44056%_)
                                                    (let* ((_%pre44074%_
                                                            (gx#stx-e
                                                             _%L44056%_))
                                                           (_%exports44077%_
                                                            (gx#core-expand-export-source
                                                             _%L44058%_))
                                                           (_%rename-e44083%_
                                                            (lambda (_%name44080%_)
                                                              (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                               _%name44080%_
                                                               _%pre44074%_)))
                                                           (_%fold-e44099%_
                                                            (letrec ((_%fold-e44086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%out44089%_ _%r44091%_)
                                (if (gx#module-export? _%out44089%_)
                                    (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                           _%out44089%_
                                           (_%rename-e44083%_
                                            (gx#module-export-name
                                             _%out44089%_)))
                                          _%r44091%_)
                                    (if (gx#export-set? _%out44089%_)
                                        (foldl _%fold-e44086%_
                                               _%r44091%_
                                               (gx#export-set-exports
                                                _%out44089%_))
                                        (cons _%out44089%_ _%r44091%_))))))
                      _%fold-e44086%_)))
              (cons 'begin: (foldl _%fold-e44099%_ '() _%exports44077%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4400144019%_
                                                     _%g4400244023%_)))
                                              _%hd4401244050%_
                                              _%hd4400944040%_)
                                             (_%g4400144019%_
                                              _%g4400244023%_))))
                                     (_%g4400144019%_ _%g4400244023%_))))
                             (_%g4400144019%_ _%g4400244023%_))))
                     (_%g4400144019%_ _%g4400244023%_)))))
         (_%g4400044104%_ _%stx43998%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx44108%_)
       (letrec ((_%identifiers44111%_
                 (lambda (_%id44343%_ _%unchecked?44345%_)
                   (let ((_%info44347%_
                          (gx#syntax-local-value _%id44343%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info44347%_))
                         (cons _%id44343%_
                               (cons (let ((__obj44644 _%info44347%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj44644
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj44644
                                              '12
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj44644
                                            'type-descriptor)))
                                     (foldr cons
                                            (cons (let ((__obj44645
                                                         _%info44347%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj44645
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj44645
                                                           '14
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#class-type-info::t
                                                         __obj44645
                                                         'predicate)))
                                                  (foldr cons
                                                         (foldr cons
                                                                (if _%unchecked?44345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr cons
                                   (map cdr
                                        (let ((__obj44646 _%info44347%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44646
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44646
                                                 '18
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44646
                                               'unchecked-mutators))))
                                   (map cdr
                                        (let ((__obj44647 _%info44347%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj44647
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj44647
                                                 '17
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj44647
                                               'unchecked-accessors)))))
                            '())
                        (map cdr
                             (let ((__obj44648 _%info44347%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj44648
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj44648
                                      '16
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj44648
                                    'mutators)))))
                 (map cdr
                      (let ((__obj44649 _%info44347%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj44649
                               'gerbil.core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj44649
                               '15
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj44649
                             'accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_%ctor44350%_
                                                   (let ((__obj44650
                                                          _%info44347%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj44650
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj44650
                                                            '13
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj44650
                                                          'constructor)))))
                                              (if _%ctor44350%_
                                                  (cons _%ctor44350%_ '())
                                                  '())))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx44108%_
                          _%id44343%_))))))
         (let* ((_%__stx4458544586%_ _%stx44108%_)
                (_%g4411544156%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx4458544586%_))))
           (let ((_%__kont4458844589%_
                  (lambda (_%L44304%_ _%L44306%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4432544327%_)
                              (_%identifiers44111%_
                               _%g4432544327%_
                               (gx#stx-e _%L44306%_)))
                            (foldr (lambda (_%g4433044333%_ _%g4433144336%_)
                                     (cons _%g4433044333%_ _%g4433144336%_))
                                   '()
                                   _%L44304%_))))))
                 (_%__kont4459244593%_
                  (lambda (_%L44203%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%g4421944221%_)
                              (_%identifiers44111%_ _%g4421944221%_ '#f))
                            (foldr (lambda (_%g4422444227%_ _%g4422544230%_)
                                     (cons _%g4422444227%_ _%g4422544230%_))
                                   '()
                                   _%L44203%_)))))))
             (let* ((_%__match4464244643%_
                     (lambda (_%e4413944163%_
                              _%hd4414044167%_
                              _%tl4414144170%_
                              _%__splice4459444595%_
                              _%target4414244173%_
                              _%tl4414444176%_)
                       (letrec ((_%loop4414544179%_
                                 (lambda (_%hd4414344183%_ _%id4414944186%_)
                                   (if (gx#stx-pair? _%hd4414344183%_)
                                       (let ((_%e4414644189%_
                                              (gx#syntax-e _%hd4414344183%_)))
                                         (let ((_%lp-tl4414844196%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4414644189%_)))
                                               (_%lp-hd4414744193%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4414644189%_))))
                                           (_%loop4414544179%_
                                            _%lp-tl4414844196%_
                                            (cons _%lp-hd4414744193%_
                                                  _%id4414944186%_))))
                                       (let ((_%id4415044199%_
                                              (reverse _%id4414944186%_)))
                                         (_%__kont4459244593%_
                                          _%id4415044199%_))))))
                         (_%loop4414544179%_ _%target4414244173%_ '()))))
                    (_%__match4462844629%_
                     (lambda (_%e4411944240%_
                              _%hd4412044244%_
                              _%tl4412144247%_
                              _%e4412244250%_
                              _%hd4412344254%_
                              _%tl4412444257%_
                              _%e4412544260%_
                              _%e4412644264%_
                              _%hd4412744268%_
                              _%tl4412844271%_
                              _%__splice4459044591%_
                              _%target4412944274%_
                              _%tl4413144277%_)
                       (letrec ((_%loop4413244280%_
                                 (lambda (_%hd4413044284%_ _%id4413644287%_)
                                   (if (gx#stx-pair? _%hd4413044284%_)
                                       (let ((_%e4413344290%_
                                              (gx#syntax-e _%hd4413044284%_)))
                                         (let ((_%lp-tl4413544297%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4413344290%_)))
                                               (_%lp-hd4413444294%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4413344290%_))))
                                           (_%loop4413244280%_
                                            _%lp-tl4413544297%_
                                            (cons _%lp-hd4413444294%_
                                                  _%id4413644287%_))))
                                       (let ((_%id4413744300%_
                                              (reverse _%id4413644287%_)))
                                         (_%__kont4458844589%_
                                          _%id4413744300%_
                                          _%hd4412744268%_))))))
                         (_%loop4413244280%_ _%target4412944274%_ '())))))
               (if (gx#stx-pair? _%__stx4458544586%_)
                   (let ((_%e4411944240%_ (gx#syntax-e _%__stx4458544586%_)))
                     (let ((_%tl4412144247%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4411944240%_)))
                           (_%hd4412044244%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4411944240%_))))
                       (if (gx#stx-pair? _%tl4412144247%_)
                           (let ((_%e4412244250%_
                                  (gx#syntax-e _%tl4412144247%_)))
                             (let ((_%tl4412444257%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4412244250%_)))
                                   (_%hd4412344254%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4412244250%_))))
                               (if (gx#stx-datum? _%hd4412344254%_)
                                   (let ((_%e4412544260%_
                                          (gx#stx-e _%hd4412344254%_)))
                                     (if (equal? _%e4412544260%_ 'unchecked:)
                                         (if (gx#stx-pair? _%tl4412444257%_)
                                             (let ((_%e4412644264%_
                                                    (gx#syntax-e
                                                     _%tl4412444257%_)))
                                               (let ((_%tl4412844271%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4412644264%_)))
                                                     (_%hd4412744268%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4412644264%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%tl4412844271%_)
                                                     (let ((_%__splice4459044591%_
                                                            (gx#syntax-split-splice
                                                             _%tl4412844271%_
                                                             '0)))
                                                       (let ((_%tl4413144277%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4459044591%_ '1)))
                     (_%target4412944274%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4459044591%_ '0))))
                 (if (gx#stx-null? _%tl4413144277%_)
                     (_%__match4462844629%_
                      _%e4411944240%_
                      _%hd4412044244%_
                      _%tl4412144247%_
                      _%e4412244250%_
                      _%hd4412344254%_
                      _%tl4412444257%_
                      _%e4412544260%_
                      _%e4412644264%_
                      _%hd4412744268%_
                      _%tl4412844271%_
                      _%__splice4459044591%_
                      _%target4412944274%_
                      _%tl4413144277%_)
                     (if (gx#stx-pair/null? _%tl4412144247%_)
                         (let ((_%__splice4459444595%_
                                (gx#syntax-split-splice _%tl4412144247%_ '0)))
                           (let ((_%tl4414444176%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4459444595%_ '1)))
                                 (_%target4414244173%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4459444595%_ '0))))
                             (if (gx#stx-null? _%tl4414444176%_)
                                 (_%__match4464244643%_
                                  _%e4411944240%_
                                  _%hd4412044244%_
                                  _%tl4412144247%_
                                  _%__splice4459444595%_
                                  _%target4414244173%_
                                  _%tl4414444176%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%g4411544156%_)))))
                         (let () (declare (not safe)) (_%g4411544156%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%tl4412144247%_)
                                                         (let ((_%__splice4459444595%_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl4412144247%_
                         '0)))
                   (let ((_%tl4414444176%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4459444595%_ '1)))
                         (_%target4414244173%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4459444595%_ '0))))
                     (if (gx#stx-null? _%tl4414444176%_)
                         (_%__match4464244643%_
                          _%e4411944240%_
                          _%hd4412044244%_
                          _%tl4412144247%_
                          _%__splice4459444595%_
                          _%target4414244173%_
                          _%tl4414444176%_)
                         (let () (declare (not safe)) (_%g4411544156%_)))))
                 (let () (declare (not safe)) (_%g4411544156%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%tl4412144247%_)
                                                 (let ((_%__splice4459444595%_
                                                        (gx#syntax-split-splice
                                                         _%tl4412144247%_
                                                         '0)))
                                                   (let ((_%tl4414444176%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4459444595%_
                                                             '1)))
                                                         (_%target4414244173%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4459444595%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4414444176%_)
                                                         (_%__match4464244643%_
                                                          _%e4411944240%_
                                                          _%hd4412044244%_
                                                          _%tl4412144247%_
                                                          _%__splice4459444595%_
                                                          _%target4414244173%_
                                                          _%tl4414444176%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4411544156%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4411544156%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4412144247%_)
                                             (let ((_%__splice4459444595%_
                                                    (gx#syntax-split-splice
                                                     _%tl4412144247%_
                                                     '0)))
                                               (let ((_%tl4414444176%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4459444595%_
                                                         '1)))
                                                     (_%target4414244173%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4459444595%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4414444176%_)
                                                     (_%__match4464244643%_
                                                      _%e4411944240%_
                                                      _%hd4412044244%_
                                                      _%tl4412144247%_
                                                      _%__splice4459444595%_
                                                      _%target4414244173%_
                                                      _%tl4414444176%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4411544156%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4411544156%_)))))
                                   (if (gx#stx-pair/null? _%tl4412144247%_)
                                       (let ((_%__splice4459444595%_
                                              (gx#syntax-split-splice
                                               _%tl4412144247%_
                                               '0)))
                                         (let ((_%tl4414444176%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4459444595%_
                                                   '1)))
                                               (_%target4414244173%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4459444595%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4414444176%_)
                                               (_%__match4464244643%_
                                                _%e4411944240%_
                                                _%hd4412044244%_
                                                _%tl4412144247%_
                                                _%__splice4459444595%_
                                                _%target4414244173%_
                                                _%tl4414444176%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4411544156%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4411544156%_))))))
                           (if (gx#stx-pair/null? _%tl4412144247%_)
                               (let ((_%__splice4459444595%_
                                      (gx#syntax-split-splice
                                       _%tl4412144247%_
                                       '0)))
                                 (let ((_%tl4414444176%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4459444595%_
                                           '1)))
                                       (_%target4414244173%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4459444595%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4414444176%_)
                                       (_%__match4464244643%_
                                        _%e4411944240%_
                                        _%hd4412044244%_
                                        _%tl4412144247%_
                                        _%__splice4459444595%_
                                        _%target4414244173%_
                                        _%tl4414444176%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4411544156%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4411544156%_))))))
                   (let () (declare (not safe)) (_%g4411544156%_)))))))))))
