(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98797_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx98424%_)
      (let* ((_%g9842798465%_
              (lambda (_%g9842898461%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9842898461%_)))
             (_%g9842698634%_
              (lambda (_%g9842898469%_)
                (if (gx#stx-pair? _%g9842898469%_)
                    (let ((_%e9843398472%_ (gx#syntax-e _%g9842898469%_)))
                      (let ((_%hd9843498476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9843398472%_)))
                            (_%tl9843598479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9843398472%_))))
                        (if (gx#stx-pair? _%tl9843598479%_)
                            (let ((_%e9843698482%_
                                   (gx#syntax-e _%tl9843598479%_)))
                              (let ((_%hd9843798486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9843698482%_)))
                                    (_%tl9843898489%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9843698482%_))))
                                (if (gx#stx-pair? _%hd9843798486%_)
                                    (let ((_%e9843998492%_
                                           (gx#syntax-e _%hd9843798486%_)))
                                      (let ((_%hd9844098496%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9843998492%_)))
                                            (_%tl9844198499%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9843998492%_))))
                                        (if (gx#stx-pair? _%tl9844198499%_)
                                            (let ((_%e9844298502%_
                                                   (gx#syntax-e
                                                    _%tl9844198499%_)))
                                              (let ((_%hd9844398506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9844298502%_)))
                                                    (_%tl9844498509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9844298502%_))))
                                                (if (gx#stx-null?
                                                     _%tl9844498509%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9843898489%_)
                                                        (let ((_%e9844598512%_
                                                               (gx#syntax-e
                                                                _%tl9843898489%_)))
                                                          (let ((_%hd9844698516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9844598512%_)))
                        (_%tl9844798519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9844598512%_))))
                    (if (gx#identifier? _%hd9844698516%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98797_|
                             _%hd9844698516%_)
                            (if (gx#stx-pair? _%tl9844798519%_)
                                (let ((_%e9844898522%_
                                       (gx#syntax-e _%tl9844798519%_)))
                                  (let ((_%hd9844998526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9844898522%_)))
                                        (_%tl9845098529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9844898522%_))))
                                    (if (gx#stx-pair/null? _%tl9845098529%_)
                                        (let ((_g98798_
                                               (gx#syntax-split-splice
                                                _%tl9845098529%_
                                                '0)))
                                          (begin
                                            (let ((_g98799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98798_)
                                                         (##vector-length
                                                          _g98798_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98799_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98799_)))
                                            (let ((_%target9845198532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98798_
                                                      0)))
                                                  (_%tl9845398535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98798_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9845398535%_)
                                                  (letrec ((_%loop9845498538%_
                                                            (lambda (_%hd9845298542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9845898545%_)
                      (if (gx#stx-pair? _%hd9845298542%_)
                          (let ((_%e9845598548%_
                                 (gx#syntax-e _%hd9845298542%_)))
                            (let ((_%lp-hd9845698552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9845598548%_)))
                                  (_%lp-tl9845798555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9845598548%_))))
                              (_%loop9845498538%_
                               _%lp-tl9845798555%_
                               (cons _%lp-hd9845698552%_ _%body9845898545%_))))
                          (let ((_%body9845998558%_
                                 (reverse _%body9845898545%_)))
                            ((lambda (_%L98562%_
                                      _%L98564%_
                                      _%L98565%_
                                      _%L98566%_)
                               (let* ((_%g9859598603%_
                                       (lambda (_%g9859698599%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9859698599%_)))
                                      (_%g9859498630%_
                                       (lambda (_%g9859698607%_)
                                         ((lambda (_%L98610%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L98566%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L98610%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L98565%_ '())
                                                    (let ((__tmp98800
                                                           (lambda (_%g9862198624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g9862298627%_)
                     (cons _%g9862198624%_ _%g9862298627%_))))
              (declare (not safe))
              (__foldr1 __tmp98800 '() _%L98562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9859698607%_))))
                                 (_%g9859498630%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx98424%_
                                     _%L98564%_)))))
                             _%body9845998558%_
                             _%hd9844998526%_
                             _%hd9844398506%_
                             _%hd9844098496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9845498538%_
                                                     _%target9845198532%_
                                                     '()))
                                                  (_%g9842798465%_
                                                   _%g9842898469%_)))))
                                        (_%g9842798465%_ _%g9842898469%_))))
                                (_%g9842798465%_ _%g9842898469%_))
                            (_%g9842798465%_ _%g9842898469%_))
                        (_%g9842798465%_ _%g9842898469%_))))
                (_%g9842798465%_ _%g9842898469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9842798465%_
                                                     _%g9842898469%_))))
                                            (_%g9842798465%_
                                             _%g9842898469%_))))
                                    (_%g9842798465%_ _%g9842898469%_))))
                            (_%g9842798465%_ _%g9842898469%_))))
                    (_%g9842798465%_ _%g9842898469%_)))))
        (_%g9842698634%_ _%stx98424%_)))))
