(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx264256%_)
    (let* ((_%$%g264260264274%_
            (lambda (_%$%g264261264270%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g264261264270%_))))
           (_%$%g264259264316%_
            (lambda (_%$%g264261264278%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g264261264278%_))
                  (let ((_%$%e264263264281%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g264261264278%_))))
                    (let ((_%$%hd264264264285%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264263264281%_)))
                          (_%$%tl264265264288%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264263264281%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl264265264288%_))
                          (let ((_%$%e264266264291%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl264265264288%_))))
                            (let ((_%$%hd264267264295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264266264291%_)))
                                  (_%$%tl264268264298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264266264291%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl264268264298%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'with-lock))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '+driver-mutex+))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'lambda))
                                                          (cons '()
                                                                (cons _%$%hd264267264295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g264260264274%_ _%$%g264261264278%_))))
                          (_%$%g264260264274%_ _%$%g264261264278%_))))
                  (_%$%g264260264274%_ _%$%g264261264278%_)))))
      (_%$%g264259264316%_ _%$stx264256%_))))
