(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41590%_)
      (let* ((_%g4159441605%_
              (lambda (_%g4159541601%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4159541601%_)))
             (_%g4159341635%_
              (lambda (_%g4159541609%_)
                (if (gx#stx-pair? _%g4159541609%_)
                    (let ((_%e4159741612%_ (gx#syntax-e _%g4159541609%_)))
                      (let ((_%hd4159841616%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4159741612%_)))
                            (_%tl4159941619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4159741612%_))))
                        ((lambda (_%L41622%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41622%_)
                                             '()))))
                         _%tl4159941619%_)))
                    (_%g4159441605%_ _%g4159541609%_)))))
        (_%g4159341635%_ _%$stx41590%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41639%_)
      (let ((_%g4164241649%_
             (lambda (_%g4164341645%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4164341645%_))))
        (_%g4164241649%_ _%$stx41639%_)))))
