(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g229318_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx228556%_)
        (let* ((_%g228560228571%_
                (lambda (_%g228561228567%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g228561228567%_)))
               (_%g228559228601%_
                (lambda (_%g228561228575%_)
                  (if (gx#stx-pair? _%g228561228575%_)
                      (let ((_%e228563228578%_
                             (gx#syntax-e _%g228561228575%_)))
                        (let ((_%hd228564228582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228563228578%_)))
                              (_%tl228565228585%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228563228578%_))))
                          ((lambda (_%g228562228588%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g228562228588%_)
                                               '()))))
                           _%tl228565228585%_)))
                      (_%g228560228571%_ _%g228561228575%_)))))
          (_%g228559228601%_ _%$stx228556%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx228605%_)
        (let* ((_%g228608228641%_
                (lambda (_%g228609228637%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g228609228637%_)))
               (_%g228607229043%_
                (lambda (_%g228609228645%_)
                  (if (gx#stx-pair? _%g228609228645%_)
                      (let ((_%e228612228648%_
                             (gx#syntax-e _%g228609228645%_)))
                        (let ((_%hd228613228652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228612228648%_)))
                              (_%tl228614228655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228612228648%_))))
                          (if (gx#stx-pair? _%tl228614228655%_)
                              (let ((_%e228615228658%_
                                     (gx#syntax-e _%tl228614228655%_)))
                                (let ((_%hd228616228662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228615228658%_)))
                                      (_%tl228617228665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228615228658%_))))
                                  (if (gx#stx-pair/null? _%hd228616228662%_)
                                      (let ((_g229312_
                                             (gx#syntax-split-splice
                                              _%hd228616228662%_
                                              '0)))
                                        (begin
                                          (let ((_g229313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229312_)
                                                       (##values-length
                                                        _g229312_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229313_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229313_)))
                                          (let ((_%target228618228668%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g229312_ 0)))
                                                (_%tl228620228671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g229312_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl228620228671%_)
                                                (letrec ((_%loop228621228674%_
                                                          (lambda (_%hd228619228678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause228625228681%_)
                    (if (gx#stx-pair? _%hd228619228678%_)
                        (let ((_%e228622228683%_
                               (gx#syntax-e _%hd228619228678%_)))
                          (let ((_%lp-hd228623228687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228622228683%_)))
                                (_%lp-tl228624228690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228622228683%_))))
                            (_%loop228621228674%_
                             _%lp-tl228624228690%_
                             (cons _%lp-hd228623228687%_
                                   _%clause228625228681%_))))
                        (let ((_%clause228626228693%_
                               (reverse _%clause228625228681%_)))
                          (if (gx#stx-pair/null? _%tl228617228665%_)
                              (let ((_g229314_
                                     (gx#syntax-split-splice
                                      _%tl228617228665%_
                                      '0)))
                                (begin
                                  (let ((_g229315_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g229314_)
                                               (##values-length _g229314_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g229315_ 2)))
                                        (error "Context expects 2 values"
                                               _g229315_)))
                                  (let ((_%target228627228696%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g229314_ 0)))
                                        (_%tl228629228699%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g229314_ 1))))
                                    (if (gx#stx-null? _%tl228629228699%_)
                                        (letrec ((_%loop228630228702%_
                                                  (lambda (_%hd228628228706%_
                                                           _%body228634228709%_)
                                                    (if (gx#stx-pair?
                                                         _%hd228628228706%_)
                                                        (let ((_%e228631228711%_
                                                               (gx#syntax-e
                                                                _%hd228628228706%_)))
                                                          (let ((_%lp-hd228632228715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e228631228711%_)))
                        (_%lp-tl228633228718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e228631228711%_))))
                    (_%loop228630228702%_
                     _%lp-tl228633228718%_
                     (cons _%lp-hd228632228715%_ _%body228634228709%_))))
                (let ((_%body228635228721%_ (reverse _%body228634228709%_)))
                  ((lambda (_%g228610228724%_ _%g228611228726%_)
                     (let* ((_%g228748228765%_
                             (lambda (_%g228749228761%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g228749228761%_)))
                            (_%g228747228832%_
                             (lambda (_%g228749228769%_)
                               (if (gx#stx-pair/null? _%g228749228769%_)
                                   (let ((_g229316_
                                          (gx#syntax-split-splice
                                           _%g228749228769%_
                                           '0)))
                                     (begin
                                       (let ((_g229317_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g229316_)
                                                    (##values-length _g229316_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g229317_ 2)))
                                             (error "Context expects 2 values"
                                                    _g229317_)))
                                       (let ((_%target228751228772%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g229316_ 0)))
                                             (_%tl228753228775%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g229316_ 1))))
                                         (if (gx#stx-null? _%tl228753228775%_)
                                             (letrec ((_%loop228754228778%_
                                                       (lambda (_%hd228752228782%_
                                                                _%clause228758228785%_)
                                                         (if (gx#stx-pair?
                                                              _%hd228752228782%_)
                                                             (let ((_%e228755228787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd228752228782%_)))
                       (let ((_%lp-hd228756228791%_
                              (let ()
                                (declare (not safe))
                                (##car _%e228755228787%_)))
                             (_%lp-tl228757228794%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e228755228787%_))))
                         (_%loop228754228778%_
                          _%lp-tl228757228794%_
                          (cons _%lp-hd228756228791%_
                                _%clause228758228785%_))))
                     (let ((_%clause228759228797%_
                            (reverse _%clause228758228785%_)))
                       ((lambda (_%g228750228800%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g228815228820%_
                                                      _%g228816228823%_)
                                               (cons _%g228815228820%_
                                                     _%g228816228823%_))
                                             '()
                                             _%g228750228800%_)
                                      (foldr (lambda (_%g228817228826%_
                                                      _%g228818228829%_)
                                               (cons _%g228817228826%_
                                                     _%g228818228829%_))
                                             '()
                                             _%g228610228724%_))))
                        _%clause228759228797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop228754228778%_
                                                _%target228751228772%_
                                                '()))
                                             (_%g228748228765%_
                                              _%g228749228769%_)))))
                                   (_%g228748228765%_ _%g228749228769%_)))))
                       (_%g228747228832%_
                        (map (lambda (_%clause228836%_)
                               (let* ((_%__stx229249229250%_ _%clause228836%_)
                                      (_%g228840228879%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx229249229250%_))))
                                 (let ((_%__kont229252229253%_
                                        (lambda (_%g228842229012%_
                                                 _%g228843229014%_)
                                          (cons _%g228843229014%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g228842229012%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont229254229255%_
                                        (lambda (_%g228856228934%_
                                                 _%g228857228936%_
                                                 _%g228858228937%_)
                                          (cons _%g228858228937%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g228857228936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g228956228959%_ _%g228957228962%_)
                                   (cons _%g228956228959%_ _%g228957228962%_))
                                 '()
                                 _%g228856228934%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match229310229311%_
                                           (lambda (_%e228859228886%_
                                                    _%hd228860228890%_
                                                    _%tl228861228893%_
                                                    _%e228862228896%_
                                                    _%hd228863228900%_
                                                    _%tl228864228903%_
                                                    _%__splice229256229257%_
                                                    _%target228865228906%_
                                                    _%tl228867228909%_)
                                             (letrec ((_%loop228868228912%_
                                                       (lambda (_%hd228866228916%_
                                                                _%components228872228919%_)
                                                         (if (gx#stx-pair?
                                                              _%hd228866228916%_)
                                                             (let ((_%e228869228921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd228866228916%_)))
                       (let ((_%lp-tl228871228928%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e228869228921%_)))
                             (_%lp-hd228870228925%_
                              (let ()
                                (declare (not safe))
                                (##car _%e228869228921%_))))
                         (_%loop228868228912%_
                          _%lp-tl228871228928%_
                          (cons _%lp-hd228870228925%_
                                _%components228872228919%_))))
                     (let ((_%components228873228931%_
                            (reverse _%components228872228919%_)))
                       (let ((_%g228856228934%_ _%components228873228931%_)
                             (_%g228857228936%_ _%hd228863228900%_)
                             (_%g228858228937%_ _%hd228860228890%_))
                         (if (gx#identifier? _%g228858228937%_)
                             (_%__kont229254229255%_
                              _%g228856228934%_
                              _%g228857228936%_
                              _%g228858228937%_)
                             (let ()
                               (declare (not safe))
                               (_%g228840228879%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop228868228912%_
                                                _%target228865228906%_
                                                '()))))
                                          (_%__match229290229291%_
                                           (lambda (_%e228844228972%_
                                                    _%hd228845228976%_
                                                    _%tl228846228979%_
                                                    _%e228847228982%_
                                                    _%hd228848228986%_
                                                    _%tl228849228989%_
                                                    _%e228850228992%_
                                                    _%hd228851228996%_
                                                    _%tl228852228999%_
                                                    _%e228853229002%_
                                                    _%hd228854229006%_
                                                    _%tl228855229009%_)
                                             (let ((_%g228842229012%_
                                                    _%hd228854229006%_)
                                                   (_%g228843229014%_
                                                    _%hd228845228976%_))
                                               (if (and (gx#identifier?
                                                         _%g228843229014%_)
                                                        (gx#identifier?
                                                         _%g228842229012%_))
                                                   (_%__kont229252229253%_
                                                    _%g228842229012%_
                                                    _%g228843229014%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl228849228989%_)
                                                       (let ((_%__splice229256229257%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl228849228989%_
                                                               '0)))
                                                         (let ((_%tl228867228909%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice229256229257%_ '1)))
                       (_%target228865228906%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice229256229257%_ '0))))
                   (if (gx#stx-null? _%tl228867228909%_)
                       (_%__match229310229311%_
                        _%e228844228972%_
                        _%hd228845228976%_
                        _%tl228846228979%_
                        _%e228847228982%_
                        _%hd228848228986%_
                        _%tl228849228989%_
                        _%__splice229256229257%_
                        _%target228865228906%_
                        _%tl228867228909%_)
                       (let () (declare (not safe)) (_%g228840228879%_)))))
               (let () (declare (not safe)) (_%g228840228879%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx229249229250%_)
                                         (let ((_%e228844228972%_
                                                (gx#syntax-e
                                                 _%__stx229249229250%_)))
                                           (let ((_%tl228846228979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e228844228972%_)))
                                                 (_%hd228845228976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e228844228972%_))))
                                             (if (gx#stx-pair?
                                                  _%tl228846228979%_)
                                                 (let ((_%e228847228982%_
                                                        (gx#syntax-e
                                                         _%tl228846228979%_)))
                                                   (let ((_%tl228849228989%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e228847228982%_)))
                                                         (_%hd228848228986%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e228847228982%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd228848228986%_)
                                                         (let ((_%e228850228992%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd228848228986%_)))
                   (let ((_%tl228852228999%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e228850228992%_)))
                         (_%hd228851228996%_
                          (let ()
                            (declare (not safe))
                            (##car _%e228850228992%_))))
                     (if (gx#identifier? _%hd228851228996%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g229318_|
                              _%hd228851228996%_)
                             (if (gx#stx-pair? _%tl228852228999%_)
                                 (let ((_%e228853229002%_
                                        (gx#syntax-e _%tl228852228999%_)))
                                   (let ((_%tl228855229009%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e228853229002%_)))
                                         (_%hd228854229006%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e228853229002%_))))
                                     (if (gx#stx-null? _%tl228855229009%_)
                                         (if (gx#stx-null? _%tl228849228989%_)
                                             (_%__match229290229291%_
                                              _%e228844228972%_
                                              _%hd228845228976%_
                                              _%tl228846228979%_
                                              _%e228847228982%_
                                              _%hd228848228986%_
                                              _%tl228849228989%_
                                              _%e228850228992%_
                                              _%hd228851228996%_
                                              _%tl228852228999%_
                                              _%e228853229002%_
                                              _%hd228854229006%_
                                              _%tl228855229009%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl228849228989%_)
                                                 (let ((_%__splice229256229257%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl228849228989%_
                                                         '0)))
                                                   (let ((_%tl228867228909%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice229256229257%_
                                                             '1)))
                                                         (_%target228865228906%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice229256229257%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl228867228909%_)
                                                         (_%__match229310229311%_
                                                          _%e228844228972%_
                                                          _%hd228845228976%_
                                                          _%tl228846228979%_
                                                          _%e228847228982%_
                                                          _%hd228848228986%_
                                                          _%tl228849228989%_
                                                          _%__splice229256229257%_
                                                          _%target228865228906%_
                                                          _%tl228867228909%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g228840228879%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g228840228879%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl228849228989%_)
                                             (let ((_%__splice229256229257%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl228849228989%_
                                                     '0)))
                                               (let ((_%tl228867228909%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice229256229257%_
                                                         '1)))
                                                     (_%target228865228906%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice229256229257%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl228867228909%_)
                                                     (_%__match229310229311%_
                                                      _%e228844228972%_
                                                      _%hd228845228976%_
                                                      _%tl228846228979%_
                                                      _%e228847228982%_
                                                      _%hd228848228986%_
                                                      _%tl228849228989%_
                                                      _%__splice229256229257%_
                                                      _%target228865228906%_
                                                      _%tl228867228909%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g228840228879%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g228840228879%_))))))
                                 (if (gx#stx-pair/null? _%tl228849228989%_)
                                     (let ((_%__splice229256229257%_
                                            (gx#syntax-split-splice->vector
                                             _%tl228849228989%_
                                             '0)))
                                       (let ((_%tl228867228909%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice229256229257%_
                                                 '1)))
                                             (_%target228865228906%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice229256229257%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl228867228909%_)
                                             (_%__match229310229311%_
                                              _%e228844228972%_
                                              _%hd228845228976%_
                                              _%tl228846228979%_
                                              _%e228847228982%_
                                              _%hd228848228986%_
                                              _%tl228849228989%_
                                              _%__splice229256229257%_
                                              _%target228865228906%_
                                              _%tl228867228909%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g228840228879%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g228840228879%_))))
                             (if (gx#stx-pair/null? _%tl228849228989%_)
                                 (let ((_%__splice229256229257%_
                                        (gx#syntax-split-splice->vector
                                         _%tl228849228989%_
                                         '0)))
                                   (let ((_%tl228867228909%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice229256229257%_
                                             '1)))
                                         (_%target228865228906%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice229256229257%_
                                             '0))))
                                     (if (gx#stx-null? _%tl228867228909%_)
                                         (_%__match229310229311%_
                                          _%e228844228972%_
                                          _%hd228845228976%_
                                          _%tl228846228979%_
                                          _%e228847228982%_
                                          _%hd228848228986%_
                                          _%tl228849228989%_
                                          _%__splice229256229257%_
                                          _%target228865228906%_
                                          _%tl228867228909%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g228840228879%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g228840228879%_))))
                         (if (gx#stx-pair/null? _%tl228849228989%_)
                             (let ((_%__splice229256229257%_
                                    (gx#syntax-split-splice->vector
                                     _%tl228849228989%_
                                     '0)))
                               (let ((_%tl228867228909%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice229256229257%_
                                         '1)))
                                     (_%target228865228906%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice229256229257%_
                                         '0))))
                                 (if (gx#stx-null? _%tl228867228909%_)
                                     (_%__match229310229311%_
                                      _%e228844228972%_
                                      _%hd228845228976%_
                                      _%tl228846228979%_
                                      _%e228847228982%_
                                      _%hd228848228986%_
                                      _%tl228849228989%_
                                      _%__splice229256229257%_
                                      _%target228865228906%_
                                      _%tl228867228909%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g228840228879%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g228840228879%_))))))
                 (if (gx#stx-pair/null? _%tl228849228989%_)
                     (let ((_%__splice229256229257%_
                            (gx#syntax-split-splice->vector
                             _%tl228849228989%_
                             '0)))
                       (let ((_%tl228867228909%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice229256229257%_ '1)))
                             (_%target228865228906%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice229256229257%_ '0))))
                         (if (gx#stx-null? _%tl228867228909%_)
                             (_%__match229310229311%_
                              _%e228844228972%_
                              _%hd228845228976%_
                              _%tl228846228979%_
                              _%e228847228982%_
                              _%hd228848228986%_
                              _%tl228849228989%_
                              _%__splice229256229257%_
                              _%target228865228906%_
                              _%tl228867228909%_)
                             (let ()
                               (declare (not safe))
                               (_%g228840228879%_)))))
                     (let () (declare (not safe)) (_%g228840228879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g228840228879%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g228840228879%_)))))))
                             (foldr (lambda (_%g229034229037%_
                                             _%g229035229040%_)
                                      (cons _%g229034229037%_
                                            _%g229035229040%_))
                                    '()
                                    _%g228611228726%_)))))
                   _%body228635228721%_
                   _%clause228626228693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop228630228702%_
                                           _%target228627228696%_
                                           '()))
                                        (_%g228608228641%_
                                         _%g228609228645%_)))))
                              (_%g228608228641%_ _%g228609228645%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop228621228674%_
                                                   _%target228618228668%_
                                                   '()))
                                                (_%g228608228641%_
                                                 _%g228609228645%_)))))
                                      (_%g228608228641%_ _%g228609228645%_))))
                              (_%g228608228641%_ _%g228609228645%_))))
                      (_%g228608228641%_ _%g228609228645%_)))))
          (_%g228607229043%_ _%stx228605%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx229051%_)
        (let* ((_%g229055229092%_
                (lambda (_%g229056229088%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g229056229088%_)))
               (_%g229054229229%_
                (lambda (_%g229056229096%_)
                  (if (gx#stx-pair? _%g229056229096%_)
                      (let ((_%e229060229099%_
                             (gx#syntax-e _%g229056229096%_)))
                        (let ((_%hd229061229103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229060229099%_)))
                              (_%tl229062229106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229060229099%_))))
                          (if (gx#stx-pair? _%tl229062229106%_)
                              (let ((_%e229063229109%_
                                     (gx#syntax-e _%tl229062229106%_)))
                                (let ((_%hd229064229113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229063229109%_)))
                                      (_%tl229065229116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229063229109%_))))
                                  (if (gx#stx-pair? _%hd229064229113%_)
                                      (let ((_%e229066229119%_
                                             (gx#syntax-e _%hd229064229113%_)))
                                        (let ((_%hd229067229123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229066229119%_)))
                                              (_%tl229068229126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229066229119%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl229068229126%_)
                                              (let ((_g229319_
                                                     (gx#syntax-split-splice
                                                      _%tl229068229126%_
                                                      '0)))
                                                (begin
                                                  (let ((_g229320_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g229319_)
                                                               (##values-length
                                                                _g229319_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g229320_ 2)))
                (error "Context expects 2 values" _g229320_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target229069229129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g229319_
                                                            0)))
                                                        (_%tl229071229132%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g229319_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl229071229132%_)
                                                        (letrec ((_%loop229072229135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd229070229139%_
                                   _%components229076229142%_)
                            (if (gx#stx-pair? _%hd229070229139%_)
                                (let ((_%e229073229144%_
                                       (gx#syntax-e _%hd229070229139%_)))
                                  (let ((_%lp-hd229074229148%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229073229144%_)))
                                        (_%lp-tl229075229151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229073229144%_))))
                                    (_%loop229072229135%_
                                     _%lp-tl229075229151%_
                                     (cons _%lp-hd229074229148%_
                                           _%components229076229142%_))))
                                (let ((_%components229077229154%_
                                       (reverse _%components229076229142%_)))
                                  (if (gx#stx-pair/null? _%tl229065229116%_)
                                      (let ((_g229321_
                                             (gx#syntax-split-splice
                                              _%tl229065229116%_
                                              '0)))
                                        (begin
                                          (let ((_g229322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g229321_)
                                                       (##values-length
                                                        _g229321_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g229322_ 2)))
                                                (error "Context expects 2 values"
                                                       _g229322_)))
                                          (let ((_%target229078229157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g229321_ 0)))
                                                (_%tl229080229160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g229321_
                                                    1))))
                                            (if (gx#stx-null?
                                                 _%tl229080229160%_)
                                                (letrec ((_%loop229081229163%_
                                                          (lambda (_%hd229079229167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body229085229170%_)
                    (if (gx#stx-pair? _%hd229079229167%_)
                        (let ((_%e229082229172%_
                               (gx#syntax-e _%hd229079229167%_)))
                          (let ((_%lp-hd229083229176%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229082229172%_)))
                                (_%lp-tl229084229179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229082229172%_))))
                            (_%loop229081229163%_
                             _%lp-tl229084229179%_
                             (cons _%lp-hd229083229176%_
                                   _%body229085229170%_))))
                        (let ((_%body229086229182%_
                               (reverse _%body229085229170%_)))
                          ((lambda (_%g229057229185%_
                                    _%g229058229187%_
                                    _%g229059229188%_)
                             (if (gx#identifier? _%g229059229188%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g229059229188%_
                                                         (foldr (lambda (_%g229212229217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g229213229220%_)
                          (cons _%g229212229217%_ _%g229213229220%_))
                        '()
                        _%g229058229187%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g229214229223%_
                                                             _%g229215229226%_)
                                                      (cons _%g229214229223%_
                                                            _%g229215229226%_))
                                                    '()
                                                    _%g229057229185%_)))
                                 (_%g229055229092%_ _%g229056229096%_)))
                           _%body229086229182%_
                           _%components229077229154%_
                           _%hd229067229123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop229081229163%_
                                                   _%target229078229157%_
                                                   '()))
                                                (_%g229055229092%_
                                                 _%g229056229096%_)))))
                                      (_%g229055229092%_
                                       _%g229056229096%_)))))))
                  (_%loop229072229135%_ _%target229069229129%_ '()))
                (_%g229055229092%_ _%g229056229096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g229055229092%_
                                               _%g229056229096%_))))
                                      (_%g229055229092%_ _%g229056229096%_))))
                              (_%g229055229092%_ _%g229056229096%_))))
                      (_%g229055229092%_ _%g229056229096%_)))))
          (_%g229054229229%_ _%$stx229051%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx229235%_)
        (let ((_%g229238229245%_
               (lambda (_%g229239229241%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g229239229241%_))))
          (_%g229238229245%_ _%$stx229235%_))))))
