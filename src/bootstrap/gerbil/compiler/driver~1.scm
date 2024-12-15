(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201781%_)
    (let* ((_%g201785201799%_
            (lambda (_%g201786201795%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201786201795%_))))
           (_%g201784201841%_
            (lambda (_%g201786201803%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201786201803%_))
                  (let ((_%e201788201806%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201786201803%_))))
                    (let ((_%hd201789201810%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201788201806%_)))
                          (_%tl201790201813%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201788201806%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201790201813%_))
                          (let ((_%e201791201816%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201790201813%_))))
                            (let ((_%hd201792201820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201791201816%_)))
                                  (_%tl201793201823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201791201816%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201793201823%_))
                                  ((lambda (_%L201826%_)
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
                     (cons '() (cons _%L201826%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201792201820%_)
                                  (_%g201785201799%_ _%g201786201803%_))))
                          (_%g201785201799%_ _%g201786201803%_))))
                  (_%g201785201799%_ _%g201786201803%_)))))
      (_%g201784201841%_ _%$stx201781%_))))
