(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core/sugar~Quasiquote[:0:]#quasiquote|
  (lambda (_%stx19005%_)
    (let* ((_%$%g1900819022%_
            (lambda (_%$%g1900919018%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _%$%g1900919018%_)))
           (_%$%g1900719064%_
            (lambda (_%$%g1900919026%_)
              (if (gx#stx-pair? _%$%g1900919026%_)
                  (let ((_%$%e1901119029%_ (gx#syntax-e _%$%g1900919026%_)))
                    (let ((_%$%hd1901219033%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1901119029%_)))
                          (_%$%tl1901319036%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1901119029%_))))
                      (if (gx#stx-pair? _%$%tl1901319036%_)
                          (let ((_%$%e1901419039%_
                                 (gx#syntax-e _%$%tl1901319036%_)))
                            (let ((_%$%hd1901519043%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1901419039%_)))
                                  (_%$%tl1901619046%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1901419039%_))))
                              (if (gx#stx-null? _%$%tl1901619046%_)
                                  (let ()
                                    (declare (not safe))
                                    (gerbil/core/sugar~QuasiquoteExpander#quasiquote-expand
                                     _%$%hd1901519043%_))
                                  (_%$%g1900819022%_ _%$%g1900919026%_))))
                          (_%$%g1900819022%_ _%$%g1900919026%_))))
                  (_%$%g1900819022%_ _%$%g1900919026%_)))))
      (_%$%g1900719064%_ _%stx19005%_))))
