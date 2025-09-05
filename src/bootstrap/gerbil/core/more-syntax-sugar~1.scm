(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
    (lambda (_%$stx45102%_)
      (let* ((_%g4510645117%_
              (lambda (_%g4510745113%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4510745113%_)))
             (_%g4510545147%_
              (lambda (_%g4510745121%_)
                (if (gx#stx-pair? _%g4510745121%_)
                    (let ((_%e4510945124%_ (gx#syntax-e _%g4510745121%_)))
                      (let ((_%hd4511045128%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4510945124%_)))
                            (_%tl4511145131%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4510945124%_))))
                        ((lambda (_%L45134%_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _%L45134%_)
                                             '()))))
                         _%tl4511145131%_)))
                    (_%g4510645117%_ _%g4510745121%_)))))
        (_%g4510545147%_ _%$stx45102%_))))
  (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
    (lambda (_%$stx45151%_)
      (let ((_%g4515445161%_
             (lambda (_%g4515545157%_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _%g4515545157%_))))
        (_%g4515445161%_ _%$stx45151%_)))))
