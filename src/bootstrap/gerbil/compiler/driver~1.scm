(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx254828%_)
    (let* ((_%g254832254846%_
            (lambda (_%g254833254842%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g254833254842%_))))
           (_%g254831254888%_
            (lambda (_%g254833254850%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g254833254850%_))
                  (let ((_%e254835254853%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g254833254850%_))))
                    (let ((_%hd254836254857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254835254853%_)))
                          (_%tl254837254860%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254835254853%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254837254860%_))
                          (let ((_%e254838254863%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl254837254860%_))))
                            (let ((_%hd254839254867%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254838254863%_)))
                                  (_%tl254840254870%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254838254863%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl254840254870%_))
                                  ((lambda (_%g254834254873%_)
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
                     (cons '() (cons _%g254834254873%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd254839254867%_)
                                  (_%g254832254846%_ _%g254833254850%_))))
                          (_%g254832254846%_ _%g254833254850%_))))
                  (_%g254832254846%_ _%g254833254850%_)))))
      (_%g254831254888%_ _%$stx254828%_))))
