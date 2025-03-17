(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g103091_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |[:0:]#defpred|
    (lambda (_%stx102718%_)
      (let* ((_%g102721102759%_
              (lambda (_%g102722102755%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102722102755%_)))
             (_%g102720102928%_
              (lambda (_%g102722102763%_)
                (if (gx#stx-pair? _%g102722102763%_)
                    (let ((_%e102727102766%_ (gx#syntax-e _%g102722102763%_)))
                      (let ((_%hd102728102770%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102727102766%_)))
                            (_%tl102729102773%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102727102766%_))))
                        (if (gx#stx-pair? _%tl102729102773%_)
                            (let ((_%e102730102776%_
                                   (gx#syntax-e _%tl102729102773%_)))
                              (let ((_%hd102731102780%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102730102776%_)))
                                    (_%tl102732102783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102730102776%_))))
                                (if (gx#stx-pair? _%hd102731102780%_)
                                    (let ((_%e102733102786%_
                                           (gx#syntax-e _%hd102731102780%_)))
                                      (let ((_%hd102734102790%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102733102786%_)))
                                            (_%tl102735102793%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102733102786%_))))
                                        (if (gx#stx-pair? _%tl102735102793%_)
                                            (let ((_%e102736102796%_
                                                   (gx#syntax-e
                                                    _%tl102735102793%_)))
                                              (let ((_%hd102737102800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102736102796%_)))
                                                    (_%tl102738102803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102736102796%_))))
                                                (if (gx#stx-null?
                                                     _%tl102738102803%_)
                                                    (if (gx#stx-pair?
                                                         _%tl102732102783%_)
                                                        (let ((_%e102739102806%_
                                                               (gx#syntax-e
                                                                _%tl102732102783%_)))
                                                          (let ((_%hd102740102810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e102739102806%_)))
                        (_%tl102741102813%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102739102806%_))))
                    (if (gx#identifier? _%hd102740102810%_)
                        (if (gx#free-identifier=?
                             |[1]#_g103091_|
                             _%hd102740102810%_)
                            (if (gx#stx-pair? _%tl102741102813%_)
                                (let ((_%e102742102816%_
                                       (gx#syntax-e _%tl102741102813%_)))
                                  (let ((_%hd102743102820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102742102816%_)))
                                        (_%tl102744102823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102742102816%_))))
                                    (if (gx#stx-pair/null? _%tl102744102823%_)
                                        (let ((_g103092_
                                               (gx#syntax-split-splice
                                                _%tl102744102823%_
                                                '0)))
                                          (begin
                                            (let ((_g103093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g103092_)
                                                         (##values-length
                                                          _g103092_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g103093_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g103093_)))
                                            (let ((_%target102745102826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103092_
                                                      0)))
                                                  (_%tl102747102829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g103092_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl102747102829%_)
                                                  (letrec ((_%loop102748102832%_
                                                            (lambda (_%hd102746102836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body102752102839%_)
                      (if (gx#stx-pair? _%hd102746102836%_)
                          (let ((_%e102749102842%_
                                 (gx#syntax-e _%hd102746102836%_)))
                            (let ((_%lp-hd102750102846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e102749102842%_)))
                                  (_%lp-tl102751102849%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e102749102842%_))))
                              (_%loop102748102832%_
                               _%lp-tl102751102849%_
                               (cons _%lp-hd102750102846%_
                                     _%body102752102839%_))))
                          (let ((_%body102753102852%_
                                 (reverse _%body102752102839%_)))
                            ((lambda (_%L102856%_
                                      _%L102858%_
                                      _%L102859%_
                                      _%L102860%_)
                               (let* ((_%g102889102897%_
                                       (lambda (_%g102890102893%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102890102893%_)))
                                      (_%g102888102924%_
                                       (lambda (_%g102890102901%_)
                                         ((lambda (_%L102904%_)
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L102860%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@predicate)
                                        (cons _%L102904%_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons _%L102859%_ '())
                                                    (let ((__tmp103094
                                                           (lambda (_%g102915102918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g102916102921%_)
                     (cons _%g102915102918%_ _%g102916102921%_))))
              (declare (not safe))
              (__foldr1 __tmp103094 '() _%L102856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102890102901%_))))
                                 (_%g102888102924%_
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx102718%_
                                     _%L102858%_)))))
                             _%body102753102852%_
                             _%hd102743102820%_
                             _%hd102737102800%_
                             _%hd102734102790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop102748102832%_
                                                     _%target102745102826%_
                                                     '()))
                                                  (_%g102721102759%_
                                                   _%g102722102763%_)))))
                                        (_%g102721102759%_
                                         _%g102722102763%_))))
                                (_%g102721102759%_ _%g102722102763%_))
                            (_%g102721102759%_ _%g102722102763%_))
                        (_%g102721102759%_ _%g102722102763%_))))
                (_%g102721102759%_ _%g102722102763%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102721102759%_
                                                     _%g102722102763%_))))
                                            (_%g102721102759%_
                                             _%g102722102763%_))))
                                    (_%g102721102759%_ _%g102722102763%_))))
                            (_%g102721102759%_ _%g102722102763%_))))
                    (_%g102721102759%_ _%g102722102763%_)))))
        (_%g102720102928%_ _%stx102718%_)))))
