(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g139962_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx139445%_)
        (let* ((_%g139448139486%_
                (lambda (_%g139449139482%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g139449139482%_)))
               (_%g139447139653%_
                (lambda (_%g139449139490%_)
                  (if (gx#stx-pair? _%g139449139490%_)
                      (let ((_%e139454139493%_
                             (gx#syntax-e _%g139449139490%_)))
                        (let ((_%hd139455139497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139454139493%_)))
                              (_%tl139456139500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139454139493%_))))
                          (if (gx#stx-pair? _%tl139456139500%_)
                              (let ((_%e139457139503%_
                                     (gx#syntax-e _%tl139456139500%_)))
                                (let ((_%hd139458139507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139457139503%_)))
                                      (_%tl139459139510%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139457139503%_))))
                                  (if (gx#stx-pair? _%hd139458139507%_)
                                      (let ((_%e139460139513%_
                                             (gx#syntax-e _%hd139458139507%_)))
                                        (let ((_%hd139461139517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139460139513%_)))
                                              (_%tl139462139520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139460139513%_))))
                                          (if (gx#stx-pair? _%tl139462139520%_)
                                              (let ((_%e139463139523%_
                                                     (gx#syntax-e
                                                      _%tl139462139520%_)))
                                                (let ((_%hd139464139527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139463139523%_)))
                                                      (_%tl139465139530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139463139523%_))))
                                                  (if (gx#stx-null?
                                                       _%tl139465139530%_)
                                                      (if (gx#stx-pair?
                                                           _%tl139459139510%_)
                                                          (let ((_%e139466139533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl139459139510%_)))
                    (let ((_%hd139467139537%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139466139533%_)))
                          (_%tl139468139540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139466139533%_))))
                      (if (gx#identifier? _%hd139467139537%_)
                          (if (gx#free-identifier=?
                               |[1]#_g139962_|
                               _%hd139467139537%_)
                              (if (gx#stx-pair? _%tl139468139540%_)
                                  (let ((_%e139469139543%_
                                         (gx#syntax-e _%tl139468139540%_)))
                                    (let ((_%hd139470139547%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139469139543%_)))
                                          (_%tl139471139550%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139469139543%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl139471139550%_)
                                          (let ((_g139963_
                                                 (gx#syntax-split-splice
                                                  _%tl139471139550%_
                                                  '0)))
                                            (begin
                                              (let ((_g139964_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g139963_)
                                                           (##values-length
                                                            _g139963_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g139964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g139964_)))
                                              (let ((_%target139472139553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g139963_
                                                        0)))
                                                    (_%tl139474139556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g139963_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl139474139556%_)
                                                    (letrec ((_%loop139475139559%_
                                                              (lambda (_%hd139473139563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body139479139566%_)
                        (if (gx#stx-pair? _%hd139473139563%_)
                            (let ((_%e139476139568%_
                                   (gx#syntax-e _%hd139473139563%_)))
                              (let ((_%lp-hd139477139572%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139476139568%_)))
                                    (_%lp-tl139478139575%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139476139568%_))))
                                (_%loop139475139559%_
                                 _%lp-tl139478139575%_
                                 (cons _%lp-hd139477139572%_
                                       _%body139479139566%_))))
                            (let ((_%body139480139578%_
                                   (reverse _%body139479139566%_)))
                              ((lambda (_%g139450139581%_
                                        _%g139451139583%_
                                        _%g139452139584%_
                                        _%g139453139585%_)
                                 (let* ((_%g139614139622%_
                                         (lambda (_%g139615139618%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g139615139618%_)))
                                        (_%g139613139649%_
                                         (lambda (_%g139615139626%_)
                                           ((lambda (_%g139616139629%_)
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%g139453139585%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%g139616139629%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g139452139584%_
                                                            '())
                                                      (let ((__tmp139965
                                                             (lambda (_%g139640139643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139641139646%_)
                       (cons _%g139640139643%_ _%g139641139646%_))))
                (declare (not safe))
                (foldr__0 __tmp139965 '() _%g139450139581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g139615139626%_))))
                                   (_%g139613139649%_
                                    (let ()
                                      (declare (not safe))
                                      (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                       _%stx139445%_
                                       _%g139451139583%_)))))
                               _%body139480139578%_
                               _%hd139470139547%_
                               _%hd139464139527%_
                               _%hd139461139517%_))))))
              (_%loop139475139559%_ _%target139472139553%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g139448139486%_
                                                     _%g139449139490%_)))))
                                          (_%g139448139486%_
                                           _%g139449139490%_))))
                                  (_%g139448139486%_ _%g139449139490%_))
                              (_%g139448139486%_ _%g139449139490%_))
                          (_%g139448139486%_ _%g139449139490%_))))
                  (_%g139448139486%_ _%g139449139490%_))
              (_%g139448139486%_ _%g139449139490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139448139486%_
                                               _%g139449139490%_))))
                                      (_%g139448139486%_ _%g139449139490%_))))
                              (_%g139448139486%_ _%g139449139490%_))))
                      (_%g139448139486%_ _%g139449139490%_)))))
          (_%g139447139653%_ _%stx139445%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx139658%_)
        (let* ((_%g139662139682%_
                (lambda (_%g139663139678%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g139663139678%_)))
               (_%g139661139751%_
                (lambda (_%g139663139686%_)
                  (if (gx#stx-pair? _%g139663139686%_)
                      (let ((_%e139665139689%_
                             (gx#syntax-e _%g139663139686%_)))
                        (let ((_%hd139666139693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139665139689%_)))
                              (_%tl139667139696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139665139689%_))))
                          (if (gx#stx-pair/null? _%tl139667139696%_)
                              (let ((_g139966_
                                     (gx#syntax-split-splice
                                      _%tl139667139696%_
                                      '0)))
                                (begin
                                  (let ((_g139967_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g139966_)
                                               (##values-length _g139966_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g139967_ 2)))
                                        (error "Context expects 2 values"
                                               _g139967_)))
                                  (let ((_%target139668139699%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139966_ 0)))
                                        (_%tl139670139702%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g139966_ 1))))
                                    (if (gx#stx-null? _%tl139670139702%_)
                                        (letrec ((_%loop139671139705%_
                                                  (lambda (_%hd139669139709%_
                                                           _%t139675139712%_)
                                                    (if (gx#stx-pair?
                                                         _%hd139669139709%_)
                                                        (let ((_%e139672139714%_
                                                               (gx#syntax-e
                                                                _%hd139669139709%_)))
                                                          (let ((_%lp-hd139673139718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e139672139714%_)))
                        (_%lp-tl139674139721%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139672139714%_))))
                    (_%loop139671139705%_
                     _%lp-tl139674139721%_
                     (cons _%lp-hd139673139718%_ _%t139675139712%_))))
                (let ((_%t139676139724%_ (reverse _%t139675139712%_)))
                  ((lambda (_%g139664139727%_)
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'vec)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-vector)
                                                   (cons '32 (cons '#f '())))
                                             '()))
                                 (let ((__tmp139969
                                        (lambda (_%g139742139745%_
                                                 _%g139743139748%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'vec)
                                                            (cons _%g139742139745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g139743139748%_)))
                                       (__tmp139968
                                        (cons (gx#datum->syntax '#f 'vec)
                                              '())))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp139969
                                    __tmp139968
                                    _%g139664139727%_)))))
                   _%t139676139724%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop139671139705%_
                                           _%target139668139699%_
                                           '()))
                                        (_%g139662139682%_
                                         _%g139663139686%_)))))
                              (_%g139662139682%_ _%g139663139686%_))))
                      (_%g139662139682%_ _%g139663139686%_)))))
          (_%g139661139751%_ _%$stx139658%_))))))
