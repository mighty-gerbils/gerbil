(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx41556%_)
      (let* ((_%g4156041571%_
              (lambda (_%g4156141567%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4156141567%_)))
             (_%g4155941601%_
              (lambda (_%g4156141575%_)
                (if (gx#stx-pair? _%g4156141575%_)
                    (let ((_%e4156341578%_ (gx#syntax-e _%g4156141575%_)))
                      (let ((_%hd4156441582%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4156341578%_)))
                            (_%tl4156541585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4156341578%_))))
                        ((lambda (_%L41588%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L41588%_)
                                             '()))))
                         _%tl4156541585%_)))
                    (_%g4156041571%_ _%g4156141575%_)))))
        (_%g4155941601%_ _%$stx41556%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx41605%_)
      (let ((_%g4160841615%_
             (lambda (_%g4160941611%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4160941611%_))))
        (_%g4160841615%_ _%$stx41605%_)))))
