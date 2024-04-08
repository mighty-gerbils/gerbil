(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41640%_)
      (let* ((_%g4164441655%_
              (lambda (_%g4164541651%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4164541651%_)))
             (_%g4164341685%_
              (lambda (_%g4164541659%_)
                (if (gx#stx-pair? _%g4164541659%_)
                    (let ((_%e4164941662%_ (gx#syntax-e _%g4164541659%_)))
                      (let ((_%hd4164841666%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4164941662%_)))
                            (_%tl4164741669%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4164941662%_))))
                        ((lambda (_%L41672%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41672%_)
                                             '()))))
                         _%tl4164741669%_)))
                    (_%g4164441655%_ _%g4164541659%_)))))
        (_%g4164341685%_ _%$stx41640%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41689%_)
      (let ((_%g4169241699%_
             (lambda (_%g4169341695%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4169341695%_))))
        (_%g4169241699%_ _%$stx41689%_)))))
