(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93979%_)
      (let* ((_%__stx100483100484%_ _%$stx93979%_)
             (_%g9398494013%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx100483100484%_))))
        (let ((_%__kont100486100487%_
               (lambda (_%L94106%_ _%L94108%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L94108%_ (cons _%L94106%_ '())))
                             (cons _%L94106%_ '())))))
              (_%__kont100488100489%_
               (lambda (_%L94050%_ _%L94052%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L94050%_ (cons _%L94050%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L94052%_
                                                           (cons _%L94050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L94050%_ '())))
                                   '()))))))
          (let ((_%__match100510100511%_
                 (lambda (_%e9398894076%_
                          _%hd9398994080%_
                          _%tl9399094083%_
                          _%e9399194086%_
                          _%hd9399294090%_
                          _%tl9399394093%_
                          _%e9399494096%_
                          _%hd9399594100%_
                          _%tl9399694103%_)
                   (let ((_%L94106%_ _%hd9399594100%_)
                         (_%L94108%_ _%hd9399294090%_))
                     (if (or (gx#identifier? _%L94106%_)
                             (gx#stx-fixnum? _%L94106%_))
                         (_%__kont100486100487%_ _%L94106%_ _%L94108%_)
                         (_%__kont100488100489%_
                          _%hd9399594100%_
                          _%hd9399294090%_))))))
            (if (gx#stx-pair? _%__stx100483100484%_)
                (let ((_%e9398894076%_ (gx#syntax-e _%__stx100483100484%_)))
                  (let ((_%tl9399094083%_
                         (let () (declare (not safe)) (##cdr _%e9398894076%_)))
                        (_%hd9398994080%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9398894076%_))))
                    (if (gx#stx-pair? _%tl9399094083%_)
                        (let ((_%e9399194086%_ (gx#syntax-e _%tl9399094083%_)))
                          (let ((_%tl9399394093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9399194086%_)))
                                (_%hd9399294090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9399194086%_))))
                            (if (gx#stx-pair? _%tl9399394093%_)
                                (let ((_%e9399494096%_
                                       (gx#syntax-e _%tl9399394093%_)))
                                  (let ((_%tl9399694103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9399494096%_)))
                                        (_%hd9399594100%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9399494096%_))))
                                    (if (gx#stx-null? _%tl9399694103%_)
                                        (_%__match100510100511%_
                                         _%e9398894076%_
                                         _%hd9398994080%_
                                         _%tl9399094083%_
                                         _%e9399194086%_
                                         _%hd9399294090%_
                                         _%tl9399394093%_
                                         _%e9399494096%_
                                         _%hd9399594100%_
                                         _%tl9399694103%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9398494013%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9398494013%_)))))
                        (let () (declare (not safe)) (_%g9398494013%_)))))
                (let () (declare (not safe)) (_%g9398494013%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx94131%_)
      (let* ((_%__stx100533100534%_ _%$stx94131%_)
             (_%g9413694165%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx100533100534%_))))
        (let ((_%__kont100536100537%_
               (lambda (_%L94257%_ _%L94259%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L94259%_ (cons _%L94257%_ '())))
                             (cons '0 '())))))
              (_%__kont100538100539%_
               (lambda (_%L94202%_ _%L94204%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L94202%_ (cons _%L94202%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L94204%_
                                                           (cons _%L94202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match100560100561%_
                 (lambda (_%e9414094227%_
                          _%hd9414194231%_
                          _%tl9414294234%_
                          _%e9414394237%_
                          _%hd9414494241%_
                          _%tl9414594244%_
                          _%e9414694247%_
                          _%hd9414794251%_
                          _%tl9414894254%_)
                   (let ((_%L94257%_ _%hd9414794251%_)
                         (_%L94259%_ _%hd9414494241%_))
                     (if (or (gx#identifier? _%L94257%_)
                             (gx#stx-fixnum? _%L94257%_))
                         (_%__kont100536100537%_ _%L94257%_ _%L94259%_)
                         (_%__kont100538100539%_
                          _%hd9414794251%_
                          _%hd9414494241%_))))))
            (if (gx#stx-pair? _%__stx100533100534%_)
                (let ((_%e9414094227%_ (gx#syntax-e _%__stx100533100534%_)))
                  (let ((_%tl9414294234%_
                         (let () (declare (not safe)) (##cdr _%e9414094227%_)))
                        (_%hd9414194231%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9414094227%_))))
                    (if (gx#stx-pair? _%tl9414294234%_)
                        (let ((_%e9414394237%_ (gx#syntax-e _%tl9414294234%_)))
                          (let ((_%tl9414594244%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9414394237%_)))
                                (_%hd9414494241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9414394237%_))))
                            (if (gx#stx-pair? _%tl9414594244%_)
                                (let ((_%e9414694247%_
                                       (gx#syntax-e _%tl9414594244%_)))
                                  (let ((_%tl9414894254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9414694247%_)))
                                        (_%hd9414794251%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9414694247%_))))
                                    (if (gx#stx-null? _%tl9414894254%_)
                                        (_%__match100560100561%_
                                         _%e9414094227%_
                                         _%hd9414194231%_
                                         _%tl9414294234%_
                                         _%e9414394237%_
                                         _%hd9414494241%_
                                         _%tl9414594244%_
                                         _%e9414694247%_
                                         _%hd9414794251%_
                                         _%tl9414894254%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9413694165%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9413694165%_)))))
                        (let () (declare (not safe)) (_%g9413694165%_)))))
                (let () (declare (not safe)) (_%g9413694165%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx94282%_)
      (let* ((_%g9428594306%_
              (lambda (_%g9428694302%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9428694302%_)))
             (_%g9428494534%_
              (lambda (_%g9428694310%_)
                (if (gx#stx-pair? _%g9428694310%_)
                    (let ((_%e9428994313%_ (gx#syntax-e _%g9428694310%_)))
                      (let ((_%hd9429094317%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9428994313%_)))
                            (_%tl9429194320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9428994313%_))))
                        (if (gx#stx-pair? _%tl9429194320%_)
                            (let ((_%e9429294323%_
                                   (gx#syntax-e _%tl9429194320%_)))
                              (let ((_%hd9429394327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9429294323%_)))
                                    (_%tl9429494330%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9429294323%_))))
                                (if (gx#stx-pair? _%hd9429394327%_)
                                    (let ((_%e9429594333%_
                                           (gx#syntax-e _%hd9429394327%_)))
                                      (let ((_%hd9429694337%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9429594333%_)))
                                            (_%tl9429794340%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9429594333%_))))
                                        (if (gx#stx-pair? _%tl9429794340%_)
                                            (let ((_%e9429894343%_
                                                   (gx#syntax-e
                                                    _%tl9429794340%_)))
                                              (let ((_%hd9429994347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9429894343%_)))
                                                    (_%tl9430094350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9429894343%_))))
                                                (if (gx#stx-null?
                                                     _%tl9430094350%_)
                                                    (if (gx#stx-null?
                                                         _%tl9429494330%_)
                                                        ((lambda (_%L94353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L94355%_)
                   (let* ((_%g9437394381%_
                           (lambda (_%g9437494377%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9437494377%_)))
                          (_%g9437294530%_
                           (lambda (_%g9437494385%_)
                             ((lambda (_%L94388%_)
                                (let* ((_%g9440094408%_
                                        (lambda (_%g9440194404%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9440194404%_)))
                                       (_%g9439994526%_
                                        (lambda (_%g9440194412%_)
                                          ((lambda (_%L94415%_)
                                             (let* ((_%g9442894436%_
                                                     (lambda (_%g9442994432%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9442994432%_)))
                                                    (_%g9442794522%_
                                                     (lambda (_%g9442994440%_)
                                                       ((lambda (_%L94443%_)
                                                          (let* ((_%g9445694464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9445794460%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9445794460%_)))
                         (_%g9445594518%_
                          (lambda (_%g9445794468%_)
                            ((lambda (_%L94471%_)
                               (let* ((_%g9448494492%_
                                       (lambda (_%g9448594488%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9448594488%_)))
                                      (_%g9448394514%_
                                       (lambda (_%g9448594496%_)
                                         ((lambda (_%L94499%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L94415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L94388%_
                                                          (cons _%L94355%_
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
                                          (cons _%L94353%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L94355%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L94443%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L94388%_
                                                                (cons _%L94355%_
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
                                                (cons _%L94353%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L94355%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L94471%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L94388%_ (cons _%L94355%_ (cons '#t '()))))
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
                                                            (cons _%L94353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L94355%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L94499%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L94388%_
                                    (cons _%L94355%_ (cons '#f '()))))
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
                          (cons _%L94353%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L94355%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9448594496%_))))
                                 (_%g9448394514%_
                                  (gx#stx-identifier
                                   _%L94355%_
                                   '"&"
                                   _%L94471%_))))
                             _%g9445794468%_))))
                    (_%g9445594518%_
                     (gx#stx-identifier _%L94355%_ _%L94415%_ '"-set!"))))
                _%g9442994440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9442794522%_
                                                (gx#stx-identifier
                                                 _%L94355%_
                                                 '"&"
                                                 _%L94415%_))))
                                           _%g9440194412%_))))
                                  (_%g9439994526%_
                                   (gx#stx-identifier
                                    _%L94355%_
                                    '"class-type-"
                                    _%L94355%_))))
                              _%g9437494385%_))))
                     (_%g9437294530%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9429994347%_
                 _%hd9429694337%_)
                (_%g9428594306%_ _%g9428694310%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9428594306%_
                                                     _%g9428694310%_))))
                                            (_%g9428594306%_
                                             _%g9428694310%_))))
                                    (_%g9428594306%_ _%g9428694310%_))))
                            (_%g9428594306%_ _%g9428694310%_))))
                    (_%g9428594306%_ _%g9428694310%_)))))
        (_%g9428494534%_ _%stx94282%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx94538%_)
      (let* ((_%g9454294571%_
              (lambda (_%g9454394567%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9454394567%_)))
             (_%g9454194671%_
              (lambda (_%g9454394575%_)
                (if (gx#stx-pair? _%g9454394575%_)
                    (let ((_%e9454694578%_ (gx#syntax-e _%g9454394575%_)))
                      (let ((_%hd9454794582%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9454694578%_)))
                            (_%tl9454894585%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9454694578%_))))
                        (if (gx#stx-pair/null? _%tl9454894585%_)
                            (let ((_g100773_
                                   (gx#syntax-split-splice
                                    _%tl9454894585%_
                                    '0)))
                              (begin
                                (let ((_g100774_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100773_)
                                             (##vector-length _g100773_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100774_ 2)))
                                      (error "Context expects 2 values"
                                             _g100774_)))
                                (let ((_%target9454994588%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100773_ 0)))
                                      (_%tl9455194591%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100773_ 1))))
                                  (if (gx#stx-null? _%tl9455194591%_)
                                      (letrec ((_%loop9455294594%_
                                                (lambda (_%hd9455094598%_
                                                         _%field9455694601%_
                                                         _%slot9455794603%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9455094598%_)
                                                      (let ((_%e9455394606%_
                                                             (gx#syntax-e
                                                              _%hd9455094598%_)))
                                                        (let ((_%lp-hd9455494610%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9455394606%_)))
                      (_%lp-tl9455594613%_
                       (let () (declare (not safe)) (##cdr _%e9455394606%_))))
                  (if (gx#stx-pair? _%lp-hd9455494610%_)
                      (let ((_%e9456094616%_
                             (gx#syntax-e _%lp-hd9455494610%_)))
                        (let ((_%hd9456194620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9456094616%_)))
                              (_%tl9456294623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9456094616%_))))
                          (if (gx#stx-pair? _%tl9456294623%_)
                              (let ((_%e9456394626%_
                                     (gx#syntax-e _%tl9456294623%_)))
                                (let ((_%hd9456494630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9456394626%_)))
                                      (_%tl9456594633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9456394626%_))))
                                  (if (gx#stx-null? _%tl9456594633%_)
                                      (_%loop9455294594%_
                                       _%lp-tl9455594613%_
                                       (cons _%hd9456494630%_
                                             _%field9455694601%_)
                                       (cons _%hd9456194620%_
                                             _%slot9455794603%_))
                                      (_%g9454294571%_ _%g9454394575%_))))
                              (_%g9454294571%_ _%g9454394575%_))))
                      (_%g9454294571%_ _%g9454394575%_))))
              (let ((_%field9455894636%_ (reverse _%field9455694601%_))
                    (_%slot9455994639%_ (reverse _%slot9455794603%_)))
                ((lambda (_%L94642%_ _%L94644%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94642%_
                            _%L94644%_)
                           (let ((__tmp100775
                                  (lambda (_%g9465994663%_
                                           _%g9466094666%_
                                           _%g9466194668%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9466094666%_
                                                            (cons _%g9465994663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9466194668%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100775
                              '()
                              _%L94642%_
                              _%L94644%_)))))
                 _%field9455894636%_
                 _%slot9455994639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9455294594%_
                                         _%target9454994588%_
                                         '()
                                         '()))
                                      (_%g9454294571%_ _%g9454394575%_)))))
                            (_%g9454294571%_ _%g9454394575%_))))
                    (_%g9454294571%_ _%g9454394575%_)))))
        (_%g9454194671%_ _%$stx94538%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx94676%_)
      (let* ((_%g9468094714%_
              (lambda (_%g9468194710%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9468194710%_)))
             (_%g9467994825%_
              (lambda (_%g9468194718%_)
                (if (gx#stx-pair? _%g9468194718%_)
                    (let ((_%e9468894721%_ (gx#syntax-e _%g9468194718%_)))
                      (let ((_%hd9468994725%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9468894721%_)))
                            (_%tl9469094728%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9468894721%_))))
                        (if (gx#stx-pair? _%tl9469094728%_)
                            (let ((_%e9469194731%_
                                   (gx#syntax-e _%tl9469094728%_)))
                              (let ((_%hd9469294735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9469194731%_)))
                                    (_%tl9469394738%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9469194731%_))))
                                (if (gx#stx-pair? _%tl9469394738%_)
                                    (let ((_%e9469494741%_
                                           (gx#syntax-e _%tl9469394738%_)))
                                      (let ((_%hd9469594745%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9469494741%_)))
                                            (_%tl9469694748%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9469494741%_))))
                                        (if (gx#stx-pair? _%tl9469694748%_)
                                            (let ((_%e9469794751%_
                                                   (gx#syntax-e
                                                    _%tl9469694748%_)))
                                              (let ((_%hd9469894755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9469794751%_)))
                                                    (_%tl9469994758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9469794751%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9469994758%_)
                                                    (let ((_%e9470094761%_
                                                           (gx#syntax-e
                                                            _%tl9469994758%_)))
                                                      (let ((_%hd9470194765%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9470094761%_)))
                    (_%tl9470294768%_
                     (let () (declare (not safe)) (##cdr _%e9470094761%_))))
                (if (gx#stx-pair? _%tl9470294768%_)
                    (let ((_%e9470394771%_ (gx#syntax-e _%tl9470294768%_)))
                      (let ((_%hd9470494775%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9470394771%_)))
                            (_%tl9470594778%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9470394771%_))))
                        (if (gx#stx-pair? _%tl9470594778%_)
                            (let ((_%e9470694781%_
                                   (gx#syntax-e _%tl9470594778%_)))
                              (let ((_%hd9470794785%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9470694781%_)))
                                    (_%tl9470894788%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9470694781%_))))
                                (if (gx#stx-null? _%tl9470894788%_)
                                    ((lambda (_%L94791%_
                                              _%L94793%_
                                              _%L94794%_
                                              _%L94795%_
                                              _%L94796%_
                                              _%L94797%_)
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
                                         (cons _%L94797%_ '()))
                                   (cons _%L94796%_ (cons '#f '()))))
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
                               (cons _%L94797%_
                                     (cons 'slot: (cons _%L94796%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L94797%_ '()))
                                         (cons (cons _%L94795%_
                                                     (cons _%L94797%_
                                                           (cons _%L94796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L94797%_ '()))
                                               (cons (cons _%L94794%_
                                                           (cons _%L94797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94796%_
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
                                           (cons _%L94797%_ '()))
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
                                                     (cons (cons _%L94793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94797%_
                               (cons _%L94796%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L94791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L94797%_
                                     (cons _%L94796%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9470794785%_
                                     _%hd9470494775%_
                                     _%hd9470194765%_
                                     _%hd9469894755%_
                                     _%hd9469594745%_
                                     _%hd9469294735%_)
                                    (_%g9468094714%_ _%g9468194718%_))))
                            (_%g9468094714%_ _%g9468194718%_))))
                    (_%g9468094714%_ _%g9468194718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9468094714%_
                                                     _%g9468194718%_))))
                                            (_%g9468094714%_
                                             _%g9468194718%_))))
                                    (_%g9468094714%_ _%g9468194718%_))))
                            (_%g9468094714%_ _%g9468194718%_))))
                    (_%g9468094714%_ _%g9468194718%_)))))
        (_%g9467994825%_ _%$stx94676%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx94829%_)
      (let* ((_%g9483394859%_
              (lambda (_%g9483494855%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9483494855%_)))
             (_%g9483294942%_
              (lambda (_%g9483494863%_)
                (if (gx#stx-pair? _%g9483494863%_)
                    (let ((_%e9483994866%_ (gx#syntax-e _%g9483494863%_)))
                      (let ((_%hd9484094870%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9483994866%_)))
                            (_%tl9484194873%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9483994866%_))))
                        (if (gx#stx-pair? _%tl9484194873%_)
                            (let ((_%e9484294876%_
                                   (gx#syntax-e _%tl9484194873%_)))
                              (let ((_%hd9484394880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9484294876%_)))
                                    (_%tl9484494883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9484294876%_))))
                                (if (gx#stx-pair? _%tl9484494883%_)
                                    (let ((_%e9484594886%_
                                           (gx#syntax-e _%tl9484494883%_)))
                                      (let ((_%hd9484694890%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9484594886%_)))
                                            (_%tl9484794893%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9484594886%_))))
                                        (if (gx#stx-pair? _%tl9484794893%_)
                                            (let ((_%e9484894896%_
                                                   (gx#syntax-e
                                                    _%tl9484794893%_)))
                                              (let ((_%hd9484994900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9484894896%_)))
                                                    (_%tl9485094903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9484894896%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9485094903%_)
                                                    (let ((_%e9485194906%_
                                                           (gx#syntax-e
                                                            _%tl9485094903%_)))
                                                      (let ((_%hd9485294910%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9485194906%_)))
                    (_%tl9485394913%_
                     (let () (declare (not safe)) (##cdr _%e9485194906%_))))
                (if (gx#stx-null? _%tl9485394913%_)
                    ((lambda (_%L94916%_ _%L94918%_ _%L94919%_ _%L94920%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L94920%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L94919%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L94918%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L94916%_
                                     (cons _%L94920%_ (cons _%L94919%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9485294910%_
                     _%hd9484994900%_
                     _%hd9484694890%_
                     _%hd9484394880%_)
                    (_%g9483394859%_ _%g9483494863%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9483394859%_
                                                     _%g9483494863%_))))
                                            (_%g9483394859%_
                                             _%g9483494863%_))))
                                    (_%g9483394859%_ _%g9483494863%_))))
                            (_%g9483394859%_ _%g9483494863%_))))
                    (_%g9483394859%_ _%g9483494863%_)))))
        (_%g9483294942%_ _%$stx94829%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx94946%_)
      (let* ((_%g9495094979%_
              (lambda (_%g9495194975%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9495194975%_)))
             (_%g9494995079%_
              (lambda (_%g9495194983%_)
                (if (gx#stx-pair? _%g9495194983%_)
                    (let ((_%e9495494986%_ (gx#syntax-e _%g9495194983%_)))
                      (let ((_%hd9495594990%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9495494986%_)))
                            (_%tl9495694993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9495494986%_))))
                        (if (gx#stx-pair/null? _%tl9495694993%_)
                            (let ((_g100776_
                                   (gx#syntax-split-splice
                                    _%tl9495694993%_
                                    '0)))
                              (begin
                                (let ((_g100777_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100776_)
                                             (##vector-length _g100776_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100777_ 2)))
                                      (error "Context expects 2 values"
                                             _g100777_)))
                                (let ((_%target9495794996%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100776_ 0)))
                                      (_%tl9495994999%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100776_ 1))))
                                  (if (gx#stx-null? _%tl9495994999%_)
                                      (letrec ((_%loop9496095002%_
                                                (lambda (_%hd9495895006%_
                                                         _%name9496495009%_
                                                         _%t9496595011%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9495895006%_)
                                                      (let ((_%e9496195014%_
                                                             (gx#syntax-e
                                                              _%hd9495895006%_)))
                                                        (let ((_%lp-hd9496295018%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9496195014%_)))
                      (_%lp-tl9496395021%_
                       (let () (declare (not safe)) (##cdr _%e9496195014%_))))
                  (if (gx#stx-pair? _%lp-hd9496295018%_)
                      (let ((_%e9496895024%_
                             (gx#syntax-e _%lp-hd9496295018%_)))
                        (let ((_%hd9496995028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9496895024%_)))
                              (_%tl9497095031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9496895024%_))))
                          (if (gx#stx-pair? _%tl9497095031%_)
                              (let ((_%e9497195034%_
                                     (gx#syntax-e _%tl9497095031%_)))
                                (let ((_%hd9497295038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9497195034%_)))
                                      (_%tl9497395041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9497195034%_))))
                                  (if (gx#stx-null? _%tl9497395041%_)
                                      (_%loop9496095002%_
                                       _%lp-tl9496395021%_
                                       (cons _%hd9497295038%_
                                             _%name9496495009%_)
                                       (cons _%hd9496995028%_ _%t9496595011%_))
                                      (_%g9495094979%_ _%g9495194983%_))))
                              (_%g9495094979%_ _%g9495194983%_))))
                      (_%g9495094979%_ _%g9495194983%_))))
              (let ((_%name9496695044%_ (reverse _%name9496495009%_))
                    (_%t9496795047%_ (reverse _%t9496595011%_)))
                ((lambda (_%L95050%_ _%L95052%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L95050%_
                            _%L95052%_)
                           (let ((__tmp100778
                                  (lambda (_%g9506795071%_
                                           _%g9506895074%_
                                           _%g9506995076%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9506895074%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9506795071%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9506995076%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100778
                              '()
                              _%L95050%_
                              _%L95052%_)))))
                 _%name9496695044%_
                 _%t9496795047%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9496095002%_
                                         _%target9495794996%_
                                         '()
                                         '()))
                                      (_%g9495094979%_ _%g9495194983%_)))))
                            (_%g9495094979%_ _%g9495194983%_))))
                    (_%g9495094979%_ _%g9495194983%_)))))
        (_%g9494995079%_ _%$stx94946%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx95084%_)
      (let* ((_%g9508895119%_
              (lambda (_%g9508995115%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9508995115%_)))
             (_%g9508795238%_
              (lambda (_%g9508995123%_)
                (if (gx#stx-pair? _%g9508995123%_)
                    (let ((_%e9509395126%_ (gx#syntax-e _%g9508995123%_)))
                      (let ((_%hd9509495130%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9509395126%_)))
                            (_%tl9509595133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9509395126%_))))
                        (if (gx#stx-pair? _%tl9509595133%_)
                            (let ((_%e9509695136%_
                                   (gx#syntax-e _%tl9509595133%_)))
                              (let ((_%hd9509795140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9509695136%_)))
                                    (_%tl9509895143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9509695136%_))))
                                (if (gx#stx-pair? _%tl9509895143%_)
                                    (let ((_%e9509995146%_
                                           (gx#syntax-e _%tl9509895143%_)))
                                      (let ((_%hd9510095150%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9509995146%_)))
                                            (_%tl9510195153%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9509995146%_))))
                                        (if (gx#stx-pair? _%tl9510195153%_)
                                            (let ((_%e9510295156%_
                                                   (gx#syntax-e
                                                    _%tl9510195153%_)))
                                              (let ((_%hd9510395160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9510295156%_)))
                                                    (_%tl9510495163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9510295156%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9510395160%_)
                                                    (let ((_g100779_
                                                           (gx#syntax-split-splice
                                                            _%hd9510395160%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100780_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100779_)
                             (##vector-length _g100779_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100780_ 2)))
                      (error "Context expects 2 values" _g100780_)))
                (let ((_%target9510595166%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100779_ 0)))
                      (_%tl9510795169%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100779_ 1))))
                  (if (gx#stx-null? _%tl9510795169%_)
                      (letrec ((_%loop9510895172%_
                                (lambda (_%hd9510695176%_ _%super9511295179%_)
                                  (if (gx#stx-pair? _%hd9510695176%_)
                                      (let ((_%e9510995182%_
                                             (gx#syntax-e _%hd9510695176%_)))
                                        (let ((_%lp-hd9511095186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9510995182%_)))
                                              (_%lp-tl9511195189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9510995182%_))))
                                          (_%loop9510895172%_
                                           _%lp-tl9511195189%_
                                           (cons _%lp-hd9511095186%_
                                                 _%super9511295179%_))))
                                      (let ((_%super9511395192%_
                                             (reverse _%super9511295179%_)))
                                        (if (gx#stx-null? _%tl9510495163%_)
                                            ((lambda (_%L95196%_
                                                      _%L95198%_
                                                      _%L95199%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L95199%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L95198%_
                                                 (cons (let ((__tmp100781
                                                              (lambda (_%g9522395226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9522495229%_)
                        (cons _%g9522395226%_ _%g9522495229%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100781 '() _%L95196%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L95198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp100782
                                  (lambda (_%g9522195232%_ _%g9522295235%_)
                                    (cons _%g9522195232%_ _%g9522295235%_))))
                             (declare (not safe))
                             (__foldr1 __tmp100782 '() _%L95196%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9511395192%_
                                             _%hd9510095150%_
                                             _%hd9509795140%_)
                                            (_%g9508895119%_
                                             _%g9508995123%_)))))))
                        (_%loop9510895172%_ _%target9510595166%_ '()))
                      (_%g9508895119%_ _%g9508995123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9508895119%_
                                                     _%g9508995123%_))))
                                            (_%g9508895119%_
                                             _%g9508995123%_))))
                                    (_%g9508895119%_ _%g9508995123%_))))
                            (_%g9508895119%_ _%g9508995123%_))))
                    (_%g9508895119%_ _%g9508995123%_)))))
        (_%g9508795238%_ _%$stx95084%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx95243%_)
      (let* ((_%g9524795278%_
              (lambda (_%g9524895274%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9524895274%_)))
             (_%g9524695389%_
              (lambda (_%g9524895282%_)
                (if (gx#stx-pair? _%g9524895282%_)
                    (let ((_%e9525295285%_ (gx#syntax-e _%g9524895282%_)))
                      (let ((_%hd9525395289%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9525295285%_)))
                            (_%tl9525495292%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9525295285%_))))
                        (if (gx#stx-pair? _%tl9525495292%_)
                            (let ((_%e9525595295%_
                                   (gx#syntax-e _%tl9525495292%_)))
                              (let ((_%hd9525695299%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9525595295%_)))
                                    (_%tl9525795302%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9525595295%_))))
                                (if (gx#stx-pair? _%tl9525795302%_)
                                    (let ((_%e9525895305%_
                                           (gx#syntax-e _%tl9525795302%_)))
                                      (let ((_%hd9525995309%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9525895305%_)))
                                            (_%tl9526095312%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9525895305%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9525995309%_)
                                            (let ((_g100783_
                                                   (gx#syntax-split-splice
                                                    _%hd9525995309%_
                                                    '0)))
                                              (begin
                                                (let ((_g100784_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g100783_)
                                                             (##vector-length
                                                              _g100783_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g100784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g100784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9526195315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100783_
                                                          0)))
                                                      (_%tl9526395318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100783_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9526395318%_)
                                                      (letrec ((_%loop9526495321%_
                                                                (lambda (_%hd9526295325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9526895328%_)
                          (if (gx#stx-pair? _%hd9526295325%_)
                              (let ((_%e9526595331%_
                                     (gx#syntax-e _%hd9526295325%_)))
                                (let ((_%lp-hd9526695335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9526595331%_)))
                                      (_%lp-tl9526795338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9526595331%_))))
                                  (_%loop9526495321%_
                                   _%lp-tl9526795338%_
                                   (cons _%lp-hd9526695335%_
                                         _%super9526895328%_))))
                              (let ((_%super9526995341%_
                                     (reverse _%super9526895328%_)))
                                (if (gx#stx-pair? _%tl9526095312%_)
                                    (let ((_%e9527095345%_
                                           (gx#syntax-e _%tl9526095312%_)))
                                      (let ((_%hd9527195349%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9527095345%_)))
                                            (_%tl9527295352%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9527095345%_))))
                                        (if (gx#stx-null? _%tl9527295352%_)
                                            ((lambda (_%L95355%_
                                                      _%L95357%_
                                                      _%L95358%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L95358%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L95358%_
                                                 (cons (let ((__tmp100785
                                                              (lambda (_%g9538095383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9538195386%_)
                        (cons _%g9538095383%_ _%g9538195386%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100785 '() _%L95357%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L95355%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9527195349%_
                                             _%super9526995341%_
                                             _%hd9525695299%_)
                                            (_%g9524795278%_
                                             _%g9524895282%_))))
                                    (_%g9524795278%_ _%g9524895282%_)))))))
                (_%loop9526495321%_ _%target9526195315%_ '()))
              (_%g9524795278%_ _%g9524895282%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9524795278%_
                                             _%g9524895282%_))))
                                    (_%g9524795278%_ _%g9524895282%_))))
                            (_%g9524795278%_ _%g9524895282%_))))
                    (_%g9524795278%_ _%g9524895282%_)))))
        (_%g9524695389%_ _%$stx95243%_)))))
