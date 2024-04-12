(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx197681%_)
    (let* ((_%g197685197699%_
            (lambda (_%g197686197695%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g197686197695%_))))
           (_%g197684197741%_
            (lambda (_%g197686197703%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g197686197703%_))
                  (let ((_%e197688197706%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g197686197703%_))))
                    (let ((_%hd197689197710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197688197706%_)))
                          (_%tl197690197713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197688197706%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197690197713%_))
                          (let ((_%e197691197716%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197690197713%_))))
                            (let ((_%hd197692197720%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197691197716%_)))
                                  (_%tl197693197723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197691197716%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197693197723%_))
                                  ((lambda (_%L197726%_)
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
                     (cons '() (cons _%L197726%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd197692197720%_)
                                  (_%g197685197699%_ _%g197686197703%_))))
                          (_%g197685197699%_ _%g197686197703%_))))
                  (_%g197685197699%_ _%g197686197703%_)))))
      (_%g197684197741%_ _%$stx197681%_))))
