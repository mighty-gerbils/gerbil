(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g138845_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx138417%_)
      (let* ((_%g138420138458%_
              (lambda (_%g138421138454%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g138421138454%_)))
             (_%g138419138625%_
              (lambda (_%g138421138462%_)
                (if (gx#stx-pair? _%g138421138462%_)
                    (let ((_%e138426138465%_ (gx#syntax-e _%g138421138462%_)))
                      (let ((_%hd138427138469%_
                             (let ()
                               (declare (not safe))
                               (##car _%e138426138465%_)))
                            (_%tl138428138472%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e138426138465%_))))
                        (if (gx#stx-pair? _%tl138428138472%_)
                            (let ((_%e138429138475%_
                                   (gx#syntax-e _%tl138428138472%_)))
                              (let ((_%hd138430138479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e138429138475%_)))
                                    (_%tl138431138482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e138429138475%_))))
                                (if (gx#stx-pair? _%hd138430138479%_)
                                    (let ((_%e138432138485%_
                                           (gx#syntax-e _%hd138430138479%_)))
                                      (let ((_%hd138433138489%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e138432138485%_)))
                                            (_%tl138434138492%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e138432138485%_))))
                                        (if (gx#stx-pair? _%tl138434138492%_)
                                            (let ((_%e138435138495%_
                                                   (gx#syntax-e
                                                    _%tl138434138492%_)))
                                              (let ((_%hd138436138499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e138435138495%_)))
                                                    (_%tl138437138502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e138435138495%_))))
                                                (if (gx#stx-null?
                                                     _%tl138437138502%_)
                                                    (if (gx#stx-pair?
                                                         _%tl138431138482%_)
                                                        (let ((_%e138438138505%_
                                                               (gx#syntax-e
                                                                _%tl138431138482%_)))
                                                          (let ((_%hd138439138509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e138438138505%_)))
                        (_%tl138440138512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138438138505%_))))
                    (if (gx#identifier? _%hd138439138509%_)
                        (if (gx#free-identifier=?
                             |[1]#_g138845_|
                             _%hd138439138509%_)
                            (if (gx#stx-pair? _%tl138440138512%_)
                                (let ((_%e138441138515%_
                                       (gx#syntax-e _%tl138440138512%_)))
                                  (let ((_%hd138442138519%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138441138515%_)))
                                        (_%tl138443138522%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138441138515%_))))
                                    (if (gx#stx-pair/null? _%tl138443138522%_)
                                        (let ((_g138846_
                                               (gx#syntax-split-splice
                                                _%tl138443138522%_
                                                '0)))
                                          (begin
                                            (let ((_g138847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g138846_)
                                                         (##values-length
                                                          _g138846_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g138847_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g138847_)))
                                            (let ((_%target138444138525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g138846_
                                                      0)))
                                                  (_%tl138446138528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g138846_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl138446138528%_)
                                                  (letrec ((_%loop138447138531%_
                                                            (lambda (_%hd138445138535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body138451138538%_)
                      (if (gx#stx-pair? _%hd138445138535%_)
                          (let ((_%e138448138540%_
                                 (gx#syntax-e _%hd138445138535%_)))
                            (let ((_%lp-hd138449138544%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138448138540%_)))
                                  (_%lp-tl138450138547%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138448138540%_))))
                              (_%loop138447138531%_
                               _%lp-tl138450138547%_
                               (cons _%lp-hd138449138544%_
                                     _%body138451138538%_))))
                          (let ((_%body138452138550%_
                                 (reverse _%body138451138538%_)))
                            ((lambda (_%g138422138553%_
                                      _%g138423138555%_
                                      _%g138424138556%_
                                      _%g138425138557%_)
                               (let* ((_%g138586138594%_
                                       (lambda (_%g138587138590%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138587138590%_)))
                                      (_%g138585138621%_
                                       (lambda (_%g138587138598%_)
                                         ((lambda (_%g138588138601%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%g138425138557%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%g138588138601%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%g138424138556%_
                                                          '())
                                                    (let ((__tmp138848
                                                           (lambda (_%g138612138615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138613138618%_)
                     (cons _%g138612138615%_ _%g138613138618%_))))
              (declare (not safe))
              (foldr__0 __tmp138848 '() _%g138422138553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g138587138598%_))))
                                 (_%g138585138621%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx138417%_
                                     _%g138423138555%_)))))
                             _%body138452138550%_
                             _%hd138442138519%_
                             _%hd138436138499%_
                             _%hd138433138489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138447138531%_
                                                     _%target138444138525%_
                                                     '()))
                                                  (_%g138420138458%_
                                                   _%g138421138462%_)))))
                                        (_%g138420138458%_
                                         _%g138421138462%_))))
                                (_%g138420138458%_ _%g138421138462%_))
                            (_%g138420138458%_ _%g138421138462%_))
                        (_%g138420138458%_ _%g138421138462%_))))
                (_%g138420138458%_ _%g138421138462%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g138420138458%_
                                                     _%g138421138462%_))))
                                            (_%g138420138458%_
                                             _%g138421138462%_))))
                                    (_%g138420138458%_ _%g138421138462%_))))
                            (_%g138420138458%_ _%g138421138462%_))))
                    (_%g138420138458%_ _%g138421138462%_)))))
        (_%g138419138625%_ _%stx138417%_)))))
