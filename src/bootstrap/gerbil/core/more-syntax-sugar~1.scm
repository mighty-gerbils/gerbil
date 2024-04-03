(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41848%_)
      (let* ((_%g4185241863%_
              (lambda (_%g4185341859%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4185341859%_)))
             (_%g4185141893%_
              (lambda (_%g4185341867%_)
                (if (gx#stx-pair? _%g4185341867%_)
                    (let ((_%e4185741870%_ (gx#syntax-e _%g4185341867%_)))
                      (let ((_%hd4185641874%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4185741870%_)))
                            (_%tl4185541877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4185741870%_))))
                        ((lambda (_%L41880%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41880%_)
                                             '()))))
                         _%tl4185541877%_)))
                    (_%g4185241863%_ _%g4185341867%_)))))
        (_%g4185141893%_ _%$stx41848%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41897%_)
      (let ((_%g4190041907%_
             (lambda (_%g4190141903%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4190141903%_))))
        (_%g4190041907%_ _%$stx41897%_)))))
