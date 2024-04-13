(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx198469%_)
    (let* ((_%g198473198487%_
            (lambda (_%g198474198483%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g198474198483%_))))
           (_%g198472198529%_
            (lambda (_%g198474198491%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g198474198491%_))
                  (let ((_%e198476198494%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g198474198491%_))))
                    (let ((_%hd198477198498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198476198494%_)))
                          (_%tl198478198501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198476198494%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198478198501%_))
                          (let ((_%e198479198504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198478198501%_))))
                            (let ((_%hd198480198508%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198479198504%_)))
                                  (_%tl198481198511%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198479198504%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198481198511%_))
                                  ((lambda (_%L198514%_)
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
                     (cons '() (cons _%L198514%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd198480198508%_)
                                  (_%g198473198487%_ _%g198474198491%_))))
                          (_%g198473198487%_ _%g198474198491%_))))
                  (_%g198473198487%_ _%g198474198491%_)))))
      (_%g198472198529%_ _%$stx198469%_))))
