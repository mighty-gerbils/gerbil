(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41813%_)
      (let* ((_%g4181741828%_
              (lambda (_%g4181841824%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4181841824%_)))
             (_%g4181641858%_
              (lambda (_%g4181841832%_)
                (if (gx#stx-pair? _%g4181841832%_)
                    (let ((_%e4182241835%_ (gx#syntax-e _%g4181841832%_)))
                      (let ((_%hd4182141839%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4182241835%_)))
                            (_%tl4182041842%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4182241835%_))))
                        ((lambda (_%L41845%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41845%_)
                                             '()))))
                         _%tl4182041842%_)))
                    (_%g4181741828%_ _%g4181841832%_)))))
        (_%g4181641858%_ _%$stx41813%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41862%_)
      (let ((_%g4186541872%_
             (lambda (_%g4186641868%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4186641868%_))))
        (_%g4186541872%_ _%$stx41862%_)))))
