(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g98807_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx98427%_)
      (let* ((_%g9843098468%_
              (lambda (_%g9843198464%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9843198464%_)))
             (_%g9842998637%_
              (lambda (_%g9843198472%_)
                (if (gx#stx-pair? _%g9843198472%_)
                    (let ((_%e9843898475%_ (gx#syntax-e _%g9843198472%_)))
                      (let ((_%hd9843798479%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9843898475%_)))
                            (_%tl9843698482%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9843898475%_))))
                        (if (gx#stx-pair? _%tl9843698482%_)
                            (let ((_%e9844198485%_
                                   (gx#syntax-e _%tl9843698482%_)))
                              (let ((_%hd9844098489%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9844198485%_)))
                                    (_%tl9843998492%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9844198485%_))))
                                (if (gx#stx-pair? _%hd9844098489%_)
                                    (let ((_%e9844498495%_
                                           (gx#syntax-e _%hd9844098489%_)))
                                      (let ((_%hd9844398499%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9844498495%_)))
                                            (_%tl9844298502%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9844498495%_))))
                                        (if (gx#stx-pair? _%tl9844298502%_)
                                            (let ((_%e9844798505%_
                                                   (gx#syntax-e
                                                    _%tl9844298502%_)))
                                              (let ((_%hd9844698509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9844798505%_)))
                                                    (_%tl9844598512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9844798505%_))))
                                                (if (gx#stx-null?
                                                     _%tl9844598512%_)
                                                    (if (gx#stx-pair?
                                                         _%tl9843998492%_)
                                                        (let ((_%e9845098515%_
                                                               (gx#syntax-e
                                                                _%tl9843998492%_)))
                                                          (let ((_%hd9844998519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e9845098515%_)))
                        (_%tl9844898522%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e9845098515%_))))
                    (if (gx#identifier? _%hd9844998519%_)
                        (if (gx#free-identifier=?
                             |[1]#_g98807_|
                             _%hd9844998519%_)
                            (if (gx#stx-pair? _%tl9844898522%_)
                                (let ((_%e9845398525%_
                                       (gx#syntax-e _%tl9844898522%_)))
                                  (let ((_%hd9845298529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9845398525%_)))
                                        (_%tl9845198532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9845398525%_))))
                                    (if (gx#stx-pair/null? _%tl9845198532%_)
                                        (let ((_g98808_
                                               (gx#syntax-split-splice
                                                _%tl9845198532%_
                                                '0)))
                                          (begin
                                            (let ((_g98809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g98808_)
                                                         (##vector-length
                                                          _g98808_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g98809_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g98809_)))
                                            (let ((_%target9845498535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98808_
                                                      0)))
                                                  (_%tl9845698538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g98808_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl9845698538%_)
                                                  (letrec ((_%loop9845798541%_
                                                            (lambda (_%hd9845598545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body9846198548%_)
                      (if (gx#stx-pair? _%hd9845598545%_)
                          (let ((_%e9845898551%_
                                 (gx#syntax-e _%hd9845598545%_)))
                            (let ((_%lp-hd9845998555%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e9845898551%_)))
                                  (_%lp-tl9846098558%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e9845898551%_))))
                              (_%loop9845798541%_
                               _%lp-tl9846098558%_
                               (cons _%lp-hd9845998555%_ _%body9846198548%_))))
                          (let ((_%body9846298561%_
                                 (reverse _%body9846198548%_)))
                            ((lambda (_%L98565%_
                                      _%L98567%_
                                      _%L98568%_
                                      _%L98569%_)
                               (let* ((_%g9859898606%_
                                       (lambda (_%g9859998602%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9859998602%_)))
                                      (_%g9859798633%_
                                       (lambda (_%g9859998610%_)
                                         ((lambda (_%L98613%_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L98569%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%L98613%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%L98568%_ '())
                                                      (let ((__tmp98810
                                                             (lambda (_%g9862498627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g9862598630%_)
                       (cons _%g9862498627%_ _%g9862598630%_))))
                (declare (not safe))
                (__foldr1 __tmp98810 '() _%L98565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9859998610%_))))
                                 (_%g9859798633%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx98427%_
                                     _%L98567%_)))))
                             _%body9846298561%_
                             _%hd9845298529%_
                             _%hd9844698509%_
                             _%hd9844398499%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop9845798541%_
                                                     _%target9845498535%_
                                                     '()))
                                                  (_%g9843098468%_
                                                   _%g9843198472%_)))))
                                        (_%g9843098468%_ _%g9843198472%_))))
                                (_%g9843098468%_ _%g9843198472%_))
                            (_%g9843098468%_ _%g9843198472%_))
                        (_%g9843098468%_ _%g9843198472%_))))
                (_%g9843098468%_ _%g9843198472%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9843098468%_
                                                     _%g9843198472%_))))
                                            (_%g9843098468%_
                                             _%g9843198472%_))))
                                    (_%g9843098468%_ _%g9843198472%_))))
                            (_%g9843098468%_ _%g9843198472%_))))
                    (_%g9843098468%_ _%g9843198472%_)))))
        (_%g9842998637%_ _%stx98427%_)))))
