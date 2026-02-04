(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx222834%_)
    (let* ((_%g222838222852%_
            (lambda (_%g222839222848%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g222839222848%_))))
           (_%g222837222894%_
            (lambda (_%g222839222856%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g222839222856%_))
                  (let ((_%e222841222859%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g222839222856%_))))
                    (let ((_%hd222842222863%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222841222859%_)))
                          (_%tl222843222866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222841222859%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl222843222866%_))
                          (let ((_%e222844222869%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl222843222866%_))))
                            (let ((_%hd222845222873%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e222844222869%_)))
                                  (_%tl222846222876%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e222844222869%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl222846222876%_))
                                  ((lambda (_%g222840222879%_)
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
                     (cons '() (cons _%g222840222879%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd222845222873%_)
                                  (_%g222838222852%_ _%g222839222856%_))))
                          (_%g222838222852%_ _%g222839222856%_))))
                  (_%g222838222852%_ _%g222839222856%_)))))
      (_%g222837222894%_ _%$stx222834%_))))
