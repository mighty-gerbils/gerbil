(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx45198%_)
      (let* ((_%g4520245213%_
              (lambda (_%g4520345209%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4520345209%_)))
             (_%g4520145243%_
              (lambda (_%g4520345217%_)
                (if (gx#stx-pair? _%g4520345217%_)
                    (let ((_%e4520545220%_ (gx#syntax-e _%g4520345217%_)))
                      (let ((_%hd4520645224%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4520545220%_)))
                            (_%tl4520745227%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4520545220%_))))
                        ((lambda (_%L45230%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L45230%_)
                                             '()))))
                         _%tl4520745227%_)))
                    (_%g4520245213%_ _%g4520345217%_)))))
        (_%g4520145243%_ _%$stx45198%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx45247%_)
      (let ((_%g4525045257%_
             (lambda (_%g4525145253%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4525145253%_))))
        (_%g4525045257%_ _%$stx45247%_)))))
