(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx105168%_)
      (let* ((_%__stx112100112101%_ _%$stx105168%_)
             (_%g105173105202%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112100112101%_))))
        (let ((_%__kont112103112104%_
               (lambda (_%g105175105295%_ _%g105176105297%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%g105176105297%_
                                         (cons _%g105175105295%_ '())))
                             (cons _%g105175105295%_ '())))))
              (_%__kont112105112106%_
               (lambda (_%g105186105239%_ _%g105187105241%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%g105186105239%_
                                   (cons _%g105186105239%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%g105187105241%_
                                                           (cons _%g105186105239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g105186105239%_ '())))
                                   '()))))))
          (let ((_%__match112127112128%_
                 (lambda (_%e105177105265%_
                          _%hd105178105269%_
                          _%tl105179105272%_
                          _%e105180105275%_
                          _%hd105181105279%_
                          _%tl105182105282%_
                          _%e105183105285%_
                          _%hd105184105289%_
                          _%tl105185105292%_)
                   (let ((_%g105175105295%_ _%hd105184105289%_)
                         (_%g105176105297%_ _%hd105181105279%_))
                     (if (or (gx#identifier? _%g105175105295%_)
                             (gx#stx-fixnum? _%g105175105295%_))
                         (_%__kont112103112104%_
                          _%g105175105295%_
                          _%g105176105297%_)
                         (_%__kont112105112106%_
                          _%hd105184105289%_
                          _%hd105181105279%_))))))
            (if (gx#stx-pair? _%__stx112100112101%_)
                (let ((_%e105177105265%_ (gx#syntax-e _%__stx112100112101%_)))
                  (let ((_%tl105179105272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e105177105265%_)))
                        (_%hd105178105269%_
                         (let ()
                           (declare (not safe))
                           (##car _%e105177105265%_))))
                    (if (gx#stx-pair? _%tl105179105272%_)
                        (let ((_%e105180105275%_
                               (gx#syntax-e _%tl105179105272%_)))
                          (let ((_%tl105182105282%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e105180105275%_)))
                                (_%hd105181105279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e105180105275%_))))
                            (if (gx#stx-pair? _%tl105182105282%_)
                                (let ((_%e105183105285%_
                                       (gx#syntax-e _%tl105182105282%_)))
                                  (let ((_%tl105185105292%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e105183105285%_)))
                                        (_%hd105184105289%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e105183105285%_))))
                                    (if (gx#stx-null? _%tl105185105292%_)
                                        (_%__match112127112128%_
                                         _%e105177105265%_
                                         _%hd105178105269%_
                                         _%tl105179105272%_
                                         _%e105180105275%_
                                         _%hd105181105279%_
                                         _%tl105182105282%_
                                         _%e105183105285%_
                                         _%hd105184105289%_
                                         _%tl105185105292%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g105173105202%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g105173105202%_)))))
                        (let () (declare (not safe)) (_%g105173105202%_)))))
                (let () (declare (not safe)) (_%g105173105202%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx105320%_)
      (let* ((_%__stx112150112151%_ _%$stx105320%_)
             (_%g105325105354%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112150112151%_))))
        (let ((_%__kont112153112154%_
               (lambda (_%g105327105446%_ _%g105328105448%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%g105328105448%_
                                         (cons _%g105327105446%_ '())))
                             (cons '0 '())))))
              (_%__kont112155112156%_
               (lambda (_%g105338105391%_ _%g105339105393%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%g105338105391%_
                                   (cons _%g105338105391%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%g105339105393%_
                                                           (cons _%g105338105391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match112177112178%_
                 (lambda (_%e105329105416%_
                          _%hd105330105420%_
                          _%tl105331105423%_
                          _%e105332105426%_
                          _%hd105333105430%_
                          _%tl105334105433%_
                          _%e105335105436%_
                          _%hd105336105440%_
                          _%tl105337105443%_)
                   (let ((_%g105327105446%_ _%hd105336105440%_)
                         (_%g105328105448%_ _%hd105333105430%_))
                     (if (or (gx#identifier? _%g105327105446%_)
                             (gx#stx-fixnum? _%g105327105446%_))
                         (_%__kont112153112154%_
                          _%g105327105446%_
                          _%g105328105448%_)
                         (_%__kont112155112156%_
                          _%hd105336105440%_
                          _%hd105333105430%_))))))
            (if (gx#stx-pair? _%__stx112150112151%_)
                (let ((_%e105329105416%_ (gx#syntax-e _%__stx112150112151%_)))
                  (let ((_%tl105331105423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e105329105416%_)))
                        (_%hd105330105420%_
                         (let ()
                           (declare (not safe))
                           (##car _%e105329105416%_))))
                    (if (gx#stx-pair? _%tl105331105423%_)
                        (let ((_%e105332105426%_
                               (gx#syntax-e _%tl105331105423%_)))
                          (let ((_%tl105334105433%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e105332105426%_)))
                                (_%hd105333105430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e105332105426%_))))
                            (if (gx#stx-pair? _%tl105334105433%_)
                                (let ((_%e105335105436%_
                                       (gx#syntax-e _%tl105334105433%_)))
                                  (let ((_%tl105337105443%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e105335105436%_)))
                                        (_%hd105336105440%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e105335105436%_))))
                                    (if (gx#stx-null? _%tl105337105443%_)
                                        (_%__match112177112178%_
                                         _%e105329105416%_
                                         _%hd105330105420%_
                                         _%tl105331105423%_
                                         _%e105332105426%_
                                         _%hd105333105430%_
                                         _%tl105334105433%_
                                         _%e105335105436%_
                                         _%hd105336105440%_
                                         _%tl105337105443%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g105325105354%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g105325105354%_)))))
                        (let () (declare (not safe)) (_%g105325105354%_)))))
                (let () (declare (not safe)) (_%g105325105354%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx105471%_)
      (let* ((_%g105474105495%_
              (lambda (_%g105475105491%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105475105491%_)))
             (_%g105473105723%_
              (lambda (_%g105475105499%_)
                (if (gx#stx-pair? _%g105475105499%_)
                    (let ((_%e105478105502%_ (gx#syntax-e _%g105475105499%_)))
                      (let ((_%hd105479105506%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105478105502%_)))
                            (_%tl105480105509%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105478105502%_))))
                        (if (gx#stx-pair? _%tl105480105509%_)
                            (let ((_%e105481105512%_
                                   (gx#syntax-e _%tl105480105509%_)))
                              (let ((_%hd105482105516%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105481105512%_)))
                                    (_%tl105483105519%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105481105512%_))))
                                (if (gx#stx-pair? _%hd105482105516%_)
                                    (let ((_%e105484105522%_
                                           (gx#syntax-e _%hd105482105516%_)))
                                      (let ((_%hd105485105526%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105484105522%_)))
                                            (_%tl105486105529%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105484105522%_))))
                                        (if (gx#stx-pair? _%tl105486105529%_)
                                            (let ((_%e105487105532%_
                                                   (gx#syntax-e
                                                    _%tl105486105529%_)))
                                              (let ((_%hd105488105536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105487105532%_)))
                                                    (_%tl105489105539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105487105532%_))))
                                                (if (gx#stx-null?
                                                     _%tl105489105539%_)
                                                    (if (gx#stx-null?
                                                         _%tl105483105519%_)
                                                        ((lambda (_%g105476105542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g105477105544%_)
                   (let* ((_%g105562105570%_
                           (lambda (_%g105563105566%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g105563105566%_)))
                          (_%g105561105719%_
                           (lambda (_%g105563105574%_)
                             ((lambda (_%g105564105577%_)
                                (let* ((_%g105589105597%_
                                        (lambda (_%g105590105593%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g105590105593%_)))
                                       (_%g105588105715%_
                                        (lambda (_%g105590105601%_)
                                          ((lambda (_%g105591105604%_)
                                             (let* ((_%g105617105625%_
                                                     (lambda (_%g105618105621%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g105618105621%_)))
                                                    (_%g105616105711%_
                                                     (lambda (_%g105618105629%_)
                                                       ((lambda (_%g105619105632%_)
                                                          (let* ((_%g105645105653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g105646105649%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g105646105649%_)))
                         (_%g105644105707%_
                          (lambda (_%g105646105657%_)
                            ((lambda (_%g105647105660%_)
                               (let* ((_%g105673105681%_
                                       (lambda (_%g105674105677%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g105674105677%_)))
                                      (_%g105672105703%_
                                       (lambda (_%g105674105685%_)
                                         ((lambda (_%g105675105688%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%g105591105604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%g105564105577%_
                                                          (cons _%g105477105544%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%g105476105542%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%g105477105544%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%g105619105632%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%g105564105577%_
                                                                (cons _%g105477105544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%g105476105542%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g105477105544%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%g105647105660%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%g105564105577%_
                              (cons _%g105477105544%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%g105476105542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g105477105544%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%g105675105688%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%g105564105577%_
                                    (cons _%g105477105544%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%g105476105542%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g105477105544%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105674105685%_))))
                                 (_%g105672105703%_
                                  (gx#stx-identifier
                                   _%g105477105544%_
                                   '"&"
                                   _%g105647105660%_))))
                             _%g105646105657%_))))
                    (_%g105644105707%_
                     (gx#stx-identifier
                      _%g105477105544%_
                      _%g105591105604%_
                      '"-set!"))))
                _%g105618105629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g105616105711%_
                                                (gx#stx-identifier
                                                 _%g105477105544%_
                                                 '"&"
                                                 _%g105591105604%_))))
                                           _%g105590105601%_))))
                                  (_%g105588105715%_
                                   (gx#stx-identifier
                                    _%g105477105544%_
                                    '"class-type-"
                                    _%g105477105544%_))))
                              _%g105563105574%_))))
                     (_%g105561105719%_ (gx#core-quote-syntax 'class::t))))
                 _%hd105488105536%_
                 _%hd105485105526%_)
                (_%g105474105495%_ _%g105475105499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105474105495%_
                                                     _%g105475105499%_))))
                                            (_%g105474105495%_
                                             _%g105475105499%_))))
                                    (_%g105474105495%_ _%g105475105499%_))))
                            (_%g105474105495%_ _%g105475105499%_))))
                    (_%g105474105495%_ _%g105475105499%_)))))
        (_%g105473105723%_ _%stx105471%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx105727%_)
      (let* ((_%g105731105760%_
              (lambda (_%g105732105756%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105732105756%_)))
             (_%g105730105856%_
              (lambda (_%g105732105764%_)
                (if (gx#stx-pair? _%g105732105764%_)
                    (let ((_%e105735105767%_ (gx#syntax-e _%g105732105764%_)))
                      (let ((_%hd105736105771%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105735105767%_)))
                            (_%tl105737105774%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105735105767%_))))
                        (if (gx#stx-pair/null? _%tl105737105774%_)
                            (let ((_g112520_
                                   (gx#syntax-split-splice
                                    _%tl105737105774%_
                                    '0)))
                              (begin
                                (let ((_g112521_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112520_)
                                             (##values-length _g112520_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112521_ 2)))
                                      (error "Context expects 2 values"
                                             _g112521_)))
                                (let ((_%target105738105777%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112520_ 0)))
                                      (_%tl105740105780%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112520_ 1))))
                                  (if (gx#stx-null? _%tl105740105780%_)
                                      (letrec ((_%loop105741105783%_
                                                (lambda (_%hd105739105787%_
                                                         _%field105745105790%_
                                                         _%slot105746105791%_)
                                                  (if (gx#stx-pair?
                                                       _%hd105739105787%_)
                                                      (let ((_%e105742105793%_
                                                             (gx#syntax-e
                                                              _%hd105739105787%_)))
                                                        (let ((_%lp-hd105743105797%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e105742105793%_)))
                      (_%lp-tl105744105800%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e105742105793%_))))
                  (if (gx#stx-pair? _%lp-hd105743105797%_)
                      (let ((_%e105749105803%_
                             (gx#syntax-e _%lp-hd105743105797%_)))
                        (let ((_%hd105750105807%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e105749105803%_)))
                              (_%tl105751105810%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e105749105803%_))))
                          (if (gx#stx-pair? _%tl105751105810%_)
                              (let ((_%e105752105813%_
                                     (gx#syntax-e _%tl105751105810%_)))
                                (let ((_%hd105753105817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e105752105813%_)))
                                      (_%tl105754105820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e105752105813%_))))
                                  (if (gx#stx-null? _%tl105754105820%_)
                                      (_%loop105741105783%_
                                       _%lp-tl105744105800%_
                                       (cons _%hd105753105817%_
                                             _%field105745105790%_)
                                       (cons _%hd105750105807%_
                                             _%slot105746105791%_))
                                      (_%g105731105760%_ _%g105732105764%_))))
                              (_%g105731105760%_ _%g105732105764%_))))
                      (_%g105731105760%_ _%g105732105764%_))))
              (let ((_%field105747105823%_ (reverse _%field105745105790%_))
                    (_%slot105748105825%_ (reverse _%slot105746105791%_)))
                ((lambda (_%g105733105827%_ _%g105734105829%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g105733105827%_
                            _%g105734105829%_)
                           (let ((__tmp112522
                                  (lambda (_%g105844105848%_
                                           _%g105845105851%_
                                           _%g105846105853%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g105845105851%_
                                                            (cons _%g105844105848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g105846105853%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112522
                              '()
                              _%g105733105827%_
                              _%g105734105829%_)))))
                 _%field105747105823%_
                 _%slot105748105825%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop105741105783%_
                                         _%target105738105777%_
                                         '()
                                         '()))
                                      (_%g105731105760%_ _%g105732105764%_)))))
                            (_%g105731105760%_ _%g105732105764%_))))
                    (_%g105731105760%_ _%g105732105764%_)))))
        (_%g105730105856%_ _%$stx105727%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx105861%_)
      (let* ((_%g105865105899%_
              (lambda (_%g105866105895%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g105866105895%_)))
             (_%g105864106010%_
              (lambda (_%g105866105903%_)
                (if (gx#stx-pair? _%g105866105903%_)
                    (let ((_%e105873105906%_ (gx#syntax-e _%g105866105903%_)))
                      (let ((_%hd105874105910%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105873105906%_)))
                            (_%tl105875105913%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105873105906%_))))
                        (if (gx#stx-pair? _%tl105875105913%_)
                            (let ((_%e105876105916%_
                                   (gx#syntax-e _%tl105875105913%_)))
                              (let ((_%hd105877105920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105876105916%_)))
                                    (_%tl105878105923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105876105916%_))))
                                (if (gx#stx-pair? _%tl105878105923%_)
                                    (let ((_%e105879105926%_
                                           (gx#syntax-e _%tl105878105923%_)))
                                      (let ((_%hd105880105930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e105879105926%_)))
                                            (_%tl105881105933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e105879105926%_))))
                                        (if (gx#stx-pair? _%tl105881105933%_)
                                            (let ((_%e105882105936%_
                                                   (gx#syntax-e
                                                    _%tl105881105933%_)))
                                              (let ((_%hd105883105940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e105882105936%_)))
                                                    (_%tl105884105943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e105882105936%_))))
                                                (if (gx#stx-pair?
                                                     _%tl105884105943%_)
                                                    (let ((_%e105885105946%_
                                                           (gx#syntax-e
                                                            _%tl105884105943%_)))
                                                      (let ((_%hd105886105950%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e105885105946%_)))
                    (_%tl105887105953%_
                     (let () (declare (not safe)) (##cdr _%e105885105946%_))))
                (if (gx#stx-pair? _%tl105887105953%_)
                    (let ((_%e105888105956%_ (gx#syntax-e _%tl105887105953%_)))
                      (let ((_%hd105889105960%_
                             (let ()
                               (declare (not safe))
                               (##car _%e105888105956%_)))
                            (_%tl105890105963%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e105888105956%_))))
                        (if (gx#stx-pair? _%tl105890105963%_)
                            (let ((_%e105891105966%_
                                   (gx#syntax-e _%tl105890105963%_)))
                              (let ((_%hd105892105970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e105891105966%_)))
                                    (_%tl105893105973%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e105891105966%_))))
                                (if (gx#stx-null? _%tl105893105973%_)
                                    ((lambda (_%g105867105976%_
                                              _%g105868105978%_
                                              _%g105869105979%_
                                              _%g105870105980%_
                                              _%g105871105981%_
                                              _%g105872105982%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%g105872105982%_ '()))
                                   (cons _%g105871105981%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%g105872105982%_
                                     (cons 'slot:
                                           (cons _%g105871105981%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%g105872105982%_ '()))
                                         (cons (cons _%g105870105980%_
                                                     (cons _%g105872105982%_
                                                           (cons _%g105871105981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%g105872105982%_
                                                           '()))
                                               (cons (cons _%g105869105979%_
                                                           (cons _%g105872105982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g105871105981%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%g105872105982%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%g105868105978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g105872105982%_
                               (cons _%g105871105981%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%g105867105976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%g105872105982%_
                                     (cons _%g105871105981%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd105892105970%_
                                     _%hd105889105960%_
                                     _%hd105886105950%_
                                     _%hd105883105940%_
                                     _%hd105880105930%_
                                     _%hd105877105920%_)
                                    (_%g105865105899%_ _%g105866105903%_))))
                            (_%g105865105899%_ _%g105866105903%_))))
                    (_%g105865105899%_ _%g105866105903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g105865105899%_
                                                     _%g105866105903%_))))
                                            (_%g105865105899%_
                                             _%g105866105903%_))))
                                    (_%g105865105899%_ _%g105866105903%_))))
                            (_%g105865105899%_ _%g105866105903%_))))
                    (_%g105865105899%_ _%g105866105903%_)))))
        (_%g105864106010%_ _%$stx105861%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx106014%_)
      (let* ((_%g106018106044%_
              (lambda (_%g106019106040%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g106019106040%_)))
             (_%g106017106127%_
              (lambda (_%g106019106048%_)
                (if (gx#stx-pair? _%g106019106048%_)
                    (let ((_%e106024106051%_ (gx#syntax-e _%g106019106048%_)))
                      (let ((_%hd106025106055%_
                             (let ()
                               (declare (not safe))
                               (##car _%e106024106051%_)))
                            (_%tl106026106058%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e106024106051%_))))
                        (if (gx#stx-pair? _%tl106026106058%_)
                            (let ((_%e106027106061%_
                                   (gx#syntax-e _%tl106026106058%_)))
                              (let ((_%hd106028106065%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e106027106061%_)))
                                    (_%tl106029106068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e106027106061%_))))
                                (if (gx#stx-pair? _%tl106029106068%_)
                                    (let ((_%e106030106071%_
                                           (gx#syntax-e _%tl106029106068%_)))
                                      (let ((_%hd106031106075%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106030106071%_)))
                                            (_%tl106032106078%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106030106071%_))))
                                        (if (gx#stx-pair? _%tl106032106078%_)
                                            (let ((_%e106033106081%_
                                                   (gx#syntax-e
                                                    _%tl106032106078%_)))
                                              (let ((_%hd106034106085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e106033106081%_)))
                                                    (_%tl106035106088%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e106033106081%_))))
                                                (if (gx#stx-pair?
                                                     _%tl106035106088%_)
                                                    (let ((_%e106036106091%_
                                                           (gx#syntax-e
                                                            _%tl106035106088%_)))
                                                      (let ((_%hd106037106095%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e106036106091%_)))
                    (_%tl106038106098%_
                     (let () (declare (not safe)) (##cdr _%e106036106091%_))))
                (if (gx#stx-null? _%tl106038106098%_)
                    ((lambda (_%g106020106101%_
                              _%g106021106103%_
                              _%g106022106104%_
                              _%g106023106105%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%g106023106105%_
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%g106022106104%_ '())))
                   (cons (gx#datum->syntax '#f '=>)
                         (cons _%g106021106103%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%g106020106101%_
                                     (cons _%g106023106105%_
                                           (cons _%g106022106104%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd106037106095%_
                     _%hd106034106085%_
                     _%hd106031106075%_
                     _%hd106028106065%_)
                    (_%g106018106044%_ _%g106019106048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g106018106044%_
                                                     _%g106019106048%_))))
                                            (_%g106018106044%_
                                             _%g106019106048%_))))
                                    (_%g106018106044%_ _%g106019106048%_))))
                            (_%g106018106044%_ _%g106019106048%_))))
                    (_%g106018106044%_ _%g106019106048%_)))))
        (_%g106017106127%_ _%$stx106014%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx106131%_)
      (let* ((_%g106135106164%_
              (lambda (_%g106136106160%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g106136106160%_)))
             (_%g106134106260%_
              (lambda (_%g106136106168%_)
                (if (gx#stx-pair? _%g106136106168%_)
                    (let ((_%e106139106171%_ (gx#syntax-e _%g106136106168%_)))
                      (let ((_%hd106140106175%_
                             (let ()
                               (declare (not safe))
                               (##car _%e106139106171%_)))
                            (_%tl106141106178%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e106139106171%_))))
                        (if (gx#stx-pair/null? _%tl106141106178%_)
                            (let ((_g112523_
                                   (gx#syntax-split-splice
                                    _%tl106141106178%_
                                    '0)))
                              (begin
                                (let ((_g112524_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g112523_)
                                             (##values-length _g112523_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g112524_ 2)))
                                      (error "Context expects 2 values"
                                             _g112524_)))
                                (let ((_%target106142106181%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112523_ 0)))
                                      (_%tl106144106184%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g112523_ 1))))
                                  (if (gx#stx-null? _%tl106144106184%_)
                                      (letrec ((_%loop106145106187%_
                                                (lambda (_%hd106143106191%_
                                                         _%name106149106194%_
                                                         _%t106150106195%_)
                                                  (if (gx#stx-pair?
                                                       _%hd106143106191%_)
                                                      (let ((_%e106146106197%_
                                                             (gx#syntax-e
                                                              _%hd106143106191%_)))
                                                        (let ((_%lp-hd106147106201%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e106146106197%_)))
                      (_%lp-tl106148106204%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e106146106197%_))))
                  (if (gx#stx-pair? _%lp-hd106147106201%_)
                      (let ((_%e106153106207%_
                             (gx#syntax-e _%lp-hd106147106201%_)))
                        (let ((_%hd106154106211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e106153106207%_)))
                              (_%tl106155106214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e106153106207%_))))
                          (if (gx#stx-pair? _%tl106155106214%_)
                              (let ((_%e106156106217%_
                                     (gx#syntax-e _%tl106155106214%_)))
                                (let ((_%hd106157106221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e106156106217%_)))
                                      (_%tl106158106224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e106156106217%_))))
                                  (if (gx#stx-null? _%tl106158106224%_)
                                      (_%loop106145106187%_
                                       _%lp-tl106148106204%_
                                       (cons _%hd106157106221%_
                                             _%name106149106194%_)
                                       (cons _%hd106154106211%_
                                             _%t106150106195%_))
                                      (_%g106135106164%_ _%g106136106168%_))))
                              (_%g106135106164%_ _%g106136106168%_))))
                      (_%g106135106164%_ _%g106136106168%_))))
              (let ((_%name106151106227%_ (reverse _%name106149106194%_))
                    (_%t106152106229%_ (reverse _%t106150106195%_)))
                ((lambda (_%g106137106231%_ _%g106138106233%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%g106137106231%_
                            _%g106138106233%_)
                           (let ((__tmp112525
                                  (lambda (_%g106248106252%_
                                           _%g106249106255%_
                                           _%g106250106257%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g106249106255%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g106248106252%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g106250106257%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp112525
                              '()
                              _%g106137106231%_
                              _%g106138106233%_)))))
                 _%name106151106227%_
                 _%t106152106229%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop106145106187%_
                                         _%target106142106181%_
                                         '()
                                         '()))
                                      (_%g106135106164%_ _%g106136106168%_)))))
                            (_%g106135106164%_ _%g106136106168%_))))
                    (_%g106135106164%_ _%g106136106168%_)))))
        (_%g106134106260%_ _%$stx106131%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx106265%_)
      (let* ((_%__stx112225112226%_ _%$stx106265%_)
             (_%g106270106329%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112225112226%_))))
        (let ((_%__kont112228112229%_
               (lambda (_%g106272106523%_
                        _%g106273106525%_
                        _%g106274106526%_
                        _%g106275106527%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%g106275106527%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%g106274106526%_
                                                           (cons (let ((__tmp112526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106551106556%_ _%g106552106559%_)
                                  (cons _%g106551106556%_ _%g106552106559%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112526 '() _%g106273106525%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__make-system-class)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%g106274106526%_ '()))
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (let ((__tmp112527
                                            (lambda (_%g106553106562%_
                                                     _%g106554106565%_)
                                              (cons _%g106553106562%_
                                                    _%g106554106565%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp112527
                                        '()
                                        _%g106273106525%_)))
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g106272106523%_ '()))
                                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont112232112233%_
               (lambda (_%g106300106404%_ _%g106301106406%_ _%g106302106407%_)
                 (cons (gx#datum->syntax '#f 'defsystem-class)
                       (cons _%g106302106407%_
                             (cons _%g106301106406%_
                                   (cons (let ((__tmp112528
                                                (lambda (_%g106429106432%_
                                                         _%g106430106435%_)
                                                  (cons _%g106429106432%_
                                                        _%g106430106435%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp112528
                                            '()
                                            _%g106300106404%_))
                                         (cons '() '()))))))))
          (let* ((_%__match112300112301%_
                  (lambda (_%e106303106336%_
                           _%hd106304106340%_
                           _%tl106305106343%_
                           _%e106306106346%_
                           _%hd106307106350%_
                           _%tl106308106353%_
                           _%e106309106356%_
                           _%hd106310106360%_
                           _%tl106311106363%_
                           _%e106312106366%_
                           _%hd106313106370%_
                           _%tl106314106373%_
                           _%__splice112234112235%_
                           _%target106315106376%_
                           _%tl106317106379%_)
                    (letrec ((_%loop106318106382%_
                              (lambda (_%hd106316106386%_
                                       _%super106322106389%_)
                                (if (gx#stx-pair? _%hd106316106386%_)
                                    (let ((_%e106319106391%_
                                           (gx#syntax-e _%hd106316106386%_)))
                                      (let ((_%lp-tl106321106398%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106319106391%_)))
                                            (_%lp-hd106320106395%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106319106391%_))))
                                        (_%loop106318106382%_
                                         _%lp-tl106321106398%_
                                         (cons _%lp-hd106320106395%_
                                               _%super106322106389%_))))
                                    (let ((_%super106323106401%_
                                           (reverse _%super106322106389%_)))
                                      (if (gx#stx-null? _%tl106314106373%_)
                                          (_%__kont112232112233%_
                                           _%super106323106401%_
                                           _%hd106310106360%_
                                           _%hd106307106350%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g106270106329%_))))))))
                      (_%loop106318106382%_ _%target106315106376%_ '()))))
                 (_%__match112268112269%_
                  (lambda (_%e106276106445%_
                           _%hd106277106449%_
                           _%tl106278106452%_
                           _%e106279106455%_
                           _%hd106280106459%_
                           _%tl106281106462%_
                           _%e106282106465%_
                           _%hd106283106469%_
                           _%tl106284106472%_
                           _%e106285106475%_
                           _%hd106286106479%_
                           _%tl106287106482%_
                           _%__splice112230112231%_
                           _%target106288106485%_
                           _%tl106290106488%_)
                    (letrec ((_%loop106291106491%_
                              (lambda (_%hd106289106495%_
                                       _%super106295106498%_)
                                (if (gx#stx-pair? _%hd106289106495%_)
                                    (let ((_%e106292106500%_
                                           (gx#syntax-e _%hd106289106495%_)))
                                      (let ((_%lp-tl106294106507%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106292106500%_)))
                                            (_%lp-hd106293106504%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106292106500%_))))
                                        (_%loop106291106491%_
                                         _%lp-tl106294106507%_
                                         (cons _%lp-hd106293106504%_
                                               _%super106295106498%_))))
                                    (let ((_%super106296106510%_
                                           (reverse _%super106295106498%_)))
                                      (if (gx#stx-pair? _%tl106287106482%_)
                                          (let ((_%e106297106513%_
                                                 (gx#syntax-e
                                                  _%tl106287106482%_)))
                                            (let ((_%tl106299106520%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106297106513%_)))
                                                  (_%hd106298106517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106297106513%_))))
                                              (if (gx#stx-null?
                                                   _%tl106299106520%_)
                                                  (_%__kont112228112229%_
                                                   _%hd106298106517%_
                                                   _%super106296106510%_
                                                   _%hd106283106469%_
                                                   _%hd106280106459%_)
                                                  (_%__match112300112301%_
                                                   _%e106276106445%_
                                                   _%hd106277106449%_
                                                   _%tl106278106452%_
                                                   _%e106279106455%_
                                                   _%hd106280106459%_
                                                   _%tl106281106462%_
                                                   _%e106282106465%_
                                                   _%hd106283106469%_
                                                   _%tl106284106472%_
                                                   _%e106285106475%_
                                                   _%hd106286106479%_
                                                   _%tl106287106482%_
                                                   _%__splice112230112231%_
                                                   _%target106288106485%_
                                                   _%tl106290106488%_))))
                                          (_%__match112300112301%_
                                           _%e106276106445%_
                                           _%hd106277106449%_
                                           _%tl106278106452%_
                                           _%e106279106455%_
                                           _%hd106280106459%_
                                           _%tl106281106462%_
                                           _%e106282106465%_
                                           _%hd106283106469%_
                                           _%tl106284106472%_
                                           _%e106285106475%_
                                           _%hd106286106479%_
                                           _%tl106287106482%_
                                           _%__splice112230112231%_
                                           _%target106288106485%_
                                           _%tl106290106488%_)))))))
                      (_%loop106291106491%_ _%target106288106485%_ '())))))
            (if (gx#stx-pair? _%__stx112225112226%_)
                (let ((_%e106276106445%_ (gx#syntax-e _%__stx112225112226%_)))
                  (let ((_%tl106278106452%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106276106445%_)))
                        (_%hd106277106449%_
                         (let ()
                           (declare (not safe))
                           (##car _%e106276106445%_))))
                    (if (gx#stx-pair? _%tl106278106452%_)
                        (let ((_%e106279106455%_
                               (gx#syntax-e _%tl106278106452%_)))
                          (let ((_%tl106281106462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e106279106455%_)))
                                (_%hd106280106459%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e106279106455%_))))
                            (if (gx#stx-pair? _%tl106281106462%_)
                                (let ((_%e106282106465%_
                                       (gx#syntax-e _%tl106281106462%_)))
                                  (let ((_%tl106284106472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106282106465%_)))
                                        (_%hd106283106469%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106282106465%_))))
                                    (if (gx#stx-pair? _%tl106284106472%_)
                                        (let ((_%e106285106475%_
                                               (gx#syntax-e
                                                _%tl106284106472%_)))
                                          (let ((_%tl106287106482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e106285106475%_)))
                                                (_%hd106286106479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e106285106475%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd106286106479%_)
                                                (let ((_%__splice112230112231%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd106286106479%_
                                                        '0)))
                                                  (let ((_%tl106290106488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice112230112231%_
                                                            '1)))
                                                        (_%target106288106485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice112230112231%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl106290106488%_)
                                                        (_%__match112268112269%_
                                                         _%e106276106445%_
                                                         _%hd106277106449%_
                                                         _%tl106278106452%_
                                                         _%e106279106455%_
                                                         _%hd106280106459%_
                                                         _%tl106281106462%_
                                                         _%e106282106465%_
                                                         _%hd106283106469%_
                                                         _%tl106284106472%_
                                                         _%e106285106475%_
                                                         _%hd106286106479%_
                                                         _%tl106287106482%_
                                                         _%__splice112230112231%_
                                                         _%target106288106485%_
                                                         _%tl106290106488%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g106270106329%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g106270106329%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g106270106329%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g106270106329%_)))))
                        (let () (declare (not safe)) (_%g106270106329%_)))))
                (let () (declare (not safe)) (_%g106270106329%_))))))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx106574%_)
      (let* ((_%__stx112303112304%_ _%$stx106574%_)
             (_%g106579106638%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx112303112304%_))))
        (let ((_%__kont112306112307%_
               (lambda (_%g106581106832%_
                        _%g106582106834%_
                        _%g106583106835%_
                        _%g106584106836%_)
                 (cons (gx#datum->syntax '#f 'def)
                       (cons _%g106584106836%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'begin-annotation)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@mop.system)
                                                     (cons _%g106584106836%_
                                                           (cons (let ((__tmp112529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g106860106863%_ _%g106861106866%_)
                                  (cons _%g106860106863%_ _%g106861106866%_))))
                           (declare (not safe))
                           (__foldr1 __tmp112529 '() _%g106583106835%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '__shadow-class)
                                                           (cons _%g106582106834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g106581106832%_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))))
              (_%__kont112310112311%_
               (lambda (_%g106609106713%_ _%g106610106715%_ _%g106611106716%_)
                 (cons (gx#datum->syntax '#f 'defshadow-class)
                       (cons _%g106611106716%_
                             (cons (let ((__tmp112530
                                          (lambda (_%g106738106741%_
                                                   _%g106739106744%_)
                                            (cons _%g106738106741%_
                                                  _%g106739106744%_))))
                                     (declare (not safe))
                                     (__foldr1
                                      __tmp112530
                                      '()
                                      _%g106610106715%_))
                                   (cons _%g106609106713%_
                                         (cons '() '()))))))))
          (let* ((_%__match112366112367%_
                  (lambda (_%e106612106645%_
                           _%hd106613106649%_
                           _%tl106614106652%_
                           _%e106615106655%_
                           _%hd106616106659%_
                           _%tl106617106662%_
                           _%e106618106665%_
                           _%hd106619106669%_
                           _%tl106620106672%_
                           _%__splice112312112313%_
                           _%target106621106675%_
                           _%tl106623106678%_)
                    (letrec ((_%loop106624106681%_
                              (lambda (_%hd106622106685%_
                                       _%super106628106688%_)
                                (if (gx#stx-pair? _%hd106622106685%_)
                                    (let ((_%e106625106690%_
                                           (gx#syntax-e _%hd106622106685%_)))
                                      (let ((_%lp-tl106627106697%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106625106690%_)))
                                            (_%lp-hd106626106694%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106625106690%_))))
                                        (_%loop106624106681%_
                                         _%lp-tl106627106697%_
                                         (cons _%lp-hd106626106694%_
                                               _%super106628106688%_))))
                                    (let ((_%super106629106700%_
                                           (reverse _%super106628106688%_)))
                                      (if (gx#stx-pair? _%tl106620106672%_)
                                          (let ((_%e106630106703%_
                                                 (gx#syntax-e
                                                  _%tl106620106672%_)))
                                            (let ((_%tl106632106710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106630106703%_)))
                                                  (_%hd106631106707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106630106703%_))))
                                              (if (gx#stx-null?
                                                   _%tl106632106710%_)
                                                  (_%__kont112310112311%_
                                                   _%hd106631106707%_
                                                   _%super106629106700%_
                                                   _%hd106616106659%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g106579106638%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g106579106638%_))))))))
                      (_%loop106624106681%_ _%target106621106675%_ '()))))
                 (_%__match112340112341%_
                  (lambda (_%e106585106754%_
                           _%hd106586106758%_
                           _%tl106587106761%_
                           _%e106588106764%_
                           _%hd106589106768%_
                           _%tl106590106771%_
                           _%e106591106774%_
                           _%hd106592106778%_
                           _%tl106593106781%_
                           _%__splice112308112309%_
                           _%target106594106784%_
                           _%tl106596106787%_)
                    (letrec ((_%loop106597106790%_
                              (lambda (_%hd106595106794%_
                                       _%super106601106797%_)
                                (if (gx#stx-pair? _%hd106595106794%_)
                                    (let ((_%e106598106799%_
                                           (gx#syntax-e _%hd106595106794%_)))
                                      (let ((_%lp-tl106600106806%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e106598106799%_)))
                                            (_%lp-hd106599106803%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e106598106799%_))))
                                        (_%loop106597106790%_
                                         _%lp-tl106600106806%_
                                         (cons _%lp-hd106599106803%_
                                               _%super106601106797%_))))
                                    (let ((_%super106602106809%_
                                           (reverse _%super106601106797%_)))
                                      (if (gx#stx-pair? _%tl106593106781%_)
                                          (let ((_%e106603106812%_
                                                 (gx#syntax-e
                                                  _%tl106593106781%_)))
                                            (let ((_%tl106605106819%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e106603106812%_)))
                                                  (_%hd106604106816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e106603106812%_))))
                                              (if (gx#stx-pair?
                                                   _%tl106605106819%_)
                                                  (let ((_%e106606106822%_
                                                         (gx#syntax-e
                                                          _%tl106605106819%_)))
                                                    (let ((_%tl106608106829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e106606106822%_)))
                                                          (_%hd106607106826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e106606106822%_))))
                                                      (if (gx#stx-null?
                                                           _%tl106608106829%_)
                                                          (_%__kont112306112307%_
                                                           _%hd106607106826%_
                                                           _%hd106604106816%_
                                                           _%super106602106809%_
                                                           _%hd106589106768%_)
                                                          (_%__match112366112367%_
                                                           _%e106585106754%_
                                                           _%hd106586106758%_
                                                           _%tl106587106761%_
                                                           _%e106588106764%_
                                                           _%hd106589106768%_
                                                           _%tl106590106771%_
                                                           _%e106591106774%_
                                                           _%hd106592106778%_
                                                           _%tl106593106781%_
                                                           _%__splice112308112309%_
                                                           _%target106594106784%_
                                                           _%tl106596106787%_))))
                                                  (_%__match112366112367%_
                                                   _%e106585106754%_
                                                   _%hd106586106758%_
                                                   _%tl106587106761%_
                                                   _%e106588106764%_
                                                   _%hd106589106768%_
                                                   _%tl106590106771%_
                                                   _%e106591106774%_
                                                   _%hd106592106778%_
                                                   _%tl106593106781%_
                                                   _%__splice112308112309%_
                                                   _%target106594106784%_
                                                   _%tl106596106787%_))))
                                          (_%__match112366112367%_
                                           _%e106585106754%_
                                           _%hd106586106758%_
                                           _%tl106587106761%_
                                           _%e106588106764%_
                                           _%hd106589106768%_
                                           _%tl106590106771%_
                                           _%e106591106774%_
                                           _%hd106592106778%_
                                           _%tl106593106781%_
                                           _%__splice112308112309%_
                                           _%target106594106784%_
                                           _%tl106596106787%_)))))))
                      (_%loop106597106790%_ _%target106594106784%_ '())))))
            (if (gx#stx-pair? _%__stx112303112304%_)
                (let ((_%e106585106754%_ (gx#syntax-e _%__stx112303112304%_)))
                  (let ((_%tl106587106761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e106585106754%_)))
                        (_%hd106586106758%_
                         (let ()
                           (declare (not safe))
                           (##car _%e106585106754%_))))
                    (if (gx#stx-pair? _%tl106587106761%_)
                        (let ((_%e106588106764%_
                               (gx#syntax-e _%tl106587106761%_)))
                          (let ((_%tl106590106771%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e106588106764%_)))
                                (_%hd106589106768%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e106588106764%_))))
                            (if (gx#stx-pair? _%tl106590106771%_)
                                (let ((_%e106591106774%_
                                       (gx#syntax-e _%tl106590106771%_)))
                                  (let ((_%tl106593106781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e106591106774%_)))
                                        (_%hd106592106778%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e106591106774%_))))
                                    (if (gx#stx-pair/null? _%hd106592106778%_)
                                        (let ((_%__splice112308112309%_
                                               (gx#syntax-split-splice->vector
                                                _%hd106592106778%_
                                                '0)))
                                          (let ((_%tl106596106787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice112308112309%_
                                                    '1)))
                                                (_%target106594106784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice112308112309%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%tl106596106787%_)
                                                (_%__match112340112341%_
                                                 _%e106585106754%_
                                                 _%hd106586106758%_
                                                 _%tl106587106761%_
                                                 _%e106588106764%_
                                                 _%hd106589106768%_
                                                 _%tl106590106771%_
                                                 _%e106591106774%_
                                                 _%hd106592106778%_
                                                 _%tl106593106781%_
                                                 _%__splice112308112309%_
                                                 _%target106594106784%_
                                                 _%tl106596106787%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g106579106638%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g106579106638%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g106579106638%_)))))
                        (let () (declare (not safe)) (_%g106579106638%_)))))
                (let () (declare (not safe)) (_%g106579106638%_)))))))))
