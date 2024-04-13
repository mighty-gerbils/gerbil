(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx200149%_)
    (let* ((_%g200153200167%_
            (lambda (_%g200154200163%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g200154200163%_))))
           (_%g200152200209%_
            (lambda (_%g200154200171%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g200154200171%_))
                  (let ((_%e200156200174%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g200154200171%_))))
                    (let ((_%hd200157200178%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200156200174%_)))
                          (_%tl200158200181%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200156200174%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200158200181%_))
                          (let ((_%e200159200184%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200158200181%_))))
                            (let ((_%hd200160200188%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200159200184%_)))
                                  (_%tl200161200191%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200159200184%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200161200191%_))
                                  ((lambda (_%L200194%_)
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
                     (cons '() (cons _%L200194%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd200160200188%_)
                                  (_%g200153200167%_ _%g200154200171%_))))
                          (_%g200153200167%_ _%g200154200171%_))))
                  (_%g200153200167%_ _%g200154200171%_)))))
      (_%g200152200209%_ _%$stx200149%_))))
