(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41817%_)
      (let* ((_%g4182141832%_
              (lambda (_%g4182241828%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4182241828%_)))
             (_%g4182041862%_
              (lambda (_%g4182241836%_)
                (if (gx#stx-pair? _%g4182241836%_)
                    (let ((_%e4182641839%_ (gx#syntax-e _%g4182241836%_)))
                      (let ((_%hd4182541843%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4182641839%_)))
                            (_%tl4182441846%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4182641839%_))))
                        ((lambda (_%L41849%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41849%_)
                                             '()))))
                         _%tl4182441846%_)))
                    (_%g4182141832%_ _%g4182241836%_)))))
        (_%g4182041862%_ _%$stx41817%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41866%_)
      (let ((_%g4186941876%_
             (lambda (_%g4187041872%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4187041872%_))))
        (_%g4186941876%_ _%$stx41866%_)))))
