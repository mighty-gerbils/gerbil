(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93402%_)
      (let* ((_%__stx9990699907%_ _%$stx93402%_)
             (_%g9340793436%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9990699907%_))))
        (let ((_%__kont9990999910%_
               (lambda (_%L93529%_ _%L93531%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93531%_ (cons _%L93529%_ '())))
                             (cons _%L93529%_ '())))))
              (_%__kont9991199912%_
               (lambda (_%L93473%_ _%L93475%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93473%_ (cons _%L93473%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93475%_
                                                           (cons _%L93473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L93473%_ '())))
                                   '()))))))
          (let ((_%__match9993399934%_
                 (lambda (_%e9341193499%_
                          _%hd9341293503%_
                          _%tl9341393506%_
                          _%e9341493509%_
                          _%hd9341593513%_
                          _%tl9341693516%_
                          _%e9341793519%_
                          _%hd9341893523%_
                          _%tl9341993526%_)
                   (let ((_%L93529%_ _%hd9341893523%_)
                         (_%L93531%_ _%hd9341593513%_))
                     (if (or (gx#identifier? _%L93529%_)
                             (gx#stx-fixnum? _%L93529%_))
                         (_%__kont9990999910%_ _%L93529%_ _%L93531%_)
                         (_%__kont9991199912%_
                          _%hd9341893523%_
                          _%hd9341593513%_))))))
            (if (gx#stx-pair? _%__stx9990699907%_)
                (let ((_%e9341193499%_ (gx#syntax-e _%__stx9990699907%_)))
                  (let ((_%tl9341393506%_
                         (let () (declare (not safe)) (##cdr _%e9341193499%_)))
                        (_%hd9341293503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9341193499%_))))
                    (if (gx#stx-pair? _%tl9341393506%_)
                        (let ((_%e9341493509%_ (gx#syntax-e _%tl9341393506%_)))
                          (let ((_%tl9341693516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9341493509%_)))
                                (_%hd9341593513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9341493509%_))))
                            (if (gx#stx-pair? _%tl9341693516%_)
                                (let ((_%e9341793519%_
                                       (gx#syntax-e _%tl9341693516%_)))
                                  (let ((_%tl9341993526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9341793519%_)))
                                        (_%hd9341893523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9341793519%_))))
                                    (if (gx#stx-null? _%tl9341993526%_)
                                        (_%__match9993399934%_
                                         _%e9341193499%_
                                         _%hd9341293503%_
                                         _%tl9341393506%_
                                         _%e9341493509%_
                                         _%hd9341593513%_
                                         _%tl9341693516%_
                                         _%e9341793519%_
                                         _%hd9341893523%_
                                         _%tl9341993526%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9340793436%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9340793436%_)))))
                        (let () (declare (not safe)) (_%g9340793436%_)))))
                (let () (declare (not safe)) (_%g9340793436%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx93554%_)
      (let* ((_%__stx9995699957%_ _%$stx93554%_)
             (_%g9355993588%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9995699957%_))))
        (let ((_%__kont9995999960%_
               (lambda (_%L93680%_ _%L93682%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93682%_ (cons _%L93680%_ '())))
                             (cons '0 '())))))
              (_%__kont9996199962%_
               (lambda (_%L93625%_ _%L93627%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93625%_ (cons _%L93625%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93627%_
                                                           (cons _%L93625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9998399984%_
                 (lambda (_%e9356393650%_
                          _%hd9356493654%_
                          _%tl9356593657%_
                          _%e9356693660%_
                          _%hd9356793664%_
                          _%tl9356893667%_
                          _%e9356993670%_
                          _%hd9357093674%_
                          _%tl9357193677%_)
                   (let ((_%L93680%_ _%hd9357093674%_)
                         (_%L93682%_ _%hd9356793664%_))
                     (if (or (gx#identifier? _%L93680%_)
                             (gx#stx-fixnum? _%L93680%_))
                         (_%__kont9995999960%_ _%L93680%_ _%L93682%_)
                         (_%__kont9996199962%_
                          _%hd9357093674%_
                          _%hd9356793664%_))))))
            (if (gx#stx-pair? _%__stx9995699957%_)
                (let ((_%e9356393650%_ (gx#syntax-e _%__stx9995699957%_)))
                  (let ((_%tl9356593657%_
                         (let () (declare (not safe)) (##cdr _%e9356393650%_)))
                        (_%hd9356493654%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9356393650%_))))
                    (if (gx#stx-pair? _%tl9356593657%_)
                        (let ((_%e9356693660%_ (gx#syntax-e _%tl9356593657%_)))
                          (let ((_%tl9356893667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9356693660%_)))
                                (_%hd9356793664%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9356693660%_))))
                            (if (gx#stx-pair? _%tl9356893667%_)
                                (let ((_%e9356993670%_
                                       (gx#syntax-e _%tl9356893667%_)))
                                  (let ((_%tl9357193677%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9356993670%_)))
                                        (_%hd9357093674%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9356993670%_))))
                                    (if (gx#stx-null? _%tl9357193677%_)
                                        (_%__match9998399984%_
                                         _%e9356393650%_
                                         _%hd9356493654%_
                                         _%tl9356593657%_
                                         _%e9356693660%_
                                         _%hd9356793664%_
                                         _%tl9356893667%_
                                         _%e9356993670%_
                                         _%hd9357093674%_
                                         _%tl9357193677%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9355993588%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9355993588%_)))))
                        (let () (declare (not safe)) (_%g9355993588%_)))))
                (let () (declare (not safe)) (_%g9355993588%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx93705%_)
      (let* ((_%g9370893729%_
              (lambda (_%g9370993725%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9370993725%_)))
             (_%g9370793957%_
              (lambda (_%g9370993733%_)
                (if (gx#stx-pair? _%g9370993733%_)
                    (let ((_%e9371293736%_ (gx#syntax-e _%g9370993733%_)))
                      (let ((_%hd9371393740%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9371293736%_)))
                            (_%tl9371493743%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9371293736%_))))
                        (if (gx#stx-pair? _%tl9371493743%_)
                            (let ((_%e9371593746%_
                                   (gx#syntax-e _%tl9371493743%_)))
                              (let ((_%hd9371693750%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9371593746%_)))
                                    (_%tl9371793753%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9371593746%_))))
                                (if (gx#stx-pair? _%hd9371693750%_)
                                    (let ((_%e9371893756%_
                                           (gx#syntax-e _%hd9371693750%_)))
                                      (let ((_%hd9371993760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9371893756%_)))
                                            (_%tl9372093763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9371893756%_))))
                                        (if (gx#stx-pair? _%tl9372093763%_)
                                            (let ((_%e9372193766%_
                                                   (gx#syntax-e
                                                    _%tl9372093763%_)))
                                              (let ((_%hd9372293770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9372193766%_)))
                                                    (_%tl9372393773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9372193766%_))))
                                                (if (gx#stx-null?
                                                     _%tl9372393773%_)
                                                    (if (gx#stx-null?
                                                         _%tl9371793753%_)
                                                        ((lambda (_%L93776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L93778%_)
                   (let* ((_%g9379693804%_
                           (lambda (_%g9379793800%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9379793800%_)))
                          (_%g9379593953%_
                           (lambda (_%g9379793808%_)
                             ((lambda (_%L93811%_)
                                (let* ((_%g9382393831%_
                                        (lambda (_%g9382493827%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9382493827%_)))
                                       (_%g9382293949%_
                                        (lambda (_%g9382493835%_)
                                          ((lambda (_%L93838%_)
                                             (let* ((_%g9385193859%_
                                                     (lambda (_%g9385293855%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9385293855%_)))
                                                    (_%g9385093945%_
                                                     (lambda (_%g9385293863%_)
                                                       ((lambda (_%L93866%_)
                                                          (let* ((_%g9387993887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9388093883%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9388093883%_)))
                         (_%g9387893941%_
                          (lambda (_%g9388093891%_)
                            ((lambda (_%L93894%_)
                               (let* ((_%g9390793915%_
                                       (lambda (_%g9390893911%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9390893911%_)))
                                      (_%g9390693937%_
                                       (lambda (_%g9390893919%_)
                                         ((lambda (_%L93922%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L93838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L93811%_
                                                          (cons _%L93778%_
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
                                          (cons _%L93776%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L93778%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L93866%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L93811%_
                                                                (cons _%L93778%_
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
                                                (cons _%L93776%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L93778%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L93894%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L93811%_ (cons _%L93778%_ (cons '#t '()))))
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
                                                            (cons _%L93776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L93778%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L93922%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L93811%_
                                    (cons _%L93778%_ (cons '#f '()))))
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
                          (cons _%L93776%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L93778%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9390893919%_))))
                                 (_%g9390693937%_
                                  (gx#stx-identifier
                                   _%L93778%_
                                   '"&"
                                   _%L93894%_))))
                             _%g9388093891%_))))
                    (_%g9387893941%_
                     (gx#stx-identifier _%L93778%_ _%L93838%_ '"-set!"))))
                _%g9385293863%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9385093945%_
                                                (gx#stx-identifier
                                                 _%L93778%_
                                                 '"&"
                                                 _%L93838%_))))
                                           _%g9382493835%_))))
                                  (_%g9382293949%_
                                   (gx#stx-identifier
                                    _%L93778%_
                                    '"class-type-"
                                    _%L93778%_))))
                              _%g9379793808%_))))
                     (_%g9379593953%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9372293770%_
                 _%hd9371993760%_)
                (_%g9370893729%_ _%g9370993733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9370893729%_
                                                     _%g9370993733%_))))
                                            (_%g9370893729%_
                                             _%g9370993733%_))))
                                    (_%g9370893729%_ _%g9370993733%_))))
                            (_%g9370893729%_ _%g9370993733%_))))
                    (_%g9370893729%_ _%g9370993733%_)))))
        (_%g9370793957%_ _%stx93705%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx93961%_)
      (let* ((_%g9396593994%_
              (lambda (_%g9396693990%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9396693990%_)))
             (_%g9396494094%_
              (lambda (_%g9396693998%_)
                (if (gx#stx-pair? _%g9396693998%_)
                    (let ((_%e9396994001%_ (gx#syntax-e _%g9396693998%_)))
                      (let ((_%hd9397094005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9396994001%_)))
                            (_%tl9397194008%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9396994001%_))))
                        (if (gx#stx-pair/null? _%tl9397194008%_)
                            (let ((_g100196_
                                   (gx#syntax-split-splice
                                    _%tl9397194008%_
                                    '0)))
                              (begin
                                (let ((_g100197_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100196_)
                                             (##vector-length _g100196_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100197_ 2)))
                                      (error "Context expects 2 values"
                                             _g100197_)))
                                (let ((_%target9397294011%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100196_ 0)))
                                      (_%tl9397494014%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100196_ 1))))
                                  (if (gx#stx-null? _%tl9397494014%_)
                                      (letrec ((_%loop9397594017%_
                                                (lambda (_%hd9397394021%_
                                                         _%field9397994024%_
                                                         _%slot9398094026%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9397394021%_)
                                                      (let ((_%e9397694029%_
                                                             (gx#syntax-e
                                                              _%hd9397394021%_)))
                                                        (let ((_%lp-hd9397794033%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9397694029%_)))
                      (_%lp-tl9397894036%_
                       (let () (declare (not safe)) (##cdr _%e9397694029%_))))
                  (if (gx#stx-pair? _%lp-hd9397794033%_)
                      (let ((_%e9398394039%_
                             (gx#syntax-e _%lp-hd9397794033%_)))
                        (let ((_%hd9398494043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9398394039%_)))
                              (_%tl9398594046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9398394039%_))))
                          (if (gx#stx-pair? _%tl9398594046%_)
                              (let ((_%e9398694049%_
                                     (gx#syntax-e _%tl9398594046%_)))
                                (let ((_%hd9398794053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9398694049%_)))
                                      (_%tl9398894056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9398694049%_))))
                                  (if (gx#stx-null? _%tl9398894056%_)
                                      (_%loop9397594017%_
                                       _%lp-tl9397894036%_
                                       (cons _%hd9398794053%_
                                             _%field9397994024%_)
                                       (cons _%hd9398494043%_
                                             _%slot9398094026%_))
                                      (_%g9396593994%_ _%g9396693998%_))))
                              (_%g9396593994%_ _%g9396693998%_))))
                      (_%g9396593994%_ _%g9396693998%_))))
              (let ((_%field9398194059%_ (reverse _%field9397994024%_))
                    (_%slot9398294062%_ (reverse _%slot9398094026%_)))
                ((lambda (_%L94065%_ _%L94067%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94065%_
                            _%L94067%_)
                           (let ((__tmp100198
                                  (lambda (_%g9408294086%_
                                           _%g9408394089%_
                                           _%g9408494091%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9408394089%_
                                                            (cons _%g9408294086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9408494091%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100198
                              '()
                              _%L94065%_
                              _%L94067%_)))))
                 _%field9398194059%_
                 _%slot9398294062%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9397594017%_
                                         _%target9397294011%_
                                         '()
                                         '()))
                                      (_%g9396593994%_ _%g9396693998%_)))))
                            (_%g9396593994%_ _%g9396693998%_))))
                    (_%g9396593994%_ _%g9396693998%_)))))
        (_%g9396494094%_ _%$stx93961%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx94099%_)
      (let* ((_%g9410394137%_
              (lambda (_%g9410494133%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9410494133%_)))
             (_%g9410294248%_
              (lambda (_%g9410494141%_)
                (if (gx#stx-pair? _%g9410494141%_)
                    (let ((_%e9411194144%_ (gx#syntax-e _%g9410494141%_)))
                      (let ((_%hd9411294148%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9411194144%_)))
                            (_%tl9411394151%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9411194144%_))))
                        (if (gx#stx-pair? _%tl9411394151%_)
                            (let ((_%e9411494154%_
                                   (gx#syntax-e _%tl9411394151%_)))
                              (let ((_%hd9411594158%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9411494154%_)))
                                    (_%tl9411694161%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9411494154%_))))
                                (if (gx#stx-pair? _%tl9411694161%_)
                                    (let ((_%e9411794164%_
                                           (gx#syntax-e _%tl9411694161%_)))
                                      (let ((_%hd9411894168%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9411794164%_)))
                                            (_%tl9411994171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9411794164%_))))
                                        (if (gx#stx-pair? _%tl9411994171%_)
                                            (let ((_%e9412094174%_
                                                   (gx#syntax-e
                                                    _%tl9411994171%_)))
                                              (let ((_%hd9412194178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9412094174%_)))
                                                    (_%tl9412294181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9412094174%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9412294181%_)
                                                    (let ((_%e9412394184%_
                                                           (gx#syntax-e
                                                            _%tl9412294181%_)))
                                                      (let ((_%hd9412494188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9412394184%_)))
                    (_%tl9412594191%_
                     (let () (declare (not safe)) (##cdr _%e9412394184%_))))
                (if (gx#stx-pair? _%tl9412594191%_)
                    (let ((_%e9412694194%_ (gx#syntax-e _%tl9412594191%_)))
                      (let ((_%hd9412794198%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9412694194%_)))
                            (_%tl9412894201%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9412694194%_))))
                        (if (gx#stx-pair? _%tl9412894201%_)
                            (let ((_%e9412994204%_
                                   (gx#syntax-e _%tl9412894201%_)))
                              (let ((_%hd9413094208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9412994204%_)))
                                    (_%tl9413194211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9412994204%_))))
                                (if (gx#stx-null? _%tl9413194211%_)
                                    ((lambda (_%L94214%_
                                              _%L94216%_
                                              _%L94217%_
                                              _%L94218%_
                                              _%L94219%_
                                              _%L94220%_)
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
                                         (cons _%L94220%_ '()))
                                   (cons _%L94219%_ (cons '#f '()))))
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
                               (cons _%L94220%_
                                     (cons 'slot: (cons _%L94219%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L94220%_ '()))
                                         (cons (cons _%L94218%_
                                                     (cons _%L94220%_
                                                           (cons _%L94219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L94220%_ '()))
                                               (cons (cons _%L94217%_
                                                           (cons _%L94220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94219%_
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
                                           (cons _%L94220%_ '()))
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
                                                     (cons (cons _%L94216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94220%_
                               (cons _%L94219%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L94214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L94220%_
                                     (cons _%L94219%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9413094208%_
                                     _%hd9412794198%_
                                     _%hd9412494188%_
                                     _%hd9412194178%_
                                     _%hd9411894168%_
                                     _%hd9411594158%_)
                                    (_%g9410394137%_ _%g9410494141%_))))
                            (_%g9410394137%_ _%g9410494141%_))))
                    (_%g9410394137%_ _%g9410494141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9410394137%_
                                                     _%g9410494141%_))))
                                            (_%g9410394137%_
                                             _%g9410494141%_))))
                                    (_%g9410394137%_ _%g9410494141%_))))
                            (_%g9410394137%_ _%g9410494141%_))))
                    (_%g9410394137%_ _%g9410494141%_)))))
        (_%g9410294248%_ _%$stx94099%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx94252%_)
      (let* ((_%g9425694282%_
              (lambda (_%g9425794278%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9425794278%_)))
             (_%g9425594365%_
              (lambda (_%g9425794286%_)
                (if (gx#stx-pair? _%g9425794286%_)
                    (let ((_%e9426294289%_ (gx#syntax-e _%g9425794286%_)))
                      (let ((_%hd9426394293%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9426294289%_)))
                            (_%tl9426494296%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9426294289%_))))
                        (if (gx#stx-pair? _%tl9426494296%_)
                            (let ((_%e9426594299%_
                                   (gx#syntax-e _%tl9426494296%_)))
                              (let ((_%hd9426694303%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9426594299%_)))
                                    (_%tl9426794306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9426594299%_))))
                                (if (gx#stx-pair? _%tl9426794306%_)
                                    (let ((_%e9426894309%_
                                           (gx#syntax-e _%tl9426794306%_)))
                                      (let ((_%hd9426994313%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9426894309%_)))
                                            (_%tl9427094316%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9426894309%_))))
                                        (if (gx#stx-pair? _%tl9427094316%_)
                                            (let ((_%e9427194319%_
                                                   (gx#syntax-e
                                                    _%tl9427094316%_)))
                                              (let ((_%hd9427294323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9427194319%_)))
                                                    (_%tl9427394326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9427194319%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9427394326%_)
                                                    (let ((_%e9427494329%_
                                                           (gx#syntax-e
                                                            _%tl9427394326%_)))
                                                      (let ((_%hd9427594333%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9427494329%_)))
                    (_%tl9427694336%_
                     (let () (declare (not safe)) (##cdr _%e9427494329%_))))
                (if (gx#stx-null? _%tl9427694336%_)
                    ((lambda (_%L94339%_ _%L94341%_ _%L94342%_ _%L94343%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L94343%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L94342%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L94341%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L94339%_
                                     (cons _%L94343%_ (cons _%L94342%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9427594333%_
                     _%hd9427294323%_
                     _%hd9426994313%_
                     _%hd9426694303%_)
                    (_%g9425694282%_ _%g9425794286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9425694282%_
                                                     _%g9425794286%_))))
                                            (_%g9425694282%_
                                             _%g9425794286%_))))
                                    (_%g9425694282%_ _%g9425794286%_))))
                            (_%g9425694282%_ _%g9425794286%_))))
                    (_%g9425694282%_ _%g9425794286%_)))))
        (_%g9425594365%_ _%$stx94252%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx94369%_)
      (let* ((_%g9437394402%_
              (lambda (_%g9437494398%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9437494398%_)))
             (_%g9437294502%_
              (lambda (_%g9437494406%_)
                (if (gx#stx-pair? _%g9437494406%_)
                    (let ((_%e9437794409%_ (gx#syntax-e _%g9437494406%_)))
                      (let ((_%hd9437894413%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9437794409%_)))
                            (_%tl9437994416%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9437794409%_))))
                        (if (gx#stx-pair/null? _%tl9437994416%_)
                            (let ((_g100199_
                                   (gx#syntax-split-splice
                                    _%tl9437994416%_
                                    '0)))
                              (begin
                                (let ((_g100200_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100199_)
                                             (##vector-length _g100199_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100200_ 2)))
                                      (error "Context expects 2 values"
                                             _g100200_)))
                                (let ((_%target9438094419%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100199_ 0)))
                                      (_%tl9438294422%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100199_ 1))))
                                  (if (gx#stx-null? _%tl9438294422%_)
                                      (letrec ((_%loop9438394425%_
                                                (lambda (_%hd9438194429%_
                                                         _%name9438794432%_
                                                         _%t9438894434%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9438194429%_)
                                                      (let ((_%e9438494437%_
                                                             (gx#syntax-e
                                                              _%hd9438194429%_)))
                                                        (let ((_%lp-hd9438594441%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9438494437%_)))
                      (_%lp-tl9438694444%_
                       (let () (declare (not safe)) (##cdr _%e9438494437%_))))
                  (if (gx#stx-pair? _%lp-hd9438594441%_)
                      (let ((_%e9439194447%_
                             (gx#syntax-e _%lp-hd9438594441%_)))
                        (let ((_%hd9439294451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9439194447%_)))
                              (_%tl9439394454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9439194447%_))))
                          (if (gx#stx-pair? _%tl9439394454%_)
                              (let ((_%e9439494457%_
                                     (gx#syntax-e _%tl9439394454%_)))
                                (let ((_%hd9439594461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9439494457%_)))
                                      (_%tl9439694464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9439494457%_))))
                                  (if (gx#stx-null? _%tl9439694464%_)
                                      (_%loop9438394425%_
                                       _%lp-tl9438694444%_
                                       (cons _%hd9439594461%_
                                             _%name9438794432%_)
                                       (cons _%hd9439294451%_ _%t9438894434%_))
                                      (_%g9437394402%_ _%g9437494406%_))))
                              (_%g9437394402%_ _%g9437494406%_))))
                      (_%g9437394402%_ _%g9437494406%_))))
              (let ((_%name9438994467%_ (reverse _%name9438794432%_))
                    (_%t9439094470%_ (reverse _%t9438894434%_)))
                ((lambda (_%L94473%_ _%L94475%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94473%_
                            _%L94475%_)
                           (let ((__tmp100201
                                  (lambda (_%g9449094494%_
                                           _%g9449194497%_
                                           _%g9449294499%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9449194497%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9449094494%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9449294499%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100201
                              '()
                              _%L94473%_
                              _%L94475%_)))))
                 _%name9438994467%_
                 _%t9439094470%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9438394425%_
                                         _%target9438094419%_
                                         '()
                                         '()))
                                      (_%g9437394402%_ _%g9437494406%_)))))
                            (_%g9437394402%_ _%g9437494406%_))))
                    (_%g9437394402%_ _%g9437494406%_)))))
        (_%g9437294502%_ _%$stx94369%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx94507%_)
      (let* ((_%g9451194542%_
              (lambda (_%g9451294538%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9451294538%_)))
             (_%g9451094661%_
              (lambda (_%g9451294546%_)
                (if (gx#stx-pair? _%g9451294546%_)
                    (let ((_%e9451694549%_ (gx#syntax-e _%g9451294546%_)))
                      (let ((_%hd9451794553%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9451694549%_)))
                            (_%tl9451894556%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9451694549%_))))
                        (if (gx#stx-pair? _%tl9451894556%_)
                            (let ((_%e9451994559%_
                                   (gx#syntax-e _%tl9451894556%_)))
                              (let ((_%hd9452094563%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9451994559%_)))
                                    (_%tl9452194566%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9451994559%_))))
                                (if (gx#stx-pair? _%tl9452194566%_)
                                    (let ((_%e9452294569%_
                                           (gx#syntax-e _%tl9452194566%_)))
                                      (let ((_%hd9452394573%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9452294569%_)))
                                            (_%tl9452494576%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9452294569%_))))
                                        (if (gx#stx-pair? _%tl9452494576%_)
                                            (let ((_%e9452594579%_
                                                   (gx#syntax-e
                                                    _%tl9452494576%_)))
                                              (let ((_%hd9452694583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9452594579%_)))
                                                    (_%tl9452794586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9452594579%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9452694583%_)
                                                    (let ((_g100202_
                                                           (gx#syntax-split-splice
                                                            _%hd9452694583%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100203_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100202_)
                             (##vector-length _g100202_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100203_ 2)))
                      (error "Context expects 2 values" _g100203_)))
                (let ((_%target9452894589%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100202_ 0)))
                      (_%tl9453094592%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100202_ 1))))
                  (if (gx#stx-null? _%tl9453094592%_)
                      (letrec ((_%loop9453194595%_
                                (lambda (_%hd9452994599%_ _%super9453594602%_)
                                  (if (gx#stx-pair? _%hd9452994599%_)
                                      (let ((_%e9453294605%_
                                             (gx#syntax-e _%hd9452994599%_)))
                                        (let ((_%lp-hd9453394609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9453294605%_)))
                                              (_%lp-tl9453494612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9453294605%_))))
                                          (_%loop9453194595%_
                                           _%lp-tl9453494612%_
                                           (cons _%lp-hd9453394609%_
                                                 _%super9453594602%_))))
                                      (let ((_%super9453694615%_
                                             (reverse _%super9453594602%_)))
                                        (if (gx#stx-null? _%tl9452794586%_)
                                            ((lambda (_%L94619%_
                                                      _%L94621%_
                                                      _%L94622%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94622%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94621%_
                                                 (cons (let ((__tmp100204
                                                              (lambda (_%g9464694649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9464794652%_)
                        (cons _%g9464694649%_ _%g9464794652%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100204 '() _%L94619%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L94621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp100205
                                  (lambda (_%g9464494655%_ _%g9464594658%_)
                                    (cons _%g9464494655%_ _%g9464594658%_))))
                             (declare (not safe))
                             (__foldr1 __tmp100205 '() _%L94619%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9453694615%_
                                             _%hd9452394573%_
                                             _%hd9452094563%_)
                                            (_%g9451194542%_
                                             _%g9451294546%_)))))))
                        (_%loop9453194595%_ _%target9452894589%_ '()))
                      (_%g9451194542%_ _%g9451294546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9451194542%_
                                                     _%g9451294546%_))))
                                            (_%g9451194542%_
                                             _%g9451294546%_))))
                                    (_%g9451194542%_ _%g9451294546%_))))
                            (_%g9451194542%_ _%g9451294546%_))))
                    (_%g9451194542%_ _%g9451294546%_)))))
        (_%g9451094661%_ _%$stx94507%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx94666%_)
      (let* ((_%g9467094701%_
              (lambda (_%g9467194697%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9467194697%_)))
             (_%g9466994812%_
              (lambda (_%g9467194705%_)
                (if (gx#stx-pair? _%g9467194705%_)
                    (let ((_%e9467594708%_ (gx#syntax-e _%g9467194705%_)))
                      (let ((_%hd9467694712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9467594708%_)))
                            (_%tl9467794715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9467594708%_))))
                        (if (gx#stx-pair? _%tl9467794715%_)
                            (let ((_%e9467894718%_
                                   (gx#syntax-e _%tl9467794715%_)))
                              (let ((_%hd9467994722%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9467894718%_)))
                                    (_%tl9468094725%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9467894718%_))))
                                (if (gx#stx-pair? _%tl9468094725%_)
                                    (let ((_%e9468194728%_
                                           (gx#syntax-e _%tl9468094725%_)))
                                      (let ((_%hd9468294732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9468194728%_)))
                                            (_%tl9468394735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9468194728%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9468294732%_)
                                            (let ((_g100206_
                                                   (gx#syntax-split-splice
                                                    _%hd9468294732%_
                                                    '0)))
                                              (begin
                                                (let ((_g100207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g100206_)
                                                             (##vector-length
                                                              _g100206_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g100207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g100207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9468494738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100206_
                                                          0)))
                                                      (_%tl9468694741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100206_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9468694741%_)
                                                      (letrec ((_%loop9468794744%_
                                                                (lambda (_%hd9468594748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9469194751%_)
                          (if (gx#stx-pair? _%hd9468594748%_)
                              (let ((_%e9468894754%_
                                     (gx#syntax-e _%hd9468594748%_)))
                                (let ((_%lp-hd9468994758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9468894754%_)))
                                      (_%lp-tl9469094761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9468894754%_))))
                                  (_%loop9468794744%_
                                   _%lp-tl9469094761%_
                                   (cons _%lp-hd9468994758%_
                                         _%super9469194751%_))))
                              (let ((_%super9469294764%_
                                     (reverse _%super9469194751%_)))
                                (if (gx#stx-pair? _%tl9468394735%_)
                                    (let ((_%e9469394768%_
                                           (gx#syntax-e _%tl9468394735%_)))
                                      (let ((_%hd9469494772%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9469394768%_)))
                                            (_%tl9469594775%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9469394768%_))))
                                        (if (gx#stx-null? _%tl9469594775%_)
                                            ((lambda (_%L94778%_
                                                      _%L94780%_
                                                      _%L94781%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94781%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94781%_
                                                 (cons (let ((__tmp100208
                                                              (lambda (_%g9480394806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9480494809%_)
                        (cons _%g9480394806%_ _%g9480494809%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100208 '() _%L94780%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L94778%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9469494772%_
                                             _%super9469294764%_
                                             _%hd9467994722%_)
                                            (_%g9467094701%_
                                             _%g9467194705%_))))
                                    (_%g9467094701%_ _%g9467194705%_)))))))
                (_%loop9468794744%_ _%target9468494738%_ '()))
              (_%g9467094701%_ _%g9467194705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9467094701%_
                                             _%g9467194705%_))))
                                    (_%g9467094701%_ _%g9467194705%_))))
                            (_%g9467094701%_ _%g9467194705%_))))
                    (_%g9467094701%_ _%g9467194705%_)))))
        (_%g9466994812%_ _%$stx94666%_)))))
