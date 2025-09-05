(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx102707%_)
      (let* ((_%__stx109265109266%_ _%$stx102707%_)
             (_%g102712102741%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx109265109266%_))))
        (let ((_%__kont109268109269%_
               (lambda (_%L102834%_ _%L102836%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L102836%_ (cons _%L102834%_ '())))
                             (cons _%L102834%_ '())))))
              (_%__kont109270109271%_
               (lambda (_%L102778%_ _%L102780%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L102778%_ (cons _%L102778%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L102780%_
                                                           (cons _%L102778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L102778%_ '())))
                                   '()))))))
          (let ((_%__match109292109293%_
                 (lambda (_%e102716102804%_
                          _%hd102717102808%_
                          _%tl102718102811%_
                          _%e102719102814%_
                          _%hd102720102818%_
                          _%tl102721102821%_
                          _%e102722102824%_
                          _%hd102723102828%_
                          _%tl102724102831%_)
                   (let ((_%L102834%_ _%hd102723102828%_)
                         (_%L102836%_ _%hd102720102818%_))
                     (if (or (gx#identifier? _%L102834%_)
                             (gx#stx-fixnum? _%L102834%_))
                         (_%__kont109268109269%_ _%L102834%_ _%L102836%_)
                         (_%__kont109270109271%_
                          _%hd102723102828%_
                          _%hd102720102818%_))))))
            (if (gx#stx-pair? _%__stx109265109266%_)
                (let ((_%e102716102804%_ (gx#syntax-e _%__stx109265109266%_)))
                  (let ((_%tl102718102811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102716102804%_)))
                        (_%hd102717102808%_
                         (let ()
                           (declare (not safe))
                           (##car _%e102716102804%_))))
                    (if (gx#stx-pair? _%tl102718102811%_)
                        (let ((_%e102719102814%_
                               (gx#syntax-e _%tl102718102811%_)))
                          (let ((_%tl102721102821%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e102719102814%_)))
                                (_%hd102720102818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e102719102814%_))))
                            (if (gx#stx-pair? _%tl102721102821%_)
                                (let ((_%e102722102824%_
                                       (gx#syntax-e _%tl102721102821%_)))
                                  (let ((_%tl102724102831%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102722102824%_)))
                                        (_%hd102723102828%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102722102824%_))))
                                    (if (gx#stx-null? _%tl102724102831%_)
                                        (_%__match109292109293%_
                                         _%e102716102804%_
                                         _%hd102717102808%_
                                         _%tl102718102811%_
                                         _%e102719102814%_
                                         _%hd102720102818%_
                                         _%tl102721102821%_
                                         _%e102722102824%_
                                         _%hd102723102828%_
                                         _%tl102724102831%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g102712102741%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g102712102741%_)))))
                        (let () (declare (not safe)) (_%g102712102741%_)))))
                (let () (declare (not safe)) (_%g102712102741%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx102859%_)
      (let* ((_%__stx109315109316%_ _%$stx102859%_)
             (_%g102864102893%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx109315109316%_))))
        (let ((_%__kont109318109319%_
               (lambda (_%L102985%_ _%L102987%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L102987%_ (cons _%L102985%_ '())))
                             (cons '0 '())))))
              (_%__kont109320109321%_
               (lambda (_%L102930%_ _%L102932%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L102930%_ (cons _%L102930%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L102932%_
                                                           (cons _%L102930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match109342109343%_
                 (lambda (_%e102868102955%_
                          _%hd102869102959%_
                          _%tl102870102962%_
                          _%e102871102965%_
                          _%hd102872102969%_
                          _%tl102873102972%_
                          _%e102874102975%_
                          _%hd102875102979%_
                          _%tl102876102982%_)
                   (let ((_%L102985%_ _%hd102875102979%_)
                         (_%L102987%_ _%hd102872102969%_))
                     (if (or (gx#identifier? _%L102985%_)
                             (gx#stx-fixnum? _%L102985%_))
                         (_%__kont109318109319%_ _%L102985%_ _%L102987%_)
                         (_%__kont109320109321%_
                          _%hd102875102979%_
                          _%hd102872102969%_))))))
            (if (gx#stx-pair? _%__stx109315109316%_)
                (let ((_%e102868102955%_ (gx#syntax-e _%__stx109315109316%_)))
                  (let ((_%tl102870102962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102868102955%_)))
                        (_%hd102869102959%_
                         (let ()
                           (declare (not safe))
                           (##car _%e102868102955%_))))
                    (if (gx#stx-pair? _%tl102870102962%_)
                        (let ((_%e102871102965%_
                               (gx#syntax-e _%tl102870102962%_)))
                          (let ((_%tl102873102972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e102871102965%_)))
                                (_%hd102872102969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e102871102965%_))))
                            (if (gx#stx-pair? _%tl102873102972%_)
                                (let ((_%e102874102975%_
                                       (gx#syntax-e _%tl102873102972%_)))
                                  (let ((_%tl102876102982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102874102975%_)))
                                        (_%hd102875102979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102874102975%_))))
                                    (if (gx#stx-null? _%tl102876102982%_)
                                        (_%__match109342109343%_
                                         _%e102868102955%_
                                         _%hd102869102959%_
                                         _%tl102870102962%_
                                         _%e102871102965%_
                                         _%hd102872102969%_
                                         _%tl102873102972%_
                                         _%e102874102975%_
                                         _%hd102875102979%_
                                         _%tl102876102982%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g102864102893%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g102864102893%_)))))
                        (let () (declare (not safe)) (_%g102864102893%_)))))
                (let () (declare (not safe)) (_%g102864102893%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx103010%_)
      (let* ((_%g103013103034%_
              (lambda (_%g103014103030%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103014103030%_)))
             (_%g103012103262%_
              (lambda (_%g103014103038%_)
                (if (gx#stx-pair? _%g103014103038%_)
                    (let ((_%e103017103041%_ (gx#syntax-e _%g103014103038%_)))
                      (let ((_%hd103018103045%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103017103041%_)))
                            (_%tl103019103048%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103017103041%_))))
                        (if (gx#stx-pair? _%tl103019103048%_)
                            (let ((_%e103020103051%_
                                   (gx#syntax-e _%tl103019103048%_)))
                              (let ((_%hd103021103055%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103020103051%_)))
                                    (_%tl103022103058%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103020103051%_))))
                                (if (gx#stx-pair? _%hd103021103055%_)
                                    (let ((_%e103023103061%_
                                           (gx#syntax-e _%hd103021103055%_)))
                                      (let ((_%hd103024103065%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103023103061%_)))
                                            (_%tl103025103068%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103023103061%_))))
                                        (if (gx#stx-pair? _%tl103025103068%_)
                                            (let ((_%e103026103071%_
                                                   (gx#syntax-e
                                                    _%tl103025103068%_)))
                                              (let ((_%hd103027103075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103026103071%_)))
                                                    (_%tl103028103078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103026103071%_))))
                                                (if (gx#stx-null?
                                                     _%tl103028103078%_)
                                                    (if (gx#stx-null?
                                                         _%tl103022103058%_)
                                                        ((lambda (_%L103081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L103083%_)
                   (let* ((_%g103101103109%_
                           (lambda (_%g103102103105%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g103102103105%_)))
                          (_%g103100103258%_
                           (lambda (_%g103102103113%_)
                             ((lambda (_%L103116%_)
                                (let* ((_%g103128103136%_
                                        (lambda (_%g103129103132%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g103129103132%_)))
                                       (_%g103127103254%_
                                        (lambda (_%g103129103140%_)
                                          ((lambda (_%L103143%_)
                                             (let* ((_%g103156103164%_
                                                     (lambda (_%g103157103160%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g103157103160%_)))
                                                    (_%g103155103250%_
                                                     (lambda (_%g103157103168%_)
                                                       ((lambda (_%L103171%_)
                                                          (let* ((_%g103184103192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g103185103188%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g103185103188%_)))
                         (_%g103183103246%_
                          (lambda (_%g103185103196%_)
                            ((lambda (_%L103199%_)
                               (let* ((_%g103212103220%_
                                       (lambda (_%g103213103216%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g103213103216%_)))
                                      (_%g103211103242%_
                                       (lambda (_%g103213103224%_)
                                         ((lambda (_%L103227%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L103143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L103116%_
                                                          (cons _%L103083%_
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
                                          (cons _%L103081%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L103083%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L103171%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L103116%_
                                                                (cons _%L103083%_
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
                                                (cons _%L103081%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L103083%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L103199%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L103116%_ (cons _%L103083%_ (cons '#t '()))))
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
                                                            (cons _%L103081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L103083%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L103227%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L103116%_
                                    (cons _%L103083%_ (cons '#f '()))))
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
                          (cons _%L103081%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L103083%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103213103224%_))))
                                 (_%g103211103242%_
                                  (gx#stx-identifier
                                   _%L103083%_
                                   '"&"
                                   _%L103199%_))))
                             _%g103185103196%_))))
                    (_%g103183103246%_
                     (gx#stx-identifier _%L103083%_ _%L103143%_ '"-set!"))))
                _%g103157103168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g103155103250%_
                                                (gx#stx-identifier
                                                 _%L103083%_
                                                 '"&"
                                                 _%L103143%_))))
                                           _%g103129103140%_))))
                                  (_%g103127103254%_
                                   (gx#stx-identifier
                                    _%L103083%_
                                    '"class-type-"
                                    _%L103083%_))))
                              _%g103102103113%_))))
                     (_%g103100103258%_ (gx#core-quote-syntax 'class::t))))
                 _%hd103027103075%_
                 _%hd103024103065%_)
                (_%g103013103034%_ _%g103014103038%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103013103034%_
                                                     _%g103014103038%_))))
                                            (_%g103013103034%_
                                             _%g103014103038%_))))
                                    (_%g103013103034%_ _%g103014103038%_))))
                            (_%g103013103034%_ _%g103014103038%_))))
                    (_%g103013103034%_ _%g103014103038%_)))))
        (_%g103012103262%_ _%stx103010%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx103266%_)
      (let* ((_%g103270103299%_
              (lambda (_%g103271103295%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103271103295%_)))
             (_%g103269103399%_
              (lambda (_%g103271103303%_)
                (if (gx#stx-pair? _%g103271103303%_)
                    (let ((_%e103274103306%_ (gx#syntax-e _%g103271103303%_)))
                      (let ((_%hd103275103310%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103274103306%_)))
                            (_%tl103276103313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103274103306%_))))
                        (if (gx#stx-pair/null? _%tl103276103313%_)
                            (let ((_g109552_
                                   (gx#syntax-split-splice
                                    _%tl103276103313%_
                                    '0)))
                              (begin
                                (let ((_g109553_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109552_)
                                             (##values-length _g109552_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109553_ 2)))
                                      (error "Context expects 2 values"
                                             _g109553_)))
                                (let ((_%target103277103316%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109552_ 0)))
                                      (_%tl103279103319%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109552_ 1))))
                                  (if (gx#stx-null? _%tl103279103319%_)
                                      (letrec ((_%loop103280103322%_
                                                (lambda (_%hd103278103326%_
                                                         _%field103284103329%_
                                                         _%slot103285103331%_)
                                                  (if (gx#stx-pair?
                                                       _%hd103278103326%_)
                                                      (let ((_%e103281103334%_
                                                             (gx#syntax-e
                                                              _%hd103278103326%_)))
                                                        (let ((_%lp-hd103282103338%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e103281103334%_)))
                      (_%lp-tl103283103341%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e103281103334%_))))
                  (if (gx#stx-pair? _%lp-hd103282103338%_)
                      (let ((_%e103288103344%_
                             (gx#syntax-e _%lp-hd103282103338%_)))
                        (let ((_%hd103289103348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e103288103344%_)))
                              (_%tl103290103351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e103288103344%_))))
                          (if (gx#stx-pair? _%tl103290103351%_)
                              (let ((_%e103291103354%_
                                     (gx#syntax-e _%tl103290103351%_)))
                                (let ((_%hd103292103358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103291103354%_)))
                                      (_%tl103293103361%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103291103354%_))))
                                  (if (gx#stx-null? _%tl103293103361%_)
                                      (_%loop103280103322%_
                                       _%lp-tl103283103341%_
                                       (cons _%hd103292103358%_
                                             _%field103284103329%_)
                                       (cons _%hd103289103348%_
                                             _%slot103285103331%_))
                                      (_%g103270103299%_ _%g103271103303%_))))
                              (_%g103270103299%_ _%g103271103303%_))))
                      (_%g103270103299%_ _%g103271103303%_))))
              (let ((_%field103286103364%_ (reverse _%field103284103329%_))
                    (_%slot103287103367%_ (reverse _%slot103285103331%_)))
                ((lambda (_%L103370%_ _%L103372%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L103370%_
                            _%L103372%_)
                           (let ((__tmp109554
                                  (lambda (_%g103387103391%_
                                           _%g103388103394%_
                                           _%g103389103396%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g103388103394%_
                                                            (cons _%g103387103391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103389103396%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp109554
                              '()
                              _%L103370%_
                              _%L103372%_)))))
                 _%field103286103364%_
                 _%slot103287103367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop103280103322%_
                                         _%target103277103316%_
                                         '()
                                         '()))
                                      (_%g103270103299%_ _%g103271103303%_)))))
                            (_%g103270103299%_ _%g103271103303%_))))
                    (_%g103270103299%_ _%g103271103303%_)))))
        (_%g103269103399%_ _%$stx103266%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx103404%_)
      (let* ((_%g103408103442%_
              (lambda (_%g103409103438%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103409103438%_)))
             (_%g103407103553%_
              (lambda (_%g103409103446%_)
                (if (gx#stx-pair? _%g103409103446%_)
                    (let ((_%e103416103449%_ (gx#syntax-e _%g103409103446%_)))
                      (let ((_%hd103417103453%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103416103449%_)))
                            (_%tl103418103456%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103416103449%_))))
                        (if (gx#stx-pair? _%tl103418103456%_)
                            (let ((_%e103419103459%_
                                   (gx#syntax-e _%tl103418103456%_)))
                              (let ((_%hd103420103463%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103419103459%_)))
                                    (_%tl103421103466%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103419103459%_))))
                                (if (gx#stx-pair? _%tl103421103466%_)
                                    (let ((_%e103422103469%_
                                           (gx#syntax-e _%tl103421103466%_)))
                                      (let ((_%hd103423103473%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103422103469%_)))
                                            (_%tl103424103476%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103422103469%_))))
                                        (if (gx#stx-pair? _%tl103424103476%_)
                                            (let ((_%e103425103479%_
                                                   (gx#syntax-e
                                                    _%tl103424103476%_)))
                                              (let ((_%hd103426103483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103425103479%_)))
                                                    (_%tl103427103486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103425103479%_))))
                                                (if (gx#stx-pair?
                                                     _%tl103427103486%_)
                                                    (let ((_%e103428103489%_
                                                           (gx#syntax-e
                                                            _%tl103427103486%_)))
                                                      (let ((_%hd103429103493%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e103428103489%_)))
                    (_%tl103430103496%_
                     (let () (declare (not safe)) (##cdr _%e103428103489%_))))
                (if (gx#stx-pair? _%tl103430103496%_)
                    (let ((_%e103431103499%_ (gx#syntax-e _%tl103430103496%_)))
                      (let ((_%hd103432103503%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103431103499%_)))
                            (_%tl103433103506%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103431103499%_))))
                        (if (gx#stx-pair? _%tl103433103506%_)
                            (let ((_%e103434103509%_
                                   (gx#syntax-e _%tl103433103506%_)))
                              (let ((_%hd103435103513%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103434103509%_)))
                                    (_%tl103436103516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103434103509%_))))
                                (if (gx#stx-null? _%tl103436103516%_)
                                    ((lambda (_%L103519%_
                                              _%L103521%_
                                              _%L103522%_
                                              _%L103523%_
                                              _%L103524%_
                                              _%L103525%_)
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
                                         (cons _%L103525%_ '()))
                                   (cons _%L103524%_ (cons '#f '()))))
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
                               (cons _%L103525%_
                                     (cons 'slot: (cons _%L103524%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L103525%_ '()))
                                         (cons (cons _%L103523%_
                                                     (cons _%L103525%_
                                                           (cons _%L103524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L103525%_ '()))
                                               (cons (cons _%L103522%_
                                                           (cons _%L103525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L103524%_
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
                                           (cons _%L103525%_ '()))
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
                                                     (cons (cons _%L103521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L103525%_
                               (cons _%L103524%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L103519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L103525%_
                                     (cons _%L103524%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd103435103513%_
                                     _%hd103432103503%_
                                     _%hd103429103493%_
                                     _%hd103426103483%_
                                     _%hd103423103473%_
                                     _%hd103420103463%_)
                                    (_%g103408103442%_ _%g103409103446%_))))
                            (_%g103408103442%_ _%g103409103446%_))))
                    (_%g103408103442%_ _%g103409103446%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103408103442%_
                                                     _%g103409103446%_))))
                                            (_%g103408103442%_
                                             _%g103409103446%_))))
                                    (_%g103408103442%_ _%g103409103446%_))))
                            (_%g103408103442%_ _%g103409103446%_))))
                    (_%g103408103442%_ _%g103409103446%_)))))
        (_%g103407103553%_ _%$stx103404%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx103557%_)
      (let* ((_%g103561103587%_
              (lambda (_%g103562103583%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103562103583%_)))
             (_%g103560103670%_
              (lambda (_%g103562103591%_)
                (if (gx#stx-pair? _%g103562103591%_)
                    (let ((_%e103567103594%_ (gx#syntax-e _%g103562103591%_)))
                      (let ((_%hd103568103598%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103567103594%_)))
                            (_%tl103569103601%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103567103594%_))))
                        (if (gx#stx-pair? _%tl103569103601%_)
                            (let ((_%e103570103604%_
                                   (gx#syntax-e _%tl103569103601%_)))
                              (let ((_%hd103571103608%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103570103604%_)))
                                    (_%tl103572103611%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103570103604%_))))
                                (if (gx#stx-pair? _%tl103572103611%_)
                                    (let ((_%e103573103614%_
                                           (gx#syntax-e _%tl103572103611%_)))
                                      (let ((_%hd103574103618%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103573103614%_)))
                                            (_%tl103575103621%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103573103614%_))))
                                        (if (gx#stx-pair? _%tl103575103621%_)
                                            (let ((_%e103576103624%_
                                                   (gx#syntax-e
                                                    _%tl103575103621%_)))
                                              (let ((_%hd103577103628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103576103624%_)))
                                                    (_%tl103578103631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103576103624%_))))
                                                (if (gx#stx-pair?
                                                     _%tl103578103631%_)
                                                    (let ((_%e103579103634%_
                                                           (gx#syntax-e
                                                            _%tl103578103631%_)))
                                                      (let ((_%hd103580103638%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e103579103634%_)))
                    (_%tl103581103641%_
                     (let () (declare (not safe)) (##cdr _%e103579103634%_))))
                (if (gx#stx-null? _%tl103581103641%_)
                    ((lambda (_%L103644%_ _%L103646%_ _%L103647%_ _%L103648%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L103648%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L103647%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L103646%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L103644%_
                                     (cons _%L103648%_ (cons _%L103647%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd103580103638%_
                     _%hd103577103628%_
                     _%hd103574103618%_
                     _%hd103571103608%_)
                    (_%g103561103587%_ _%g103562103591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103561103587%_
                                                     _%g103562103591%_))))
                                            (_%g103561103587%_
                                             _%g103562103591%_))))
                                    (_%g103561103587%_ _%g103562103591%_))))
                            (_%g103561103587%_ _%g103562103591%_))))
                    (_%g103561103587%_ _%g103562103591%_)))))
        (_%g103560103670%_ _%$stx103557%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx103674%_)
      (let* ((_%g103678103707%_
              (lambda (_%g103679103703%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103679103703%_)))
             (_%g103677103807%_
              (lambda (_%g103679103711%_)
                (if (gx#stx-pair? _%g103679103711%_)
                    (let ((_%e103682103714%_ (gx#syntax-e _%g103679103711%_)))
                      (let ((_%hd103683103718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103682103714%_)))
                            (_%tl103684103721%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103682103714%_))))
                        (if (gx#stx-pair/null? _%tl103684103721%_)
                            (let ((_g109555_
                                   (gx#syntax-split-splice
                                    _%tl103684103721%_
                                    '0)))
                              (begin
                                (let ((_g109556_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109555_)
                                             (##values-length _g109555_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109556_ 2)))
                                      (error "Context expects 2 values"
                                             _g109556_)))
                                (let ((_%target103685103724%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109555_ 0)))
                                      (_%tl103687103727%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109555_ 1))))
                                  (if (gx#stx-null? _%tl103687103727%_)
                                      (letrec ((_%loop103688103730%_
                                                (lambda (_%hd103686103734%_
                                                         _%name103692103737%_
                                                         _%t103693103739%_)
                                                  (if (gx#stx-pair?
                                                       _%hd103686103734%_)
                                                      (let ((_%e103689103742%_
                                                             (gx#syntax-e
                                                              _%hd103686103734%_)))
                                                        (let ((_%lp-hd103690103746%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e103689103742%_)))
                      (_%lp-tl103691103749%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e103689103742%_))))
                  (if (gx#stx-pair? _%lp-hd103690103746%_)
                      (let ((_%e103696103752%_
                             (gx#syntax-e _%lp-hd103690103746%_)))
                        (let ((_%hd103697103756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e103696103752%_)))
                              (_%tl103698103759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e103696103752%_))))
                          (if (gx#stx-pair? _%tl103698103759%_)
                              (let ((_%e103699103762%_
                                     (gx#syntax-e _%tl103698103759%_)))
                                (let ((_%hd103700103766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103699103762%_)))
                                      (_%tl103701103769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103699103762%_))))
                                  (if (gx#stx-null? _%tl103701103769%_)
                                      (_%loop103688103730%_
                                       _%lp-tl103691103749%_
                                       (cons _%hd103700103766%_
                                             _%name103692103737%_)
                                       (cons _%hd103697103756%_
                                             _%t103693103739%_))
                                      (_%g103678103707%_ _%g103679103711%_))))
                              (_%g103678103707%_ _%g103679103711%_))))
                      (_%g103678103707%_ _%g103679103711%_))))
              (let ((_%name103694103772%_ (reverse _%name103692103737%_))
                    (_%t103695103775%_ (reverse _%t103693103739%_)))
                ((lambda (_%L103778%_ _%L103780%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L103778%_
                            _%L103780%_)
                           (let ((__tmp109557
                                  (lambda (_%g103795103799%_
                                           _%g103796103802%_
                                           _%g103797103804%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g103796103802%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g103795103799%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103797103804%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp109557
                              '()
                              _%L103778%_
                              _%L103780%_)))))
                 _%name103694103772%_
                 _%t103695103775%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop103688103730%_
                                         _%target103685103724%_
                                         '()
                                         '()))
                                      (_%g103678103707%_ _%g103679103711%_)))))
                            (_%g103678103707%_ _%g103679103711%_))))
                    (_%g103678103707%_ _%g103679103711%_)))))
        (_%g103677103807%_ _%$stx103674%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx103812%_)
      (let* ((_%g103816103847%_
              (lambda (_%g103817103843%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103817103843%_)))
             (_%g103815103966%_
              (lambda (_%g103817103851%_)
                (if (gx#stx-pair? _%g103817103851%_)
                    (let ((_%e103821103854%_ (gx#syntax-e _%g103817103851%_)))
                      (let ((_%hd103822103858%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103821103854%_)))
                            (_%tl103823103861%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103821103854%_))))
                        (if (gx#stx-pair? _%tl103823103861%_)
                            (let ((_%e103824103864%_
                                   (gx#syntax-e _%tl103823103861%_)))
                              (let ((_%hd103825103868%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103824103864%_)))
                                    (_%tl103826103871%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103824103864%_))))
                                (if (gx#stx-pair? _%tl103826103871%_)
                                    (let ((_%e103827103874%_
                                           (gx#syntax-e _%tl103826103871%_)))
                                      (let ((_%hd103828103878%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103827103874%_)))
                                            (_%tl103829103881%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103827103874%_))))
                                        (if (gx#stx-pair? _%tl103829103881%_)
                                            (let ((_%e103830103884%_
                                                   (gx#syntax-e
                                                    _%tl103829103881%_)))
                                              (let ((_%hd103831103888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103830103884%_)))
                                                    (_%tl103832103891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103830103884%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd103831103888%_)
                                                    (let ((_g109558_
                                                           (gx#syntax-split-splice
                                                            _%hd103831103888%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g109559_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g109558_)
                             (##values-length _g109558_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g109559_ 2)))
                      (error "Context expects 2 values" _g109559_)))
                (let ((_%target103833103894%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109558_ 0)))
                      (_%tl103835103897%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109558_ 1))))
                  (if (gx#stx-null? _%tl103835103897%_)
                      (letrec ((_%loop103836103900%_
                                (lambda (_%hd103834103904%_
                                         _%super103840103907%_)
                                  (if (gx#stx-pair? _%hd103834103904%_)
                                      (let ((_%e103837103910%_
                                             (gx#syntax-e _%hd103834103904%_)))
                                        (let ((_%lp-hd103838103914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e103837103910%_)))
                                              (_%lp-tl103839103917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e103837103910%_))))
                                          (_%loop103836103900%_
                                           _%lp-tl103839103917%_
                                           (cons _%lp-hd103838103914%_
                                                 _%super103840103907%_))))
                                      (let ((_%super103841103920%_
                                             (reverse _%super103840103907%_)))
                                        (if (gx#stx-null? _%tl103832103891%_)
                                            ((lambda (_%L103924%_
                                                      _%L103926%_
                                                      _%L103927%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L103927%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L103926%_
                                                 (cons (let ((__tmp109560
                                                              (lambda (_%g103949103954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g103950103957%_)
                        (cons _%g103949103954%_ _%g103950103957%_))))
                 (declare (not safe))
                 (__foldr1 __tmp109560 '() _%L103924%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L103926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp109561
                                  (lambda (_%g103951103960%_ _%g103952103963%_)
                                    (cons _%g103951103960%_
                                          _%g103952103963%_))))
                             (declare (not safe))
                             (__foldr1 __tmp109561 '() _%L103924%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super103841103920%_
                                             _%hd103828103878%_
                                             _%hd103825103868%_)
                                            (_%g103816103847%_
                                             _%g103817103851%_)))))))
                        (_%loop103836103900%_ _%target103833103894%_ '()))
                      (_%g103816103847%_ _%g103817103851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103816103847%_
                                                     _%g103817103851%_))))
                                            (_%g103816103847%_
                                             _%g103817103851%_))))
                                    (_%g103816103847%_ _%g103817103851%_))))
                            (_%g103816103847%_ _%g103817103851%_))))
                    (_%g103816103847%_ _%g103817103851%_)))))
        (_%g103815103966%_ _%$stx103812%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx103971%_)
      (let* ((_%g103975104006%_
              (lambda (_%g103976104002%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103976104002%_)))
             (_%g103974104117%_
              (lambda (_%g103976104010%_)
                (if (gx#stx-pair? _%g103976104010%_)
                    (let ((_%e103980104013%_ (gx#syntax-e _%g103976104010%_)))
                      (let ((_%hd103981104017%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103980104013%_)))
                            (_%tl103982104020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103980104013%_))))
                        (if (gx#stx-pair? _%tl103982104020%_)
                            (let ((_%e103983104023%_
                                   (gx#syntax-e _%tl103982104020%_)))
                              (let ((_%hd103984104027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103983104023%_)))
                                    (_%tl103985104030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103983104023%_))))
                                (if (gx#stx-pair? _%tl103985104030%_)
                                    (let ((_%e103986104033%_
                                           (gx#syntax-e _%tl103985104030%_)))
                                      (let ((_%hd103987104037%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103986104033%_)))
                                            (_%tl103988104040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103986104033%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd103987104037%_)
                                            (let ((_g109562_
                                                   (gx#syntax-split-splice
                                                    _%hd103987104037%_
                                                    '0)))
                                              (begin
                                                (let ((_g109563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g109562_)
                                                             (##values-length
                                                              _g109562_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g109563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g109563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target103989104043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g109562_
                                                          0)))
                                                      (_%tl103991104046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g109562_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl103991104046%_)
                                                      (letrec ((_%loop103992104049%_
                                                                (lambda (_%hd103990104053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super103996104056%_)
                          (if (gx#stx-pair? _%hd103990104053%_)
                              (let ((_%e103993104059%_
                                     (gx#syntax-e _%hd103990104053%_)))
                                (let ((_%lp-hd103994104063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103993104059%_)))
                                      (_%lp-tl103995104066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103993104059%_))))
                                  (_%loop103992104049%_
                                   _%lp-tl103995104066%_
                                   (cons _%lp-hd103994104063%_
                                         _%super103996104056%_))))
                              (let ((_%super103997104069%_
                                     (reverse _%super103996104056%_)))
                                (if (gx#stx-pair? _%tl103988104040%_)
                                    (let ((_%e103998104073%_
                                           (gx#syntax-e _%tl103988104040%_)))
                                      (let ((_%hd103999104077%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103998104073%_)))
                                            (_%tl104000104080%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103998104073%_))))
                                        (if (gx#stx-null? _%tl104000104080%_)
                                            ((lambda (_%L104083%_
                                                      _%L104085%_
                                                      _%L104086%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L104086%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L104086%_
                                                 (cons (let ((__tmp109564
                                                              (lambda (_%g104108104111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g104109104114%_)
                        (cons _%g104108104111%_ _%g104109104114%_))))
                 (declare (not safe))
                 (__foldr1 __tmp109564 '() _%L104085%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L104083%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd103999104077%_
                                             _%super103997104069%_
                                             _%hd103984104027%_)
                                            (_%g103975104006%_
                                             _%g103976104010%_))))
                                    (_%g103975104006%_ _%g103976104010%_)))))))
                (_%loop103992104049%_ _%target103989104043%_ '()))
              (_%g103975104006%_ _%g103976104010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g103975104006%_
                                             _%g103976104010%_))))
                                    (_%g103975104006%_ _%g103976104010%_))))
                            (_%g103975104006%_ _%g103976104010%_))))
                    (_%g103975104006%_ _%g103976104010%_)))))
        (_%g103974104117%_ _%$stx103971%_)))))
