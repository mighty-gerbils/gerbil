(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx102709%_)
      (let* ((_%__stx109267109268%_ _%$stx102709%_)
             (_%g102714102743%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx109267109268%_))))
        (let ((_%__kont109270109271%_
               (lambda (_%L102836%_ _%L102838%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L102838%_ (cons _%L102836%_ '())))
                             (cons _%L102836%_ '())))))
              (_%__kont109272109273%_
               (lambda (_%L102780%_ _%L102782%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L102780%_ (cons _%L102780%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L102782%_
                                                           (cons _%L102780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L102780%_ '())))
                                   '()))))))
          (let ((_%__match109294109295%_
                 (lambda (_%e102718102806%_
                          _%hd102719102810%_
                          _%tl102720102813%_
                          _%e102721102816%_
                          _%hd102722102820%_
                          _%tl102723102823%_
                          _%e102724102826%_
                          _%hd102725102830%_
                          _%tl102726102833%_)
                   (let ((_%L102836%_ _%hd102725102830%_)
                         (_%L102838%_ _%hd102722102820%_))
                     (if (or (gx#identifier? _%L102836%_)
                             (gx#stx-fixnum? _%L102836%_))
                         (_%__kont109270109271%_ _%L102836%_ _%L102838%_)
                         (_%__kont109272109273%_
                          _%hd102725102830%_
                          _%hd102722102820%_))))))
            (if (gx#stx-pair? _%__stx109267109268%_)
                (let ((_%e102718102806%_ (gx#syntax-e _%__stx109267109268%_)))
                  (let ((_%tl102720102813%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102718102806%_)))
                        (_%hd102719102810%_
                         (let ()
                           (declare (not safe))
                           (##car _%e102718102806%_))))
                    (if (gx#stx-pair? _%tl102720102813%_)
                        (let ((_%e102721102816%_
                               (gx#syntax-e _%tl102720102813%_)))
                          (let ((_%tl102723102823%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e102721102816%_)))
                                (_%hd102722102820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e102721102816%_))))
                            (if (gx#stx-pair? _%tl102723102823%_)
                                (let ((_%e102724102826%_
                                       (gx#syntax-e _%tl102723102823%_)))
                                  (let ((_%tl102726102833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102724102826%_)))
                                        (_%hd102725102830%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102724102826%_))))
                                    (if (gx#stx-null? _%tl102726102833%_)
                                        (_%__match109294109295%_
                                         _%e102718102806%_
                                         _%hd102719102810%_
                                         _%tl102720102813%_
                                         _%e102721102816%_
                                         _%hd102722102820%_
                                         _%tl102723102823%_
                                         _%e102724102826%_
                                         _%hd102725102830%_
                                         _%tl102726102833%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g102714102743%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g102714102743%_)))))
                        (let () (declare (not safe)) (_%g102714102743%_)))))
                (let () (declare (not safe)) (_%g102714102743%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx102861%_)
      (let* ((_%__stx109317109318%_ _%$stx102861%_)
             (_%g102866102895%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx109317109318%_))))
        (let ((_%__kont109320109321%_
               (lambda (_%L102987%_ _%L102989%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L102989%_ (cons _%L102987%_ '())))
                             (cons '0 '())))))
              (_%__kont109322109323%_
               (lambda (_%L102932%_ _%L102934%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L102932%_ (cons _%L102932%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L102934%_
                                                           (cons _%L102932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match109344109345%_
                 (lambda (_%e102870102957%_
                          _%hd102871102961%_
                          _%tl102872102964%_
                          _%e102873102967%_
                          _%hd102874102971%_
                          _%tl102875102974%_
                          _%e102876102977%_
                          _%hd102877102981%_
                          _%tl102878102984%_)
                   (let ((_%L102987%_ _%hd102877102981%_)
                         (_%L102989%_ _%hd102874102971%_))
                     (if (or (gx#identifier? _%L102987%_)
                             (gx#stx-fixnum? _%L102987%_))
                         (_%__kont109320109321%_ _%L102987%_ _%L102989%_)
                         (_%__kont109322109323%_
                          _%hd102877102981%_
                          _%hd102874102971%_))))))
            (if (gx#stx-pair? _%__stx109317109318%_)
                (let ((_%e102870102957%_ (gx#syntax-e _%__stx109317109318%_)))
                  (let ((_%tl102872102964%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102870102957%_)))
                        (_%hd102871102961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e102870102957%_))))
                    (if (gx#stx-pair? _%tl102872102964%_)
                        (let ((_%e102873102967%_
                               (gx#syntax-e _%tl102872102964%_)))
                          (let ((_%tl102875102974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e102873102967%_)))
                                (_%hd102874102971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e102873102967%_))))
                            (if (gx#stx-pair? _%tl102875102974%_)
                                (let ((_%e102876102977%_
                                       (gx#syntax-e _%tl102875102974%_)))
                                  (let ((_%tl102878102984%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102876102977%_)))
                                        (_%hd102877102981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102876102977%_))))
                                    (if (gx#stx-null? _%tl102878102984%_)
                                        (_%__match109344109345%_
                                         _%e102870102957%_
                                         _%hd102871102961%_
                                         _%tl102872102964%_
                                         _%e102873102967%_
                                         _%hd102874102971%_
                                         _%tl102875102974%_
                                         _%e102876102977%_
                                         _%hd102877102981%_
                                         _%tl102878102984%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g102866102895%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g102866102895%_)))))
                        (let () (declare (not safe)) (_%g102866102895%_)))))
                (let () (declare (not safe)) (_%g102866102895%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx103012%_)
      (let* ((_%g103015103036%_
              (lambda (_%g103016103032%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103016103032%_)))
             (_%g103014103264%_
              (lambda (_%g103016103040%_)
                (if (gx#stx-pair? _%g103016103040%_)
                    (let ((_%e103019103043%_ (gx#syntax-e _%g103016103040%_)))
                      (let ((_%hd103020103047%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103019103043%_)))
                            (_%tl103021103050%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103019103043%_))))
                        (if (gx#stx-pair? _%tl103021103050%_)
                            (let ((_%e103022103053%_
                                   (gx#syntax-e _%tl103021103050%_)))
                              (let ((_%hd103023103057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103022103053%_)))
                                    (_%tl103024103060%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103022103053%_))))
                                (if (gx#stx-pair? _%hd103023103057%_)
                                    (let ((_%e103025103063%_
                                           (gx#syntax-e _%hd103023103057%_)))
                                      (let ((_%hd103026103067%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103025103063%_)))
                                            (_%tl103027103070%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103025103063%_))))
                                        (if (gx#stx-pair? _%tl103027103070%_)
                                            (let ((_%e103028103073%_
                                                   (gx#syntax-e
                                                    _%tl103027103070%_)))
                                              (let ((_%hd103029103077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103028103073%_)))
                                                    (_%tl103030103080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103028103073%_))))
                                                (if (gx#stx-null?
                                                     _%tl103030103080%_)
                                                    (if (gx#stx-null?
                                                         _%tl103024103060%_)
                                                        ((lambda (_%L103083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L103085%_)
                   (let* ((_%g103103103111%_
                           (lambda (_%g103104103107%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g103104103107%_)))
                          (_%g103102103260%_
                           (lambda (_%g103104103115%_)
                             ((lambda (_%L103118%_)
                                (let* ((_%g103130103138%_
                                        (lambda (_%g103131103134%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g103131103134%_)))
                                       (_%g103129103256%_
                                        (lambda (_%g103131103142%_)
                                          ((lambda (_%L103145%_)
                                             (let* ((_%g103158103166%_
                                                     (lambda (_%g103159103162%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g103159103162%_)))
                                                    (_%g103157103252%_
                                                     (lambda (_%g103159103170%_)
                                                       ((lambda (_%L103173%_)
                                                          (let* ((_%g103186103194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g103187103190%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g103187103190%_)))
                         (_%g103185103248%_
                          (lambda (_%g103187103198%_)
                            ((lambda (_%L103201%_)
                               (let* ((_%g103214103222%_
                                       (lambda (_%g103215103218%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g103215103218%_)))
                                      (_%g103213103244%_
                                       (lambda (_%g103215103226%_)
                                         ((lambda (_%L103229%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L103145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L103118%_
                                                          (cons _%L103085%_
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
                                          (cons _%L103083%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L103085%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L103173%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L103118%_
                                                                (cons _%L103085%_
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
                                                (cons _%L103083%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L103085%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L103201%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L103118%_ (cons _%L103085%_ (cons '#t '()))))
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
                                                            (cons _%L103083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L103085%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L103229%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L103118%_
                                    (cons _%L103085%_ (cons '#f '()))))
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
                          (cons _%L103083%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L103085%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103215103226%_))))
                                 (_%g103213103244%_
                                  (gx#stx-identifier
                                   _%L103085%_
                                   '"&"
                                   _%L103201%_))))
                             _%g103187103198%_))))
                    (_%g103185103248%_
                     (gx#stx-identifier _%L103085%_ _%L103145%_ '"-set!"))))
                _%g103159103170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g103157103252%_
                                                (gx#stx-identifier
                                                 _%L103085%_
                                                 '"&"
                                                 _%L103145%_))))
                                           _%g103131103142%_))))
                                  (_%g103129103256%_
                                   (gx#stx-identifier
                                    _%L103085%_
                                    '"class-type-"
                                    _%L103085%_))))
                              _%g103104103115%_))))
                     (_%g103102103260%_ (gx#core-quote-syntax 'class::t))))
                 _%hd103029103077%_
                 _%hd103026103067%_)
                (_%g103015103036%_ _%g103016103040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103015103036%_
                                                     _%g103016103040%_))))
                                            (_%g103015103036%_
                                             _%g103016103040%_))))
                                    (_%g103015103036%_ _%g103016103040%_))))
                            (_%g103015103036%_ _%g103016103040%_))))
                    (_%g103015103036%_ _%g103016103040%_)))))
        (_%g103014103264%_ _%stx103012%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx103268%_)
      (let* ((_%g103272103301%_
              (lambda (_%g103273103297%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103273103297%_)))
             (_%g103271103401%_
              (lambda (_%g103273103305%_)
                (if (gx#stx-pair? _%g103273103305%_)
                    (let ((_%e103276103308%_ (gx#syntax-e _%g103273103305%_)))
                      (let ((_%hd103277103312%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103276103308%_)))
                            (_%tl103278103315%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103276103308%_))))
                        (if (gx#stx-pair/null? _%tl103278103315%_)
                            (let ((_g109554_
                                   (gx#syntax-split-splice
                                    _%tl103278103315%_
                                    '0)))
                              (begin
                                (let ((_g109555_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109554_)
                                             (##values-length _g109554_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109555_ 2)))
                                      (error "Context expects 2 values"
                                             _g109555_)))
                                (let ((_%target103279103318%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109554_ 0)))
                                      (_%tl103281103321%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109554_ 1))))
                                  (if (gx#stx-null? _%tl103281103321%_)
                                      (letrec ((_%loop103282103324%_
                                                (lambda (_%hd103280103328%_
                                                         _%field103286103331%_
                                                         _%slot103287103333%_)
                                                  (if (gx#stx-pair?
                                                       _%hd103280103328%_)
                                                      (let ((_%e103283103336%_
                                                             (gx#syntax-e
                                                              _%hd103280103328%_)))
                                                        (let ((_%lp-hd103284103340%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e103283103336%_)))
                      (_%lp-tl103285103343%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e103283103336%_))))
                  (if (gx#stx-pair? _%lp-hd103284103340%_)
                      (let ((_%e103290103346%_
                             (gx#syntax-e _%lp-hd103284103340%_)))
                        (let ((_%hd103291103350%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e103290103346%_)))
                              (_%tl103292103353%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e103290103346%_))))
                          (if (gx#stx-pair? _%tl103292103353%_)
                              (let ((_%e103293103356%_
                                     (gx#syntax-e _%tl103292103353%_)))
                                (let ((_%hd103294103360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103293103356%_)))
                                      (_%tl103295103363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103293103356%_))))
                                  (if (gx#stx-null? _%tl103295103363%_)
                                      (_%loop103282103324%_
                                       _%lp-tl103285103343%_
                                       (cons _%hd103294103360%_
                                             _%field103286103331%_)
                                       (cons _%hd103291103350%_
                                             _%slot103287103333%_))
                                      (_%g103272103301%_ _%g103273103305%_))))
                              (_%g103272103301%_ _%g103273103305%_))))
                      (_%g103272103301%_ _%g103273103305%_))))
              (let ((_%field103288103366%_ (reverse _%field103286103331%_))
                    (_%slot103289103369%_ (reverse _%slot103287103333%_)))
                ((lambda (_%L103372%_ _%L103374%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L103372%_
                            _%L103374%_)
                           (let ((__tmp109556
                                  (lambda (_%g103389103393%_
                                           _%g103390103396%_
                                           _%g103391103398%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g103390103396%_
                                                            (cons _%g103389103393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103391103398%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp109556
                              '()
                              _%L103372%_
                              _%L103374%_)))))
                 _%field103288103366%_
                 _%slot103289103369%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop103282103324%_
                                         _%target103279103318%_
                                         '()
                                         '()))
                                      (_%g103272103301%_ _%g103273103305%_)))))
                            (_%g103272103301%_ _%g103273103305%_))))
                    (_%g103272103301%_ _%g103273103305%_)))))
        (_%g103271103401%_ _%$stx103268%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx103406%_)
      (let* ((_%g103410103444%_
              (lambda (_%g103411103440%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103411103440%_)))
             (_%g103409103555%_
              (lambda (_%g103411103448%_)
                (if (gx#stx-pair? _%g103411103448%_)
                    (let ((_%e103418103451%_ (gx#syntax-e _%g103411103448%_)))
                      (let ((_%hd103419103455%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103418103451%_)))
                            (_%tl103420103458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103418103451%_))))
                        (if (gx#stx-pair? _%tl103420103458%_)
                            (let ((_%e103421103461%_
                                   (gx#syntax-e _%tl103420103458%_)))
                              (let ((_%hd103422103465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103421103461%_)))
                                    (_%tl103423103468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103421103461%_))))
                                (if (gx#stx-pair? _%tl103423103468%_)
                                    (let ((_%e103424103471%_
                                           (gx#syntax-e _%tl103423103468%_)))
                                      (let ((_%hd103425103475%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103424103471%_)))
                                            (_%tl103426103478%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103424103471%_))))
                                        (if (gx#stx-pair? _%tl103426103478%_)
                                            (let ((_%e103427103481%_
                                                   (gx#syntax-e
                                                    _%tl103426103478%_)))
                                              (let ((_%hd103428103485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103427103481%_)))
                                                    (_%tl103429103488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103427103481%_))))
                                                (if (gx#stx-pair?
                                                     _%tl103429103488%_)
                                                    (let ((_%e103430103491%_
                                                           (gx#syntax-e
                                                            _%tl103429103488%_)))
                                                      (let ((_%hd103431103495%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e103430103491%_)))
                    (_%tl103432103498%_
                     (let () (declare (not safe)) (##cdr _%e103430103491%_))))
                (if (gx#stx-pair? _%tl103432103498%_)
                    (let ((_%e103433103501%_ (gx#syntax-e _%tl103432103498%_)))
                      (let ((_%hd103434103505%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103433103501%_)))
                            (_%tl103435103508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103433103501%_))))
                        (if (gx#stx-pair? _%tl103435103508%_)
                            (let ((_%e103436103511%_
                                   (gx#syntax-e _%tl103435103508%_)))
                              (let ((_%hd103437103515%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103436103511%_)))
                                    (_%tl103438103518%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103436103511%_))))
                                (if (gx#stx-null? _%tl103438103518%_)
                                    ((lambda (_%L103521%_
                                              _%L103523%_
                                              _%L103524%_
                                              _%L103525%_
                                              _%L103526%_
                                              _%L103527%_)
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
                                         (cons _%L103527%_ '()))
                                   (cons _%L103526%_ (cons '#f '()))))
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
                               (cons _%L103527%_
                                     (cons 'slot: (cons _%L103526%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L103527%_ '()))
                                         (cons (cons _%L103525%_
                                                     (cons _%L103527%_
                                                           (cons _%L103526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L103527%_ '()))
                                               (cons (cons _%L103524%_
                                                           (cons _%L103527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L103526%_
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
                                           (cons _%L103527%_ '()))
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
                                                     (cons (cons _%L103523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L103527%_
                               (cons _%L103526%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L103521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L103527%_
                                     (cons _%L103526%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd103437103515%_
                                     _%hd103434103505%_
                                     _%hd103431103495%_
                                     _%hd103428103485%_
                                     _%hd103425103475%_
                                     _%hd103422103465%_)
                                    (_%g103410103444%_ _%g103411103448%_))))
                            (_%g103410103444%_ _%g103411103448%_))))
                    (_%g103410103444%_ _%g103411103448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103410103444%_
                                                     _%g103411103448%_))))
                                            (_%g103410103444%_
                                             _%g103411103448%_))))
                                    (_%g103410103444%_ _%g103411103448%_))))
                            (_%g103410103444%_ _%g103411103448%_))))
                    (_%g103410103444%_ _%g103411103448%_)))))
        (_%g103409103555%_ _%$stx103406%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx103559%_)
      (let* ((_%g103563103589%_
              (lambda (_%g103564103585%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103564103585%_)))
             (_%g103562103672%_
              (lambda (_%g103564103593%_)
                (if (gx#stx-pair? _%g103564103593%_)
                    (let ((_%e103569103596%_ (gx#syntax-e _%g103564103593%_)))
                      (let ((_%hd103570103600%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103569103596%_)))
                            (_%tl103571103603%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103569103596%_))))
                        (if (gx#stx-pair? _%tl103571103603%_)
                            (let ((_%e103572103606%_
                                   (gx#syntax-e _%tl103571103603%_)))
                              (let ((_%hd103573103610%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103572103606%_)))
                                    (_%tl103574103613%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103572103606%_))))
                                (if (gx#stx-pair? _%tl103574103613%_)
                                    (let ((_%e103575103616%_
                                           (gx#syntax-e _%tl103574103613%_)))
                                      (let ((_%hd103576103620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103575103616%_)))
                                            (_%tl103577103623%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103575103616%_))))
                                        (if (gx#stx-pair? _%tl103577103623%_)
                                            (let ((_%e103578103626%_
                                                   (gx#syntax-e
                                                    _%tl103577103623%_)))
                                              (let ((_%hd103579103630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103578103626%_)))
                                                    (_%tl103580103633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103578103626%_))))
                                                (if (gx#stx-pair?
                                                     _%tl103580103633%_)
                                                    (let ((_%e103581103636%_
                                                           (gx#syntax-e
                                                            _%tl103580103633%_)))
                                                      (let ((_%hd103582103640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e103581103636%_)))
                    (_%tl103583103643%_
                     (let () (declare (not safe)) (##cdr _%e103581103636%_))))
                (if (gx#stx-null? _%tl103583103643%_)
                    ((lambda (_%L103646%_ _%L103648%_ _%L103649%_ _%L103650%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L103650%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L103649%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L103648%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L103646%_
                                     (cons _%L103650%_ (cons _%L103649%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd103582103640%_
                     _%hd103579103630%_
                     _%hd103576103620%_
                     _%hd103573103610%_)
                    (_%g103563103589%_ _%g103564103593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103563103589%_
                                                     _%g103564103593%_))))
                                            (_%g103563103589%_
                                             _%g103564103593%_))))
                                    (_%g103563103589%_ _%g103564103593%_))))
                            (_%g103563103589%_ _%g103564103593%_))))
                    (_%g103563103589%_ _%g103564103593%_)))))
        (_%g103562103672%_ _%$stx103559%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx103676%_)
      (let* ((_%g103680103709%_
              (lambda (_%g103681103705%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103681103705%_)))
             (_%g103679103809%_
              (lambda (_%g103681103713%_)
                (if (gx#stx-pair? _%g103681103713%_)
                    (let ((_%e103684103716%_ (gx#syntax-e _%g103681103713%_)))
                      (let ((_%hd103685103720%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103684103716%_)))
                            (_%tl103686103723%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103684103716%_))))
                        (if (gx#stx-pair/null? _%tl103686103723%_)
                            (let ((_g109557_
                                   (gx#syntax-split-splice
                                    _%tl103686103723%_
                                    '0)))
                              (begin
                                (let ((_g109558_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109557_)
                                             (##values-length _g109557_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109558_ 2)))
                                      (error "Context expects 2 values"
                                             _g109558_)))
                                (let ((_%target103687103726%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109557_ 0)))
                                      (_%tl103689103729%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109557_ 1))))
                                  (if (gx#stx-null? _%tl103689103729%_)
                                      (letrec ((_%loop103690103732%_
                                                (lambda (_%hd103688103736%_
                                                         _%name103694103739%_
                                                         _%t103695103741%_)
                                                  (if (gx#stx-pair?
                                                       _%hd103688103736%_)
                                                      (let ((_%e103691103744%_
                                                             (gx#syntax-e
                                                              _%hd103688103736%_)))
                                                        (let ((_%lp-hd103692103748%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e103691103744%_)))
                      (_%lp-tl103693103751%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e103691103744%_))))
                  (if (gx#stx-pair? _%lp-hd103692103748%_)
                      (let ((_%e103698103754%_
                             (gx#syntax-e _%lp-hd103692103748%_)))
                        (let ((_%hd103699103758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e103698103754%_)))
                              (_%tl103700103761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e103698103754%_))))
                          (if (gx#stx-pair? _%tl103700103761%_)
                              (let ((_%e103701103764%_
                                     (gx#syntax-e _%tl103700103761%_)))
                                (let ((_%hd103702103768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103701103764%_)))
                                      (_%tl103703103771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103701103764%_))))
                                  (if (gx#stx-null? _%tl103703103771%_)
                                      (_%loop103690103732%_
                                       _%lp-tl103693103751%_
                                       (cons _%hd103702103768%_
                                             _%name103694103739%_)
                                       (cons _%hd103699103758%_
                                             _%t103695103741%_))
                                      (_%g103680103709%_ _%g103681103713%_))))
                              (_%g103680103709%_ _%g103681103713%_))))
                      (_%g103680103709%_ _%g103681103713%_))))
              (let ((_%name103696103774%_ (reverse _%name103694103739%_))
                    (_%t103697103777%_ (reverse _%t103695103741%_)))
                ((lambda (_%L103780%_ _%L103782%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L103780%_
                            _%L103782%_)
                           (let ((__tmp109559
                                  (lambda (_%g103797103801%_
                                           _%g103798103804%_
                                           _%g103799103806%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g103798103804%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g103797103801%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103799103806%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp109559
                              '()
                              _%L103780%_
                              _%L103782%_)))))
                 _%name103696103774%_
                 _%t103697103777%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop103690103732%_
                                         _%target103687103726%_
                                         '()
                                         '()))
                                      (_%g103680103709%_ _%g103681103713%_)))))
                            (_%g103680103709%_ _%g103681103713%_))))
                    (_%g103680103709%_ _%g103681103713%_)))))
        (_%g103679103809%_ _%$stx103676%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx103814%_)
      (let* ((_%g103818103849%_
              (lambda (_%g103819103845%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103819103845%_)))
             (_%g103817103968%_
              (lambda (_%g103819103853%_)
                (if (gx#stx-pair? _%g103819103853%_)
                    (let ((_%e103823103856%_ (gx#syntax-e _%g103819103853%_)))
                      (let ((_%hd103824103860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103823103856%_)))
                            (_%tl103825103863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103823103856%_))))
                        (if (gx#stx-pair? _%tl103825103863%_)
                            (let ((_%e103826103866%_
                                   (gx#syntax-e _%tl103825103863%_)))
                              (let ((_%hd103827103870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103826103866%_)))
                                    (_%tl103828103873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103826103866%_))))
                                (if (gx#stx-pair? _%tl103828103873%_)
                                    (let ((_%e103829103876%_
                                           (gx#syntax-e _%tl103828103873%_)))
                                      (let ((_%hd103830103880%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103829103876%_)))
                                            (_%tl103831103883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103829103876%_))))
                                        (if (gx#stx-pair? _%tl103831103883%_)
                                            (let ((_%e103832103886%_
                                                   (gx#syntax-e
                                                    _%tl103831103883%_)))
                                              (let ((_%hd103833103890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103832103886%_)))
                                                    (_%tl103834103893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103832103886%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd103833103890%_)
                                                    (let ((_g109560_
                                                           (gx#syntax-split-splice
                                                            _%hd103833103890%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g109561_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g109560_)
                             (##values-length _g109560_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g109561_ 2)))
                      (error "Context expects 2 values" _g109561_)))
                (let ((_%target103835103896%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109560_ 0)))
                      (_%tl103837103899%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109560_ 1))))
                  (if (gx#stx-null? _%tl103837103899%_)
                      (letrec ((_%loop103838103902%_
                                (lambda (_%hd103836103906%_
                                         _%super103842103909%_)
                                  (if (gx#stx-pair? _%hd103836103906%_)
                                      (let ((_%e103839103912%_
                                             (gx#syntax-e _%hd103836103906%_)))
                                        (let ((_%lp-hd103840103916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e103839103912%_)))
                                              (_%lp-tl103841103919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e103839103912%_))))
                                          (_%loop103838103902%_
                                           _%lp-tl103841103919%_
                                           (cons _%lp-hd103840103916%_
                                                 _%super103842103909%_))))
                                      (let ((_%super103843103922%_
                                             (reverse _%super103842103909%_)))
                                        (if (gx#stx-null? _%tl103834103893%_)
                                            ((lambda (_%L103926%_
                                                      _%L103928%_
                                                      _%L103929%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L103929%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L103928%_
                                                 (cons (let ((__tmp109562
                                                              (lambda (_%g103951103956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g103952103959%_)
                        (cons _%g103951103956%_ _%g103952103959%_))))
                 (declare (not safe))
                 (__foldr1 __tmp109562 '() _%L103926%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L103928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp109563
                                  (lambda (_%g103953103962%_ _%g103954103965%_)
                                    (cons _%g103953103962%_
                                          _%g103954103965%_))))
                             (declare (not safe))
                             (__foldr1 __tmp109563 '() _%L103926%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super103843103922%_
                                             _%hd103830103880%_
                                             _%hd103827103870%_)
                                            (_%g103818103849%_
                                             _%g103819103853%_)))))))
                        (_%loop103838103902%_ _%target103835103896%_ '()))
                      (_%g103818103849%_ _%g103819103853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103818103849%_
                                                     _%g103819103853%_))))
                                            (_%g103818103849%_
                                             _%g103819103853%_))))
                                    (_%g103818103849%_ _%g103819103853%_))))
                            (_%g103818103849%_ _%g103819103853%_))))
                    (_%g103818103849%_ _%g103819103853%_)))))
        (_%g103817103968%_ _%$stx103814%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx103973%_)
      (let* ((_%g103977104008%_
              (lambda (_%g103978104004%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103978104004%_)))
             (_%g103976104119%_
              (lambda (_%g103978104012%_)
                (if (gx#stx-pair? _%g103978104012%_)
                    (let ((_%e103982104015%_ (gx#syntax-e _%g103978104012%_)))
                      (let ((_%hd103983104019%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103982104015%_)))
                            (_%tl103984104022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103982104015%_))))
                        (if (gx#stx-pair? _%tl103984104022%_)
                            (let ((_%e103985104025%_
                                   (gx#syntax-e _%tl103984104022%_)))
                              (let ((_%hd103986104029%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103985104025%_)))
                                    (_%tl103987104032%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103985104025%_))))
                                (if (gx#stx-pair? _%tl103987104032%_)
                                    (let ((_%e103988104035%_
                                           (gx#syntax-e _%tl103987104032%_)))
                                      (let ((_%hd103989104039%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103988104035%_)))
                                            (_%tl103990104042%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103988104035%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd103989104039%_)
                                            (let ((_g109564_
                                                   (gx#syntax-split-splice
                                                    _%hd103989104039%_
                                                    '0)))
                                              (begin
                                                (let ((_g109565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g109564_)
                                                             (##values-length
                                                              _g109564_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g109565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g109565_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target103991104045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g109564_
                                                          0)))
                                                      (_%tl103993104048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g109564_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl103993104048%_)
                                                      (letrec ((_%loop103994104051%_
                                                                (lambda (_%hd103992104055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super103998104058%_)
                          (if (gx#stx-pair? _%hd103992104055%_)
                              (let ((_%e103995104061%_
                                     (gx#syntax-e _%hd103992104055%_)))
                                (let ((_%lp-hd103996104065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103995104061%_)))
                                      (_%lp-tl103997104068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103995104061%_))))
                                  (_%loop103994104051%_
                                   _%lp-tl103997104068%_
                                   (cons _%lp-hd103996104065%_
                                         _%super103998104058%_))))
                              (let ((_%super103999104071%_
                                     (reverse _%super103998104058%_)))
                                (if (gx#stx-pair? _%tl103990104042%_)
                                    (let ((_%e104000104075%_
                                           (gx#syntax-e _%tl103990104042%_)))
                                      (let ((_%hd104001104079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e104000104075%_)))
                                            (_%tl104002104082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e104000104075%_))))
                                        (if (gx#stx-null? _%tl104002104082%_)
                                            ((lambda (_%L104085%_
                                                      _%L104087%_
                                                      _%L104088%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L104088%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L104088%_
                                                 (cons (let ((__tmp109566
                                                              (lambda (_%g104110104113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g104111104116%_)
                        (cons _%g104110104113%_ _%g104111104116%_))))
                 (declare (not safe))
                 (__foldr1 __tmp109566 '() _%L104087%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L104085%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd104001104079%_
                                             _%super103999104071%_
                                             _%hd103986104029%_)
                                            (_%g103977104008%_
                                             _%g103978104012%_))))
                                    (_%g103977104008%_ _%g103978104012%_)))))))
                (_%loop103994104051%_ _%target103991104045%_ '()))
              (_%g103977104008%_ _%g103978104012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g103977104008%_
                                             _%g103978104012%_))))
                                    (_%g103977104008%_ _%g103978104012%_))))
                            (_%g103977104008%_ _%g103978104012%_))))
                    (_%g103977104008%_ _%g103978104012%_)))))
        (_%g103976104119%_ _%$stx103973%_)))))
