(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41672%_)
      (let* ((_%g4167641687%_
              (lambda (_%g4167741683%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4167741683%_)))
             (_%g4167541717%_
              (lambda (_%g4167741691%_)
                (if (gx#stx-pair? _%g4167741691%_)
                    (let ((_%e4167941694%_ (gx#syntax-e _%g4167741691%_)))
                      (let ((_%hd4168041698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4167941694%_)))
                            (_%tl4168141701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4167941694%_))))
                        ((lambda (_%L41704%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41704%_)
                                             '()))))
                         _%tl4168141701%_)))
                    (_%g4167641687%_ _%g4167741691%_)))))
        (_%g4167541717%_ _%$stx41672%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41721%_)
      (let ((_%g4172441731%_
             (lambda (_%g4172541727%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4172541727%_))))
        (_%g4172441731%_ _%$stx41721%_)))))
