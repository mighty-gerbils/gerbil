(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91530%_)
      (let* ((_%__stx9805198052%_ _%$stx91530%_)
             (_%g9153591564%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9805198052%_))))
        (let ((_%__kont9805498055%_
               (lambda (_%L91657%_ _%L91659%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91659%_ (cons _%L91657%_ '())))
                             (cons _%L91657%_ '())))))
              (_%__kont9805698057%_
               (lambda (_%L91601%_ _%L91603%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91601%_ (cons _%L91601%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91603%_
                                                           (cons _%L91601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91601%_ '())))
                                   '()))))))
          (let ((_%__match9807898079%_
                 (lambda (_%e9154191627%_
                          _%hd9154091631%_
                          _%tl9153991634%_
                          _%e9154491637%_
                          _%hd9154391641%_
                          _%tl9154291644%_
                          _%e9154791647%_
                          _%hd9154691651%_
                          _%tl9154591654%_)
                   (let ((_%L91657%_ _%hd9154691651%_)
                         (_%L91659%_ _%hd9154391641%_))
                     (if (or (gx#identifier? _%L91657%_)
                             (gx#stx-fixnum? _%L91657%_))
                         (_%__kont9805498055%_ _%L91657%_ _%L91659%_)
                         (_%__kont9805698057%_
                          _%hd9154691651%_
                          _%hd9154391641%_))))))
            (if (gx#stx-pair? _%__stx9805198052%_)
                (let ((_%e9154191627%_ (gx#syntax-e _%__stx9805198052%_)))
                  (let ((_%tl9153991634%_
                         (let () (declare (not safe)) (##cdr _%e9154191627%_)))
                        (_%hd9154091631%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9154191627%_))))
                    (if (gx#stx-pair? _%tl9153991634%_)
                        (let ((_%e9154491637%_ (gx#syntax-e _%tl9153991634%_)))
                          (let ((_%tl9154291644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9154491637%_)))
                                (_%hd9154391641%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9154491637%_))))
                            (if (gx#stx-pair? _%tl9154291644%_)
                                (let ((_%e9154791647%_
                                       (gx#syntax-e _%tl9154291644%_)))
                                  (let ((_%tl9154591654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9154791647%_)))
                                        (_%hd9154691651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9154791647%_))))
                                    (if (gx#stx-null? _%tl9154591654%_)
                                        (_%__match9807898079%_
                                         _%e9154191627%_
                                         _%hd9154091631%_
                                         _%tl9153991634%_
                                         _%e9154491637%_
                                         _%hd9154391641%_
                                         _%tl9154291644%_
                                         _%e9154791647%_
                                         _%hd9154691651%_
                                         _%tl9154591654%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9153591564%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9153591564%_)))))
                        (let () (declare (not safe)) (_%g9153591564%_)))))
                (let () (declare (not safe)) (_%g9153591564%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91682%_)
      (let* ((_%__stx9810198102%_ _%$stx91682%_)
             (_%g9168791716%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9810198102%_))))
        (let ((_%__kont9810498105%_
               (lambda (_%L91808%_ _%L91810%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91810%_ (cons _%L91808%_ '())))
                             (cons '0 '())))))
              (_%__kont9810698107%_
               (lambda (_%L91753%_ _%L91755%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91753%_ (cons _%L91753%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91755%_
                                                           (cons _%L91753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9812898129%_
                 (lambda (_%e9169391778%_
                          _%hd9169291782%_
                          _%tl9169191785%_
                          _%e9169691788%_
                          _%hd9169591792%_
                          _%tl9169491795%_
                          _%e9169991798%_
                          _%hd9169891802%_
                          _%tl9169791805%_)
                   (let ((_%L91808%_ _%hd9169891802%_)
                         (_%L91810%_ _%hd9169591792%_))
                     (if (or (gx#identifier? _%L91808%_)
                             (gx#stx-fixnum? _%L91808%_))
                         (_%__kont9810498105%_ _%L91808%_ _%L91810%_)
                         (_%__kont9810698107%_
                          _%hd9169891802%_
                          _%hd9169591792%_))))))
            (if (gx#stx-pair? _%__stx9810198102%_)
                (let ((_%e9169391778%_ (gx#syntax-e _%__stx9810198102%_)))
                  (let ((_%tl9169191785%_
                         (let () (declare (not safe)) (##cdr _%e9169391778%_)))
                        (_%hd9169291782%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9169391778%_))))
                    (if (gx#stx-pair? _%tl9169191785%_)
                        (let ((_%e9169691788%_ (gx#syntax-e _%tl9169191785%_)))
                          (let ((_%tl9169491795%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9169691788%_)))
                                (_%hd9169591792%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9169691788%_))))
                            (if (gx#stx-pair? _%tl9169491795%_)
                                (let ((_%e9169991798%_
                                       (gx#syntax-e _%tl9169491795%_)))
                                  (let ((_%tl9169791805%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9169991798%_)))
                                        (_%hd9169891802%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9169991798%_))))
                                    (if (gx#stx-null? _%tl9169791805%_)
                                        (_%__match9812898129%_
                                         _%e9169391778%_
                                         _%hd9169291782%_
                                         _%tl9169191785%_
                                         _%e9169691788%_
                                         _%hd9169591792%_
                                         _%tl9169491795%_
                                         _%e9169991798%_
                                         _%hd9169891802%_
                                         _%tl9169791805%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9168791716%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9168791716%_)))))
                        (let () (declare (not safe)) (_%g9168791716%_)))))
                (let () (declare (not safe)) (_%g9168791716%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91833%_)
      (let* ((_%g9183691857%_
              (lambda (_%g9183791853%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9183791853%_)))
             (_%g9183592085%_
              (lambda (_%g9183791861%_)
                (if (gx#stx-pair? _%g9183791861%_)
                    (let ((_%e9184291864%_ (gx#syntax-e _%g9183791861%_)))
                      (let ((_%hd9184191868%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9184291864%_)))
                            (_%tl9184091871%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9184291864%_))))
                        (if (gx#stx-pair? _%tl9184091871%_)
                            (let ((_%e9184591874%_
                                   (gx#syntax-e _%tl9184091871%_)))
                              (let ((_%hd9184491878%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9184591874%_)))
                                    (_%tl9184391881%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9184591874%_))))
                                (if (gx#stx-pair? _%hd9184491878%_)
                                    (let ((_%e9184891884%_
                                           (gx#syntax-e _%hd9184491878%_)))
                                      (let ((_%hd9184791888%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9184891884%_)))
                                            (_%tl9184691891%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9184891884%_))))
                                        (if (gx#stx-pair? _%tl9184691891%_)
                                            (let ((_%e9185191894%_
                                                   (gx#syntax-e
                                                    _%tl9184691891%_)))
                                              (let ((_%hd9185091898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9185191894%_)))
                                                    (_%tl9184991901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9185191894%_))))
                                                (if (gx#stx-null?
                                                     _%tl9184991901%_)
                                                    (if (gx#stx-null?
                                                         _%tl9184391881%_)
                                                        ((lambda (_%L91904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91906%_)
                   (let* ((_%g9192491932%_
                           (lambda (_%g9192591928%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9192591928%_)))
                          (_%g9192392081%_
                           (lambda (_%g9192591936%_)
                             ((lambda (_%L91939%_)
                                (let ()
                                  (let* ((_%g9195191959%_
                                          (lambda (_%g9195291955%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9195291955%_)))
                                         (_%g9195092077%_
                                          (lambda (_%g9195291963%_)
                                            ((lambda (_%L91966%_)
                                               (let ()
                                                 (let* ((_%g9197991987%_
                                                         (lambda (_%g9198091983%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9198091983%_)))
                                                        (_%g9197892073%_
                                                         (lambda (_%g9198091991%_)
                                                           ((lambda (_%L91994%_)
                                                              (let ()
                                                                (let* ((_%g9200792015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9200892011%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9200892011%_)))
                               (_%g9200692069%_
                                (lambda (_%g9200892019%_)
                                  ((lambda (_%L92022%_)
                                     (let ()
                                       (let* ((_%g9203592043%_
                                               (lambda (_%g9203692039%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9203692039%_)))
                                              (_%g9203492065%_
                                               (lambda (_%g9203692047%_)
                                                 ((lambda (_%L92050%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'def)
                                (cons _%L91966%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.accessor)
                                                              (cons _%L91939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L91906%_ (cons '#t '()))))
                (cons (cons (gx#datum->syntax '#f 'lambda)
                            (cons (cons (gx#datum->syntax '#f 'klass) '())
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##structure-ref)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons _%L91904%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'class::t)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L91906%_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L91994%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L91939%_ (cons _%L91906%_ (cons '#f '()))))
                      (cons (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f 'klass)
                                              '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##unchecked-structure-ref)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons _%L91904%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'class::t)
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%L91906%_ '()))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L92022%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L91939%_
                                        (cons _%L91906%_ (cons '#t '()))))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##structure-set!)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'klass)
                        (cons (gx#datum->syntax '#f 'val)
                              (cons _%L91904%_
                                    (cons (gx#datum->syntax '#f 'class::t)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L91906%_ '()))
                                                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L92050%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                        (cons _%L91939%_
                                              (cons _%L91906%_
                                                    (cons '#f '()))))
                                  (cons (cons (gx#datum->syntax '#f 'lambda)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##unchecked-structure-set!)
                        (cons (gx#datum->syntax '#f 'klass)
                              (cons (gx#datum->syntax '#f 'val)
                                    (cons _%L91904%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'class::t)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L91906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g9203692047%_))))
                                         (_%g9203492065%_
                                          (gx#stx-identifier
                                           _%L91906%_
                                           '"&"
                                           _%L92022%_)))))
                                   _%g9200892019%_))))
                          (_%g9200692069%_
                           (gx#stx-identifier
                            _%L91906%_
                            _%L91966%_
                            '"-set!")))))
                    _%g9198091991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9197892073%_
                                                    (gx#stx-identifier
                                                     _%L91906%_
                                                     '"&"
                                                     _%L91966%_)))))
                                             _%g9195291963%_))))
                                    (_%g9195092077%_
                                     (gx#stx-identifier
                                      _%L91906%_
                                      '"class-type-"
                                      _%L91906%_)))))
                              _%g9192591936%_))))
                     (_%g9192392081%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9185091898%_
                 _%hd9184791888%_)
                (_%g9183691857%_ _%g9183791861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9183691857%_
                                                     _%g9183791861%_))))
                                            (_%g9183691857%_
                                             _%g9183791861%_))))
                                    (_%g9183691857%_ _%g9183791861%_))))
                            (_%g9183691857%_ _%g9183791861%_))))
                    (_%g9183691857%_ _%g9183791861%_)))))
        (_%g9183592085%_ _%stx91833%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92089%_)
      (let* ((_%g9209392122%_
              (lambda (_%g9209492118%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9209492118%_)))
             (_%g9209292222%_
              (lambda (_%g9209492126%_)
                (if (gx#stx-pair? _%g9209492126%_)
                    (let ((_%e9209992129%_ (gx#syntax-e _%g9209492126%_)))
                      (let ((_%hd9209892133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9209992129%_)))
                            (_%tl9209792136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9209992129%_))))
                        (if (gx#stx-pair/null? _%tl9209792136%_)
                            (let ((_g98420_
                                   (gx#syntax-split-splice
                                    _%tl9209792136%_
                                    '0)))
                              (begin
                                (let ((_g98421_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98420_)
                                             (##vector-length _g98420_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98421_ 2)))
                                      (error "Context expects 2 values"
                                             _g98421_)))
                                (let ((_%target9210092139%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98420_ 0)))
                                      (_%tl9210292142%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98420_ 1))))
                                  (if (gx#stx-null? _%tl9210292142%_)
                                      (letrec ((_%loop9210392145%_
                                                (lambda (_%hd9210192149%_
                                                         _%field9210792152%_
                                                         _%slot9210892154%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9210192149%_)
                                                      (let ((_%e9210492157%_
                                                             (gx#syntax-e
                                                              _%hd9210192149%_)))
                                                        (let ((_%lp-hd9210592161%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9210492157%_)))
                      (_%lp-tl9210692164%_
                       (let () (declare (not safe)) (##cdr _%e9210492157%_))))
                  (if (gx#stx-pair? _%lp-hd9210592161%_)
                      (let ((_%e9211392167%_
                             (gx#syntax-e _%lp-hd9210592161%_)))
                        (let ((_%hd9211292171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9211392167%_)))
                              (_%tl9211192174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9211392167%_))))
                          (if (gx#stx-pair? _%tl9211192174%_)
                              (let ((_%e9211692177%_
                                     (gx#syntax-e _%tl9211192174%_)))
                                (let ((_%hd9211592181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9211692177%_)))
                                      (_%tl9211492184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9211692177%_))))
                                  (if (gx#stx-null? _%tl9211492184%_)
                                      (_%loop9210392145%_
                                       _%lp-tl9210692164%_
                                       (cons _%hd9211592181%_
                                             _%field9210792152%_)
                                       (cons _%hd9211292171%_
                                             _%slot9210892154%_))
                                      (_%g9209392122%_ _%g9209492126%_))))
                              (_%g9209392122%_ _%g9209492126%_))))
                      (_%g9209392122%_ _%g9209492126%_))))
              (let ((_%field9210992187%_ (reverse _%field9210792152%_))
                    (_%slot9211092190%_ (reverse _%slot9210892154%_)))
                ((lambda (_%L92193%_ _%L92195%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92193%_
                            _%L92195%_)
                           (let ((__tmp98422
                                  (lambda (_%g9221092214%_
                                           _%g9221192217%_
                                           _%g9221292219%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9221192217%_
                                                            (cons _%g9221092214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9221292219%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98422
                              '()
                              _%L92193%_
                              _%L92195%_)))))
                 _%field9210992187%_
                 _%slot9211092190%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9210392145%_
                                         _%target9210092139%_
                                         '()
                                         '()))
                                      (_%g9209392122%_ _%g9209492126%_)))))
                            (_%g9209392122%_ _%g9209492126%_))))
                    (_%g9209392122%_ _%g9209492126%_)))))
        (_%g9209292222%_ _%$stx92089%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92227%_)
      (let* ((_%g9223192265%_
              (lambda (_%g9223292261%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9223292261%_)))
             (_%g9223092376%_
              (lambda (_%g9223292269%_)
                (if (gx#stx-pair? _%g9223292269%_)
                    (let ((_%e9224192272%_ (gx#syntax-e _%g9223292269%_)))
                      (let ((_%hd9224092276%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9224192272%_)))
                            (_%tl9223992279%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9224192272%_))))
                        (if (gx#stx-pair? _%tl9223992279%_)
                            (let ((_%e9224492282%_
                                   (gx#syntax-e _%tl9223992279%_)))
                              (let ((_%hd9224392286%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9224492282%_)))
                                    (_%tl9224292289%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9224492282%_))))
                                (if (gx#stx-pair? _%tl9224292289%_)
                                    (let ((_%e9224792292%_
                                           (gx#syntax-e _%tl9224292289%_)))
                                      (let ((_%hd9224692296%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9224792292%_)))
                                            (_%tl9224592299%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9224792292%_))))
                                        (if (gx#stx-pair? _%tl9224592299%_)
                                            (let ((_%e9225092302%_
                                                   (gx#syntax-e
                                                    _%tl9224592299%_)))
                                              (let ((_%hd9224992306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9225092302%_)))
                                                    (_%tl9224892309%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9225092302%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9224892309%_)
                                                    (let ((_%e9225392312%_
                                                           (gx#syntax-e
                                                            _%tl9224892309%_)))
                                                      (let ((_%hd9225292316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9225392312%_)))
                    (_%tl9225192319%_
                     (let () (declare (not safe)) (##cdr _%e9225392312%_))))
                (if (gx#stx-pair? _%tl9225192319%_)
                    (let ((_%e9225692322%_ (gx#syntax-e _%tl9225192319%_)))
                      (let ((_%hd9225592326%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9225692322%_)))
                            (_%tl9225492329%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9225692322%_))))
                        (if (gx#stx-pair? _%tl9225492329%_)
                            (let ((_%e9225992332%_
                                   (gx#syntax-e _%tl9225492329%_)))
                              (let ((_%hd9225892336%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9225992332%_)))
                                    (_%tl9225792339%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9225992332%_))))
                                (if (gx#stx-null? _%tl9225792339%_)
                                    ((lambda (_%L92342%_
                                              _%L92344%_
                                              _%L92345%_
                                              _%L92346%_
                                              _%L92347%_
                                              _%L92348%_)
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
                                         (cons _%L92348%_ '()))
                                   (cons _%L92347%_ (cons '#f '()))))
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
                               (cons _%L92348%_
                                     (cons 'slot: (cons _%L92347%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L92348%_ '()))
                                         (cons (cons _%L92346%_
                                                     (cons _%L92348%_
                                                           (cons _%L92347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L92348%_ '()))
                                               (cons (cons _%L92345%_
                                                           (cons _%L92348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92347%_
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
                                           (cons _%L92348%_ '()))
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
                                                     (cons (cons _%L92344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92348%_
                               (cons _%L92347%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L92342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92348%_
                                     (cons _%L92347%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9225892336%_
                                     _%hd9225592326%_
                                     _%hd9225292316%_
                                     _%hd9224992306%_
                                     _%hd9224692296%_
                                     _%hd9224392286%_)
                                    (_%g9223192265%_ _%g9223292269%_))))
                            (_%g9223192265%_ _%g9223292269%_))))
                    (_%g9223192265%_ _%g9223292269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9223192265%_
                                                     _%g9223292269%_))))
                                            (_%g9223192265%_
                                             _%g9223292269%_))))
                                    (_%g9223192265%_ _%g9223292269%_))))
                            (_%g9223192265%_ _%g9223292269%_))))
                    (_%g9223192265%_ _%g9223292269%_)))))
        (_%g9223092376%_ _%$stx92227%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx92380%_)
      (let* ((_%g9238492410%_
              (lambda (_%g9238592406%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9238592406%_)))
             (_%g9238392493%_
              (lambda (_%g9238592414%_)
                (if (gx#stx-pair? _%g9238592414%_)
                    (let ((_%e9239292417%_ (gx#syntax-e _%g9238592414%_)))
                      (let ((_%hd9239192421%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9239292417%_)))
                            (_%tl9239092424%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9239292417%_))))
                        (if (gx#stx-pair? _%tl9239092424%_)
                            (let ((_%e9239592427%_
                                   (gx#syntax-e _%tl9239092424%_)))
                              (let ((_%hd9239492431%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9239592427%_)))
                                    (_%tl9239392434%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9239592427%_))))
                                (if (gx#stx-pair? _%tl9239392434%_)
                                    (let ((_%e9239892437%_
                                           (gx#syntax-e _%tl9239392434%_)))
                                      (let ((_%hd9239792441%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9239892437%_)))
                                            (_%tl9239692444%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9239892437%_))))
                                        (if (gx#stx-pair? _%tl9239692444%_)
                                            (let ((_%e9240192447%_
                                                   (gx#syntax-e
                                                    _%tl9239692444%_)))
                                              (let ((_%hd9240092451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9240192447%_)))
                                                    (_%tl9239992454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9240192447%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9239992454%_)
                                                    (let ((_%e9240492457%_
                                                           (gx#syntax-e
                                                            _%tl9239992454%_)))
                                                      (let ((_%hd9240392461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9240492457%_)))
                    (_%tl9240292464%_
                     (let () (declare (not safe)) (##cdr _%e9240492457%_))))
                (if (gx#stx-null? _%tl9240292464%_)
                    ((lambda (_%L92467%_ _%L92469%_ _%L92470%_ _%L92471%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92471%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92470%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92469%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92467%_
                                     (cons _%L92471%_ (cons _%L92470%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9240392461%_
                     _%hd9240092451%_
                     _%hd9239792441%_
                     _%hd9239492431%_)
                    (_%g9238492410%_ _%g9238592414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9238492410%_
                                                     _%g9238592414%_))))
                                            (_%g9238492410%_
                                             _%g9238592414%_))))
                                    (_%g9238492410%_ _%g9238592414%_))))
                            (_%g9238492410%_ _%g9238592414%_))))
                    (_%g9238492410%_ _%g9238592414%_)))))
        (_%g9238392493%_ _%$stx92380%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92497%_)
      (let* ((_%g9250192530%_
              (lambda (_%g9250292526%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9250292526%_)))
             (_%g9250092630%_
              (lambda (_%g9250292534%_)
                (if (gx#stx-pair? _%g9250292534%_)
                    (let ((_%e9250792537%_ (gx#syntax-e _%g9250292534%_)))
                      (let ((_%hd9250692541%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9250792537%_)))
                            (_%tl9250592544%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9250792537%_))))
                        (if (gx#stx-pair/null? _%tl9250592544%_)
                            (let ((_g98423_
                                   (gx#syntax-split-splice
                                    _%tl9250592544%_
                                    '0)))
                              (begin
                                (let ((_g98424_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98423_)
                                             (##vector-length _g98423_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98424_ 2)))
                                      (error "Context expects 2 values"
                                             _g98424_)))
                                (let ((_%target9250892547%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98423_ 0)))
                                      (_%tl9251092550%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98423_ 1))))
                                  (if (gx#stx-null? _%tl9251092550%_)
                                      (letrec ((_%loop9251192553%_
                                                (lambda (_%hd9250992557%_
                                                         _%name9251592560%_
                                                         _%t9251692562%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9250992557%_)
                                                      (let ((_%e9251292565%_
                                                             (gx#syntax-e
                                                              _%hd9250992557%_)))
                                                        (let ((_%lp-hd9251392569%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9251292565%_)))
                      (_%lp-tl9251492572%_
                       (let () (declare (not safe)) (##cdr _%e9251292565%_))))
                  (if (gx#stx-pair? _%lp-hd9251392569%_)
                      (let ((_%e9252192575%_
                             (gx#syntax-e _%lp-hd9251392569%_)))
                        (let ((_%hd9252092579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9252192575%_)))
                              (_%tl9251992582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9252192575%_))))
                          (if (gx#stx-pair? _%tl9251992582%_)
                              (let ((_%e9252492585%_
                                     (gx#syntax-e _%tl9251992582%_)))
                                (let ((_%hd9252392589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9252492585%_)))
                                      (_%tl9252292592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9252492585%_))))
                                  (if (gx#stx-null? _%tl9252292592%_)
                                      (_%loop9251192553%_
                                       _%lp-tl9251492572%_
                                       (cons _%hd9252392589%_
                                             _%name9251592560%_)
                                       (cons _%hd9252092579%_ _%t9251692562%_))
                                      (_%g9250192530%_ _%g9250292534%_))))
                              (_%g9250192530%_ _%g9250292534%_))))
                      (_%g9250192530%_ _%g9250292534%_))))
              (let ((_%name9251792595%_ (reverse _%name9251592560%_))
                    (_%t9251892598%_ (reverse _%t9251692562%_)))
                ((lambda (_%L92601%_ _%L92603%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92601%_
                            _%L92603%_)
                           (let ((__tmp98425
                                  (lambda (_%g9261892622%_
                                           _%g9261992625%_
                                           _%g9262092627%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9261992625%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9261892622%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9262092627%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98425
                              '()
                              _%L92601%_
                              _%L92603%_)))))
                 _%name9251792595%_
                 _%t9251892598%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9251192553%_
                                         _%target9250892547%_
                                         '()
                                         '()))
                                      (_%g9250192530%_ _%g9250292534%_)))))
                            (_%g9250192530%_ _%g9250292534%_))))
                    (_%g9250192530%_ _%g9250292534%_)))))
        (_%g9250092630%_ _%$stx92497%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92635%_)
      (let* ((_%g9263992670%_
              (lambda (_%g9264092666%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9264092666%_)))
             (_%g9263892789%_
              (lambda (_%g9264092674%_)
                (if (gx#stx-pair? _%g9264092674%_)
                    (let ((_%e9264692677%_ (gx#syntax-e _%g9264092674%_)))
                      (let ((_%hd9264592681%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9264692677%_)))
                            (_%tl9264492684%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9264692677%_))))
                        (if (gx#stx-pair? _%tl9264492684%_)
                            (let ((_%e9264992687%_
                                   (gx#syntax-e _%tl9264492684%_)))
                              (let ((_%hd9264892691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9264992687%_)))
                                    (_%tl9264792694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9264992687%_))))
                                (if (gx#stx-pair? _%tl9264792694%_)
                                    (let ((_%e9265292697%_
                                           (gx#syntax-e _%tl9264792694%_)))
                                      (let ((_%hd9265192701%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9265292697%_)))
                                            (_%tl9265092704%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9265292697%_))))
                                        (if (gx#stx-pair? _%tl9265092704%_)
                                            (let ((_%e9265592707%_
                                                   (gx#syntax-e
                                                    _%tl9265092704%_)))
                                              (let ((_%hd9265492711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9265592707%_)))
                                                    (_%tl9265392714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9265592707%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9265492711%_)
                                                    (let ((_g98426_
                                                           (gx#syntax-split-splice
                                                            _%hd9265492711%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g98427_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g98426_)
                             (##vector-length _g98426_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98427_ 2)))
                      (error "Context expects 2 values" _g98427_)))
                (let ((_%target9265692717%_
                       (let () (declare (not safe)) (##vector-ref _g98426_ 0)))
                      (_%tl9265892720%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98426_ 1))))
                  (if (gx#stx-null? _%tl9265892720%_)
                      (letrec ((_%loop9265992723%_
                                (lambda (_%hd9265792727%_ _%super9266392730%_)
                                  (if (gx#stx-pair? _%hd9265792727%_)
                                      (let ((_%e9266092733%_
                                             (gx#syntax-e _%hd9265792727%_)))
                                        (let ((_%lp-hd9266192737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9266092733%_)))
                                              (_%lp-tl9266292740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9266092733%_))))
                                          (_%loop9265992723%_
                                           _%lp-tl9266292740%_
                                           (cons _%lp-hd9266192737%_
                                                 _%super9266392730%_))))
                                      (let ((_%super9266492743%_
                                             (reverse _%super9266392730%_)))
                                        (if (gx#stx-null? _%tl9265392714%_)
                                            ((lambda (_%L92747%_
                                                      _%L92749%_
                                                      _%L92750%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92750%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92749%_
                                                 (cons (let ((__tmp98428
                                                              (lambda (_%g9277492777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9277592780%_)
                        (cons _%g9277492777%_ _%g9277592780%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98428 '() _%L92747%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp98429
                                  (lambda (_%g9277292783%_ _%g9277392786%_)
                                    (cons _%g9277292783%_ _%g9277392786%_))))
                             (declare (not safe))
                             (__foldr1 __tmp98429 '() _%L92747%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9266492743%_
                                             _%hd9265192701%_
                                             _%hd9264892691%_)
                                            (_%g9263992670%_
                                             _%g9264092674%_)))))))
                        (_%loop9265992723%_ _%target9265692717%_ '()))
                      (_%g9263992670%_ _%g9264092674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9263992670%_
                                                     _%g9264092674%_))))
                                            (_%g9263992670%_
                                             _%g9264092674%_))))
                                    (_%g9263992670%_ _%g9264092674%_))))
                            (_%g9263992670%_ _%g9264092674%_))))
                    (_%g9263992670%_ _%g9264092674%_)))))
        (_%g9263892789%_ _%$stx92635%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92794%_)
      (let* ((_%g9279892829%_
              (lambda (_%g9279992825%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9279992825%_)))
             (_%g9279792940%_
              (lambda (_%g9279992833%_)
                (if (gx#stx-pair? _%g9279992833%_)
                    (let ((_%e9280592836%_ (gx#syntax-e _%g9279992833%_)))
                      (let ((_%hd9280492840%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9280592836%_)))
                            (_%tl9280392843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9280592836%_))))
                        (if (gx#stx-pair? _%tl9280392843%_)
                            (let ((_%e9280892846%_
                                   (gx#syntax-e _%tl9280392843%_)))
                              (let ((_%hd9280792850%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9280892846%_)))
                                    (_%tl9280692853%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9280892846%_))))
                                (if (gx#stx-pair? _%tl9280692853%_)
                                    (let ((_%e9281192856%_
                                           (gx#syntax-e _%tl9280692853%_)))
                                      (let ((_%hd9281092860%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9281192856%_)))
                                            (_%tl9280992863%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9281192856%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9281092860%_)
                                            (let ((_g98430_
                                                   (gx#syntax-split-splice
                                                    _%hd9281092860%_
                                                    '0)))
                                              (begin
                                                (let ((_g98431_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g98430_)
                                                             (##vector-length
                                                              _g98430_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g98431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g98431_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9281292866%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98430_
                                                          0)))
                                                      (_%tl9281492869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98430_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9281492869%_)
                                                      (letrec ((_%loop9281592872%_
                                                                (lambda (_%hd9281392876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9281992879%_)
                          (if (gx#stx-pair? _%hd9281392876%_)
                              (let ((_%e9281692882%_
                                     (gx#syntax-e _%hd9281392876%_)))
                                (let ((_%lp-hd9281792886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9281692882%_)))
                                      (_%lp-tl9281892889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9281692882%_))))
                                  (_%loop9281592872%_
                                   _%lp-tl9281892889%_
                                   (cons _%lp-hd9281792886%_
                                         _%super9281992879%_))))
                              (let ((_%super9282092892%_
                                     (reverse _%super9281992879%_)))
                                (if (gx#stx-pair? _%tl9280992863%_)
                                    (let ((_%e9282392896%_
                                           (gx#syntax-e _%tl9280992863%_)))
                                      (let ((_%hd9282292900%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9282392896%_)))
                                            (_%tl9282192903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9282392896%_))))
                                        (if (gx#stx-null? _%tl9282192903%_)
                                            ((lambda (_%L92906%_
                                                      _%L92908%_
                                                      _%L92909%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92909%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92909%_
                                                 (cons (let ((__tmp98432
                                                              (lambda (_%g9293192934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9293292937%_)
                        (cons _%g9293192934%_ _%g9293292937%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98432 '() _%L92908%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92906%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9282292900%_
                                             _%super9282092892%_
                                             _%hd9280792850%_)
                                            (_%g9279892829%_
                                             _%g9279992833%_))))
                                    (_%g9279892829%_ _%g9279992833%_)))))))
                (_%loop9281592872%_ _%target9281292866%_ '()))
              (_%g9279892829%_ _%g9279992833%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9279892829%_
                                             _%g9279992833%_))))
                                    (_%g9279892829%_ _%g9279992833%_))))
                            (_%g9279892829%_ _%g9279992833%_))))
                    (_%g9279892829%_ _%g9279992833%_)))))
        (_%g9279792940%_ _%$stx92794%_)))))
