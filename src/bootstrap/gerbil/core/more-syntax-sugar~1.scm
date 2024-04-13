(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41554%_)
      (let* ((_%g4155841569%_
              (lambda (_%g4155941565%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4155941565%_)))
             (_%g4155741599%_
              (lambda (_%g4155941573%_)
                (if (gx#stx-pair? _%g4155941573%_)
                    (let ((_%e4156141576%_ (gx#syntax-e _%g4155941573%_)))
                      (let ((_%hd4156241580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4156141576%_)))
                            (_%tl4156341583%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4156141576%_))))
                        ((lambda (_%L41586%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41586%_)
                                             '()))))
                         _%tl4156341583%_)))
                    (_%g4155841569%_ _%g4155941573%_)))))
        (_%g4155741599%_ _%$stx41554%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41603%_)
      (let ((_%g4160641613%_
             (lambda (_%g4160741609%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4160741609%_))))
        (_%g4160641613%_ _%$stx41603%_)))))
