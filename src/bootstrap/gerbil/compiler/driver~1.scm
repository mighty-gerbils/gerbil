(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx201785%_)
    (let* ((_%g201789201803%_
            (lambda (_%g201790201799%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g201790201799%_))))
           (_%g201788201845%_
            (lambda (_%g201790201807%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g201790201807%_))
                  (let ((_%e201792201810%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g201790201807%_))))
                    (let ((_%hd201793201814%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201792201810%_)))
                          (_%tl201794201817%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201792201810%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201794201817%_))
                          (let ((_%e201795201820%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201794201817%_))))
                            (let ((_%hd201796201824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201795201820%_)))
                                  (_%tl201797201827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201795201820%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201797201827%_))
                                  ((lambda (_%L201830%_)
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
                     (cons '() (cons _%L201830%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd201796201824%_)
                                  (_%g201789201803%_ _%g201790201807%_))))
                          (_%g201789201803%_ _%g201790201807%_))))
                  (_%g201789201803%_ _%g201790201807%_)))))
      (_%g201788201845%_ _%$stx201785%_))))
