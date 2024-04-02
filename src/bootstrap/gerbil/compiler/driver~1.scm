(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#with-driver-mutex|
    (lambda (_%$stx192880%_)
      (let* ((_%g192884192898%_
              (lambda (_%g192885192894%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g192885192894%_))))
             (_%g192883192940%_
              (lambda (_%g192885192902%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g192885192902%_))
                    (let ((_%e192889192905%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g192885192902%_))))
                      (let ((_%hd192888192909%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192889192905%_)))
                            (_%tl192887192912%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192889192905%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192887192912%_))
                            (let ((_%e192892192915%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl192887192912%_))))
                              (let ((_%hd192891192919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192892192915%_)))
                                    (_%tl192890192922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192892192915%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl192890192922%_))
                                    ((lambda (_%L192925%_)
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
                       (cons '() (cons _%L192925%_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd192891192919%_)
                                    (_%g192884192898%_ _%g192885192902%_))))
                            (_%g192884192898%_ _%g192885192902%_))))
                    (_%g192884192898%_ _%g192885192902%_)))))
        (_%g192883192940%_ _%$stx192880%_))))
  (define |gxc[:0:]#go!|
    (lambda (_%$stx192944%_)
      (let* ((_%g192948192962%_
              (lambda (_%g192949192958%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g192949192958%_))))
             (_%g192947193003%_
              (lambda (_%g192949192966%_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%g192949192966%_))
                    (let ((_%e192953192969%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g192949192966%_))))
                      (let ((_%hd192952192973%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192953192969%_)))
                            (_%tl192951192976%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192953192969%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192951192976%_))
                            (let ((_%e192956192979%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl192951192976%_))))
                              (let ((_%hd192955192983%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192956192979%_)))
                                    (_%tl192954192986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192956192979%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl192954192986%_))
                                    ((lambda (_%L192989%_)
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
                                                               (cons _%L192989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd192955192983%_)
                                    (_%g192948192962%_ _%g192949192966%_))))
                            (_%g192948192962%_ _%g192949192966%_))))
                    (_%g192948192962%_ _%g192949192966%_)))))
        (_%g192947193003%_ _%$stx192944%_)))))
