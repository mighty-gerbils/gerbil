(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41653%_)
      (let* ((_%g4165741668%_
              (lambda (_%g4165841664%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4165841664%_)))
             (_%g4165641698%_
              (lambda (_%g4165841672%_)
                (if (gx#stx-pair? _%g4165841672%_)
                    (let ((_%e4166041675%_ (gx#syntax-e _%g4165841672%_)))
                      (let ((_%hd4166141679%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4166041675%_)))
                            (_%tl4166241682%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4166041675%_))))
                        ((lambda (_%L41685%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41685%_)
                                             '()))))
                         _%tl4166241682%_)))
                    (_%g4165741668%_ _%g4165841672%_)))))
        (_%g4165641698%_ _%$stx41653%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41702%_)
      (let ((_%g4170541712%_
             (lambda (_%g4170641708%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4170641708%_))))
        (_%g4170541712%_ _%$stx41702%_)))))
