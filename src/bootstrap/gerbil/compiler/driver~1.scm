(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx193751%_)
      (let* ((_%g193755193769%_
              (lambda (_%g193756193765%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193756193765%_))))
             (_%g193754193811%_
              (lambda (_%g193756193773%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193756193773%_))
                    (let ((_%e193760193776%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193756193773%_))))
                      (let ((_%hd193759193780%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193760193776%_)))
                            (_%tl193758193783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193760193776%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193758193783%_))
                            (let ((_%e193763193786%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193758193783%_))))
                              (let ((_%hd193762193790%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193763193786%_)))
                                    (_%tl193761193793%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193763193786%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193761193793%_))
                                    ((lambda (_%L193796%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'with-lock))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '+driver-mutex+))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'lambda))
                       (cons '() (cons _%L193796%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd193762193790%_)
                                    (_%g193755193769%_ _%g193756193773%_))))
                            (_%g193755193769%_ _%g193756193773%_))))
                    (_%g193755193769%_ _%g193756193773%_)))))
        (_%g193754193811%_ _%$stx193751%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx193815%_)
      (let* ((_%g193819193833%_
              (lambda (_%g193820193829%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g193820193829%_))))
             (_%g193818193874%_
              (lambda (_%g193820193837%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g193820193837%_))
                    (let ((_%e193824193840%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g193820193837%_))))
                      (let ((_%hd193823193844%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193824193840%_)))
                            (_%tl193822193847%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193824193840%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193822193847%_))
                            (let ((_%e193827193850%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl193822193847%_))))
                              (let ((_%hd193826193854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193827193850%_)))
                                    (_%tl193825193857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193827193850%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193825193857%_))
                                    ((lambda (_%L193860%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'spawn))
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'lambda))
                                                         (cons '()
                                                               (cons _%L193860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd193826193854%_)
                                    (_%g193819193833%_ _%g193820193837%_))))
                            (_%g193819193833%_ _%g193820193837%_))))
                    (_%g193819193833%_ _%g193820193837%_)))))
        (_%g193818193874%_ _%$stx193815%_)))))
