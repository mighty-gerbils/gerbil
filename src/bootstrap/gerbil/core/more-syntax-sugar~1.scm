(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx45168%_)
      (let* ((_%g4517245183%_
              (lambda (_%g4517345179%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4517345179%_)))
             (_%g4517145213%_
              (lambda (_%g4517345187%_)
                (if (gx#stx-pair? _%g4517345187%_)
                    (let ((_%e4517545190%_ (gx#syntax-e _%g4517345187%_)))
                      (let ((_%hd4517645194%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4517545190%_)))
                            (_%tl4517745197%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4517545190%_))))
                        ((lambda (_%L45200%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L45200%_)
                                             '()))))
                         _%tl4517745197%_)))
                    (_%g4517245183%_ _%g4517345187%_)))))
        (_%g4517145213%_ _%$stx45168%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx45217%_)
      (let ((_%g4522045227%_
             (lambda (_%g4522145223%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4522145223%_))))
        (_%g4522045227%_ _%$stx45217%_)))))
