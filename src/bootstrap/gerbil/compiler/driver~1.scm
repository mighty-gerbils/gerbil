(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx199181%_)
    (let* ((_%g199185199199%_
            (lambda (_%g199186199195%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g199186199195%_))))
           (_%g199184199241%_
            (lambda (_%g199186199203%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%g199186199203%_))
                  (let ((_%e199188199206%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g199186199203%_))))
                    (let ((_%hd199189199210%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199188199206%_)))
                          (_%tl199190199213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199188199206%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199190199213%_))
                          (let ((_%e199191199216%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199190199213%_))))
                            (let ((_%hd199192199220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199191199216%_)))
                                  (_%tl199193199223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199191199216%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199193199223%_))
                                  ((lambda (_%L199226%_)
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
                     (cons '() (cons _%L199226%_ '())))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%hd199192199220%_)
                                  (_%g199185199199%_ _%g199186199203%_))))
                          (_%g199185199199%_ _%g199186199203%_))))
                  (_%g199185199199%_ _%g199186199203%_)))))
      (_%g199184199241%_ _%$stx199181%_))))
