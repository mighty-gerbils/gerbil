(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g171416_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171418_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171420_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171422_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171423_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171425_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171426_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171428_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171429_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171431_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171432_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g171434_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj171412
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '(e source) '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '(e source) '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '() '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '#f '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '#f '11 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '#f '12 '#f '#f))
        (let ((__tmp171415 |gx[1]#_g171416_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171415 '3 '#f '#f))
        (let ((__tmp171417 |gx[1]#_g171418_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171417 '13 '#f '#f))
        (let ((__tmp171419 |gx[1]#_g171420_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171419 '14 '#f '#f))
        (let ((__tmp171421
               (cons (cons 'e |gx[1]#_g171422_|)
                     (cons (cons 'source |gx[1]#_g171423_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171421 '15 '#f '#f))
        (let ((__tmp171424
               (cons (cons 'e |gx[1]#_g171425_|)
                     (cons (cons 'source |gx[1]#_g171426_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171424 '16 '#f '#f))
        (let ((__tmp171427
               (cons (cons 'e |gx[1]#_g171428_|)
                     (cons (cons 'source |gx[1]#_g171429_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171427 '17 '#f '#f))
        (let ((__tmp171430
               (cons (cons 'e |gx[1]#_g171431_|)
                     (cons (cons 'source |gx[1]#_g171432_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 __tmp171430 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj171412 '() '20 '#f '#f))
        __obj171412))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx170009%_)
        (let* ((_%g170013170027%_
                (lambda (_%g170014170023%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g170014170023%_)))
               (_%g170012170069%_
                (lambda (_%g170014170031%_)
                  (if (gx#stx-pair? _%g170014170031%_)
                      (let ((_%e170016170034%_
                             (gx#syntax-e _%g170014170031%_)))
                        (let ((_%hd170017170038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170016170034%_)))
                              (_%tl170018170041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170016170034%_))))
                          (if (gx#stx-pair? _%tl170018170041%_)
                              (let ((_%e170019170044%_
                                     (gx#syntax-e _%tl170018170041%_)))
                                (let ((_%hd170020170048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170019170044%_)))
                                      (_%tl170021170051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170019170044%_))))
                                  (if (gx#stx-null? _%tl170021170051%_)
                                      ((lambda (_%g170015170054%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%g170015170054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure"
                               (cons _%g170015170054%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd170020170048%_)
                                      (_%g170013170027%_ _%g170014170031%_))))
                              (_%g170013170027%_ _%g170014170031%_))))
                      (_%g170013170027%_ _%g170014170031%_)))))
          (_%g170012170069%_ _%$stx170009%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx170073%_)
        (letrec ((_%generate170076%_
                  (lambda (_%tgt170225%_ _%kws170227%_ _%clauses170228%_)
                    (letrec ((_%generate-clause170230%_
                              (lambda (_%hd171163%_ _%E171165%_)
                                (let* ((_%__stx171315171316%_ _%hd171163%_)
                                       (_%g171169171196%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171315171316%_))))
                                  (let ((_%__kont171318171319%_
                                         (lambda (_%g171171171292%_
                                                  _%g171172171294%_)
                                           (_%generate1170232%_
                                            _%hd171163%_
                                            _%g171172171294%_
                                            '#t
                                            _%g171171171292%_
                                            _%E171165%_)))
                                        (_%__kont171320171321%_
                                         (lambda (_%g171179171244%_
                                                  _%g171180171246%_
                                                  _%g171181171247%_)
                                           (_%generate1170232%_
                                            _%hd171163%_
                                            _%g171181171247%_
                                            _%g171180171246%_
                                            _%g171179171244%_
                                            _%E171165%_)))
                                        (_%__kont171322171323%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx170073%_
                                            _%hd171163%_))))
                                    (if (gx#stx-pair? _%__stx171315171316%_)
                                        (let ((_%e171173171272%_
                                               (gx#syntax-e
                                                _%__stx171315171316%_)))
                                          (let ((_%tl171175171279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171173171272%_)))
                                                (_%hd171174171276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171173171272%_))))
                                            (if (gx#stx-pair?
                                                 _%tl171175171279%_)
                                                (let ((_%e171176171282%_
                                                       (gx#syntax-e
                                                        _%tl171175171279%_)))
                                                  (let ((_%tl171178171289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171176171282%_)))
                                                        (_%hd171177171286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171176171282%_))))
                                                    (if (gx#stx-null?
                                                         _%tl171178171289%_)
                                                        (_%__kont171318171319%_
                                                         _%hd171177171286%_
                                                         _%hd171174171276%_)
                                                        (if (gx#stx-pair?
                                                             _%tl171178171289%_)
                                                            (let ((_%e171188171234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl171178171289%_)))
                      (let ((_%tl171190171241%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171188171234%_)))
                            (_%hd171189171238%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171188171234%_))))
                        (if (gx#stx-null? _%tl171190171241%_)
                            (_%__kont171320171321%_
                             _%hd171189171238%_
                             _%hd171177171286%_
                             _%hd171174171276%_)
                            (_%__kont171322171323%_))))
                    (_%__kont171322171323%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171322171323%_))))
                                        (_%__kont171322171323%_))))))
                             (_%generate1170232%_
                              (lambda (_%where170616%_
                                       _%hd170618%_
                                       _%fender170619%_
                                       _%body170620%_
                                       _%E170621%_)
                                (letrec ((_%recur170623%_
                                          (lambda (_%hd170626%_
                                                   _%tgt170628%_
                                                   _%K170629%_)
                                            (let* ((_%__stx171361171362%_
                                                    _%hd170626%_)
                                                   (_%g170632170644%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx171361171362%_))))
                                              (let ((_%__kont171364171365%_
                                                     (lambda (_%g170634170953%_
                                                              _%g170635170955%_)
                                                       (let* ((_%g170966170974%_
                                                               (lambda (_%g170967170970%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g170967170970%_)))
                      (_%g170965171155%_
                       (lambda (_%g170967170978%_)
                         ((lambda (_%g170968170981%_)
                            (let* ((_%g170993171001%_
                                    (lambda (_%g170994170997%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g170994170997%_)))
                                   (_%g170992171151%_
                                    (lambda (_%g170994171005%_)
                                      ((lambda (_%g170995171008%_)
                                         (let* ((_%g171021171029%_
                                                 (lambda (_%g171022171025%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g171022171025%_)))
                                                (_%g171020171147%_
                                                 (lambda (_%g171022171033%_)
                                                   ((lambda (_%g171023171036%_)
                                                      (let* ((_%g171049171057%_
                                                              (lambda (_%g171050171053%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g171050171053%_)))
                     (_%g171048171143%_
                      (lambda (_%g171050171061%_)
                        ((lambda (_%g171051171064%_)
                           (let* ((_%g171077171085%_
                                   (lambda (_%g171078171081%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g171078171081%_)))
                                  (_%g171076171139%_
                                   (lambda (_%g171078171089%_)
                                     ((lambda (_%g171079171092%_)
                                        (let* ((_%g171105171113%_
                                                (lambda (_%g171106171109%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g171106171109%_)))
                                               (_%g171104171135%_
                                                (lambda (_%g171106171117%_)
                                                  ((lambda (_%g171107171120%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%g170968170981%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g170995171008%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%g170968170981%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%g171023171036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%g170995171008%_ '()))
                                       '()))
                           (cons (cons _%g171051171064%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%g170995171008%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons _%g171079171092%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g171107171120%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g171106171117%_))))
                                          (_%g171104171135%_ _%E170621%_)))
                                      _%g171078171089%_))))
                             (_%g171076171139%_
                              (_%recur170623%_
                               _%g170635170955%_
                               _%g171023171036%_
                               (_%recur170623%_
                                _%g170634170953%_
                                _%g171051171064%_
                                _%K170629%_)))))
                         _%g171050171061%_))))
                (_%g171048171143%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g171022171033%_))))
                                           (_%g171020171147%_
                                            (gx#genident 'hd))))
                                       _%g170994171005%_))))
                              (_%g170992171151%_ (gx#genident 'e))))
                          _%g170967170978%_))))
                 (_%g170965171155%_ _%tgt170628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171366171367%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd170626%_)
                                                           (if (gx#underscore?
                                                                _%hd170626%_)
                                                               _%K170629%_
                                                               (if (let ((__tmp171433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g170658170660%_)
                                    (gx#bound-identifier=?
                                     _%g170658170660%_
                                     _%hd170626%_))))
                             (declare (not safe))
                             (__find __tmp171433 _%kws170227%_))
                           (let* ((_%g170666170681%_
                                   (lambda (_%g170667170677%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g170667170677%_)))
                                  (_%g170665170734%_
                                   (lambda (_%g170667170685%_)
                                     (if (gx#stx-pair? _%g170667170685%_)
                                         (let ((_%e170670170688%_
                                                (gx#syntax-e
                                                 _%g170667170685%_)))
                                           (let ((_%hd170671170692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170670170688%_)))
                                                 (_%tl170672170695%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170670170688%_))))
                                             (if (gx#stx-pair?
                                                  _%tl170672170695%_)
                                                 (let ((_%e170673170698%_
                                                        (gx#syntax-e
                                                         _%tl170672170695%_)))
                                                   (let ((_%hd170674170702%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170673170698%_)))
                                                         (_%tl170675170705%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170673170698%_))))
                                                     (if (gx#stx-null?
                                                          _%tl170675170705%_)
                                                         ((lambda (_%g170668170708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g170669170710%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%g170669170710%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%g170669170710%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%g170668170708%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K170629%_ (cons _%E170621%_ '())))))
                  _%hd170674170702%_
                  _%hd170671170692%_)
                 (_%g170666170681%_ _%g170667170685%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g170666170681%_
                                                  _%g170667170685%_))))
                                         (_%g170666170681%_
                                          _%g170667170685%_)))))
                             (_%g170665170734%_
                              (list _%tgt170628%_ _%hd170626%_)))
                           (let* ((_%g170740170755%_
                                   (lambda (_%g170741170751%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g170741170751%_)))
                                  (_%g170739170800%_
                                   (lambda (_%g170741170759%_)
                                     (if (gx#stx-pair? _%g170741170759%_)
                                         (let ((_%e170744170762%_
                                                (gx#syntax-e
                                                 _%g170741170759%_)))
                                           (let ((_%hd170745170766%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170744170762%_)))
                                                 (_%tl170746170769%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170744170762%_))))
                                             (if (gx#stx-pair?
                                                  _%tl170746170769%_)
                                                 (let ((_%e170747170772%_
                                                        (gx#syntax-e
                                                         _%tl170746170769%_)))
                                                   (let ((_%hd170748170776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170747170772%_)))
                                                         (_%tl170749170779%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170747170772%_))))
                                                     (if (gx#stx-null?
                                                          _%tl170749170779%_)
                                                         ((lambda (_%g170742170782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g170743170784%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%g170742170782%_
                                            (cons _%g170743170784%_ '()))
                                      '())
                                (cons _%K170629%_ '()))))
                  _%hd170748170776%_
                  _%hd170745170766%_)
                 (_%g170740170755%_ _%g170741170759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g170740170755%_
                                                  _%g170741170759%_))))
                                         (_%g170740170755%_
                                          _%g170741170759%_)))))
                             (_%g170739170800%_
                              (list _%tgt170628%_ _%hd170626%_)))))
                   (if (gx#stx-null? _%hd170626%_)
                       (let* ((_%g170806170814%_
                               (lambda (_%g170807170810%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g170807170810%_)))
                              (_%g170805170833%_
                               (lambda (_%g170807170818%_)
                                 ((lambda (_%g170808170821%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%g170808170821%_
                                                            '()))
                                                (cons _%K170629%_
                                                      (cons _%E170621%_
                                                            '())))))
                                  _%g170807170818%_))))
                         (_%g170805170833%_ _%tgt170628%_))
                       (if (gx#stx-datum? _%hd170626%_)
                           (let* ((_%g170839170858%_
                                   (lambda (_%g170840170854%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g170840170854%_)))
                                  (_%g170838170917%_
                                   (lambda (_%g170840170862%_)
                                     (if (gx#stx-pair? _%g170840170862%_)
                                         (let ((_%e170844170865%_
                                                (gx#syntax-e
                                                 _%g170840170862%_)))
                                           (let ((_%hd170845170869%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170844170865%_)))
                                                 (_%tl170846170872%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170844170865%_))))
                                             (if (gx#stx-pair?
                                                  _%tl170846170872%_)
                                                 (let ((_%e170847170875%_
                                                        (gx#syntax-e
                                                         _%tl170846170872%_)))
                                                   (let ((_%hd170848170879%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170847170875%_)))
                                                         (_%tl170849170882%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170847170875%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl170849170882%_)
                                                         (let ((_%e170850170885%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl170849170882%_)))
                   (let ((_%hd170851170889%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170850170885%_)))
                         (_%tl170852170892%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170850170885%_))))
                     (if (gx#stx-null? _%tl170852170892%_)
                         ((lambda (_%g170841170895%_
                                   _%g170842170897%_
                                   _%g170843170898%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%g170841170895%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%g170843170898%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g170842170897%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K170629%_
                                              (cons _%E170621%_ '())))))
                          _%hd170851170889%_
                          _%hd170848170879%_
                          _%hd170845170869%_)
                         (_%g170839170858%_ _%g170840170862%_))))
                 (_%g170839170858%_ _%g170840170862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g170839170858%_
                                                  _%g170840170862%_))))
                                         (_%g170839170858%_
                                          _%g170840170862%_)))))
                             (_%g170838170917%_
                              (list _%tgt170628%_
                                    _%hd170626%_
                                    (let ((_%e170921%_
                                           (gx#stx-e _%hd170626%_)))
                                      (if (or (keyword? _%e170921%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e170921%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e170921%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx170073%_
                            _%where170616%_
                            _%hd170626%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx171361171362%_)
                                                    (let ((_%e170636170943%_
                                                           (gx#syntax-e
                                                            _%__stx171361171362%_)))
                                                      (let ((_%tl170638170950%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170636170943%_)))
                    (_%hd170637170947%_
                     (let () (declare (not safe)) (##car _%e170636170943%_))))
                (_%__kont171364171365%_
                 _%tl170638170950%_
                 _%hd170637170947%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171366171367%_)))))))
                                  (_%recur170623%_
                                   _%hd170618%_
                                   _%tgt170225%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender170619%_
                                               (cons _%body170620%_
                                                     (cons _%E170621%_
                                                           '()))))))))
                             (_%generate-clauses170233%_
                              (lambda (_%clauses170354%_)
                                (let _%lp170357%_ ((_%rest170360%_
                                                    _%clauses170354%_)
                                                   (_%E170362%_
                                                    (gx#genident 'E))
                                                   (_%r170363%_ '()))
                                  (let* ((_%__stx171397171398%_ _%rest170360%_)
                                         (_%g170366170378%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx171397171398%_))))
                                    (let ((_%__kont171400171401%_
                                           (lambda (_%g170368170443%_
                                                    _%g170369170445%_)
                                             (let* ((_%__stx171377171378%_
                                                     _%g170369170445%_)
                                                    (_%g170457170468%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx171377171378%_))))
                                               (let ((_%__kont171380171381%_
                                                      (lambda (_%g170459170597%_)
                                                        (if (gx#stx-null?
                                                             _%g170368170443%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g170459170597%_)
                             (not (gx#stx-null? _%g170459170597%_)))
                        (cons (cons _%E170362%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%g170459170597%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%g170369170445%_))
                                          '()))
                              _%r170363%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx170073%_
                         _%g170369170445%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx170073%_
                     _%g170369170445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171382171383%_
                                                      (lambda ()
                                                        (let* ((_%g170479170487%_
                                                                (lambda (_%g170480170483%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170480170483%_)))
                       (_%g170478170576%_
                        (lambda (_%g170480170491%_)
                          ((lambda (_%g170481170494%_)
                             (let* ((_%g170510170518%_
                                     (lambda (_%g170511170514%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g170511170514%_)))
                                    (_%g170509170572%_
                                     (lambda (_%g170511170522%_)
                                       ((lambda (_%g170512170525%_)
                                          (let* ((_%g170538170546%_
                                                  (lambda (_%g170539170542%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g170539170542%_)))
                                                 (_%g170537170568%_
                                                  (lambda (_%g170539170550%_)
                                                    ((lambda (_%g170540170553%_)
                                                       (_%lp170357%_
                                                        _%g170368170443%_
                                                        _%g170481170494%_
                                                        (cons (cons _%E170362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g170540170553%_ '()))
                      _%r170363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g170539170550%_))))
                                            (_%g170537170568%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%g170512170525%_
                                                                '())))
                                              (gx#stx-source
                                               _%g170369170445%_)))))
                                        _%g170511170522%_))))
                               (_%g170509170572%_
                                (_%generate-clause170230%_
                                 _%g170369170445%_
                                 (cons _%g170481170494%_ '())))))
                           _%g170480170491%_))))
                  (_%g170478170576%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx171377171378%_)
                                                     (let ((_%e170460170587%_
                                                            (gx#syntax-e
                                                             _%__stx171377171378%_)))
                                                       (let ((_%tl170462170594%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e170460170587%_)))
                     (_%hd170461170591%_
                      (let () (declare (not safe)) (##car _%e170460170587%_))))
                 (if (gx#identifier? _%hd170461170591%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g171434_|
                          _%hd170461170591%_)
                         (_%__kont171380171381%_ _%tl170462170594%_)
                         (_%__kont171382171383%_))
                     (_%__kont171382171383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171382171383%_))))))
                                          (_%__kont171402171403%_
                                           (lambda ()
                                             (let* ((_%g170389170397%_
                                                     (lambda (_%g170390170393%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170390170393%_)))
                                                    (_%g170388170422%_
                                                     (lambda (_%g170390170401%_)
                                                       ((lambda (_%g170391170404%_)
                                                          (cons (cons _%E170362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%g170391170404%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx170073%_))
                                    '()))
                        _%r170363%_))
                _%g170390170401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170388170422%_
                                                _%tgt170225%_)))))
                                      (if (gx#stx-pair? _%__stx171397171398%_)
                                          (let ((_%e170370170433%_
                                                 (gx#syntax-e
                                                  _%__stx171397171398%_)))
                                            (let ((_%tl170372170440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170370170433%_)))
                                                  (_%hd170371170437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170370170433%_))))
                                              (_%__kont171400171401%_
                                               _%tl170372170440%_
                                               _%hd170371170437%_)))
                                          (_%__kont171402171403%_))))))))
                      (let* ((_%bind170235%_
                              (_%generate-clauses170233%_ _%clauses170228%_))
                             (_%g170238170255%_
                              (lambda (_%g170239170251%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g170239170251%_)))
                             (_%g170237170350%_
                              (lambda (_%g170239170259%_)
                                (if (gx#stx-pair/null? _%g170239170259%_)
                                    (let ((_g171435_
                                           (gx#syntax-split-splice
                                            _%g170239170259%_
                                            '0)))
                                      (begin
                                        (let ((_g171436_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171435_)
                                                     (##values-length
                                                      _g171435_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171436_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171436_)))
                                        (let ((_%target170241170262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g171435_ 0)))
                                              (_%tl170243170265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g171435_ 1))))
                                          (if (gx#stx-null? _%tl170243170265%_)
                                              (letrec ((_%loop170244170268%_
                                                        (lambda (_%hd170242170272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try170248170275%_)
                  (if (gx#stx-pair? _%hd170242170272%_)
                      (let ((_%e170245170277%_
                             (gx#syntax-e _%hd170242170272%_)))
                        (let ((_%lp-hd170246170281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170245170277%_)))
                              (_%lp-tl170247170284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170245170277%_))))
                          (_%loop170244170268%_
                           _%lp-tl170247170284%_
                           (cons _%lp-hd170246170281%_
                                 _%bind-try170248170275%_))))
                      (let ((_%bind-try170249170287%_
                             (reverse _%bind-try170248170275%_)))
                        ((lambda (_%g170240170290%_)
                           (let* ((_%g170308170316%_
                                   (lambda (_%g170309170312%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g170309170312%_)))
                                  (_%g170307170346%_
                                   (lambda (_%g170309170320%_)
                                     ((lambda (_%g170310170323%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp171437
                                                           (lambda (_%g170337170340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170338170343%_)
                     (cons _%g170337170340%_ _%g170338170343%_))))
              (declare (not safe))
              (foldr__0 __tmp171437 '() _%g170240170290%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%g170310170323%_
                                                                '())
                                                          '()))))
                                      _%g170309170320%_))))
                             (_%g170307170346%_ (car (last _%bind170235%_)))))
                         _%bind-try170249170287%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop170244170268%_
                                                 _%target170241170262%_
                                                 '()))
                                              (_%g170238170255%_
                                               _%g170239170259%_)))))
                                    (_%g170238170255%_ _%g170239170259%_)))))
                        (_%g170237170350%_ _%bind170235%_))))))
          (let* ((_%g170079170098%_
                  (lambda (_%g170080170094%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170080170094%_)))
                 (_%g170078170221%_
                  (lambda (_%g170080170102%_)
                    (if (gx#stx-pair? _%g170080170102%_)
                        (let ((_%e170084170105%_
                               (gx#syntax-e _%g170080170102%_)))
                          (let ((_%hd170085170109%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170084170105%_)))
                                (_%tl170086170112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170084170105%_))))
                            (if (gx#stx-pair? _%tl170086170112%_)
                                (let ((_%e170087170115%_
                                       (gx#syntax-e _%tl170086170112%_)))
                                  (let ((_%hd170088170119%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170087170115%_)))
                                        (_%tl170089170122%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170087170115%_))))
                                    (if (gx#stx-pair? _%tl170089170122%_)
                                        (let ((_%e170090170125%_
                                               (gx#syntax-e
                                                _%tl170089170122%_)))
                                          (let ((_%hd170091170129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170090170125%_)))
                                                (_%tl170092170132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170090170125%_))))
                                            ((lambda (_%g170081170135%_
                                                      _%g170082170137%_
                                                      _%g170083170138%_)
                                               (if (and (gx#identifier-list?
                                                         _%g170082170137%_)
                                                        (gx#stx-list?
                                                         _%g170081170135%_))
                                                   (let* ((_%g170156170164%_
                                                           (lambda (_%g170157170160%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g170157170160%_)))
                                                          (_%g170155170217%_
                                                           (lambda (_%g170157170168%_)
                                                             ((lambda (_%g170158170171%_)
                                                                (let* ((_%g170183170191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g170184170187%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170184170187%_)))
                               (_%g170182170213%_
                                (lambda (_%g170184170195%_)
                                  ((lambda (_%g170185170198%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%g170158170171%_
                                                             (cons _%g170083170138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g170185170198%_
                                                       '()))))
                                   _%g170184170195%_))))
                          (_%g170182170213%_
                           (_%generate170076%_
                            _%g170158170171%_
                            (gx#syntax->list _%g170082170137%_)
                            _%g170081170135%_))))
                      _%g170157170168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g170155170217%_
                                                      (gx#genident 'e)))
                                                   (_%g170079170098%_
                                                    _%g170080170102%_)))
                                             _%tl170092170132%_
                                             _%hd170091170129%_
                                             _%hd170088170119%_)))
                                        (_%g170079170098%_
                                         _%g170080170102%_))))
                                (_%g170079170098%_ _%g170080170102%_))))
                        (_%g170079170098%_ _%g170080170102%_)))))
            (_%g170078170221%_ _%stx170073%_)))))))
