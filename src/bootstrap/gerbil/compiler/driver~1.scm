(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx197739%_)
    (let* ((_%g197743197757%_
            (lambda (_%g197744197753%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g197744197753%_))))
           (_%g197742197799%_
            (lambda (_%g197744197761%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g197744197761%_))
                  (let ((_%e197746197764%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g197744197761%_))))
                    (let ((_%hd197747197768%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197746197764%_)))
                          (_%tl197748197771%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197746197764%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197748197771%_))
                          (let ((_%e197749197774%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197748197771%_))))
                            (let ((_%hd197750197778%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197749197774%_)))
                                  (_%tl197751197781%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197749197774%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197751197781%_))
                                  ((lambda (_%L197784%_)
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
                     (cons '() (cons _%L197784%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd197750197778%_)
                                  (_%g197743197757%_ _%g197744197761%_))))
                          (_%g197743197757%_ _%g197744197761%_))))
                  (_%g197743197757%_ _%g197744197761%_)))))
      (_%g197742197799%_ _%$stx197739%_))))
