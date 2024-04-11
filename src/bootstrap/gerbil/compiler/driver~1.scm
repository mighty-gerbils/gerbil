(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx195688%_)
    (let* ((_%g195692195706%_
            (lambda (_%g195693195702%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g195693195702%_))))
           (_%g195691195748%_
            (lambda (_%g195693195710%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g195693195710%_))
                  (let ((_%e195695195713%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g195693195710%_))))
                    (let ((_%hd195696195717%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195695195713%_)))
                          (_%tl195697195720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195695195713%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195697195720%_))
                          (let ((_%e195698195723%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195697195720%_))))
                            (let ((_%hd195699195727%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195698195723%_)))
                                  (_%tl195700195730%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195698195723%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl195700195730%_))
                                  ((lambda (_%L195733%_)
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
                     (cons '() (cons _%L195733%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd195699195727%_)
                                  (_%g195692195706%_ _%g195693195710%_))))
                          (_%g195692195706%_ _%g195693195710%_))))
                  (_%g195692195706%_ _%g195693195710%_)))))
      (_%g195691195748%_ _%$stx195688%_))))
