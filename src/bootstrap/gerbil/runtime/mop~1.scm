(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx102292%_)
      (let* ((_%__stx108850108851%_ _%$stx102292%_)
             (_%g102297102326%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx108850108851%_))))
        (let ((_%__kont108853108854%_
               (lambda (_%L102419%_ _%L102421%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L102421%_ (cons _%L102419%_ '())))
                             (cons _%L102419%_ '())))))
              (_%__kont108855108856%_
               (lambda (_%L102363%_ _%L102365%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L102363%_ (cons _%L102363%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L102365%_
                                                           (cons _%L102363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L102363%_ '())))
                                   '()))))))
          (let ((_%__match108877108878%_
                 (lambda (_%e102301102389%_
                          _%hd102302102393%_
                          _%tl102303102396%_
                          _%e102304102399%_
                          _%hd102305102403%_
                          _%tl102306102406%_
                          _%e102307102409%_
                          _%hd102308102413%_
                          _%tl102309102416%_)
                   (let ((_%L102419%_ _%hd102308102413%_)
                         (_%L102421%_ _%hd102305102403%_))
                     (if (or (gx#identifier? _%L102419%_)
                             (gx#stx-fixnum? _%L102419%_))
                         (_%__kont108853108854%_ _%L102419%_ _%L102421%_)
                         (_%__kont108855108856%_
                          _%hd102308102413%_
                          _%hd102305102403%_))))))
            (if (gx#stx-pair? _%__stx108850108851%_)
                (let ((_%e102301102389%_ (gx#syntax-e _%__stx108850108851%_)))
                  (let ((_%tl102303102396%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102301102389%_)))
                        (_%hd102302102393%_
                         (let ()
                           (declare (not safe))
                           (##car _%e102301102389%_))))
                    (if (gx#stx-pair? _%tl102303102396%_)
                        (let ((_%e102304102399%_
                               (gx#syntax-e _%tl102303102396%_)))
                          (let ((_%tl102306102406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e102304102399%_)))
                                (_%hd102305102403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e102304102399%_))))
                            (if (gx#stx-pair? _%tl102306102406%_)
                                (let ((_%e102307102409%_
                                       (gx#syntax-e _%tl102306102406%_)))
                                  (let ((_%tl102309102416%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102307102409%_)))
                                        (_%hd102308102413%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102307102409%_))))
                                    (if (gx#stx-null? _%tl102309102416%_)
                                        (_%__match108877108878%_
                                         _%e102301102389%_
                                         _%hd102302102393%_
                                         _%tl102303102396%_
                                         _%e102304102399%_
                                         _%hd102305102403%_
                                         _%tl102306102406%_
                                         _%e102307102409%_
                                         _%hd102308102413%_
                                         _%tl102309102416%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g102297102326%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g102297102326%_)))))
                        (let () (declare (not safe)) (_%g102297102326%_)))))
                (let () (declare (not safe)) (_%g102297102326%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx102444%_)
      (let* ((_%__stx108900108901%_ _%$stx102444%_)
             (_%g102449102478%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx108900108901%_))))
        (let ((_%__kont108903108904%_
               (lambda (_%L102570%_ _%L102572%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L102572%_ (cons _%L102570%_ '())))
                             (cons '0 '())))))
              (_%__kont108905108906%_
               (lambda (_%L102515%_ _%L102517%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L102515%_ (cons _%L102515%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L102517%_
                                                           (cons _%L102515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match108927108928%_
                 (lambda (_%e102453102540%_
                          _%hd102454102544%_
                          _%tl102455102547%_
                          _%e102456102550%_
                          _%hd102457102554%_
                          _%tl102458102557%_
                          _%e102459102560%_
                          _%hd102460102564%_
                          _%tl102461102567%_)
                   (let ((_%L102570%_ _%hd102460102564%_)
                         (_%L102572%_ _%hd102457102554%_))
                     (if (or (gx#identifier? _%L102570%_)
                             (gx#stx-fixnum? _%L102570%_))
                         (_%__kont108903108904%_ _%L102570%_ _%L102572%_)
                         (_%__kont108905108906%_
                          _%hd102460102564%_
                          _%hd102457102554%_))))))
            (if (gx#stx-pair? _%__stx108900108901%_)
                (let ((_%e102453102540%_ (gx#syntax-e _%__stx108900108901%_)))
                  (let ((_%tl102455102547%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e102453102540%_)))
                        (_%hd102454102544%_
                         (let ()
                           (declare (not safe))
                           (##car _%e102453102540%_))))
                    (if (gx#stx-pair? _%tl102455102547%_)
                        (let ((_%e102456102550%_
                               (gx#syntax-e _%tl102455102547%_)))
                          (let ((_%tl102458102557%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e102456102550%_)))
                                (_%hd102457102554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e102456102550%_))))
                            (if (gx#stx-pair? _%tl102458102557%_)
                                (let ((_%e102459102560%_
                                       (gx#syntax-e _%tl102458102557%_)))
                                  (let ((_%tl102461102567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e102459102560%_)))
                                        (_%hd102460102564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e102459102560%_))))
                                    (if (gx#stx-null? _%tl102461102567%_)
                                        (_%__match108927108928%_
                                         _%e102453102540%_
                                         _%hd102454102544%_
                                         _%tl102455102547%_
                                         _%e102456102550%_
                                         _%hd102457102554%_
                                         _%tl102458102557%_
                                         _%e102459102560%_
                                         _%hd102460102564%_
                                         _%tl102461102567%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g102449102478%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g102449102478%_)))))
                        (let () (declare (not safe)) (_%g102449102478%_)))))
                (let () (declare (not safe)) (_%g102449102478%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx102595%_)
      (let* ((_%g102598102619%_
              (lambda (_%g102599102615%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102599102615%_)))
             (_%g102597102847%_
              (lambda (_%g102599102623%_)
                (if (gx#stx-pair? _%g102599102623%_)
                    (let ((_%e102602102626%_ (gx#syntax-e _%g102599102623%_)))
                      (let ((_%hd102603102630%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102602102626%_)))
                            (_%tl102604102633%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102602102626%_))))
                        (if (gx#stx-pair? _%tl102604102633%_)
                            (let ((_%e102605102636%_
                                   (gx#syntax-e _%tl102604102633%_)))
                              (let ((_%hd102606102640%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102605102636%_)))
                                    (_%tl102607102643%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102605102636%_))))
                                (if (gx#stx-pair? _%hd102606102640%_)
                                    (let ((_%e102608102646%_
                                           (gx#syntax-e _%hd102606102640%_)))
                                      (let ((_%hd102609102650%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102608102646%_)))
                                            (_%tl102610102653%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102608102646%_))))
                                        (if (gx#stx-pair? _%tl102610102653%_)
                                            (let ((_%e102611102656%_
                                                   (gx#syntax-e
                                                    _%tl102610102653%_)))
                                              (let ((_%hd102612102660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102611102656%_)))
                                                    (_%tl102613102663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102611102656%_))))
                                                (if (gx#stx-null?
                                                     _%tl102613102663%_)
                                                    (if (gx#stx-null?
                                                         _%tl102607102643%_)
                                                        ((lambda (_%L102666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L102668%_)
                   (let* ((_%g102686102694%_
                           (lambda (_%g102687102690%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g102687102690%_)))
                          (_%g102685102843%_
                           (lambda (_%g102687102698%_)
                             ((lambda (_%L102701%_)
                                (let* ((_%g102713102721%_
                                        (lambda (_%g102714102717%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g102714102717%_)))
                                       (_%g102712102839%_
                                        (lambda (_%g102714102725%_)
                                          ((lambda (_%L102728%_)
                                             (let* ((_%g102741102749%_
                                                     (lambda (_%g102742102745%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g102742102745%_)))
                                                    (_%g102740102835%_
                                                     (lambda (_%g102742102753%_)
                                                       ((lambda (_%L102756%_)
                                                          (let* ((_%g102769102777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g102770102773%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g102770102773%_)))
                         (_%g102768102831%_
                          (lambda (_%g102770102781%_)
                            ((lambda (_%L102784%_)
                               (let* ((_%g102797102805%_
                                       (lambda (_%g102798102801%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102798102801%_)))
                                      (_%g102796102827%_
                                       (lambda (_%g102798102809%_)
                                         ((lambda (_%L102812%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L102728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L102701%_
                                                          (cons _%L102668%_
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
                                          (cons _%L102666%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L102668%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L102756%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L102701%_
                                                                (cons _%L102668%_
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
                                                (cons _%L102666%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L102668%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L102784%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L102701%_ (cons _%L102668%_ (cons '#t '()))))
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
                                                            (cons _%L102666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L102668%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L102812%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L102701%_
                                    (cons _%L102668%_ (cons '#f '()))))
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
                          (cons _%L102666%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L102668%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102798102809%_))))
                                 (_%g102796102827%_
                                  (gx#stx-identifier
                                   _%L102668%_
                                   '"&"
                                   _%L102784%_))))
                             _%g102770102781%_))))
                    (_%g102768102831%_
                     (gx#stx-identifier _%L102668%_ _%L102728%_ '"-set!"))))
                _%g102742102753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g102740102835%_
                                                (gx#stx-identifier
                                                 _%L102668%_
                                                 '"&"
                                                 _%L102728%_))))
                                           _%g102714102725%_))))
                                  (_%g102712102839%_
                                   (gx#stx-identifier
                                    _%L102668%_
                                    '"class-type-"
                                    _%L102668%_))))
                              _%g102687102698%_))))
                     (_%g102685102843%_ (gx#core-quote-syntax 'class::t))))
                 _%hd102612102660%_
                 _%hd102609102650%_)
                (_%g102598102619%_ _%g102599102623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102598102619%_
                                                     _%g102599102623%_))))
                                            (_%g102598102619%_
                                             _%g102599102623%_))))
                                    (_%g102598102619%_ _%g102599102623%_))))
                            (_%g102598102619%_ _%g102599102623%_))))
                    (_%g102598102619%_ _%g102599102623%_)))))
        (_%g102597102847%_ _%stx102595%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx102851%_)
      (let* ((_%g102855102884%_
              (lambda (_%g102856102880%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102856102880%_)))
             (_%g102854102984%_
              (lambda (_%g102856102888%_)
                (if (gx#stx-pair? _%g102856102888%_)
                    (let ((_%e102859102891%_ (gx#syntax-e _%g102856102888%_)))
                      (let ((_%hd102860102895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102859102891%_)))
                            (_%tl102861102898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102859102891%_))))
                        (if (gx#stx-pair/null? _%tl102861102898%_)
                            (let ((_g109137_
                                   (gx#syntax-split-splice
                                    _%tl102861102898%_
                                    '0)))
                              (begin
                                (let ((_g109138_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109137_)
                                             (##values-length _g109137_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109138_ 2)))
                                      (error "Context expects 2 values"
                                             _g109138_)))
                                (let ((_%target102862102901%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109137_ 0)))
                                      (_%tl102864102904%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109137_ 1))))
                                  (if (gx#stx-null? _%tl102864102904%_)
                                      (letrec ((_%loop102865102907%_
                                                (lambda (_%hd102863102911%_
                                                         _%field102869102914%_
                                                         _%slot102870102916%_)
                                                  (if (gx#stx-pair?
                                                       _%hd102863102911%_)
                                                      (let ((_%e102866102919%_
                                                             (gx#syntax-e
                                                              _%hd102863102911%_)))
                                                        (let ((_%lp-hd102867102923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e102866102919%_)))
                      (_%lp-tl102868102926%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e102866102919%_))))
                  (if (gx#stx-pair? _%lp-hd102867102923%_)
                      (let ((_%e102873102929%_
                             (gx#syntax-e _%lp-hd102867102923%_)))
                        (let ((_%hd102874102933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e102873102929%_)))
                              (_%tl102875102936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e102873102929%_))))
                          (if (gx#stx-pair? _%tl102875102936%_)
                              (let ((_%e102876102939%_
                                     (gx#syntax-e _%tl102875102936%_)))
                                (let ((_%hd102877102943%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e102876102939%_)))
                                      (_%tl102878102946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e102876102939%_))))
                                  (if (gx#stx-null? _%tl102878102946%_)
                                      (_%loop102865102907%_
                                       _%lp-tl102868102926%_
                                       (cons _%hd102877102943%_
                                             _%field102869102914%_)
                                       (cons _%hd102874102933%_
                                             _%slot102870102916%_))
                                      (_%g102855102884%_ _%g102856102888%_))))
                              (_%g102855102884%_ _%g102856102888%_))))
                      (_%g102855102884%_ _%g102856102888%_))))
              (let ((_%field102871102949%_ (reverse _%field102869102914%_))
                    (_%slot102872102952%_ (reverse _%slot102870102916%_)))
                ((lambda (_%L102955%_ _%L102957%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L102955%_
                            _%L102957%_)
                           (let ((__tmp109139
                                  (lambda (_%g102972102976%_
                                           _%g102973102979%_
                                           _%g102974102981%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g102973102979%_
                                                            (cons _%g102972102976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102974102981%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp109139
                              '()
                              _%L102955%_
                              _%L102957%_)))))
                 _%field102871102949%_
                 _%slot102872102952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop102865102907%_
                                         _%target102862102901%_
                                         '()
                                         '()))
                                      (_%g102855102884%_ _%g102856102888%_)))))
                            (_%g102855102884%_ _%g102856102888%_))))
                    (_%g102855102884%_ _%g102856102888%_)))))
        (_%g102854102984%_ _%$stx102851%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx102989%_)
      (let* ((_%g102993103027%_
              (lambda (_%g102994103023%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102994103023%_)))
             (_%g102992103138%_
              (lambda (_%g102994103031%_)
                (if (gx#stx-pair? _%g102994103031%_)
                    (let ((_%e103001103034%_ (gx#syntax-e _%g102994103031%_)))
                      (let ((_%hd103002103038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103001103034%_)))
                            (_%tl103003103041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103001103034%_))))
                        (if (gx#stx-pair? _%tl103003103041%_)
                            (let ((_%e103004103044%_
                                   (gx#syntax-e _%tl103003103041%_)))
                              (let ((_%hd103005103048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103004103044%_)))
                                    (_%tl103006103051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103004103044%_))))
                                (if (gx#stx-pair? _%tl103006103051%_)
                                    (let ((_%e103007103054%_
                                           (gx#syntax-e _%tl103006103051%_)))
                                      (let ((_%hd103008103058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103007103054%_)))
                                            (_%tl103009103061%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103007103054%_))))
                                        (if (gx#stx-pair? _%tl103009103061%_)
                                            (let ((_%e103010103064%_
                                                   (gx#syntax-e
                                                    _%tl103009103061%_)))
                                              (let ((_%hd103011103068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103010103064%_)))
                                                    (_%tl103012103071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103010103064%_))))
                                                (if (gx#stx-pair?
                                                     _%tl103012103071%_)
                                                    (let ((_%e103013103074%_
                                                           (gx#syntax-e
                                                            _%tl103012103071%_)))
                                                      (let ((_%hd103014103078%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e103013103074%_)))
                    (_%tl103015103081%_
                     (let () (declare (not safe)) (##cdr _%e103013103074%_))))
                (if (gx#stx-pair? _%tl103015103081%_)
                    (let ((_%e103016103084%_ (gx#syntax-e _%tl103015103081%_)))
                      (let ((_%hd103017103088%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103016103084%_)))
                            (_%tl103018103091%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103016103084%_))))
                        (if (gx#stx-pair? _%tl103018103091%_)
                            (let ((_%e103019103094%_
                                   (gx#syntax-e _%tl103018103091%_)))
                              (let ((_%hd103020103098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103019103094%_)))
                                    (_%tl103021103101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103019103094%_))))
                                (if (gx#stx-null? _%tl103021103101%_)
                                    ((lambda (_%L103104%_
                                              _%L103106%_
                                              _%L103107%_
                                              _%L103108%_
                                              _%L103109%_
                                              _%L103110%_)
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
                                         (cons _%L103110%_ '()))
                                   (cons _%L103109%_ (cons '#f '()))))
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
                               (cons _%L103110%_
                                     (cons 'slot: (cons _%L103109%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L103110%_ '()))
                                         (cons (cons _%L103108%_
                                                     (cons _%L103110%_
                                                           (cons _%L103109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L103110%_ '()))
                                               (cons (cons _%L103107%_
                                                           (cons _%L103110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L103109%_
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
                                           (cons _%L103110%_ '()))
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
                                                     (cons (cons _%L103106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L103110%_
                               (cons _%L103109%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L103104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L103110%_
                                     (cons _%L103109%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd103020103098%_
                                     _%hd103017103088%_
                                     _%hd103014103078%_
                                     _%hd103011103068%_
                                     _%hd103008103058%_
                                     _%hd103005103048%_)
                                    (_%g102993103027%_ _%g102994103031%_))))
                            (_%g102993103027%_ _%g102994103031%_))))
                    (_%g102993103027%_ _%g102994103031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102993103027%_
                                                     _%g102994103031%_))))
                                            (_%g102993103027%_
                                             _%g102994103031%_))))
                                    (_%g102993103027%_ _%g102994103031%_))))
                            (_%g102993103027%_ _%g102994103031%_))))
                    (_%g102993103027%_ _%g102994103031%_)))))
        (_%g102992103138%_ _%$stx102989%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx103142%_)
      (let* ((_%g103146103172%_
              (lambda (_%g103147103168%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103147103168%_)))
             (_%g103145103255%_
              (lambda (_%g103147103176%_)
                (if (gx#stx-pair? _%g103147103176%_)
                    (let ((_%e103152103179%_ (gx#syntax-e _%g103147103176%_)))
                      (let ((_%hd103153103183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103152103179%_)))
                            (_%tl103154103186%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103152103179%_))))
                        (if (gx#stx-pair? _%tl103154103186%_)
                            (let ((_%e103155103189%_
                                   (gx#syntax-e _%tl103154103186%_)))
                              (let ((_%hd103156103193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103155103189%_)))
                                    (_%tl103157103196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103155103189%_))))
                                (if (gx#stx-pair? _%tl103157103196%_)
                                    (let ((_%e103158103199%_
                                           (gx#syntax-e _%tl103157103196%_)))
                                      (let ((_%hd103159103203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103158103199%_)))
                                            (_%tl103160103206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103158103199%_))))
                                        (if (gx#stx-pair? _%tl103160103206%_)
                                            (let ((_%e103161103209%_
                                                   (gx#syntax-e
                                                    _%tl103160103206%_)))
                                              (let ((_%hd103162103213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103161103209%_)))
                                                    (_%tl103163103216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103161103209%_))))
                                                (if (gx#stx-pair?
                                                     _%tl103163103216%_)
                                                    (let ((_%e103164103219%_
                                                           (gx#syntax-e
                                                            _%tl103163103216%_)))
                                                      (let ((_%hd103165103223%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e103164103219%_)))
                    (_%tl103166103226%_
                     (let () (declare (not safe)) (##cdr _%e103164103219%_))))
                (if (gx#stx-null? _%tl103166103226%_)
                    ((lambda (_%L103229%_ _%L103231%_ _%L103232%_ _%L103233%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L103233%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L103232%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L103231%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L103229%_
                                     (cons _%L103233%_ (cons _%L103232%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd103165103223%_
                     _%hd103162103213%_
                     _%hd103159103203%_
                     _%hd103156103193%_)
                    (_%g103146103172%_ _%g103147103176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103146103172%_
                                                     _%g103147103176%_))))
                                            (_%g103146103172%_
                                             _%g103147103176%_))))
                                    (_%g103146103172%_ _%g103147103176%_))))
                            (_%g103146103172%_ _%g103147103176%_))))
                    (_%g103146103172%_ _%g103147103176%_)))))
        (_%g103145103255%_ _%$stx103142%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx103259%_)
      (let* ((_%g103263103292%_
              (lambda (_%g103264103288%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103264103288%_)))
             (_%g103262103392%_
              (lambda (_%g103264103296%_)
                (if (gx#stx-pair? _%g103264103296%_)
                    (let ((_%e103267103299%_ (gx#syntax-e _%g103264103296%_)))
                      (let ((_%hd103268103303%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103267103299%_)))
                            (_%tl103269103306%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103267103299%_))))
                        (if (gx#stx-pair/null? _%tl103269103306%_)
                            (let ((_g109140_
                                   (gx#syntax-split-splice
                                    _%tl103269103306%_
                                    '0)))
                              (begin
                                (let ((_g109141_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109140_)
                                             (##values-length _g109140_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109141_ 2)))
                                      (error "Context expects 2 values"
                                             _g109141_)))
                                (let ((_%target103270103309%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109140_ 0)))
                                      (_%tl103272103312%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109140_ 1))))
                                  (if (gx#stx-null? _%tl103272103312%_)
                                      (letrec ((_%loop103273103315%_
                                                (lambda (_%hd103271103319%_
                                                         _%name103277103322%_
                                                         _%t103278103324%_)
                                                  (if (gx#stx-pair?
                                                       _%hd103271103319%_)
                                                      (let ((_%e103274103327%_
                                                             (gx#syntax-e
                                                              _%hd103271103319%_)))
                                                        (let ((_%lp-hd103275103331%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e103274103327%_)))
                      (_%lp-tl103276103334%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e103274103327%_))))
                  (if (gx#stx-pair? _%lp-hd103275103331%_)
                      (let ((_%e103281103337%_
                             (gx#syntax-e _%lp-hd103275103331%_)))
                        (let ((_%hd103282103341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e103281103337%_)))
                              (_%tl103283103344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e103281103337%_))))
                          (if (gx#stx-pair? _%tl103283103344%_)
                              (let ((_%e103284103347%_
                                     (gx#syntax-e _%tl103283103344%_)))
                                (let ((_%hd103285103351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103284103347%_)))
                                      (_%tl103286103354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103284103347%_))))
                                  (if (gx#stx-null? _%tl103286103354%_)
                                      (_%loop103273103315%_
                                       _%lp-tl103276103334%_
                                       (cons _%hd103285103351%_
                                             _%name103277103322%_)
                                       (cons _%hd103282103341%_
                                             _%t103278103324%_))
                                      (_%g103263103292%_ _%g103264103296%_))))
                              (_%g103263103292%_ _%g103264103296%_))))
                      (_%g103263103292%_ _%g103264103296%_))))
              (let ((_%name103279103357%_ (reverse _%name103277103322%_))
                    (_%t103280103360%_ (reverse _%t103278103324%_)))
                ((lambda (_%L103363%_ _%L103365%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L103363%_
                            _%L103365%_)
                           (let ((__tmp109142
                                  (lambda (_%g103380103384%_
                                           _%g103381103387%_
                                           _%g103382103389%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g103381103387%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g103380103384%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g103382103389%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp109142
                              '()
                              _%L103363%_
                              _%L103365%_)))))
                 _%name103279103357%_
                 _%t103280103360%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop103273103315%_
                                         _%target103270103309%_
                                         '()
                                         '()))
                                      (_%g103263103292%_ _%g103264103296%_)))))
                            (_%g103263103292%_ _%g103264103296%_))))
                    (_%g103263103292%_ _%g103264103296%_)))))
        (_%g103262103392%_ _%$stx103259%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx103397%_)
      (let* ((_%g103401103432%_
              (lambda (_%g103402103428%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103402103428%_)))
             (_%g103400103551%_
              (lambda (_%g103402103436%_)
                (if (gx#stx-pair? _%g103402103436%_)
                    (let ((_%e103406103439%_ (gx#syntax-e _%g103402103436%_)))
                      (let ((_%hd103407103443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103406103439%_)))
                            (_%tl103408103446%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103406103439%_))))
                        (if (gx#stx-pair? _%tl103408103446%_)
                            (let ((_%e103409103449%_
                                   (gx#syntax-e _%tl103408103446%_)))
                              (let ((_%hd103410103453%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103409103449%_)))
                                    (_%tl103411103456%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103409103449%_))))
                                (if (gx#stx-pair? _%tl103411103456%_)
                                    (let ((_%e103412103459%_
                                           (gx#syntax-e _%tl103411103456%_)))
                                      (let ((_%hd103413103463%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103412103459%_)))
                                            (_%tl103414103466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103412103459%_))))
                                        (if (gx#stx-pair? _%tl103414103466%_)
                                            (let ((_%e103415103469%_
                                                   (gx#syntax-e
                                                    _%tl103414103466%_)))
                                              (let ((_%hd103416103473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e103415103469%_)))
                                                    (_%tl103417103476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e103415103469%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd103416103473%_)
                                                    (let ((_g109143_
                                                           (gx#syntax-split-splice
                                                            _%hd103416103473%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g109144_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g109143_)
                             (##values-length _g109143_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g109144_ 2)))
                      (error "Context expects 2 values" _g109144_)))
                (let ((_%target103418103479%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109143_ 0)))
                      (_%tl103420103482%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g109143_ 1))))
                  (if (gx#stx-null? _%tl103420103482%_)
                      (letrec ((_%loop103421103485%_
                                (lambda (_%hd103419103489%_
                                         _%super103425103492%_)
                                  (if (gx#stx-pair? _%hd103419103489%_)
                                      (let ((_%e103422103495%_
                                             (gx#syntax-e _%hd103419103489%_)))
                                        (let ((_%lp-hd103423103499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e103422103495%_)))
                                              (_%lp-tl103424103502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e103422103495%_))))
                                          (_%loop103421103485%_
                                           _%lp-tl103424103502%_
                                           (cons _%lp-hd103423103499%_
                                                 _%super103425103492%_))))
                                      (let ((_%super103426103505%_
                                             (reverse _%super103425103492%_)))
                                        (if (gx#stx-null? _%tl103417103476%_)
                                            ((lambda (_%L103509%_
                                                      _%L103511%_
                                                      _%L103512%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L103512%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L103511%_
                                                 (cons (let ((__tmp109145
                                                              (lambda (_%g103534103539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g103535103542%_)
                        (cons _%g103534103539%_ _%g103535103542%_))))
                 (declare (not safe))
                 (__foldr1 __tmp109145 '() _%L103509%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L103511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp109146
                                  (lambda (_%g103536103545%_ _%g103537103548%_)
                                    (cons _%g103536103545%_
                                          _%g103537103548%_))))
                             (declare (not safe))
                             (__foldr1 __tmp109146 '() _%L103509%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super103426103505%_
                                             _%hd103413103463%_
                                             _%hd103410103453%_)
                                            (_%g103401103432%_
                                             _%g103402103436%_)))))))
                        (_%loop103421103485%_ _%target103418103479%_ '()))
                      (_%g103401103432%_ _%g103402103436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g103401103432%_
                                                     _%g103402103436%_))))
                                            (_%g103401103432%_
                                             _%g103402103436%_))))
                                    (_%g103401103432%_ _%g103402103436%_))))
                            (_%g103401103432%_ _%g103402103436%_))))
                    (_%g103401103432%_ _%g103402103436%_)))))
        (_%g103400103551%_ _%$stx103397%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx103556%_)
      (let* ((_%g103560103591%_
              (lambda (_%g103561103587%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g103561103587%_)))
             (_%g103559103702%_
              (lambda (_%g103561103595%_)
                (if (gx#stx-pair? _%g103561103595%_)
                    (let ((_%e103565103598%_ (gx#syntax-e _%g103561103595%_)))
                      (let ((_%hd103566103602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e103565103598%_)))
                            (_%tl103567103605%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e103565103598%_))))
                        (if (gx#stx-pair? _%tl103567103605%_)
                            (let ((_%e103568103608%_
                                   (gx#syntax-e _%tl103567103605%_)))
                              (let ((_%hd103569103612%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e103568103608%_)))
                                    (_%tl103570103615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e103568103608%_))))
                                (if (gx#stx-pair? _%tl103570103615%_)
                                    (let ((_%e103571103618%_
                                           (gx#syntax-e _%tl103570103615%_)))
                                      (let ((_%hd103572103622%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103571103618%_)))
                                            (_%tl103573103625%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103571103618%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd103572103622%_)
                                            (let ((_g109147_
                                                   (gx#syntax-split-splice
                                                    _%hd103572103622%_
                                                    '0)))
                                              (begin
                                                (let ((_g109148_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g109147_)
                                                             (##values-length
                                                              _g109147_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g109148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g109148_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target103574103628%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g109147_
                                                          0)))
                                                      (_%tl103576103631%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g109147_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl103576103631%_)
                                                      (letrec ((_%loop103577103634%_
                                                                (lambda (_%hd103575103638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super103581103641%_)
                          (if (gx#stx-pair? _%hd103575103638%_)
                              (let ((_%e103578103644%_
                                     (gx#syntax-e _%hd103575103638%_)))
                                (let ((_%lp-hd103579103648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e103578103644%_)))
                                      (_%lp-tl103580103651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e103578103644%_))))
                                  (_%loop103577103634%_
                                   _%lp-tl103580103651%_
                                   (cons _%lp-hd103579103648%_
                                         _%super103581103641%_))))
                              (let ((_%super103582103654%_
                                     (reverse _%super103581103641%_)))
                                (if (gx#stx-pair? _%tl103573103625%_)
                                    (let ((_%e103583103658%_
                                           (gx#syntax-e _%tl103573103625%_)))
                                      (let ((_%hd103584103662%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e103583103658%_)))
                                            (_%tl103585103665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e103583103658%_))))
                                        (if (gx#stx-null? _%tl103585103665%_)
                                            ((lambda (_%L103668%_
                                                      _%L103670%_
                                                      _%L103671%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L103671%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L103671%_
                                                 (cons (let ((__tmp109149
                                                              (lambda (_%g103693103696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g103694103699%_)
                        (cons _%g103693103696%_ _%g103694103699%_))))
                 (declare (not safe))
                 (__foldr1 __tmp109149 '() _%L103670%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L103668%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd103584103662%_
                                             _%super103582103654%_
                                             _%hd103569103612%_)
                                            (_%g103560103591%_
                                             _%g103561103595%_))))
                                    (_%g103560103591%_ _%g103561103595%_)))))))
                (_%loop103577103634%_ _%target103574103628%_ '()))
              (_%g103560103591%_ _%g103561103595%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g103560103591%_
                                             _%g103561103595%_))))
                                    (_%g103560103591%_ _%g103561103595%_))))
                            (_%g103560103591%_ _%g103561103595%_))))
                    (_%g103560103591%_ _%g103561103595%_)))))
        (_%g103559103702%_ _%$stx103556%_)))))
