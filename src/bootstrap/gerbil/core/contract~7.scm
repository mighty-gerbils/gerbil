(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx66448%_)
      (let* ((_%g6645266466%_
              (lambda (_%g6645366462%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g6645366462%_)))
             (_%g6645166508%_
              (lambda (_%g6645366470%_)
                (if (gx#stx-pair? _%g6645366470%_)
                    (let ((_%e6645566473%_ (gx#syntax-e _%g6645366470%_)))
                      (let ((_%hd6645666477%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6645566473%_)))
                            (_%tl6645766480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6645566473%_))))
                        (if (gx#stx-pair? _%tl6645766480%_)
                            (let ((_%e6645866483%_
                                   (gx#syntax-e _%tl6645766480%_)))
                              (let ((_%hd6645966487%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6645866483%_)))
                                    (_%tl6646066490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6645866483%_))))
                                (if (gx#stx-null? _%tl6646066490%_)
                                    ((lambda (_%g6645466493%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%g6645466493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd6645966487%_)
                                    (_%g6645266466%_ _%g6645366470%_))))
                            (_%g6645266466%_ _%g6645366470%_))))
                    (_%g6645266466%_ _%g6645366470%_)))))
        (_%g6645166508%_ _%$stx66448%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx66512%_)
      (let* ((_%g6651666534%_
              (lambda (_%g6651766530%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g6651766530%_)))
             (_%g6651566589%_
              (lambda (_%g6651766538%_)
                (if (gx#stx-pair? _%g6651766538%_)
                    (let ((_%e6652066541%_ (gx#syntax-e _%g6651766538%_)))
                      (let ((_%hd6652166545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6652066541%_)))
                            (_%tl6652266548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6652066541%_))))
                        (if (gx#stx-pair? _%tl6652266548%_)
                            (let ((_%e6652366551%_
                                   (gx#syntax-e _%tl6652266548%_)))
                              (let ((_%hd6652466555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6652366551%_)))
                                    (_%tl6652566558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6652366551%_))))
                                (if (gx#stx-pair? _%tl6652566558%_)
                                    (let ((_%e6652666561%_
                                           (gx#syntax-e _%tl6652566558%_)))
                                      (let ((_%hd6652766565%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6652666561%_)))
                                            (_%tl6652866568%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6652666561%_))))
                                        (if (gx#stx-null? _%tl6652866568%_)
                                            ((lambda (_%g6651866571%_
                                                      _%g6651966573%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%g6651966573%_
                                                             '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g6651866571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd6652766565%_
                                             _%hd6652466555%_)
                                            (_%g6651666534%_
                                             _%g6651766538%_))))
                                    (_%g6651666534%_ _%g6651766538%_))))
                            (_%g6651666534%_ _%g6651766538%_))))
                    (_%g6651666534%_ _%g6651766538%_)))))
        (_%g6651566589%_ _%$stx66512%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx66593%_)
      (let* ((_%g6659766615%_
              (lambda (_%g6659866611%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g6659866611%_)))
             (_%g6659666670%_
              (lambda (_%g6659866619%_)
                (if (gx#stx-pair? _%g6659866619%_)
                    (let ((_%e6660166622%_ (gx#syntax-e _%g6659866619%_)))
                      (let ((_%hd6660266626%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6660166622%_)))
                            (_%tl6660366629%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6660166622%_))))
                        (if (gx#stx-pair? _%tl6660366629%_)
                            (let ((_%e6660466632%_
                                   (gx#syntax-e _%tl6660366629%_)))
                              (let ((_%hd6660566636%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6660466632%_)))
                                    (_%tl6660666639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6660466632%_))))
                                (if (gx#stx-pair? _%tl6660666639%_)
                                    (let ((_%e6660766642%_
                                           (gx#syntax-e _%tl6660666639%_)))
                                      (let ((_%hd6660866646%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6660766642%_)))
                                            (_%tl6660966649%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6660766642%_))))
                                        (if (gx#stx-null? _%tl6660966649%_)
                                            ((lambda (_%g6659966652%_
                                                      _%g6660066654%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%g6660066654%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%g6659966652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd6660866646%_
                                             _%hd6660566636%_)
                                            (_%g6659766615%_
                                             _%g6659866619%_))))
                                    (_%g6659766615%_ _%g6659866619%_))))
                            (_%g6659766615%_ _%g6659866619%_))))
                    (_%g6659766615%_ _%g6659866619%_)))))
        (_%g6659666670%_ _%$stx66593%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx66674%_)
      (let* ((_%g6667866692%_
              (lambda (_%g6667966688%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g6667966688%_)))
             (_%g6667766733%_
              (lambda (_%g6667966696%_)
                (if (gx#stx-pair? _%g6667966696%_)
                    (let ((_%e6668166699%_ (gx#syntax-e _%g6667966696%_)))
                      (let ((_%hd6668266703%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6668166699%_)))
                            (_%tl6668366706%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6668166699%_))))
                        (if (gx#stx-pair? _%tl6668366706%_)
                            (let ((_%e6668466709%_
                                   (gx#syntax-e _%tl6668366706%_)))
                              (let ((_%hd6668566713%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6668466709%_)))
                                    (_%tl6668666716%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6668466709%_))))
                                (if (gx#stx-null? _%tl6668666716%_)
                                    ((lambda (_%g6668066719%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%g6668066719%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd6668566713%_)
                                    (_%g6667866692%_ _%g6667966696%_))))
                            (_%g6667866692%_ _%g6667966696%_))))
                    (_%g6667866692%_ _%g6667966696%_)))))
        (_%g6667766733%_ _%$stx66674%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx66737%_)
      (let* ((_%g6674166761%_
              (lambda (_%g6674266757%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g6674266757%_)))
             (_%g6674066830%_
              (lambda (_%g6674266765%_)
                (if (gx#stx-pair? _%g6674266765%_)
                    (let ((_%e6674466768%_ (gx#syntax-e _%g6674266765%_)))
                      (let ((_%hd6674566772%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6674466768%_)))
                            (_%tl6674666775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6674466768%_))))
                        (if (gx#stx-pair/null? _%tl6674666775%_)
                            (let ((_g109263_
                                   (gx#syntax-split-splice
                                    _%tl6674666775%_
                                    '0)))
                              (begin
                                (let ((_g109264_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g109263_)
                                             (##values-length _g109263_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g109264_ 2)))
                                      (error "Context expects 2 values"
                                             _g109264_)))
                                (let ((_%target6674766778%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109263_ 0)))
                                      (_%tl6674966781%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g109263_ 1))))
                                  (if (gx#stx-null? _%tl6674966781%_)
                                      (letrec ((_%loop6675066784%_
                                                (lambda (_%hd6674866788%_
                                                         _%val6675466791%_)
                                                  (if (gx#stx-pair?
                                                       _%hd6674866788%_)
                                                      (let ((_%e6675166793%_
                                                             (gx#syntax-e
                                                              _%hd6674866788%_)))
                                                        (let ((_%lp-hd6675266797%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e6675166793%_)))
                      (_%lp-tl6675366800%_
                       (let () (declare (not safe)) (##cdr _%e6675166793%_))))
                  (_%loop6675066784%_
                   _%lp-tl6675366800%_
                   (cons _%lp-hd6675266797%_ _%val6675466791%_))))
              (let ((_%val6675566803%_ (reverse _%val6675466791%_)))
                ((lambda (_%g6674366806%_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f 'o) '())
                               (cons (cons (gx#datum->syntax '#f 'or)
                                           (foldr (lambda (_%g6682166824%_
                                                           _%g6682266827%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'o)
                              (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                          (cons _%g6682166824%_ '()))
                                    '())))
                  _%g6682266827%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _%g6674366806%_))
                                     '()))))
                 _%val6675566803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop6675066784%_
                                         _%target6674766778%_
                                         '()))
                                      (_%g6674166761%_ _%g6674266765%_)))))
                            (_%g6674166761%_ _%g6674266765%_))))
                    (_%g6674166761%_ _%g6674266765%_)))))
        (_%g6674066830%_ _%$stx66737%_)))))
