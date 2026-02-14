(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx258317%_)
    (let* ((_%g258321258335%_
            (lambda (_%g258322258331%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g258322258331%_))))
           (_%g258320258377%_
            (lambda (_%g258322258339%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g258322258339%_))
                  (let ((_%e258324258342%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g258322258339%_))))
                    (let ((_%hd258325258346%_
                           (let ()
                             (declare (not safe))
                             (##car _%e258324258342%_)))
                          (_%tl258326258349%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e258324258342%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl258326258349%_))
                          (let ((_%e258327258352%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl258326258349%_))))
                            (let ((_%hd258328258356%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e258327258352%_)))
                                  (_%tl258329258359%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e258327258352%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl258329258359%_))
                                  ((lambda (_%g258323258362%_)
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
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'lambda))
                     (cons '() (cons _%g258323258362%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd258328258356%_)
                                  (_%g258321258335%_ _%g258322258339%_))))
                          (_%g258321258335%_ _%g258322258339%_))))
                  (_%g258321258335%_ _%g258322258339%_)))))
      (_%g258320258377%_ _%$stx258317%_))))
