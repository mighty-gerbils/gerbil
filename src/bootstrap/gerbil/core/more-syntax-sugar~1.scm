(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx44727%_)
      (let* ((_%g4473144742%_
              (lambda (_%g4473244738%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4473244738%_)))
             (_%g4473044772%_
              (lambda (_%g4473244746%_)
                (if (gx#stx-pair? _%g4473244746%_)
                    (let ((_%e4473444749%_ (gx#syntax-e _%g4473244746%_)))
                      (let ((_%hd4473544753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4473444749%_)))
                            (_%tl4473644756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4473444749%_))))
                        ((lambda (_%L44759%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L44759%_)
                                             '()))))
                         _%tl4473644756%_)))
                    (_%g4473144742%_ _%g4473244746%_)))))
        (_%g4473044772%_ _%$stx44727%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx44776%_)
      (let ((_%g4477944786%_
             (lambda (_%g4478044782%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4478044782%_))))
        (_%g4477944786%_ _%$stx44776%_)))))
