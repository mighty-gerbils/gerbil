(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx91609%_)
      (let* ((_%__stx9811898119%_ _%$stx91609%_)
             (_%g9161491643%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9811898119%_))))
        (let ((_%__kont9812198122%_
               (lambda (_%L91736%_ _%L91738%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91738%_ (cons _%L91736%_ '())))
                             (cons _%L91736%_ '())))))
              (_%__kont9812398124%_
               (lambda (_%L91680%_ _%L91682%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91680%_ (cons _%L91680%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91682%_
                                                           (cons _%L91680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L91680%_ '())))
                                   '()))))))
          (let ((_%__match9814598146%_
                 (lambda (_%e9161891706%_
                          _%hd9161991710%_
                          _%tl9162091713%_
                          _%e9162191716%_
                          _%hd9162291720%_
                          _%tl9162391723%_
                          _%e9162491726%_
                          _%hd9162591730%_
                          _%tl9162691733%_)
                   (let ((_%L91736%_ _%hd9162591730%_)
                         (_%L91738%_ _%hd9162291720%_))
                     (if (or (gx#identifier? _%L91736%_)
                             (gx#stx-fixnum? _%L91736%_))
                         (_%__kont9812198122%_ _%L91736%_ _%L91738%_)
                         (_%__kont9812398124%_
                          _%hd9162591730%_
                          _%hd9162291720%_))))))
            (if (gx#stx-pair? _%__stx9811898119%_)
                (let ((_%e9161891706%_ (gx#syntax-e _%__stx9811898119%_)))
                  (let ((_%tl9162091713%_
                         (let () (declare (not safe)) (##cdr _%e9161891706%_)))
                        (_%hd9161991710%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9161891706%_))))
                    (if (gx#stx-pair? _%tl9162091713%_)
                        (let ((_%e9162191716%_ (gx#syntax-e _%tl9162091713%_)))
                          (let ((_%tl9162391723%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9162191716%_)))
                                (_%hd9162291720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9162191716%_))))
                            (if (gx#stx-pair? _%tl9162391723%_)
                                (let ((_%e9162491726%_
                                       (gx#syntax-e _%tl9162391723%_)))
                                  (let ((_%tl9162691733%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9162491726%_)))
                                        (_%hd9162591730%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9162491726%_))))
                                    (if (gx#stx-null? _%tl9162691733%_)
                                        (_%__match9814598146%_
                                         _%e9161891706%_
                                         _%hd9161991710%_
                                         _%tl9162091713%_
                                         _%e9162191716%_
                                         _%hd9162291720%_
                                         _%tl9162391723%_
                                         _%e9162491726%_
                                         _%hd9162591730%_
                                         _%tl9162691733%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9161491643%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9161491643%_)))))
                        (let () (declare (not safe)) (_%g9161491643%_)))))
                (let () (declare (not safe)) (_%g9161491643%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91761%_)
      (let* ((_%__stx9816898169%_ _%$stx91761%_)
             (_%g9176691795%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9816898169%_))))
        (let ((_%__kont9817198172%_
               (lambda (_%L91887%_ _%L91889%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91889%_ (cons _%L91887%_ '())))
                             (cons '0 '())))))
              (_%__kont9817398174%_
               (lambda (_%L91832%_ _%L91834%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91832%_ (cons _%L91832%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91834%_
                                                           (cons _%L91832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9819598196%_
                 (lambda (_%e9177091857%_
                          _%hd9177191861%_
                          _%tl9177291864%_
                          _%e9177391867%_
                          _%hd9177491871%_
                          _%tl9177591874%_
                          _%e9177691877%_
                          _%hd9177791881%_
                          _%tl9177891884%_)
                   (let ((_%L91887%_ _%hd9177791881%_)
                         (_%L91889%_ _%hd9177491871%_))
                     (if (or (gx#identifier? _%L91887%_)
                             (gx#stx-fixnum? _%L91887%_))
                         (_%__kont9817198172%_ _%L91887%_ _%L91889%_)
                         (_%__kont9817398174%_
                          _%hd9177791881%_
                          _%hd9177491871%_))))))
            (if (gx#stx-pair? _%__stx9816898169%_)
                (let ((_%e9177091857%_ (gx#syntax-e _%__stx9816898169%_)))
                  (let ((_%tl9177291864%_
                         (let () (declare (not safe)) (##cdr _%e9177091857%_)))
                        (_%hd9177191861%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9177091857%_))))
                    (if (gx#stx-pair? _%tl9177291864%_)
                        (let ((_%e9177391867%_ (gx#syntax-e _%tl9177291864%_)))
                          (let ((_%tl9177591874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9177391867%_)))
                                (_%hd9177491871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9177391867%_))))
                            (if (gx#stx-pair? _%tl9177591874%_)
                                (let ((_%e9177691877%_
                                       (gx#syntax-e _%tl9177591874%_)))
                                  (let ((_%tl9177891884%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9177691877%_)))
                                        (_%hd9177791881%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9177691877%_))))
                                    (if (gx#stx-null? _%tl9177891884%_)
                                        (_%__match9819598196%_
                                         _%e9177091857%_
                                         _%hd9177191861%_
                                         _%tl9177291864%_
                                         _%e9177391867%_
                                         _%hd9177491871%_
                                         _%tl9177591874%_
                                         _%e9177691877%_
                                         _%hd9177791881%_
                                         _%tl9177891884%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9176691795%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9176691795%_)))))
                        (let () (declare (not safe)) (_%g9176691795%_)))))
                (let () (declare (not safe)) (_%g9176691795%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91912%_)
      (let* ((_%g9191591936%_
              (lambda (_%g9191691932%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9191691932%_)))
             (_%g9191492164%_
              (lambda (_%g9191691940%_)
                (if (gx#stx-pair? _%g9191691940%_)
                    (let ((_%e9191991943%_ (gx#syntax-e _%g9191691940%_)))
                      (let ((_%hd9192091947%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9191991943%_)))
                            (_%tl9192191950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9191991943%_))))
                        (if (gx#stx-pair? _%tl9192191950%_)
                            (let ((_%e9192291953%_
                                   (gx#syntax-e _%tl9192191950%_)))
                              (let ((_%hd9192391957%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9192291953%_)))
                                    (_%tl9192491960%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9192291953%_))))
                                (if (gx#stx-pair? _%hd9192391957%_)
                                    (let ((_%e9192591963%_
                                           (gx#syntax-e _%hd9192391957%_)))
                                      (let ((_%hd9192691967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9192591963%_)))
                                            (_%tl9192791970%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9192591963%_))))
                                        (if (gx#stx-pair? _%tl9192791970%_)
                                            (let ((_%e9192891973%_
                                                   (gx#syntax-e
                                                    _%tl9192791970%_)))
                                              (let ((_%hd9192991977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9192891973%_)))
                                                    (_%tl9193091980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9192891973%_))))
                                                (if (gx#stx-null?
                                                     _%tl9193091980%_)
                                                    (if (gx#stx-null?
                                                         _%tl9192491960%_)
                                                        ((lambda (_%L91983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91985%_)
                   (let* ((_%g9200392011%_
                           (lambda (_%g9200492007%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9200492007%_)))
                          (_%g9200292160%_
                           (lambda (_%g9200492015%_)
                             ((lambda (_%L92018%_)
                                (let* ((_%g9203092038%_
                                        (lambda (_%g9203192034%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9203192034%_)))
                                       (_%g9202992156%_
                                        (lambda (_%g9203192042%_)
                                          ((lambda (_%L92045%_)
                                             (let* ((_%g9205892066%_
                                                     (lambda (_%g9205992062%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9205992062%_)))
                                                    (_%g9205792152%_
                                                     (lambda (_%g9205992070%_)
                                                       ((lambda (_%L92073%_)
                                                          (let* ((_%g9208692094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9208792090%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9208792090%_)))
                         (_%g9208592148%_
                          (lambda (_%g9208792098%_)
                            ((lambda (_%L92101%_)
                               (let* ((_%g9211492122%_
                                       (lambda (_%g9211592118%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9211592118%_)))
                                      (_%g9211392144%_
                                       (lambda (_%g9211592126%_)
                                         ((lambda (_%L92129%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L92045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L92018%_
                                                          (cons _%L91985%_
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
                                          (cons _%L91983%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L91985%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L92073%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L92018%_
                                                                (cons _%L91985%_
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
                                                (cons _%L91983%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L91985%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L92101%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L92018%_ (cons _%L91985%_ (cons '#t '()))))
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
                                                            (cons _%L91983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L91985%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L92129%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L92018%_
                                    (cons _%L91985%_ (cons '#f '()))))
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
                          (cons _%L91983%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L91985%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9211592126%_))))
                                 (_%g9211392144%_
                                  (gx#stx-identifier
                                   _%L91985%_
                                   '"&"
                                   _%L92101%_))))
                             _%g9208792098%_))))
                    (_%g9208592148%_
                     (gx#stx-identifier _%L91985%_ _%L92045%_ '"-set!"))))
                _%g9205992070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9205792152%_
                                                (gx#stx-identifier
                                                 _%L91985%_
                                                 '"&"
                                                 _%L92045%_))))
                                           _%g9203192042%_))))
                                  (_%g9202992156%_
                                   (gx#stx-identifier
                                    _%L91985%_
                                    '"class-type-"
                                    _%L91985%_))))
                              _%g9200492015%_))))
                     (_%g9200292160%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9192991977%_
                 _%hd9192691967%_)
                (_%g9191591936%_ _%g9191691940%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9191591936%_
                                                     _%g9191691940%_))))
                                            (_%g9191591936%_
                                             _%g9191691940%_))))
                                    (_%g9191591936%_ _%g9191691940%_))))
                            (_%g9191591936%_ _%g9191691940%_))))
                    (_%g9191591936%_ _%g9191691940%_)))))
        (_%g9191492164%_ _%stx91912%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx92168%_)
      (let* ((_%g9217292201%_
              (lambda (_%g9217392197%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9217392197%_)))
             (_%g9217192301%_
              (lambda (_%g9217392205%_)
                (if (gx#stx-pair? _%g9217392205%_)
                    (let ((_%e9217692208%_ (gx#syntax-e _%g9217392205%_)))
                      (let ((_%hd9217792212%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9217692208%_)))
                            (_%tl9217892215%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9217692208%_))))
                        (if (gx#stx-pair/null? _%tl9217892215%_)
                            (let ((_g98409_
                                   (gx#syntax-split-splice
                                    _%tl9217892215%_
                                    '0)))
                              (begin
                                (let ((_g98410_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98409_)
                                             (##vector-length _g98409_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98410_ 2)))
                                      (error "Context expects 2 values"
                                             _g98410_)))
                                (let ((_%target9217992218%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98409_ 0)))
                                      (_%tl9218192221%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98409_ 1))))
                                  (if (gx#stx-null? _%tl9218192221%_)
                                      (letrec ((_%loop9218292224%_
                                                (lambda (_%hd9218092228%_
                                                         _%field9218692231%_
                                                         _%slot9218792233%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9218092228%_)
                                                      (let ((_%e9218392236%_
                                                             (gx#syntax-e
                                                              _%hd9218092228%_)))
                                                        (let ((_%lp-hd9218492240%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9218392236%_)))
                      (_%lp-tl9218592243%_
                       (let () (declare (not safe)) (##cdr _%e9218392236%_))))
                  (if (gx#stx-pair? _%lp-hd9218492240%_)
                      (let ((_%e9219092246%_
                             (gx#syntax-e _%lp-hd9218492240%_)))
                        (let ((_%hd9219192250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9219092246%_)))
                              (_%tl9219292253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9219092246%_))))
                          (if (gx#stx-pair? _%tl9219292253%_)
                              (let ((_%e9219392256%_
                                     (gx#syntax-e _%tl9219292253%_)))
                                (let ((_%hd9219492260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9219392256%_)))
                                      (_%tl9219592263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9219392256%_))))
                                  (if (gx#stx-null? _%tl9219592263%_)
                                      (_%loop9218292224%_
                                       _%lp-tl9218592243%_
                                       (cons _%hd9219492260%_
                                             _%field9218692231%_)
                                       (cons _%hd9219192250%_
                                             _%slot9218792233%_))
                                      (_%g9217292201%_ _%g9217392205%_))))
                              (_%g9217292201%_ _%g9217392205%_))))
                      (_%g9217292201%_ _%g9217392205%_))))
              (let ((_%field9218892266%_ (reverse _%field9218692231%_))
                    (_%slot9218992269%_ (reverse _%slot9218792233%_)))
                ((lambda (_%L92272%_ _%L92274%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92272%_
                            _%L92274%_)
                           (let ((__tmp98411
                                  (lambda (_%g9228992293%_
                                           _%g9229092296%_
                                           _%g9229192298%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9229092296%_
                                                            (cons _%g9228992293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9229192298%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98411
                              '()
                              _%L92272%_
                              _%L92274%_)))))
                 _%field9218892266%_
                 _%slot9218992269%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9218292224%_
                                         _%target9217992218%_
                                         '()
                                         '()))
                                      (_%g9217292201%_ _%g9217392205%_)))))
                            (_%g9217292201%_ _%g9217392205%_))))
                    (_%g9217292201%_ _%g9217392205%_)))))
        (_%g9217192301%_ _%$stx92168%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx92306%_)
      (let* ((_%g9231092344%_
              (lambda (_%g9231192340%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9231192340%_)))
             (_%g9230992455%_
              (lambda (_%g9231192348%_)
                (if (gx#stx-pair? _%g9231192348%_)
                    (let ((_%e9231892351%_ (gx#syntax-e _%g9231192348%_)))
                      (let ((_%hd9231992355%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9231892351%_)))
                            (_%tl9232092358%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9231892351%_))))
                        (if (gx#stx-pair? _%tl9232092358%_)
                            (let ((_%e9232192361%_
                                   (gx#syntax-e _%tl9232092358%_)))
                              (let ((_%hd9232292365%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9232192361%_)))
                                    (_%tl9232392368%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9232192361%_))))
                                (if (gx#stx-pair? _%tl9232392368%_)
                                    (let ((_%e9232492371%_
                                           (gx#syntax-e _%tl9232392368%_)))
                                      (let ((_%hd9232592375%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9232492371%_)))
                                            (_%tl9232692378%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9232492371%_))))
                                        (if (gx#stx-pair? _%tl9232692378%_)
                                            (let ((_%e9232792381%_
                                                   (gx#syntax-e
                                                    _%tl9232692378%_)))
                                              (let ((_%hd9232892385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9232792381%_)))
                                                    (_%tl9232992388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9232792381%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9232992388%_)
                                                    (let ((_%e9233092391%_
                                                           (gx#syntax-e
                                                            _%tl9232992388%_)))
                                                      (let ((_%hd9233192395%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9233092391%_)))
                    (_%tl9233292398%_
                     (let () (declare (not safe)) (##cdr _%e9233092391%_))))
                (if (gx#stx-pair? _%tl9233292398%_)
                    (let ((_%e9233392401%_ (gx#syntax-e _%tl9233292398%_)))
                      (let ((_%hd9233492405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9233392401%_)))
                            (_%tl9233592408%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9233392401%_))))
                        (if (gx#stx-pair? _%tl9233592408%_)
                            (let ((_%e9233692411%_
                                   (gx#syntax-e _%tl9233592408%_)))
                              (let ((_%hd9233792415%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9233692411%_)))
                                    (_%tl9233892418%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9233692411%_))))
                                (if (gx#stx-null? _%tl9233892418%_)
                                    ((lambda (_%L92421%_
                                              _%L92423%_
                                              _%L92424%_
                                              _%L92425%_
                                              _%L92426%_
                                              _%L92427%_)
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
                                         (cons _%L92427%_ '()))
                                   (cons _%L92426%_ (cons '#f '()))))
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
                               (cons _%L92427%_
                                     (cons 'slot: (cons _%L92426%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L92427%_ '()))
                                         (cons (cons _%L92425%_
                                                     (cons _%L92427%_
                                                           (cons _%L92426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L92427%_ '()))
                                               (cons (cons _%L92424%_
                                                           (cons _%L92427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92426%_
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
                                           (cons _%L92427%_ '()))
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
                                                     (cons (cons _%L92423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L92427%_
                               (cons _%L92426%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L92421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L92427%_
                                     (cons _%L92426%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9233792415%_
                                     _%hd9233492405%_
                                     _%hd9233192395%_
                                     _%hd9232892385%_
                                     _%hd9232592375%_
                                     _%hd9232292365%_)
                                    (_%g9231092344%_ _%g9231192348%_))))
                            (_%g9231092344%_ _%g9231192348%_))))
                    (_%g9231092344%_ _%g9231192348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9231092344%_
                                                     _%g9231192348%_))))
                                            (_%g9231092344%_
                                             _%g9231192348%_))))
                                    (_%g9231092344%_ _%g9231192348%_))))
                            (_%g9231092344%_ _%g9231192348%_))))
                    (_%g9231092344%_ _%g9231192348%_)))))
        (_%g9230992455%_ _%$stx92306%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx92459%_)
      (let* ((_%g9246392489%_
              (lambda (_%g9246492485%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9246492485%_)))
             (_%g9246292572%_
              (lambda (_%g9246492493%_)
                (if (gx#stx-pair? _%g9246492493%_)
                    (let ((_%e9246992496%_ (gx#syntax-e _%g9246492493%_)))
                      (let ((_%hd9247092500%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9246992496%_)))
                            (_%tl9247192503%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9246992496%_))))
                        (if (gx#stx-pair? _%tl9247192503%_)
                            (let ((_%e9247292506%_
                                   (gx#syntax-e _%tl9247192503%_)))
                              (let ((_%hd9247392510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9247292506%_)))
                                    (_%tl9247492513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9247292506%_))))
                                (if (gx#stx-pair? _%tl9247492513%_)
                                    (let ((_%e9247592516%_
                                           (gx#syntax-e _%tl9247492513%_)))
                                      (let ((_%hd9247692520%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9247592516%_)))
                                            (_%tl9247792523%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9247592516%_))))
                                        (if (gx#stx-pair? _%tl9247792523%_)
                                            (let ((_%e9247892526%_
                                                   (gx#syntax-e
                                                    _%tl9247792523%_)))
                                              (let ((_%hd9247992530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9247892526%_)))
                                                    (_%tl9248092533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9247892526%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9248092533%_)
                                                    (let ((_%e9248192536%_
                                                           (gx#syntax-e
                                                            _%tl9248092533%_)))
                                                      (let ((_%hd9248292540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9248192536%_)))
                    (_%tl9248392543%_
                     (let () (declare (not safe)) (##cdr _%e9248192536%_))))
                (if (gx#stx-null? _%tl9248392543%_)
                    ((lambda (_%L92546%_ _%L92548%_ _%L92549%_ _%L92550%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L92550%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L92549%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L92548%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L92546%_
                                     (cons _%L92550%_ (cons _%L92549%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9248292540%_
                     _%hd9247992530%_
                     _%hd9247692520%_
                     _%hd9247392510%_)
                    (_%g9246392489%_ _%g9246492493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9246392489%_
                                                     _%g9246492493%_))))
                                            (_%g9246392489%_
                                             _%g9246492493%_))))
                                    (_%g9246392489%_ _%g9246492493%_))))
                            (_%g9246392489%_ _%g9246492493%_))))
                    (_%g9246392489%_ _%g9246492493%_)))))
        (_%g9246292572%_ _%$stx92459%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx92576%_)
      (let* ((_%g9258092609%_
              (lambda (_%g9258192605%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9258192605%_)))
             (_%g9257992709%_
              (lambda (_%g9258192613%_)
                (if (gx#stx-pair? _%g9258192613%_)
                    (let ((_%e9258492616%_ (gx#syntax-e _%g9258192613%_)))
                      (let ((_%hd9258592620%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9258492616%_)))
                            (_%tl9258692623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9258492616%_))))
                        (if (gx#stx-pair/null? _%tl9258692623%_)
                            (let ((_g98412_
                                   (gx#syntax-split-splice
                                    _%tl9258692623%_
                                    '0)))
                              (begin
                                (let ((_g98413_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g98412_)
                                             (##vector-length _g98412_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g98413_ 2)))
                                      (error "Context expects 2 values"
                                             _g98413_)))
                                (let ((_%target9258792626%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98412_ 0)))
                                      (_%tl9258992629%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g98412_ 1))))
                                  (if (gx#stx-null? _%tl9258992629%_)
                                      (letrec ((_%loop9259092632%_
                                                (lambda (_%hd9258892636%_
                                                         _%name9259492639%_
                                                         _%t9259592641%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9258892636%_)
                                                      (let ((_%e9259192644%_
                                                             (gx#syntax-e
                                                              _%hd9258892636%_)))
                                                        (let ((_%lp-hd9259292648%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9259192644%_)))
                      (_%lp-tl9259392651%_
                       (let () (declare (not safe)) (##cdr _%e9259192644%_))))
                  (if (gx#stx-pair? _%lp-hd9259292648%_)
                      (let ((_%e9259892654%_
                             (gx#syntax-e _%lp-hd9259292648%_)))
                        (let ((_%hd9259992658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9259892654%_)))
                              (_%tl9260092661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9259892654%_))))
                          (if (gx#stx-pair? _%tl9260092661%_)
                              (let ((_%e9260192664%_
                                     (gx#syntax-e _%tl9260092661%_)))
                                (let ((_%hd9260292668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9260192664%_)))
                                      (_%tl9260392671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9260192664%_))))
                                  (if (gx#stx-null? _%tl9260392671%_)
                                      (_%loop9259092632%_
                                       _%lp-tl9259392651%_
                                       (cons _%hd9260292668%_
                                             _%name9259492639%_)
                                       (cons _%hd9259992658%_ _%t9259592641%_))
                                      (_%g9258092609%_ _%g9258192613%_))))
                              (_%g9258092609%_ _%g9258192613%_))))
                      (_%g9258092609%_ _%g9258192613%_))))
              (let ((_%name9259692674%_ (reverse _%name9259492639%_))
                    (_%t9259792677%_ (reverse _%t9259592641%_)))
                ((lambda (_%L92680%_ _%L92682%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L92680%_
                            _%L92682%_)
                           (let ((__tmp98414
                                  (lambda (_%g9269792701%_
                                           _%g9269892704%_
                                           _%g9269992706%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9269892704%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9269792701%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9269992706%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp98414
                              '()
                              _%L92680%_
                              _%L92682%_)))))
                 _%name9259692674%_
                 _%t9259792677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9259092632%_
                                         _%target9258792626%_
                                         '()
                                         '()))
                                      (_%g9258092609%_ _%g9258192613%_)))))
                            (_%g9258092609%_ _%g9258192613%_))))
                    (_%g9258092609%_ _%g9258192613%_)))))
        (_%g9257992709%_ _%$stx92576%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92714%_)
      (let* ((_%g9271892749%_
              (lambda (_%g9271992745%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9271992745%_)))
             (_%g9271792868%_
              (lambda (_%g9271992753%_)
                (if (gx#stx-pair? _%g9271992753%_)
                    (let ((_%e9272392756%_ (gx#syntax-e _%g9271992753%_)))
                      (let ((_%hd9272492760%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9272392756%_)))
                            (_%tl9272592763%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9272392756%_))))
                        (if (gx#stx-pair? _%tl9272592763%_)
                            (let ((_%e9272692766%_
                                   (gx#syntax-e _%tl9272592763%_)))
                              (let ((_%hd9272792770%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9272692766%_)))
                                    (_%tl9272892773%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9272692766%_))))
                                (if (gx#stx-pair? _%tl9272892773%_)
                                    (let ((_%e9272992776%_
                                           (gx#syntax-e _%tl9272892773%_)))
                                      (let ((_%hd9273092780%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9272992776%_)))
                                            (_%tl9273192783%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9272992776%_))))
                                        (if (gx#stx-pair? _%tl9273192783%_)
                                            (let ((_%e9273292786%_
                                                   (gx#syntax-e
                                                    _%tl9273192783%_)))
                                              (let ((_%hd9273392790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9273292786%_)))
                                                    (_%tl9273492793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9273292786%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9273392790%_)
                                                    (let ((_g98415_
                                                           (gx#syntax-split-splice
                                                            _%hd9273392790%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g98416_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g98415_)
                             (##vector-length _g98415_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98416_ 2)))
                      (error "Context expects 2 values" _g98416_)))
                (let ((_%target9273592796%_
                       (let () (declare (not safe)) (##vector-ref _g98415_ 0)))
                      (_%tl9273792799%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98415_ 1))))
                  (if (gx#stx-null? _%tl9273792799%_)
                      (letrec ((_%loop9273892802%_
                                (lambda (_%hd9273692806%_ _%super9274292809%_)
                                  (if (gx#stx-pair? _%hd9273692806%_)
                                      (let ((_%e9273992812%_
                                             (gx#syntax-e _%hd9273692806%_)))
                                        (let ((_%lp-hd9274092816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9273992812%_)))
                                              (_%lp-tl9274192819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9273992812%_))))
                                          (_%loop9273892802%_
                                           _%lp-tl9274192819%_
                                           (cons _%lp-hd9274092816%_
                                                 _%super9274292809%_))))
                                      (let ((_%super9274392822%_
                                             (reverse _%super9274292809%_)))
                                        (if (gx#stx-null? _%tl9273492793%_)
                                            ((lambda (_%L92826%_
                                                      _%L92828%_
                                                      _%L92829%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92829%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92828%_
                                                 (cons (let ((__tmp98417
                                                              (lambda (_%g9285392856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9285492859%_)
                        (cons _%g9285392856%_ _%g9285492859%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98417 '() _%L92826%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp98418
                                  (lambda (_%g9285192862%_ _%g9285292865%_)
                                    (cons _%g9285192862%_ _%g9285292865%_))))
                             (declare (not safe))
                             (__foldr1 __tmp98418 '() _%L92826%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9274392822%_
                                             _%hd9273092780%_
                                             _%hd9272792770%_)
                                            (_%g9271892749%_
                                             _%g9271992753%_)))))))
                        (_%loop9273892802%_ _%target9273592796%_ '()))
                      (_%g9271892749%_ _%g9271992753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9271892749%_
                                                     _%g9271992753%_))))
                                            (_%g9271892749%_
                                             _%g9271992753%_))))
                                    (_%g9271892749%_ _%g9271992753%_))))
                            (_%g9271892749%_ _%g9271992753%_))))
                    (_%g9271892749%_ _%g9271992753%_)))))
        (_%g9271792868%_ _%$stx92714%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92873%_)
      (let* ((_%g9287792908%_
              (lambda (_%g9287892904%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9287892904%_)))
             (_%g9287693019%_
              (lambda (_%g9287892912%_)
                (if (gx#stx-pair? _%g9287892912%_)
                    (let ((_%e9288292915%_ (gx#syntax-e _%g9287892912%_)))
                      (let ((_%hd9288392919%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9288292915%_)))
                            (_%tl9288492922%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9288292915%_))))
                        (if (gx#stx-pair? _%tl9288492922%_)
                            (let ((_%e9288592925%_
                                   (gx#syntax-e _%tl9288492922%_)))
                              (let ((_%hd9288692929%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9288592925%_)))
                                    (_%tl9288792932%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9288592925%_))))
                                (if (gx#stx-pair? _%tl9288792932%_)
                                    (let ((_%e9288892935%_
                                           (gx#syntax-e _%tl9288792932%_)))
                                      (let ((_%hd9288992939%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9288892935%_)))
                                            (_%tl9289092942%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9288892935%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9288992939%_)
                                            (let ((_g98419_
                                                   (gx#syntax-split-splice
                                                    _%hd9288992939%_
                                                    '0)))
                                              (begin
                                                (let ((_g98420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g98419_)
                                                             (##vector-length
                                                              _g98419_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g98420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g98420_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9289192945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98419_
                                                          0)))
                                                      (_%tl9289392948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g98419_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9289392948%_)
                                                      (letrec ((_%loop9289492951%_
                                                                (lambda (_%hd9289292955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9289892958%_)
                          (if (gx#stx-pair? _%hd9289292955%_)
                              (let ((_%e9289592961%_
                                     (gx#syntax-e _%hd9289292955%_)))
                                (let ((_%lp-hd9289692965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9289592961%_)))
                                      (_%lp-tl9289792968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9289592961%_))))
                                  (_%loop9289492951%_
                                   _%lp-tl9289792968%_
                                   (cons _%lp-hd9289692965%_
                                         _%super9289892958%_))))
                              (let ((_%super9289992971%_
                                     (reverse _%super9289892958%_)))
                                (if (gx#stx-pair? _%tl9289092942%_)
                                    (let ((_%e9290092975%_
                                           (gx#syntax-e _%tl9289092942%_)))
                                      (let ((_%hd9290192979%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9290092975%_)))
                                            (_%tl9290292982%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9290092975%_))))
                                        (if (gx#stx-null? _%tl9290292982%_)
                                            ((lambda (_%L92985%_
                                                      _%L92987%_
                                                      _%L92988%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92988%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92988%_
                                                 (cons (let ((__tmp98421
                                                              (lambda (_%g9301093013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9301193016%_)
                        (cons _%g9301093013%_ _%g9301193016%_))))
                 (declare (not safe))
                 (__foldr1 __tmp98421 '() _%L92987%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92985%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9290192979%_
                                             _%super9289992971%_
                                             _%hd9288692929%_)
                                            (_%g9287792908%_
                                             _%g9287892912%_))))
                                    (_%g9287792908%_ _%g9287892912%_)))))))
                (_%loop9289492951%_ _%target9289192945%_ '()))
              (_%g9287792908%_ _%g9287892912%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9287792908%_
                                             _%g9287892912%_))))
                                    (_%g9287792908%_ _%g9287892912%_))))
                            (_%g9287792908%_ _%g9287892912%_))))
                    (_%g9287792908%_ _%g9287892912%_)))))
        (_%g9287693019%_ _%$stx92873%_)))))
