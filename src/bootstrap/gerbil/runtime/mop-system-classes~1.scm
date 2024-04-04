(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98741_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx98361%_)
      (let* ((_%g9836498402%_
              (lambda (_%g9836598398%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9836598398%_)))
             (_%g9836398571%_
              (lambda (_%g9836598406%_)
                (if (gx#stx-pair? _%g9836598406%_)
                    (let ((_%e9837298409%_ (gx#syntax-e _%g9836598406%_)))
                      (let ((_%hd9837198413%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9837298409%_)))
                            (_%tl9837098416%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9837298409%_))))
                        (if (gx#stx-pair? _%tl9837098416%_)
                            (let ((_%e9837598419%_
                                   (gx#syntax-e _%tl9837098416%_)))
                              (let ((_%hd9837498423%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9837598419%_)))
                                    (_%tl9837398426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9837598419%_))))
                                (if (gx#stx-pair? _%hd9837498423%_)
                                    (let ((_%e9837898429%_
                                           (gx#syntax-e _%hd9837498423%_)))
                                      (let ((_%hd9837798433%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9837898429%_)))
                                            (_%tl9837698436%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9837898429%_))))
                                        (if (gx#stx-pair? _%tl9837698436%_)
                                            (let ((_%e9838198439%_
                                                   (gx#syntax-e
                                                    _%tl9837698436%_)))
                                              (let ((_%hd9838098443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9838198439%_)))
                                                    (_%tl9837998446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9838198439%_))))
                                                (if (gx#stx-null?
                                                     _%tl9837998446%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9837398426%_)
                                                        (let ((_%e9838498449%_
                                                               (gx#syntax-e
                                                                _%tl9837398426%_)))
                                                          (let ((_%hd9838398453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9838498449%_)))
                        (_%tl9838298456%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9838498449%_))))
                    (if (gx#identifier? _%hd9838398453%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98741_|
                             _%hd9838398453%_)
                            (if (gx#stx-pair? _%tl9838298456%_)
                                (let ((_%e9838798459%_
                                       (gx#syntax-e _%tl9838298456%_)))
                                  (let ((_%hd9838698463%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9838798459%_)))
                                        (_%tl9838598466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9838798459%_))))
                                    (if (gx#stx-pair/null? _%tl9838598466%_)
                                        (let ((_g98742_
                                               (gx#syntax-split-splice
                                                _%tl9838598466%_
                                                '0)))
                                          (begin
                                            (let ((_g98743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98742_)
                                                         (##vector-length
                                                          _g98742_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98743_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98743_)))
                                            (let ((_%target9838898469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98742_
                                                      0)))
                                                  (_%tl9839098472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98742_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9839098472%_)
                                                  (letrec ((_%loop9839198475%_
                                                            (lambda (_%hd9838998479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9839598482%_)
                      (if (gx#stx-pair? _%hd9838998479%_)
                          (let ((_%e9839298485%_
                                 (gx#syntax-e _%hd9838998479%_)))
                            (let ((_%lp-hd9839398489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9839298485%_)))
                                  (_%lp-tl9839498492%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9839298485%_))))
                              (_%loop9839198475%_
                               _%lp-tl9839498492%_
                               (cons _%lp-hd9839398489%_ _%body9839598482%_))))
                          (let ((_%body9839698495%_
                                 (reverse _%body9839598482%_)))
                            ((lambda (_%L98499%_
                                      _%L98501%_
                                      _%L98502%_
                                      _%L98503%_)
                               (let* ((_%g9853298540%_
                                       (lambda (_%g9853398536%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9853398536%_)))
                                      (_%g9853198567%_
                                       (lambda (_%g9853398544%_)
                                         ((lambda (_%L98547%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L98503%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98547%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L98502%_ '())
                                                      (let ((__tmp98744
                                                             (lambda (_%g9855898561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9855998564%_)
                       (cons _%g9855898561%_ _%g9855998564%_))))
                (declare (not safe))
                (__foldr1 __tmp98744 '() _%L98499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9853398544%_))))
                                 (_%g9853198567%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx98361%_
                                     _%L98501%_)))))
                             _%body9839698495%_
                             _%hd9838698463%_
                             _%hd9838098443%_
                             _%hd9837798433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9839198475%_
                                                     _%target9838898469%_
                                                     '()))
                                                  (_%g9836498402%_
                                                   _%g9836598406%_)))))
                                        (_%g9836498402%_ _%g9836598406%_))))
                                (_%g9836498402%_ _%g9836598406%_))
                            (_%g9836498402%_ _%g9836598406%_))
                        (_%g9836498402%_ _%g9836598406%_))))
                (_%g9836498402%_ _%g9836598406%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9836498402%_
                                                     _%g9836598406%_))))
                                            (_%g9836498402%_
                                             _%g9836598406%_))))
                                    (_%g9836498402%_ _%g9836598406%_))))
                            (_%g9836498402%_ _%g9836598406%_))))
                    (_%g9836498402%_ _%g9836598406%_)))))
        (_%g9836398571%_ _%stx98361%_)))))
