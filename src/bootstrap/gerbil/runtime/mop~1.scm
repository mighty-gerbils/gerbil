(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx93676%_)
      (let* ((_%__stx100180100181%_ _%$stx93676%_)
             (_%g9368193710%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx100180100181%_))))
        (let ((_%__kont100183100184%_
               (lambda (_%L93803%_ _%L93805%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93805%_ (cons _%L93803%_ '())))
                             (cons _%L93803%_ '())))))
              (_%__kont100185100186%_
               (lambda (_%L93747%_ _%L93749%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93747%_ (cons _%L93747%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93749%_
                                                           (cons _%L93747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L93747%_ '())))
                                   '()))))))
          (let ((_%__match100207100208%_
                 (lambda (_%e9368593773%_
                          _%hd9368693777%_
                          _%tl9368793780%_
                          _%e9368893783%_
                          _%hd9368993787%_
                          _%tl9369093790%_
                          _%e9369193793%_
                          _%hd9369293797%_
                          _%tl9369393800%_)
                   (let ((_%L93803%_ _%hd9369293797%_)
                         (_%L93805%_ _%hd9368993787%_))
                     (if (or (gx#identifier? _%L93803%_)
                             (gx#stx-fixnum? _%L93803%_))
                         (_%__kont100183100184%_ _%L93803%_ _%L93805%_)
                         (_%__kont100185100186%_
                          _%hd9369293797%_
                          _%hd9368993787%_))))))
            (if (gx#stx-pair? _%__stx100180100181%_)
                (let ((_%e9368593773%_ (gx#syntax-e _%__stx100180100181%_)))
                  (let ((_%tl9368793780%_
                         (let () (declare (not safe)) (##cdr _%e9368593773%_)))
                        (_%hd9368693777%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9368593773%_))))
                    (if (gx#stx-pair? _%tl9368793780%_)
                        (let ((_%e9368893783%_ (gx#syntax-e _%tl9368793780%_)))
                          (let ((_%tl9369093790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9368893783%_)))
                                (_%hd9368993787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9368893783%_))))
                            (if (gx#stx-pair? _%tl9369093790%_)
                                (let ((_%e9369193793%_
                                       (gx#syntax-e _%tl9369093790%_)))
                                  (let ((_%tl9369393800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9369193793%_)))
                                        (_%hd9369293797%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9369193793%_))))
                                    (if (gx#stx-null? _%tl9369393800%_)
                                        (_%__match100207100208%_
                                         _%e9368593773%_
                                         _%hd9368693777%_
                                         _%tl9368793780%_
                                         _%e9368893783%_
                                         _%hd9368993787%_
                                         _%tl9369093790%_
                                         _%e9369193793%_
                                         _%hd9369293797%_
                                         _%tl9369393800%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9368193710%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9368193710%_)))))
                        (let () (declare (not safe)) (_%g9368193710%_)))))
                (let () (declare (not safe)) (_%g9368193710%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx93828%_)
      (let* ((_%__stx100230100231%_ _%$stx93828%_)
             (_%g9383393862%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx100230100231%_))))
        (let ((_%__kont100233100234%_
               (lambda (_%L93954%_ _%L93956%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L93956%_ (cons _%L93954%_ '())))
                             (cons '0 '())))))
              (_%__kont100235100236%_
               (lambda (_%L93899%_ _%L93901%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L93899%_ (cons _%L93899%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L93901%_
                                                           (cons _%L93899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match100257100258%_
                 (lambda (_%e9383793924%_
                          _%hd9383893928%_
                          _%tl9383993931%_
                          _%e9384093934%_
                          _%hd9384193938%_
                          _%tl9384293941%_
                          _%e9384393944%_
                          _%hd9384493948%_
                          _%tl9384593951%_)
                   (let ((_%L93954%_ _%hd9384493948%_)
                         (_%L93956%_ _%hd9384193938%_))
                     (if (or (gx#identifier? _%L93954%_)
                             (gx#stx-fixnum? _%L93954%_))
                         (_%__kont100233100234%_ _%L93954%_ _%L93956%_)
                         (_%__kont100235100236%_
                          _%hd9384493948%_
                          _%hd9384193938%_))))))
            (if (gx#stx-pair? _%__stx100230100231%_)
                (let ((_%e9383793924%_ (gx#syntax-e _%__stx100230100231%_)))
                  (let ((_%tl9383993931%_
                         (let () (declare (not safe)) (##cdr _%e9383793924%_)))
                        (_%hd9383893928%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9383793924%_))))
                    (if (gx#stx-pair? _%tl9383993931%_)
                        (let ((_%e9384093934%_ (gx#syntax-e _%tl9383993931%_)))
                          (let ((_%tl9384293941%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9384093934%_)))
                                (_%hd9384193938%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9384093934%_))))
                            (if (gx#stx-pair? _%tl9384293941%_)
                                (let ((_%e9384393944%_
                                       (gx#syntax-e _%tl9384293941%_)))
                                  (let ((_%tl9384593951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9384393944%_)))
                                        (_%hd9384493948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9384393944%_))))
                                    (if (gx#stx-null? _%tl9384593951%_)
                                        (_%__match100257100258%_
                                         _%e9383793924%_
                                         _%hd9383893928%_
                                         _%tl9383993931%_
                                         _%e9384093934%_
                                         _%hd9384193938%_
                                         _%tl9384293941%_
                                         _%e9384393944%_
                                         _%hd9384493948%_
                                         _%tl9384593951%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9383393862%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9383393862%_)))))
                        (let () (declare (not safe)) (_%g9383393862%_)))))
                (let () (declare (not safe)) (_%g9383393862%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx93979%_)
      (let* ((_%g9398294003%_
              (lambda (_%g9398393999%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9398393999%_)))
             (_%g9398194231%_
              (lambda (_%g9398394007%_)
                (if (gx#stx-pair? _%g9398394007%_)
                    (let ((_%e9398694010%_ (gx#syntax-e _%g9398394007%_)))
                      (let ((_%hd9398794014%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9398694010%_)))
                            (_%tl9398894017%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9398694010%_))))
                        (if (gx#stx-pair? _%tl9398894017%_)
                            (let ((_%e9398994020%_
                                   (gx#syntax-e _%tl9398894017%_)))
                              (let ((_%hd9399094024%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9398994020%_)))
                                    (_%tl9399194027%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9398994020%_))))
                                (if (gx#stx-pair? _%hd9399094024%_)
                                    (let ((_%e9399294030%_
                                           (gx#syntax-e _%hd9399094024%_)))
                                      (let ((_%hd9399394034%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9399294030%_)))
                                            (_%tl9399494037%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9399294030%_))))
                                        (if (gx#stx-pair? _%tl9399494037%_)
                                            (let ((_%e9399594040%_
                                                   (gx#syntax-e
                                                    _%tl9399494037%_)))
                                              (let ((_%hd9399694044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9399594040%_)))
                                                    (_%tl9399794047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9399594040%_))))
                                                (if (gx#stx-null?
                                                     _%tl9399794047%_)
                                                    (if (gx#stx-null?
                                                         _%tl9399194027%_)
                                                        ((lambda (_%L94050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L94052%_)
                   (let* ((_%g9407094078%_
                           (lambda (_%g9407194074%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9407194074%_)))
                          (_%g9406994227%_
                           (lambda (_%g9407194082%_)
                             ((lambda (_%L94085%_)
                                (let* ((_%g9409794105%_
                                        (lambda (_%g9409894101%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g9409894101%_)))
                                       (_%g9409694223%_
                                        (lambda (_%g9409894109%_)
                                          ((lambda (_%L94112%_)
                                             (let* ((_%g9412594133%_
                                                     (lambda (_%g9412694129%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g9412694129%_)))
                                                    (_%g9412494219%_
                                                     (lambda (_%g9412694137%_)
                                                       ((lambda (_%L94140%_)
                                                          (let* ((_%g9415394161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g9415494157%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g9415494157%_)))
                         (_%g9415294215%_
                          (lambda (_%g9415494165%_)
                            ((lambda (_%L94168%_)
                               (let* ((_%g9418194189%_
                                       (lambda (_%g9418294185%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g9418294185%_)))
                                      (_%g9418094211%_
                                       (lambda (_%g9418294193%_)
                                         ((lambda (_%L94196%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L94112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L94085%_
                                                          (cons _%L94052%_
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
                                          (cons _%L94050%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L94052%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L94140%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L94085%_
                                                                (cons _%L94052%_
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
                                                (cons _%L94050%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L94052%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L94168%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L94085%_ (cons _%L94052%_ (cons '#t '()))))
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
                                                            (cons _%L94050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L94052%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L94196%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L94085%_
                                    (cons _%L94052%_ (cons '#f '()))))
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
                          (cons _%L94050%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L94052%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9418294193%_))))
                                 (_%g9418094211%_
                                  (gx#stx-identifier
                                   _%L94052%_
                                   '"&"
                                   _%L94168%_))))
                             _%g9415494165%_))))
                    (_%g9415294215%_
                     (gx#stx-identifier _%L94052%_ _%L94112%_ '"-set!"))))
                _%g9412694137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g9412494219%_
                                                (gx#stx-identifier
                                                 _%L94052%_
                                                 '"&"
                                                 _%L94112%_))))
                                           _%g9409894109%_))))
                                  (_%g9409694223%_
                                   (gx#stx-identifier
                                    _%L94052%_
                                    '"class-type-"
                                    _%L94052%_))))
                              _%g9407194082%_))))
                     (_%g9406994227%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9399694044%_
                 _%hd9399394034%_)
                (_%g9398294003%_ _%g9398394007%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9398294003%_
                                                     _%g9398394007%_))))
                                            (_%g9398294003%_
                                             _%g9398394007%_))))
                                    (_%g9398294003%_ _%g9398394007%_))))
                            (_%g9398294003%_ _%g9398394007%_))))
                    (_%g9398294003%_ _%g9398394007%_)))))
        (_%g9398194231%_ _%stx93979%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx94235%_)
      (let* ((_%g9423994268%_
              (lambda (_%g9424094264%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9424094264%_)))
             (_%g9423894368%_
              (lambda (_%g9424094272%_)
                (if (gx#stx-pair? _%g9424094272%_)
                    (let ((_%e9424394275%_ (gx#syntax-e _%g9424094272%_)))
                      (let ((_%hd9424494279%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9424394275%_)))
                            (_%tl9424594282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9424394275%_))))
                        (if (gx#stx-pair/null? _%tl9424594282%_)
                            (let ((_g100470_
                                   (gx#syntax-split-splice
                                    _%tl9424594282%_
                                    '0)))
                              (begin
                                (let ((_g100471_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100470_)
                                             (##vector-length _g100470_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100471_ 2)))
                                      (error "Context expects 2 values"
                                             _g100471_)))
                                (let ((_%target9424694285%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100470_ 0)))
                                      (_%tl9424894288%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100470_ 1))))
                                  (if (gx#stx-null? _%tl9424894288%_)
                                      (letrec ((_%loop9424994291%_
                                                (lambda (_%hd9424794295%_
                                                         _%field9425394298%_
                                                         _%slot9425494300%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9424794295%_)
                                                      (let ((_%e9425094303%_
                                                             (gx#syntax-e
                                                              _%hd9424794295%_)))
                                                        (let ((_%lp-hd9425194307%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9425094303%_)))
                      (_%lp-tl9425294310%_
                       (let () (declare (not safe)) (##cdr _%e9425094303%_))))
                  (if (gx#stx-pair? _%lp-hd9425194307%_)
                      (let ((_%e9425794313%_
                             (gx#syntax-e _%lp-hd9425194307%_)))
                        (let ((_%hd9425894317%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9425794313%_)))
                              (_%tl9425994320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9425794313%_))))
                          (if (gx#stx-pair? _%tl9425994320%_)
                              (let ((_%e9426094323%_
                                     (gx#syntax-e _%tl9425994320%_)))
                                (let ((_%hd9426194327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9426094323%_)))
                                      (_%tl9426294330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9426094323%_))))
                                  (if (gx#stx-null? _%tl9426294330%_)
                                      (_%loop9424994291%_
                                       _%lp-tl9425294310%_
                                       (cons _%hd9426194327%_
                                             _%field9425394298%_)
                                       (cons _%hd9425894317%_
                                             _%slot9425494300%_))
                                      (_%g9423994268%_ _%g9424094272%_))))
                              (_%g9423994268%_ _%g9424094272%_))))
                      (_%g9423994268%_ _%g9424094272%_))))
              (let ((_%field9425594333%_ (reverse _%field9425394298%_))
                    (_%slot9425694336%_ (reverse _%slot9425494300%_)))
                ((lambda (_%L94339%_ _%L94341%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94339%_
                            _%L94341%_)
                           (let ((__tmp100472
                                  (lambda (_%g9435694360%_
                                           _%g9435794363%_
                                           _%g9435894365%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9435794363%_
                                                            (cons _%g9435694360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9435894365%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100472
                              '()
                              _%L94339%_
                              _%L94341%_)))))
                 _%field9425594333%_
                 _%slot9425694336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9424994291%_
                                         _%target9424694285%_
                                         '()
                                         '()))
                                      (_%g9423994268%_ _%g9424094272%_)))))
                            (_%g9423994268%_ _%g9424094272%_))))
                    (_%g9423994268%_ _%g9424094272%_)))))
        (_%g9423894368%_ _%$stx94235%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx94373%_)
      (let* ((_%g9437794411%_
              (lambda (_%g9437894407%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9437894407%_)))
             (_%g9437694522%_
              (lambda (_%g9437894415%_)
                (if (gx#stx-pair? _%g9437894415%_)
                    (let ((_%e9438594418%_ (gx#syntax-e _%g9437894415%_)))
                      (let ((_%hd9438694422%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9438594418%_)))
                            (_%tl9438794425%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9438594418%_))))
                        (if (gx#stx-pair? _%tl9438794425%_)
                            (let ((_%e9438894428%_
                                   (gx#syntax-e _%tl9438794425%_)))
                              (let ((_%hd9438994432%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9438894428%_)))
                                    (_%tl9439094435%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9438894428%_))))
                                (if (gx#stx-pair? _%tl9439094435%_)
                                    (let ((_%e9439194438%_
                                           (gx#syntax-e _%tl9439094435%_)))
                                      (let ((_%hd9439294442%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9439194438%_)))
                                            (_%tl9439394445%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9439194438%_))))
                                        (if (gx#stx-pair? _%tl9439394445%_)
                                            (let ((_%e9439494448%_
                                                   (gx#syntax-e
                                                    _%tl9439394445%_)))
                                              (let ((_%hd9439594452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9439494448%_)))
                                                    (_%tl9439694455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9439494448%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9439694455%_)
                                                    (let ((_%e9439794458%_
                                                           (gx#syntax-e
                                                            _%tl9439694455%_)))
                                                      (let ((_%hd9439894462%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9439794458%_)))
                    (_%tl9439994465%_
                     (let () (declare (not safe)) (##cdr _%e9439794458%_))))
                (if (gx#stx-pair? _%tl9439994465%_)
                    (let ((_%e9440094468%_ (gx#syntax-e _%tl9439994465%_)))
                      (let ((_%hd9440194472%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9440094468%_)))
                            (_%tl9440294475%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9440094468%_))))
                        (if (gx#stx-pair? _%tl9440294475%_)
                            (let ((_%e9440394478%_
                                   (gx#syntax-e _%tl9440294475%_)))
                              (let ((_%hd9440494482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9440394478%_)))
                                    (_%tl9440594485%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9440394478%_))))
                                (if (gx#stx-null? _%tl9440594485%_)
                                    ((lambda (_%L94488%_
                                              _%L94490%_
                                              _%L94491%_
                                              _%L94492%_
                                              _%L94493%_
                                              _%L94494%_)
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
                                         (cons _%L94494%_ '()))
                                   (cons _%L94493%_ (cons '#f '()))))
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
                               (cons _%L94494%_
                                     (cons 'slot: (cons _%L94493%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L94494%_ '()))
                                         (cons (cons _%L94492%_
                                                     (cons _%L94494%_
                                                           (cons _%L94493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L94494%_ '()))
                                               (cons (cons _%L94491%_
                                                           (cons _%L94494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94493%_
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
                                           (cons _%L94494%_ '()))
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
                                                     (cons (cons _%L94490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L94494%_
                               (cons _%L94493%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L94488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L94494%_
                                     (cons _%L94493%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9440494482%_
                                     _%hd9440194472%_
                                     _%hd9439894462%_
                                     _%hd9439594452%_
                                     _%hd9439294442%_
                                     _%hd9438994432%_)
                                    (_%g9437794411%_ _%g9437894415%_))))
                            (_%g9437794411%_ _%g9437894415%_))))
                    (_%g9437794411%_ _%g9437894415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9437794411%_
                                                     _%g9437894415%_))))
                                            (_%g9437794411%_
                                             _%g9437894415%_))))
                                    (_%g9437794411%_ _%g9437894415%_))))
                            (_%g9437794411%_ _%g9437894415%_))))
                    (_%g9437794411%_ _%g9437894415%_)))))
        (_%g9437694522%_ _%$stx94373%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx94526%_)
      (let* ((_%g9453094556%_
              (lambda (_%g9453194552%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9453194552%_)))
             (_%g9452994639%_
              (lambda (_%g9453194560%_)
                (if (gx#stx-pair? _%g9453194560%_)
                    (let ((_%e9453694563%_ (gx#syntax-e _%g9453194560%_)))
                      (let ((_%hd9453794567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9453694563%_)))
                            (_%tl9453894570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9453694563%_))))
                        (if (gx#stx-pair? _%tl9453894570%_)
                            (let ((_%e9453994573%_
                                   (gx#syntax-e _%tl9453894570%_)))
                              (let ((_%hd9454094577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9453994573%_)))
                                    (_%tl9454194580%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9453994573%_))))
                                (if (gx#stx-pair? _%tl9454194580%_)
                                    (let ((_%e9454294583%_
                                           (gx#syntax-e _%tl9454194580%_)))
                                      (let ((_%hd9454394587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9454294583%_)))
                                            (_%tl9454494590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9454294583%_))))
                                        (if (gx#stx-pair? _%tl9454494590%_)
                                            (let ((_%e9454594593%_
                                                   (gx#syntax-e
                                                    _%tl9454494590%_)))
                                              (let ((_%hd9454694597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9454594593%_)))
                                                    (_%tl9454794600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9454594593%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9454794600%_)
                                                    (let ((_%e9454894603%_
                                                           (gx#syntax-e
                                                            _%tl9454794600%_)))
                                                      (let ((_%hd9454994607%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9454894603%_)))
                    (_%tl9455094610%_
                     (let () (declare (not safe)) (##cdr _%e9454894603%_))))
                (if (gx#stx-null? _%tl9455094610%_)
                    ((lambda (_%L94613%_ _%L94615%_ _%L94616%_ _%L94617%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L94617%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L94616%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L94615%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L94613%_
                                     (cons _%L94617%_ (cons _%L94616%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9454994607%_
                     _%hd9454694597%_
                     _%hd9454394587%_
                     _%hd9454094577%_)
                    (_%g9453094556%_ _%g9453194560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9453094556%_
                                                     _%g9453194560%_))))
                                            (_%g9453094556%_
                                             _%g9453194560%_))))
                                    (_%g9453094556%_ _%g9453194560%_))))
                            (_%g9453094556%_ _%g9453194560%_))))
                    (_%g9453094556%_ _%g9453194560%_)))))
        (_%g9452994639%_ _%$stx94526%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx94643%_)
      (let* ((_%g9464794676%_
              (lambda (_%g9464894672%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9464894672%_)))
             (_%g9464694776%_
              (lambda (_%g9464894680%_)
                (if (gx#stx-pair? _%g9464894680%_)
                    (let ((_%e9465194683%_ (gx#syntax-e _%g9464894680%_)))
                      (let ((_%hd9465294687%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9465194683%_)))
                            (_%tl9465394690%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9465194683%_))))
                        (if (gx#stx-pair/null? _%tl9465394690%_)
                            (let ((_g100473_
                                   (gx#syntax-split-splice
                                    _%tl9465394690%_
                                    '0)))
                              (begin
                                (let ((_g100474_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g100473_)
                                             (##vector-length _g100473_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g100474_ 2)))
                                      (error "Context expects 2 values"
                                             _g100474_)))
                                (let ((_%target9465494693%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100473_ 0)))
                                      (_%tl9465694696%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g100473_ 1))))
                                  (if (gx#stx-null? _%tl9465694696%_)
                                      (letrec ((_%loop9465794699%_
                                                (lambda (_%hd9465594703%_
                                                         _%name9466194706%_
                                                         _%t9466294708%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9465594703%_)
                                                      (let ((_%e9465894711%_
                                                             (gx#syntax-e
                                                              _%hd9465594703%_)))
                                                        (let ((_%lp-hd9465994715%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9465894711%_)))
                      (_%lp-tl9466094718%_
                       (let () (declare (not safe)) (##cdr _%e9465894711%_))))
                  (if (gx#stx-pair? _%lp-hd9465994715%_)
                      (let ((_%e9466594721%_
                             (gx#syntax-e _%lp-hd9465994715%_)))
                        (let ((_%hd9466694725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9466594721%_)))
                              (_%tl9466794728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9466594721%_))))
                          (if (gx#stx-pair? _%tl9466794728%_)
                              (let ((_%e9466894731%_
                                     (gx#syntax-e _%tl9466794728%_)))
                                (let ((_%hd9466994735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9466894731%_)))
                                      (_%tl9467094738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9466894731%_))))
                                  (if (gx#stx-null? _%tl9467094738%_)
                                      (_%loop9465794699%_
                                       _%lp-tl9466094718%_
                                       (cons _%hd9466994735%_
                                             _%name9466194706%_)
                                       (cons _%hd9466694725%_ _%t9466294708%_))
                                      (_%g9464794676%_ _%g9464894680%_))))
                              (_%g9464794676%_ _%g9464894680%_))))
                      (_%g9464794676%_ _%g9464894680%_))))
              (let ((_%name9466394741%_ (reverse _%name9466194706%_))
                    (_%t9466494744%_ (reverse _%t9466294708%_)))
                ((lambda (_%L94747%_ _%L94749%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L94747%_
                            _%L94749%_)
                           (let ((__tmp100475
                                  (lambda (_%g9476494768%_
                                           _%g9476594771%_
                                           _%g9476694773%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9476594771%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9476494768%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9476694773%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp100475
                              '()
                              _%L94747%_
                              _%L94749%_)))))
                 _%name9466394741%_
                 _%t9466494744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9465794699%_
                                         _%target9465494693%_
                                         '()
                                         '()))
                                      (_%g9464794676%_ _%g9464894680%_)))))
                            (_%g9464794676%_ _%g9464894680%_))))
                    (_%g9464794676%_ _%g9464894680%_)))))
        (_%g9464694776%_ _%$stx94643%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx94781%_)
      (let* ((_%g9478594816%_
              (lambda (_%g9478694812%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9478694812%_)))
             (_%g9478494935%_
              (lambda (_%g9478694820%_)
                (if (gx#stx-pair? _%g9478694820%_)
                    (let ((_%e9479094823%_ (gx#syntax-e _%g9478694820%_)))
                      (let ((_%hd9479194827%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9479094823%_)))
                            (_%tl9479294830%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9479094823%_))))
                        (if (gx#stx-pair? _%tl9479294830%_)
                            (let ((_%e9479394833%_
                                   (gx#syntax-e _%tl9479294830%_)))
                              (let ((_%hd9479494837%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9479394833%_)))
                                    (_%tl9479594840%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9479394833%_))))
                                (if (gx#stx-pair? _%tl9479594840%_)
                                    (let ((_%e9479694843%_
                                           (gx#syntax-e _%tl9479594840%_)))
                                      (let ((_%hd9479794847%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9479694843%_)))
                                            (_%tl9479894850%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9479694843%_))))
                                        (if (gx#stx-pair? _%tl9479894850%_)
                                            (let ((_%e9479994853%_
                                                   (gx#syntax-e
                                                    _%tl9479894850%_)))
                                              (let ((_%hd9480094857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9479994853%_)))
                                                    (_%tl9480194860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9479994853%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9480094857%_)
                                                    (let ((_g100476_
                                                           (gx#syntax-split-splice
                                                            _%hd9480094857%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100477_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100476_)
                             (##vector-length _g100476_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100477_ 2)))
                      (error "Context expects 2 values" _g100477_)))
                (let ((_%target9480294863%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100476_ 0)))
                      (_%tl9480494866%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g100476_ 1))))
                  (if (gx#stx-null? _%tl9480494866%_)
                      (letrec ((_%loop9480594869%_
                                (lambda (_%hd9480394873%_ _%super9480994876%_)
                                  (if (gx#stx-pair? _%hd9480394873%_)
                                      (let ((_%e9480694879%_
                                             (gx#syntax-e _%hd9480394873%_)))
                                        (let ((_%lp-hd9480794883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9480694879%_)))
                                              (_%lp-tl9480894886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9480694879%_))))
                                          (_%loop9480594869%_
                                           _%lp-tl9480894886%_
                                           (cons _%lp-hd9480794883%_
                                                 _%super9480994876%_))))
                                      (let ((_%super9481094889%_
                                             (reverse _%super9480994876%_)))
                                        (if (gx#stx-null? _%tl9480194860%_)
                                            ((lambda (_%L94893%_
                                                      _%L94895%_
                                                      _%L94896%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L94896%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L94895%_
                                                 (cons (let ((__tmp100478
                                                              (lambda (_%g9492094923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9492194926%_)
                        (cons _%g9492094923%_ _%g9492194926%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100478 '() _%L94893%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L94895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp100479
                                  (lambda (_%g9491894929%_ _%g9491994932%_)
                                    (cons _%g9491894929%_ _%g9491994932%_))))
                             (declare (not safe))
                             (__foldr1 __tmp100479 '() _%L94893%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9481094889%_
                                             _%hd9479794847%_
                                             _%hd9479494837%_)
                                            (_%g9478594816%_
                                             _%g9478694820%_)))))))
                        (_%loop9480594869%_ _%target9480294863%_ '()))
                      (_%g9478594816%_ _%g9478694820%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9478594816%_
                                                     _%g9478694820%_))))
                                            (_%g9478594816%_
                                             _%g9478694820%_))))
                                    (_%g9478594816%_ _%g9478694820%_))))
                            (_%g9478594816%_ _%g9478694820%_))))
                    (_%g9478594816%_ _%g9478694820%_)))))
        (_%g9478494935%_ _%$stx94781%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx94940%_)
      (let* ((_%g9494494975%_
              (lambda (_%g9494594971%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9494594971%_)))
             (_%g9494395086%_
              (lambda (_%g9494594979%_)
                (if (gx#stx-pair? _%g9494594979%_)
                    (let ((_%e9494994982%_ (gx#syntax-e _%g9494594979%_)))
                      (let ((_%hd9495094986%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9494994982%_)))
                            (_%tl9495194989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9494994982%_))))
                        (if (gx#stx-pair? _%tl9495194989%_)
                            (let ((_%e9495294992%_
                                   (gx#syntax-e _%tl9495194989%_)))
                              (let ((_%hd9495394996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9495294992%_)))
                                    (_%tl9495494999%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9495294992%_))))
                                (if (gx#stx-pair? _%tl9495494999%_)
                                    (let ((_%e9495595002%_
                                           (gx#syntax-e _%tl9495494999%_)))
                                      (let ((_%hd9495695006%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9495595002%_)))
                                            (_%tl9495795009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9495595002%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9495695006%_)
                                            (let ((_g100480_
                                                   (gx#syntax-split-splice
                                                    _%hd9495695006%_
                                                    '0)))
                                              (begin
                                                (let ((_g100481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g100480_)
                                                             (##vector-length
                                                              _g100480_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g100481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g100481_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9495895012%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100480_
                                                          0)))
                                                      (_%tl9496095015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g100480_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9496095015%_)
                                                      (letrec ((_%loop9496195018%_
                                                                (lambda (_%hd9495995022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9496595025%_)
                          (if (gx#stx-pair? _%hd9495995022%_)
                              (let ((_%e9496295028%_
                                     (gx#syntax-e _%hd9495995022%_)))
                                (let ((_%lp-hd9496395032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9496295028%_)))
                                      (_%lp-tl9496495035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9496295028%_))))
                                  (_%loop9496195018%_
                                   _%lp-tl9496495035%_
                                   (cons _%lp-hd9496395032%_
                                         _%super9496595025%_))))
                              (let ((_%super9496695038%_
                                     (reverse _%super9496595025%_)))
                                (if (gx#stx-pair? _%tl9495795009%_)
                                    (let ((_%e9496795042%_
                                           (gx#syntax-e _%tl9495795009%_)))
                                      (let ((_%hd9496895046%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9496795042%_)))
                                            (_%tl9496995049%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9496795042%_))))
                                        (if (gx#stx-null? _%tl9496995049%_)
                                            ((lambda (_%L95052%_
                                                      _%L95054%_
                                                      _%L95055%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L95055%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L95055%_
                                                 (cons (let ((__tmp100482
                                                              (lambda (_%g9507795080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9507895083%_)
                        (cons _%g9507795080%_ _%g9507895083%_))))
                 (declare (not safe))
                 (__foldr1 __tmp100482 '() _%L95054%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L95052%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9496895046%_
                                             _%super9496695038%_
                                             _%hd9495394996%_)
                                            (_%g9494494975%_
                                             _%g9494594979%_))))
                                    (_%g9494494975%_ _%g9494594979%_)))))))
                (_%loop9496195018%_ _%target9495895012%_ '()))
              (_%g9494494975%_ _%g9494594979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9494494975%_
                                             _%g9494594979%_))))
                                    (_%g9494494975%_ _%g9494594979%_))))
                            (_%g9494494975%_ _%g9494594979%_))))
                    (_%g9494494975%_ _%g9494594979%_)))))
        (_%g9494395086%_ _%$stx94940%_)))))
