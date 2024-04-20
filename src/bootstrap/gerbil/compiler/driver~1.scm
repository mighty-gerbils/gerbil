(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx200587%_)
    (let* ((_%g200591200605%_
            (lambda (_%g200592200601%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g200592200601%_))))
           (_%g200590200647%_
            (lambda (_%g200592200609%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g200592200609%_))
                  (let ((_%e200594200612%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g200592200609%_))))
                    (let ((_%hd200595200616%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200594200612%_)))
                          (_%tl200596200619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200594200612%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200596200619%_))
                          (let ((_%e200597200622%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200596200619%_))))
                            (let ((_%hd200598200626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200597200622%_)))
                                  (_%tl200599200629%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200597200622%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200599200629%_))
                                  ((lambda (_%L200632%_)
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
                     (cons '() (cons _%L200632%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd200598200626%_)
                                  (_%g200591200605%_ _%g200592200609%_))))
                          (_%g200591200605%_ _%g200592200609%_))))
                  (_%g200591200605%_ _%g200592200609%_)))))
      (_%g200590200647%_ _%$stx200587%_))))
