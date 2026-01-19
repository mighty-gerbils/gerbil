(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx212691%_)
    (let* ((_%g212695212709%_
            (lambda (_%g212696212705%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g212696212705%_))))
           (_%g212694212751%_
            (lambda (_%g212696212713%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g212696212713%_))
                  (let ((_%e212698212716%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g212696212713%_))))
                    (let ((_%hd212699212720%_
                           (let ()
                             (declare (not safe))
                             (##car _%e212698212716%_)))
                          (_%tl212700212723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e212698212716%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl212700212723%_))
                          (let ((_%e212701212726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl212700212723%_))))
                            (let ((_%hd212702212730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e212701212726%_)))
                                  (_%tl212703212733%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e212701212726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl212703212733%_))
                                  ((lambda (_%L212736%_)
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
                     (cons '() (cons _%L212736%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd212702212730%_)
                                  (_%g212695212709%_ _%g212696212713%_))))
                          (_%g212695212709%_ _%g212696212713%_))))
                  (_%g212695212709%_ _%g212696212713%_)))))
      (_%g212694212751%_ _%$stx212691%_))))
