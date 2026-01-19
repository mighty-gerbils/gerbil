(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx212733%_)
    (let* ((_%g212737212751%_
            (lambda (_%g212738212747%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g212738212747%_))))
           (_%g212736212793%_
            (lambda (_%g212738212755%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g212738212755%_))
                  (let ((_%e212740212758%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g212738212755%_))))
                    (let ((_%hd212741212762%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212740212758%_)))
                          (_%tl212742212765%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212740212758%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212742212765%_))
                          (let ((_%e212743212768%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212742212765%_))))
                            (let ((_%hd212744212772%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212743212768%_)))
                                  (_%tl212745212775%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212743212768%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212745212775%_))
                                  ((lambda (_%L212778%_)
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
                     (cons '() (cons _%L212778%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd212744212772%_)
                                  (_%g212737212751%_ _%g212738212755%_))))
                          (_%g212737212751%_ _%g212738212755%_))))
                  (_%g212737212751%_ _%g212738212755%_)))))
      (_%g212736212793%_ _%$stx212733%_))))
