(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41635%_)
      (let* ((_%g4163941650%_
              (lambda (_%g4164041646%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4164041646%_)))
             (_%g4163841680%_
              (lambda (_%g4164041654%_)
                (if (gx#stx-pair? _%g4164041654%_)
                    (let ((_%e4164241657%_ (gx#syntax-e _%g4164041654%_)))
                      (let ((_%hd4164341661%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4164241657%_)))
                            (_%tl4164441664%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4164241657%_))))
                        ((lambda (_%L41667%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41667%_)
                                             '()))))
                         _%tl4164441664%_)))
                    (_%g4163941650%_ _%g4164041654%_)))))
        (_%g4163841680%_ _%$stx41635%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41684%_)
      (let ((_%g4168741694%_
             (lambda (_%g4168841690%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4168841690%_))))
        (_%g4168741694%_ _%$stx41684%_)))))
