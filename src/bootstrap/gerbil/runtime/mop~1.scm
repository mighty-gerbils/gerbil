(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91547%_)
      (let* ((_%__stx9806898069%_ _%$stx91547%_)
             (_%g9155291581%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9806898069%_))))
        (let ((_%__kont9807198072%_
               (lambda (_%L91674%_ _%L91676%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91676%_ (cons _%L91674%_ '())))
                             (cons _%L91674%_ '())))))
              (_%__kont9807398074%_
               (lambda (_%L91618%_ _%L91620%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91618%_ (cons _%L91618%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91620%_
                                                           (cons _%L91618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91618%_ '())))
                                   '()))))))
          (let ((_%__match9809598096%_
                 (lambda (_%e9155891644%_
                          _%hd9155791648%_
                          _%tl9155691651%_
                          _%e9156191654%_
                          _%hd9156091658%_
                          _%tl9155991661%_
                          _%e9156491664%_
                          _%hd9156391668%_
                          _%tl9156291671%_)
                   (let ((_%L91674%_ _%hd9156391668%_)
                         (_%L91676%_ _%hd9156091658%_))
                     (if (or (gx#identifier? _%L91674%_)
                             (gx#stx-fixnum? _%L91674%_))
                         (_%__kont9807198072%_ _%L91674%_ _%L91676%_)
                         (_%__kont9807398074%_
                          _%hd9156391668%_
                          _%hd9156091658%_))))))
            (if (gx#stx-pair? _%__stx9806898069%_)
                (let ((_%e9155891644%_ (gx#syntax-e _%__stx9806898069%_)))
                  (let ((_%tl9155691651%_
                         (let () (declare (not safe)) (##cdr _%e9155891644%_)))
                        (_%hd9155791648%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9155891644%_))))
                    (if (gx#stx-pair? _%tl9155691651%_)
                        (let ((_%e9156191654%_ (gx#syntax-e _%tl9155691651%_)))
                          (let ((_%tl9155991661%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9156191654%_)))
                                (_%hd9156091658%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9156191654%_))))
                            (if (gx#stx-pair? _%tl9155991661%_)
                                (let ((_%e9156491664%_
                                       (gx#syntax-e _%tl9155991661%_)))
                                  (let ((_%tl9156291671%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9156491664%_)))
                                        (_%hd9156391668%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9156491664%_))))
                                    (if (gx#stx-null? _%tl9156291671%_)
                                        (_%__match9809598096%_
                                         _%e9155891644%_
                                         _%hd9155791648%_
                                         _%tl9155691651%_
                                         _%e9156191654%_
                                         _%hd9156091658%_
                                         _%tl9155991661%_
                                         _%e9156491664%_
                                         _%hd9156391668%_
                                         _%tl9156291671%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9155291581%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9155291581%_)))))
                        (let () (declare (not safe)) (_%g9155291581%_)))))
                (let () (declare (not safe)) (_%g9155291581%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91699%_)
      (let* ((_%__stx9811898119%_ _%$stx91699%_)
             (_%g9170491733%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9811898119%_))))
        (let ((_%__kont9812198122%_
               (lambda (_%L91825%_ _%L91827%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91827%_ (cons _%L91825%_ '())))
                             (cons '0 '())))))
              (_%__kont9812398124%_
               (lambda (_%L91770%_ _%L91772%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91770%_ (cons _%L91770%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91772%_
                                                           (cons _%L91770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9814598146%_
                 (lambda (_%e9171091795%_
                          _%hd9170991799%_
                          _%tl9170891802%_
                          _%e9171391805%_
                          _%hd9171291809%_
                          _%tl9171191812%_
                          _%e9171691815%_
                          _%hd9171591819%_
                          _%tl9171491822%_)
                   (let ((_%L91825%_ _%hd9171591819%_)
                         (_%L91827%_ _%hd9171291809%_))
                     (if (or (gx#identifier? _%L91825%_)
                             (gx#stx-fixnum? _%L91825%_))
                         (_%__kont9812198122%_ _%L91825%_ _%L91827%_)
                         (_%__kont9812398124%_
                          _%hd9171591819%_
                          _%hd9171291809%_))))))
            (if (gx#stx-pair? _%__stx9811898119%_)
                (let ((_%e9171091795%_ (gx#syntax-e _%__stx9811898119%_)))
                  (let ((_%tl9170891802%_
                         (let () (declare (not safe)) (##cdr _%e9171091795%_)))
                        (_%hd9170991799%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9171091795%_))))
                    (if (gx#stx-pair? _%tl9170891802%_)
                        (let ((_%e9171391805%_ (gx#syntax-e _%tl9170891802%_)))
                          (let ((_%tl9171191812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9171391805%_)))
                                (_%hd9171291809%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9171391805%_))))
                            (if (gx#stx-pair? _%tl9171191812%_)
                                (let ((_%e9171691815%_
                                       (gx#syntax-e _%tl9171191812%_)))
                                  (let ((_%tl9171491822%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9171691815%_)))
                                        (_%hd9171591819%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9171691815%_))))
                                    (if (gx#stx-null? _%tl9171491822%_)
                                        (_%__match9814598146%_
                                         _%e9171091795%_
                                         _%hd9170991799%_
                                         _%tl9170891802%_
                                         _%e9171391805%_
                                         _%hd9171291809%_
                                         _%tl9171191812%_
                                         _%e9171691815%_
                                         _%hd9171591819%_
                                         _%tl9171491822%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9170491733%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9170491733%_)))))
                        (let () (declare (not safe)) (_%g9170491733%_)))))
                (let () (declare (not safe)) (_%g9170491733%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91850%_)
      (let* ((_%g9185391874%_
              (lambda (_%g9185491870%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9185491870%_)))
             (_%g9185292102%_
              (lambda (_%g9185491878%_)
                (if (gx#stx-pair? _%g9185491878%_)
                    (let ((_%e9185991881%_ (gx#syntax-e _%g9185491878%_)))
                      (let ((_%hd9185891885%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9185991881%_)))
                            (_%tl9185791888%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9185991881%_))))
                        (if (gx#stx-pair? _%tl9185791888%_)
                            (let ((_%e9186291891%_
                                   (gx#syntax-e _%tl9185791888%_)))
                              (let ((_%hd9186191895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9186291891%_)))
                                    (_%tl9186091898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9186291891%_))))
                                (if (gx#stx-pair? _%hd9186191895%_)
                                    (let ((_%e9186591901%_
                                           (gx#syntax-e _%hd9186191895%_)))
                                      (let ((_%hd9186491905%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9186591901%_)))
                                            (_%tl9186391908%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9186591901%_))))
                                        (if (gx#stx-pair? _%tl9186391908%_)
                                            (let ((_%e9186891911%_
                                                   (gx#syntax-e
                                                    _%tl9186391908%_)))
                                              (let ((_%hd9186791915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9186891911%_)))
                                                    (_%tl9186691918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9186891911%_))))
                                                (if (gx#stx-null?
                                                     _%tl9186691918%_)
                                                    (if (gx#stx-null?
                                                         _%tl9186091898%_)
                                                        ((lambda (_%L91921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91923%_)
                   (let* ((_%g9194191949%_
                           (lambda (_%g9194291945%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9194291945%_)))
                          (_%g9194092098%_
                           (lambda (_%g9194291953%_)
                             ((lambda (_%L91956%_)
                                (let ()
                                  (let* ((_%g9196891976%_
                                          (lambda (_%g9196991972%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9196991972%_)))
                                         (_%g9196792094%_
                                          (lambda (_%g9196991980%_)
                                            ((lambda (_%L91983%_)
                                               (let ()
                                                 (let* ((_%g9199692004%_
                                                         (lambda (_%g9199792000%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9199792000%_)))
                                                        (_%g9199592090%_
                                                         (lambda (_%g9199792008%_)
                                                           ((lambda (_%L92011%_)
                                                              (let ()
                                                                (let* ((_%g9202492032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9202592028%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9202592028%_)))
                               (_%g9202392086%_
                                (lambda (_%g9202592036%_)
                                  ((lambda (_%L92039%_)
                                     (let ()
                                       (let* ((_%g9205292060%_
                                               (lambda (_%g9205392056%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9205392056%_)))
                                              (_%g9205192082%_
                                               (lambda (_%g9205392064%_)
                                                 ((lambda (_%L92067%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'def)
                                (cons _%L91983%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.accessor)
                                                              (cons _%L91956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L91923%_ (cons '#t '()))))
                (cons (cons (gx#datum->syntax '#f 'lambda)
                            (cons (cons (gx#datum->syntax '#f 'klass) '())
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##structure-ref)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'klass)
                                                    (cons _%L91921%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'class::t)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L91923%_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons _%L92011%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@mop.accessor)
                            (cons _%L91956%_ (cons _%L91923%_ (cons '#f '()))))
                      (cons (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f 'klass)
                                              '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##unchecked-structure-ref)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'klass)
                                                          (cons _%L91921%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'class::t)
                              (cons (cons (gx#datum->syntax '#f 'quote)
                                          (cons _%L91923%_ '()))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons _%L92039%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@mop.mutator)
                                  (cons _%L91956%_
                                        (cons _%L91923%_ (cons '#t '()))))
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
                              (cons _%L91921%_
                                    (cons (gx#datum->syntax '#f 'class::t)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%L91923%_ '()))
                                                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons _%L92067%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                        (cons _%L91956%_
                                              (cons _%L91923%_
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
                                    (cons _%L91921%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'class::t)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L91923%_
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
                                                  _%g9205392064%_))))
                                         (_%g9205192082%_
                                          (gx#stx-identifier
                                           _%L91923%_
                                           '"&"
                                           _%L92039%_)))))
                                   _%g9202592036%_))))
                          (_%g9202392086%_
                           (gx#stx-identifier
                            _%L91923%_
                            _%L91983%_
                            '"-set!")))))
                    _%g9199792008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9199592090%_
                                                    (gx#stx-identifier
                                                     _%L91923%_
                                                     '"&"
                                                     _%L91983%_)))))
                                             _%g9196991980%_))))
                                    (_%g9196792094%_
                                     (gx#stx-identifier
                                      _%L91923%_
                                      '"class-type-"
                                      _%L91923%_)))))
                              _%g9194291953%_))))
                     (_%g9194092098%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9186791915%_
                 _%hd9186491905%_)
                (_%g9185391874%_ _%g9185491878%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9185391874%_
                                                     _%g9185491878%_))))
                                            (_%g9185391874%_
                                             _%g9185491878%_))))
                                    (_%g9185391874%_ _%g9185491878%_))))
                            (_%g9185391874%_ _%g9185491878%_))))
                    (_%g9185391874%_ _%g9185491878%_)))))
        (_%g9185292102%_ _%stx91850%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92106%_)
      (let* ((_%g9211092139%_
              (lambda (_%g9211192135%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9211192135%_)))
             (_%g9210992239%_
              (lambda (_%g9211192143%_)
                (if (gx#stx-pair? _%g9211192143%_)
                    (let ((_%e9211692146%_ (gx#syntax-e _%g9211192143%_)))
                      (let ((_%hd9211592150%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9211692146%_)))
                            (_%tl9211492153%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9211692146%_))))
                        (if (gx#stx-pair/null? _%tl9211492153%_)
                            (let ((_g98437_
                                   (gx#syntax-split-splice
                                    _%tl9211492153%_
                                    '0)))
                              (begin
                                (let ((_g98438_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98437_)
                                             (##vector-length _g98437_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98438_ 2)))
                                      (error "Context expects 2 values"
                                             _g98438_)))
                                (let ((_%target9211792156%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98437_ 0)))
                                      (_%tl9211992159%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98437_ 1))))
                                  (if (gx#stx-null? _%tl9211992159%_)
                                      (letrec ((_%loop9212092162%_
                                                (lambda (_%hd9211892166%_
                                                         _%field9212492169%_
                                                         _%slot9212592171%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9211892166%_)
                                                      (let ((_%e9212192174%_
                                                             (gx#syntax-e
                                                              _%hd9211892166%_)))
                                                        (let ((_%lp-hd9212292178%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9212192174%_)))
                      (_%lp-tl9212392181%_
                       (let () (declare (not safe)) (##cdr _%e9212192174%_))))
                  (if (gx#stx-pair? _%lp-hd9212292178%_)
                      (let ((_%e9213092184%_
                             (gx#syntax-e _%lp-hd9212292178%_)))
                        (let ((_%hd9212992188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9213092184%_)))
                              (_%tl9212892191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9213092184%_))))
                          (if (gx#stx-pair? _%tl9212892191%_)
                              (let ((_%e9213392194%_
                                     (gx#syntax-e _%tl9212892191%_)))
                                (let ((_%hd9213292198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9213392194%_)))
                                      (_%tl9213192201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9213392194%_))))
                                  (if (gx#stx-null? _%tl9213192201%_)
                                      (_%loop9212092162%_
                                       _%lp-tl9212392181%_
                                       (cons _%hd9213292198%_
                                             _%field9212492169%_)
                                       (cons _%hd9212992188%_
                                             _%slot9212592171%_))
                                      (_%g9211092139%_ _%g9211192143%_))))
                              (_%g9211092139%_ _%g9211192143%_))))
                      (_%g9211092139%_ _%g9211192143%_))))
              (let ((_%field9212692204%_ (reverse _%field9212492169%_))
                    (_%slot9212792207%_ (reverse _%slot9212592171%_)))
                ((lambda (_%L92210%_ _%L92212%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92210%_
                            _%L92212%_)
                           (let ((__tmp98439
                                  (lambda (_%g9222792231%_
                                           _%g9222892234%_
                                           _%g9222992236%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9222892234%_
                                                            (cons _%g9222792231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9222992236%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98439
                              '()
                              _%L92210%_
                              _%L92212%_)))))
                 _%field9212692204%_
                 _%slot9212792207%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9212092162%_
                                         _%target9211792156%_
                                         '()
                                         '()))
                                      (_%g9211092139%_ _%g9211192143%_)))))
                            (_%g9211092139%_ _%g9211192143%_))))
                    (_%g9211092139%_ _%g9211192143%_)))))
        (_%g9210992239%_ _%$stx92106%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92244%_)
      (let* ((_%g9224892282%_
              (lambda (_%g9224992278%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9224992278%_)))
             (_%g9224792393%_
              (lambda (_%g9224992286%_)
                (if (gx#stx-pair? _%g9224992286%_)
                    (let ((_%e9225892289%_ (gx#syntax-e _%g9224992286%_)))
                      (let ((_%hd9225792293%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9225892289%_)))
                            (_%tl9225692296%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9225892289%_))))
                        (if (gx#stx-pair? _%tl9225692296%_)
                            (let ((_%e9226192299%_
                                   (gx#syntax-e _%tl9225692296%_)))
                              (let ((_%hd9226092303%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9226192299%_)))
                                    (_%tl9225992306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9226192299%_))))
                                (if (gx#stx-pair? _%tl9225992306%_)
                                    (let ((_%e9226492309%_
                                           (gx#syntax-e _%tl9225992306%_)))
                                      (let ((_%hd9226392313%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9226492309%_)))
                                            (_%tl9226292316%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9226492309%_))))
                                        (if (gx#stx-pair? _%tl9226292316%_)
                                            (let ((_%e9226792319%_
                                                   (gx#syntax-e
                                                    _%tl9226292316%_)))
                                              (let ((_%hd9226692323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9226792319%_)))
                                                    (_%tl9226592326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9226792319%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9226592326%_)
                                                    (let ((_%e9227092329%_
                                                           (gx#syntax-e
                                                            _%tl9226592326%_)))
                                                      (let ((_%hd9226992333%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9227092329%_)))
                    (_%tl9226892336%_
                     (let () (declare (not safe)) (##cdr _%e9227092329%_))))
                (if (gx#stx-pair? _%tl9226892336%_)
                    (let ((_%e9227392339%_ (gx#syntax-e _%tl9226892336%_)))
                      (let ((_%hd9227292343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9227392339%_)))
                            (_%tl9227192346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9227392339%_))))
                        (if (gx#stx-pair? _%tl9227192346%_)
                            (let ((_%e9227692349%_
                                   (gx#syntax-e _%tl9227192346%_)))
                              (let ((_%hd9227592353%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9227692349%_)))
                                    (_%tl9227492356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9227692349%_))))
                                (if (gx#stx-null? _%tl9227492356%_)
                                    ((lambda (_%L92359%_
                                              _%L92361%_
                                              _%L92362%_
                                              _%L92363%_
                                              _%L92364%_
                                              _%L92365%_)
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
                                         (cons _%L92365%_ '()))
                                   (cons _%L92364%_ (cons '#f '()))))
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
                               (cons _%L92365%_
                                     (cons 'slot: (cons _%L92364%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L92365%_ '()))
                                         (cons (cons _%L92363%_
                                                     (cons _%L92365%_
                                                           (cons _%L92364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L92365%_ '()))
                                               (cons (cons _%L92362%_
                                                           (cons _%L92365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92364%_
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
                                           (cons _%L92365%_ '()))
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
                                                     (cons (cons _%L92361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92365%_
                               (cons _%L92364%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L92359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92365%_
                                     (cons _%L92364%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9227592353%_
                                     _%hd9227292343%_
                                     _%hd9226992333%_
                                     _%hd9226692323%_
                                     _%hd9226392313%_
                                     _%hd9226092303%_)
                                    (_%g9224892282%_ _%g9224992286%_))))
                            (_%g9224892282%_ _%g9224992286%_))))
                    (_%g9224892282%_ _%g9224992286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9224892282%_
                                                     _%g9224992286%_))))
                                            (_%g9224892282%_
                                             _%g9224992286%_))))
                                    (_%g9224892282%_ _%g9224992286%_))))
                            (_%g9224892282%_ _%g9224992286%_))))
                    (_%g9224892282%_ _%g9224992286%_)))))
        (_%g9224792393%_ _%$stx92244%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx92397%_)
      (let* ((_%g9240192427%_
              (lambda (_%g9240292423%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9240292423%_)))
             (_%g9240092510%_
              (lambda (_%g9240292431%_)
                (if (gx#stx-pair? _%g9240292431%_)
                    (let ((_%e9240992434%_ (gx#syntax-e _%g9240292431%_)))
                      (let ((_%hd9240892438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9240992434%_)))
                            (_%tl9240792441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9240992434%_))))
                        (if (gx#stx-pair? _%tl9240792441%_)
                            (let ((_%e9241292444%_
                                   (gx#syntax-e _%tl9240792441%_)))
                              (let ((_%hd9241192448%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9241292444%_)))
                                    (_%tl9241092451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9241292444%_))))
                                (if (gx#stx-pair? _%tl9241092451%_)
                                    (let ((_%e9241592454%_
                                           (gx#syntax-e _%tl9241092451%_)))
                                      (let ((_%hd9241492458%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9241592454%_)))
                                            (_%tl9241392461%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9241592454%_))))
                                        (if (gx#stx-pair? _%tl9241392461%_)
                                            (let ((_%e9241892464%_
                                                   (gx#syntax-e
                                                    _%tl9241392461%_)))
                                              (let ((_%hd9241792468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9241892464%_)))
                                                    (_%tl9241692471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9241892464%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9241692471%_)
                                                    (let ((_%e9242192474%_
                                                           (gx#syntax-e
                                                            _%tl9241692471%_)))
                                                      (let ((_%hd9242092478%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9242192474%_)))
                    (_%tl9241992481%_
                     (let () (declare (not safe)) (##cdr _%e9242192474%_))))
                (if (gx#stx-null? _%tl9241992481%_)
                    ((lambda (_%L92484%_ _%L92486%_ _%L92487%_ _%L92488%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92488%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92487%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92486%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92484%_
                                     (cons _%L92488%_ (cons _%L92487%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9242092478%_
                     _%hd9241792468%_
                     _%hd9241492458%_
                     _%hd9241192448%_)
                    (_%g9240192427%_ _%g9240292431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9240192427%_
                                                     _%g9240292431%_))))
                                            (_%g9240192427%_
                                             _%g9240292431%_))))
                                    (_%g9240192427%_ _%g9240292431%_))))
                            (_%g9240192427%_ _%g9240292431%_))))
                    (_%g9240192427%_ _%g9240292431%_)))))
        (_%g9240092510%_ _%$stx92397%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92514%_)
      (let* ((_%g9251892547%_
              (lambda (_%g9251992543%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9251992543%_)))
             (_%g9251792647%_
              (lambda (_%g9251992551%_)
                (if (gx#stx-pair? _%g9251992551%_)
                    (let ((_%e9252492554%_ (gx#syntax-e _%g9251992551%_)))
                      (let ((_%hd9252392558%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9252492554%_)))
                            (_%tl9252292561%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9252492554%_))))
                        (if (gx#stx-pair/null? _%tl9252292561%_)
                            (let ((_g98440_
                                   (gx#syntax-split-splice
                                    _%tl9252292561%_
                                    '0)))
                              (begin
                                (let ((_g98441_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98440_)
                                             (##vector-length _g98440_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98441_ 2)))
                                      (error "Context expects 2 values"
                                             _g98441_)))
                                (let ((_%target9252592564%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98440_ 0)))
                                      (_%tl9252792567%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98440_ 1))))
                                  (if (gx#stx-null? _%tl9252792567%_)
                                      (letrec ((_%loop9252892570%_
                                                (lambda (_%hd9252692574%_
                                                         _%name9253292577%_
                                                         _%t9253392579%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9252692574%_)
                                                      (let ((_%e9252992582%_
                                                             (gx#syntax-e
                                                              _%hd9252692574%_)))
                                                        (let ((_%lp-hd9253092586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9252992582%_)))
                      (_%lp-tl9253192589%_
                       (let () (declare (not safe)) (##cdr _%e9252992582%_))))
                  (if (gx#stx-pair? _%lp-hd9253092586%_)
                      (let ((_%e9253892592%_
                             (gx#syntax-e _%lp-hd9253092586%_)))
                        (let ((_%hd9253792596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9253892592%_)))
                              (_%tl9253692599%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9253892592%_))))
                          (if (gx#stx-pair? _%tl9253692599%_)
                              (let ((_%e9254192602%_
                                     (gx#syntax-e _%tl9253692599%_)))
                                (let ((_%hd9254092606%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9254192602%_)))
                                      (_%tl9253992609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9254192602%_))))
                                  (if (gx#stx-null? _%tl9253992609%_)
                                      (_%loop9252892570%_
                                       _%lp-tl9253192589%_
                                       (cons _%hd9254092606%_
                                             _%name9253292577%_)
                                       (cons _%hd9253792596%_ _%t9253392579%_))
                                      (_%g9251892547%_ _%g9251992551%_))))
                              (_%g9251892547%_ _%g9251992551%_))))
                      (_%g9251892547%_ _%g9251992551%_))))
              (let ((_%name9253492612%_ (reverse _%name9253292577%_))
                    (_%t9253592615%_ (reverse _%t9253392579%_)))
                ((lambda (_%L92618%_ _%L92620%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92618%_
                            _%L92620%_)
                           (let ((__tmp98442
                                  (lambda (_%g9263592639%_
                                           _%g9263692642%_
                                           _%g9263792644%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9263692642%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9263592639%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9263792644%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98442
                              '()
                              _%L92618%_
                              _%L92620%_)))))
                 _%name9253492612%_
                 _%t9253592615%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9252892570%_
                                         _%target9252592564%_
                                         '()
                                         '()))
                                      (_%g9251892547%_ _%g9251992551%_)))))
                            (_%g9251892547%_ _%g9251992551%_))))
                    (_%g9251892547%_ _%g9251992551%_)))))
        (_%g9251792647%_ _%$stx92514%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92652%_)
      (let* ((_%g9265692687%_
              (lambda (_%g9265792683%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9265792683%_)))
             (_%g9265592806%_
              (lambda (_%g9265792691%_)
                (if (gx#stx-pair? _%g9265792691%_)
                    (let ((_%e9266392694%_ (gx#syntax-e _%g9265792691%_)))
                      (let ((_%hd9266292698%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9266392694%_)))
                            (_%tl9266192701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9266392694%_))))
                        (if (gx#stx-pair? _%tl9266192701%_)
                            (let ((_%e9266692704%_
                                   (gx#syntax-e _%tl9266192701%_)))
                              (let ((_%hd9266592708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9266692704%_)))
                                    (_%tl9266492711%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9266692704%_))))
                                (if (gx#stx-pair? _%tl9266492711%_)
                                    (let ((_%e9266992714%_
                                           (gx#syntax-e _%tl9266492711%_)))
                                      (let ((_%hd9266892718%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9266992714%_)))
                                            (_%tl9266792721%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9266992714%_))))
                                        (if (gx#stx-pair? _%tl9266792721%_)
                                            (let ((_%e9267292724%_
                                                   (gx#syntax-e
                                                    _%tl9266792721%_)))
                                              (let ((_%hd9267192728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9267292724%_)))
                                                    (_%tl9267092731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9267292724%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9267192728%_)
                                                    (let ((_g98443_
                                                           (gx#syntax-split-splice
                                                            _%hd9267192728%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g98444_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g98443_)
                             (##vector-length _g98443_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98444_ 2)))
                      (error "Context expects 2 values" _g98444_)))
                (let ((_%target9267392734%_
                       (let () (declare (not safe)) (##vector-ref _g98443_ 0)))
                      (_%tl9267592737%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98443_ 1))))
                  (if (gx#stx-null? _%tl9267592737%_)
                      (letrec ((_%loop9267692740%_
                                (lambda (_%hd9267492744%_ _%super9268092747%_)
                                  (if (gx#stx-pair? _%hd9267492744%_)
                                      (let ((_%e9267792750%_
                                             (gx#syntax-e _%hd9267492744%_)))
                                        (let ((_%lp-hd9267892754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9267792750%_)))
                                              (_%lp-tl9267992757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9267792750%_))))
                                          (_%loop9267692740%_
                                           _%lp-tl9267992757%_
                                           (cons _%lp-hd9267892754%_
                                                 _%super9268092747%_))))
                                      (let ((_%super9268192760%_
                                             (reverse _%super9268092747%_)))
                                        (if (gx#stx-null? _%tl9267092731%_)
                                            ((lambda (_%L92764%_
                                                      _%L92766%_
                                                      _%L92767%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92767%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92766%_
                                                 (cons (let ((__tmp98445
                                                              (lambda (_%g9279192794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9279292797%_)
                        (cons _%g9279192794%_ _%g9279292797%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98445 '() _%L92764%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp98446
                                  (lambda (_%g9278992800%_ _%g9279092803%_)
                                    (cons _%g9278992800%_ _%g9279092803%_))))
                             (declare (not safe))
                             (__foldr1 __tmp98446 '() _%L92764%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9268192760%_
                                             _%hd9266892718%_
                                             _%hd9266592708%_)
                                            (_%g9265692687%_
                                             _%g9265792691%_)))))))
                        (_%loop9267692740%_ _%target9267392734%_ '()))
                      (_%g9265692687%_ _%g9265792691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9265692687%_
                                                     _%g9265792691%_))))
                                            (_%g9265692687%_
                                             _%g9265792691%_))))
                                    (_%g9265692687%_ _%g9265792691%_))))
                            (_%g9265692687%_ _%g9265792691%_))))
                    (_%g9265692687%_ _%g9265792691%_)))))
        (_%g9265592806%_ _%$stx92652%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92811%_)
      (let* ((_%g9281592846%_
              (lambda (_%g9281692842%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9281692842%_)))
             (_%g9281492957%_
              (lambda (_%g9281692850%_)
                (if (gx#stx-pair? _%g9281692850%_)
                    (let ((_%e9282292853%_ (gx#syntax-e _%g9281692850%_)))
                      (let ((_%hd9282192857%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9282292853%_)))
                            (_%tl9282092860%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9282292853%_))))
                        (if (gx#stx-pair? _%tl9282092860%_)
                            (let ((_%e9282592863%_
                                   (gx#syntax-e _%tl9282092860%_)))
                              (let ((_%hd9282492867%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9282592863%_)))
                                    (_%tl9282392870%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9282592863%_))))
                                (if (gx#stx-pair? _%tl9282392870%_)
                                    (let ((_%e9282892873%_
                                           (gx#syntax-e _%tl9282392870%_)))
                                      (let ((_%hd9282792877%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9282892873%_)))
                                            (_%tl9282692880%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9282892873%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9282792877%_)
                                            (let ((_g98447_
                                                   (gx#syntax-split-splice
                                                    _%hd9282792877%_
                                                    '0)))
                                              (begin
                                                (let ((_g98448_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g98447_)
                                                             (##vector-length
                                                              _g98447_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g98448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g98448_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9282992883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98447_
                                                          0)))
                                                      (_%tl9283192886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98447_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9283192886%_)
                                                      (letrec ((_%loop9283292889%_
                                                                (lambda (_%hd9283092893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9283692896%_)
                          (if (gx#stx-pair? _%hd9283092893%_)
                              (let ((_%e9283392899%_
                                     (gx#syntax-e _%hd9283092893%_)))
                                (let ((_%lp-hd9283492903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9283392899%_)))
                                      (_%lp-tl9283592906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9283392899%_))))
                                  (_%loop9283292889%_
                                   _%lp-tl9283592906%_
                                   (cons _%lp-hd9283492903%_
                                         _%super9283692896%_))))
                              (let ((_%super9283792909%_
                                     (reverse _%super9283692896%_)))
                                (if (gx#stx-pair? _%tl9282692880%_)
                                    (let ((_%e9284092913%_
                                           (gx#syntax-e _%tl9282692880%_)))
                                      (let ((_%hd9283992917%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9284092913%_)))
                                            (_%tl9283892920%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9284092913%_))))
                                        (if (gx#stx-null? _%tl9283892920%_)
                                            ((lambda (_%L92923%_
                                                      _%L92925%_
                                                      _%L92926%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92926%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92926%_
                                                 (cons (let ((__tmp98449
                                                              (lambda (_%g9294892951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9294992954%_)
                        (cons _%g9294892951%_ _%g9294992954%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98449 '() _%L92925%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92923%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9283992917%_
                                             _%super9283792909%_
                                             _%hd9282492867%_)
                                            (_%g9281592846%_
                                             _%g9281692850%_))))
                                    (_%g9281592846%_ _%g9281692850%_)))))))
                (_%loop9283292889%_ _%target9282992883%_ '()))
              (_%g9281592846%_ _%g9281692850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9281592846%_
                                             _%g9281692850%_))))
                                    (_%g9281592846%_ _%g9281692850%_))))
                            (_%g9281592846%_ _%g9281692850%_))))
                    (_%g9281592846%_ _%g9281692850%_)))))
        (_%g9281492957%_ _%$stx92811%_)))))
