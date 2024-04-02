(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1923_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx364%_)
        (let* ((_%g367391%_
                (lambda (_%g368387%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g368387%_)))
               (_%g366697%_
                (lambda (_%g368395%_)
                  (if (gx#stx-pair? _%g368395%_)
                      (let ((_%e373398%_ (gx#syntax-e _%g368395%_)))
                        (let ((_%hd372402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e373398%_)))
                              (_%tl371405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e373398%_))))
                          (if (gx#stx-pair? _%tl371405%_)
                              (let ((_%e376408%_ (gx#syntax-e _%tl371405%_)))
                                (let ((_%hd375412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e376408%_)))
                                      (_%tl374415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e376408%_))))
                                  (if (gx#stx-pair/null? _%tl374415%_)
                                      (let ((_g1919_ (gx#syntax-split-splice
                                                      _%tl374415%_
                                                      '0)))
                                        (begin
                                          (let ((_g1920_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1919_)
                                                               (##vector-length
                                                                _g1919_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1920_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1920_)))
                                          (let ((_%target377418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g1919_ 0)))
                                                (_%tl379421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g1919_ 1))))
                                            (if (gx#stx-null? _%tl379421%_)
                                                (letrec ((_%loop380424%_
                                                          (lambda (_%hd378428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses384431%_)
                    (if (gx#stx-pair? _%hd378428%_)
                        (let ((_%e381434%_ (gx#syntax-e _%hd378428%_)))
                          (let ((_%lp-hd382438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e381434%_)))
                                (_%lp-tl383441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e381434%_))))
                            (_%loop380424%_
                             _%lp-tl383441%_
                             (cons _%lp-hd382438%_ _%clauses384431%_))))
                        (let ((_%clauses385444%_ (reverse _%clauses384431%_)))
                          ((lambda (_%L448%_ _%L450%_)
                             (if (gx#identifier-list? _%L450%_)
                                 (let* ((_%body614%_
                                         (gx#stx-map
                                          (lambda (_%clause471%_)
                                            (let* ((_%__stx16561657%_
                                                    _%clause471%_)
                                                   (_%g475502%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx16561657%_))))
                                              (let ((_%__kont16591660%_
                                                     (lambda (_%L587%_
                                                              _%L589%_)
                                                       (cons _%L589%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%L587%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont16611662%_
                                                     (lambda (_%L539%_
                                                              _%L541%_
                                                              _%L542%_)
                                                       (cons _%L542%_
                                                             (cons _%L541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%L539%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx16561657%_)
                                                    (let ((_%e481567%_
                                                           (gx#syntax-e
                                                            _%__stx16561657%_)))
                                                      (let ((_%tl479574%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e481567%_)))
                    (_%hd480571%_
                     (let () (declare (not safe)) (##car _%e481567%_))))
                (if (gx#stx-pair? _%tl479574%_)
                    (let ((_%e484577%_ (gx#syntax-e _%tl479574%_)))
                      (let ((_%tl482584%_
                             (let () (declare (not safe)) (##cdr _%e484577%_)))
                            (_%hd483581%_
                             (let ()
                               (declare (not safe))
                               (##car _%e484577%_))))
                        (if (gx#stx-null? _%tl482584%_)
                            (_%__kont16591660%_ _%hd483581%_ _%hd480571%_)
                            (if (gx#stx-pair? _%tl482584%_)
                                (let ((_%e496529%_ (gx#syntax-e _%tl482584%_)))
                                  (let ((_%tl494536%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e496529%_)))
                                        (_%hd495533%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e496529%_))))
                                    (if (gx#stx-null? _%tl494536%_)
                                        (_%__kont16611662%_
                                         _%hd495533%_
                                         _%hd483581%_
                                         _%hd480571%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g475502%_)))))
                                (let () (declare (not safe)) (_%g475502%_))))))
                    (let () (declare (not safe)) (_%g475502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g475502%_))))))
                                          (foldr (lambda (_%g605608%_
                                                          _%g606611%_)
                                                   (cons _%g605608%_
                                                         _%g606611%_))
                                                 '()
                                                 _%L448%_)))
                                        (_%g617634%_
                                         (lambda (_%g618630%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g618630%_)))
                                        (_%g616693%_
                                         (lambda (_%g618638%_)
                                           (if (gx#stx-pair/null? _%g618638%_)
                                               (let ((_g1921_ (gx#syntax-split-splice
                                                               _%g618638%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1922_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1921_)
                                (##vector-length _g1921_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1922_ 2)))
                 (error "Context expects 2 values" _g1922_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target620641%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g1921_
                                                             0)))
                                                         (_%tl622644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g1921_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl622644%_)
                                                         (letrec ((_%loop623647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd621651%_ _%clause627654%_)
                             (if (gx#stx-pair? _%hd621651%_)
                                 (let ((_%e624657%_
                                        (gx#syntax-e _%hd621651%_)))
                                   (let ((_%lp-hd625661%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e624657%_)))
                                         (_%lp-tl626664%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e624657%_))))
                                     (_%loop623647%_
                                      _%lp-tl626664%_
                                      (cons _%lp-hd625661%_
                                            _%clause627654%_))))
                                 (let ((_%clause628667%_
                                        (reverse _%clause627654%_)))
                                   ((lambda (_%L671%_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _%L450%_
                                  (foldr (lambda (_%g684687%_ _%g685690%_)
                                           (cons _%g684687%_ _%g685690%_))
                                         '()
                                         _%L671%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause628667%_))))))
                   (_%loop623647%_ _%target620641%_ '()))
                 (_%g617634%_ _%g618638%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g617634%_ _%g618638%_)))))
                                   (_%g616693%_ _%body614%_))
                                 (_%g367391%_ _%g368395%_)))
                           _%clauses385444%_
                           _%hd375412%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop380424%_
                                                   _%target377418%_
                                                   '()))
                                                (_%g367391%_ _%g368395%_)))))
                                      (_%g367391%_ _%g368395%_))))
                              (_%g367391%_ _%g368395%_))))
                      (_%g367391%_ _%g368395%_)))))
          (_%g366697%_ _%stx364%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx703%_)
        (let* ((_%__stx17001701%_ _%stx703%_)
               (_%g708793%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17001701%_))))
          (let ((_%__kont17031704%_
                 (lambda (_%L1133%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g11491152%_ _%g11501155%_)
                                        (cons _%g11491152%_ _%g11501155%_))
                                      '()
                                      _%L1133%_)))))
                (_%__kont17071708%_
                 (lambda (_%L1041%_ _%L1043%_ _%L1044%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%L1043%_
                               (cons '()
                                     (cons (cons _%L1044%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10671070%_ _%g10681073%_)
                                    (cons _%g10671070%_ _%g10681073%_))
                                  '()
                                  _%L1041%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17111712%_
                 (lambda (_%L904%_ _%L906%_ _%L907%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g933936%_ _%g934939%_)
                                              (cons _%g933936%_ _%g934939%_))
                                            '()
                                            _%L906%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g931942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g932945%_)
                  (cons _%g931942%_ _%g932945%_))
                '()
                _%L907%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g929948%_ _%g930951%_)
                                    (cons _%g929948%_ _%g930951%_))
                                  '()
                                  _%L904%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18011802%_
                    (lambda (_%e758800%_
                             _%hd757804%_
                             _%tl756807%_
                             _%e761810%_
                             _%hd760814%_
                             _%tl759817%_
                             _%__splice17131714%_
                             _%target762820%_
                             _%tl764823%_)
                      (letrec ((_%loop765826%_
                                (lambda (_%hd763830%_
                                         _%e769833%_
                                         _%pat770835%_)
                                  (if (gx#stx-pair? _%hd763830%_)
                                      (let ((_%e766838%_
                                             (gx#syntax-e _%hd763830%_)))
                                        (let ((_%lp-tl768845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e766838%_)))
                                              (_%lp-hd767842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e766838%_))))
                                          (if (gx#stx-pair? _%lp-hd767842%_)
                                              (let ((_%e775848%_
                                                     (gx#syntax-e
                                                      _%lp-hd767842%_)))
                                                (let ((_%tl773855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e775848%_)))
                                                      (_%hd774852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e775848%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl773855%_)
                                                      (let ((_%e778858%_
                                                             (gx#syntax-e
                                                              _%tl773855%_)))
                                                        (let ((_%tl776865%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e778858%_)))
                      (_%hd777862%_
                       (let () (declare (not safe)) (##car _%e778858%_))))
                  (if (gx#stx-null? _%tl776865%_)
                      (_%loop765826%_
                       _%lp-tl768845%_
                       (cons _%hd777862%_ _%e769833%_)
                       (cons _%hd774852%_ _%pat770835%_))
                      (let () (declare (not safe)) (_%g708793%_)))))
              (let () (declare (not safe)) (_%g708793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g708793%_)))))
                                      (let ((_%pat772871%_
                                             (reverse _%pat770835%_))
                                            (_%e771868%_
                                             (reverse _%e769833%_)))
                                        (if (gx#stx-pair/null? _%tl759817%_)
                                            (let ((_%__splice17151716%_
                                                   (gx#syntax-split-splice
                                                    _%tl759817%_
                                                    '0)))
                                              (let ((_%tl781877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17151716%_
                                                        '1)))
                                                    (_%target779874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17151716%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl781877%_)
                                                    (letrec ((_%loop782880%_
                                                              (lambda (_%hd780884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body786887%_)
                        (if (gx#stx-pair? _%hd780884%_)
                            (let ((_%e783890%_ (gx#syntax-e _%hd780884%_)))
                              (let ((_%lp-tl785897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e783890%_)))
                                    (_%lp-hd784894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e783890%_))))
                                (_%loop782880%_
                                 _%lp-tl785897%_
                                 (cons _%lp-hd784894%_ _%body786887%_))))
                            (let ((_%body787900%_ (reverse _%body786887%_)))
                              (_%__kont17111712%_
                               _%body787900%_
                               _%e771868%_
                               _%pat772871%_))))))
              (_%loop782880%_ _%target779874%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g708793%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g708793%_))))))))
                        (_%loop765826%_ _%target762820%_ '() '()))))
                   (_%__match17811782%_
                    (lambda (_%e731961%_
                             _%hd730965%_
                             _%tl729968%_
                             _%e734971%_
                             _%hd733975%_
                             _%tl732978%_
                             _%e737981%_
                             _%hd736985%_
                             _%tl735988%_
                             _%e740991%_
                             _%hd739995%_
                             _%tl738998%_
                             _%e7431001%_
                             _%hd7421005%_
                             _%tl7411008%_
                             _%__splice17091710%_
                             _%target7441011%_
                             _%tl7461014%_)
                      (letrec ((_%loop7471017%_
                                (lambda (_%hd7451021%_ _%body7511024%_)
                                  (if (gx#stx-pair? _%hd7451021%_)
                                      (let ((_%e7481027%_
                                             (gx#syntax-e _%hd7451021%_)))
                                        (let ((_%lp-tl7501034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7481027%_)))
                                              (_%lp-hd7491031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7481027%_))))
                                          (_%loop7471017%_
                                           _%lp-tl7501034%_
                                           (cons _%lp-hd7491031%_
                                                 _%body7511024%_))))
                                      (let ((_%body7521037%_
                                             (reverse _%body7511024%_)))
                                        (_%__kont17071708%_
                                         _%body7521037%_
                                         _%hd7421005%_
                                         _%hd739995%_))))))
                        (_%loop7471017%_ _%target7441011%_ '()))))
                   (_%__match17391740%_
                    (lambda (_%e7131083%_
                             _%hd7121087%_
                             _%tl7111090%_
                             _%e7161093%_
                             _%hd7151097%_
                             _%tl7141100%_
                             _%__splice17051706%_
                             _%target7171103%_
                             _%tl7191106%_)
                      (letrec ((_%loop7201109%_
                                (lambda (_%hd7181113%_ _%body7241116%_)
                                  (if (gx#stx-pair? _%hd7181113%_)
                                      (let ((_%e7211119%_
                                             (gx#syntax-e _%hd7181113%_)))
                                        (let ((_%lp-tl7231126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7211119%_)))
                                              (_%lp-hd7221123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7211119%_))))
                                          (_%loop7201109%_
                                           _%lp-tl7231126%_
                                           (cons _%lp-hd7221123%_
                                                 _%body7241116%_))))
                                      (let ((_%body7251129%_
                                             (reverse _%body7241116%_)))
                                        (_%__kont17031704%_
                                         _%body7251129%_))))))
                        (_%loop7201109%_ _%target7171103%_ '())))))
              (if (gx#stx-pair? _%__stx17001701%_)
                  (let ((_%e7131083%_ (gx#syntax-e _%__stx17001701%_)))
                    (let ((_%tl7111090%_
                           (let () (declare (not safe)) (##cdr _%e7131083%_)))
                          (_%hd7121087%_
                           (let () (declare (not safe)) (##car _%e7131083%_))))
                      (if (gx#stx-pair? _%tl7111090%_)
                          (let ((_%e7161093%_ (gx#syntax-e _%tl7111090%_)))
                            (let ((_%tl7141100%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7161093%_)))
                                  (_%hd7151097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7161093%_))))
                              (if (gx#stx-null? _%hd7151097%_)
                                  (if (gx#stx-pair/null? _%tl7141100%_)
                                      (let ((_%__splice17051706%_
                                             (gx#syntax-split-splice
                                              _%tl7141100%_
                                              '0)))
                                        (let ((_%tl7191106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17051706%_
                                                  '1)))
                                              (_%target7171103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17051706%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7191106%_)
                                              (_%__match17391740%_
                                               _%e7131083%_
                                               _%hd7121087%_
                                               _%tl7111090%_
                                               _%e7161093%_
                                               _%hd7151097%_
                                               _%tl7141100%_
                                               _%__splice17051706%_
                                               _%target7171103%_
                                               _%tl7191106%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7151097%_)
                                                  (let ((_%__splice17131714%_
                                                         (gx#syntax-split-splice
                                                          _%hd7151097%_
                                                          '0)))
                                                    (let ((_%tl764823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17131714%_
                                                              '1)))
                                                          (_%target762820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17131714%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl764823%_)
                                                          (_%__match18011802%_
                                                           _%e7131083%_
                                                           _%hd7121087%_
                                                           _%tl7111090%_
                                                           _%e7161093%_
                                                           _%hd7151097%_
                                                           _%tl7141100%_
                                                           _%__splice17131714%_
                                                           _%target762820%_
                                                           _%tl764823%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g708793%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g708793%_))))))
                                      (if (gx#stx-pair/null? _%hd7151097%_)
                                          (let ((_%__splice17131714%_
                                                 (gx#syntax-split-splice
                                                  _%hd7151097%_
                                                  '0)))
                                            (let ((_%tl764823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17131714%_
                                                      '1)))
                                                  (_%target762820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17131714%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl764823%_)
                                                  (_%__match18011802%_
                                                   _%e7131083%_
                                                   _%hd7121087%_
                                                   _%tl7111090%_
                                                   _%e7161093%_
                                                   _%hd7151097%_
                                                   _%tl7141100%_
                                                   _%__splice17131714%_
                                                   _%target762820%_
                                                   _%tl764823%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g708793%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g708793%_))))
                                  (if (gx#stx-pair? _%hd7151097%_)
                                      (let ((_%e737981%_
                                             (gx#syntax-e _%hd7151097%_)))
                                        (let ((_%tl735988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e737981%_)))
                                              (_%hd736985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e737981%_))))
                                          (if (gx#stx-pair? _%hd736985%_)
                                              (let ((_%e740991%_
                                                     (gx#syntax-e
                                                      _%hd736985%_)))
                                                (let ((_%tl738998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e740991%_)))
                                                      (_%hd739995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e740991%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl738998%_)
                                                      (let ((_%e7431001%_
                                                             (gx#syntax-e
                                                              _%tl738998%_)))
                                                        (let ((_%tl7411008%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7431001%_)))
                      (_%hd7421005%_
                       (let () (declare (not safe)) (##car _%e7431001%_))))
                  (if (gx#stx-null? _%tl7411008%_)
                      (if (gx#stx-null? _%tl735988%_)
                          (if (gx#stx-pair/null? _%tl7141100%_)
                              (let ((_%__splice17091710%_
                                     (gx#syntax-split-splice
                                      _%tl7141100%_
                                      '0)))
                                (let ((_%tl7461014%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17091710%_
                                          '1)))
                                      (_%target7441011%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17091710%_
                                          '0))))
                                  (if (gx#stx-null? _%tl7461014%_)
                                      (_%__match17811782%_
                                       _%e7131083%_
                                       _%hd7121087%_
                                       _%tl7111090%_
                                       _%e7161093%_
                                       _%hd7151097%_
                                       _%tl7141100%_
                                       _%e737981%_
                                       _%hd736985%_
                                       _%tl735988%_
                                       _%e740991%_
                                       _%hd739995%_
                                       _%tl738998%_
                                       _%e7431001%_
                                       _%hd7421005%_
                                       _%tl7411008%_
                                       _%__splice17091710%_
                                       _%target7441011%_
                                       _%tl7461014%_)
                                      (if (gx#stx-pair/null? _%hd7151097%_)
                                          (let ((_%__splice17131714%_
                                                 (gx#syntax-split-splice
                                                  _%hd7151097%_
                                                  '0)))
                                            (let ((_%tl764823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17131714%_
                                                      '1)))
                                                  (_%target762820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17131714%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl764823%_)
                                                  (_%__match18011802%_
                                                   _%e7131083%_
                                                   _%hd7121087%_
                                                   _%tl7111090%_
                                                   _%e7161093%_
                                                   _%hd7151097%_
                                                   _%tl7141100%_
                                                   _%__splice17131714%_
                                                   _%target762820%_
                                                   _%tl764823%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g708793%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g708793%_))))))
                              (if (gx#stx-pair/null? _%hd7151097%_)
                                  (let ((_%__splice17131714%_
                                         (gx#syntax-split-splice
                                          _%hd7151097%_
                                          '0)))
                                    (let ((_%tl764823%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17131714%_
                                              '1)))
                                          (_%target762820%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17131714%_
                                              '0))))
                                      (if (gx#stx-null? _%tl764823%_)
                                          (_%__match18011802%_
                                           _%e7131083%_
                                           _%hd7121087%_
                                           _%tl7111090%_
                                           _%e7161093%_
                                           _%hd7151097%_
                                           _%tl7141100%_
                                           _%__splice17131714%_
                                           _%target762820%_
                                           _%tl764823%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g708793%_)))))
                                  (let () (declare (not safe)) (_%g708793%_))))
                          (if (gx#stx-pair/null? _%hd7151097%_)
                              (let ((_%__splice17131714%_
                                     (gx#syntax-split-splice
                                      _%hd7151097%_
                                      '0)))
                                (let ((_%tl764823%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17131714%_
                                          '1)))
                                      (_%target762820%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17131714%_
                                          '0))))
                                  (if (gx#stx-null? _%tl764823%_)
                                      (_%__match18011802%_
                                       _%e7131083%_
                                       _%hd7121087%_
                                       _%tl7111090%_
                                       _%e7161093%_
                                       _%hd7151097%_
                                       _%tl7141100%_
                                       _%__splice17131714%_
                                       _%target762820%_
                                       _%tl764823%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g708793%_)))))
                              (let () (declare (not safe)) (_%g708793%_))))
                      (if (gx#stx-pair/null? _%hd7151097%_)
                          (let ((_%__splice17131714%_
                                 (gx#syntax-split-splice _%hd7151097%_ '0)))
                            (let ((_%tl764823%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17131714%_ '1)))
                                  (_%target762820%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17131714%_ '0))))
                              (if (gx#stx-null? _%tl764823%_)
                                  (_%__match18011802%_
                                   _%e7131083%_
                                   _%hd7121087%_
                                   _%tl7111090%_
                                   _%e7161093%_
                                   _%hd7151097%_
                                   _%tl7141100%_
                                   _%__splice17131714%_
                                   _%target762820%_
                                   _%tl764823%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g708793%_)))))
                          (let () (declare (not safe)) (_%g708793%_))))))
              (if (gx#stx-pair/null? _%hd7151097%_)
                  (let ((_%__splice17131714%_
                         (gx#syntax-split-splice _%hd7151097%_ '0)))
                    (let ((_%tl764823%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17131714%_ '1)))
                          (_%target762820%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17131714%_ '0))))
                      (if (gx#stx-null? _%tl764823%_)
                          (_%__match18011802%_
                           _%e7131083%_
                           _%hd7121087%_
                           _%tl7111090%_
                           _%e7161093%_
                           _%hd7151097%_
                           _%tl7141100%_
                           _%__splice17131714%_
                           _%target762820%_
                           _%tl764823%_)
                          (let () (declare (not safe)) (_%g708793%_)))))
                  (let () (declare (not safe)) (_%g708793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7151097%_)
                                                  (let ((_%__splice17131714%_
                                                         (gx#syntax-split-splice
                                                          _%hd7151097%_
                                                          '0)))
                                                    (let ((_%tl764823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17131714%_
                                                              '1)))
                                                          (_%target762820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17131714%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl764823%_)
                                                          (_%__match18011802%_
                                                           _%e7131083%_
                                                           _%hd7121087%_
                                                           _%tl7111090%_
                                                           _%e7161093%_
                                                           _%hd7151097%_
                                                           _%tl7141100%_
                                                           _%__splice17131714%_
                                                           _%target762820%_
                                                           _%tl764823%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g708793%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g708793%_))))))
                                      (if (gx#stx-pair/null? _%hd7151097%_)
                                          (let ((_%__splice17131714%_
                                                 (gx#syntax-split-splice
                                                  _%hd7151097%_
                                                  '0)))
                                            (let ((_%tl764823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17131714%_
                                                      '1)))
                                                  (_%target762820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17131714%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl764823%_)
                                                  (_%__match18011802%_
                                                   _%e7131083%_
                                                   _%hd7121087%_
                                                   _%tl7111090%_
                                                   _%e7161093%_
                                                   _%hd7151097%_
                                                   _%tl7141100%_
                                                   _%__splice17131714%_
                                                   _%target762820%_
                                                   _%tl764823%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g708793%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g708793%_)))))))
                          (let () (declare (not safe)) (_%g708793%_)))))
                  (let () (declare (not safe)) (_%g708793%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1166%_)
        (let* ((_%__stx18041805%_ _%stx1166%_)
               (_%g11711248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18041805%_))))
          (let ((_%__kont18071808%_
                 (lambda (_%L1544%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g15601563%_ _%g15611566%_)
                                        (cons _%g15601563%_ _%g15611566%_))
                                      '()
                                      _%L1544%_)))))
                (_%__kont18111812%_
                 (lambda (_%L1446%_ _%L1448%_ _%L1449%_ _%L1450%_ _%L1451%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%L1450%_ (cons _%L1449%_ '())) '())
                               (cons (cons _%L1451%_
                                           (cons _%L1448%_
                                                 (foldr (lambda (_%g14781481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14791484%_)
                  (cons _%g14781481%_ _%g14791484%_))
                '()
                _%L1446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18151816%_
                 (lambda (_%L1315%_ _%L1317%_ _%L1318%_ _%L1319%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%L1318%_ '())
                               (cons (cons _%L1319%_
                                           (cons _%L1317%_
                                                 (foldr (lambda (_%g13401343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g13411346%_)
                  (cons _%g13401343%_ _%g13411346%_))
                '()
                _%L1315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19171918%_
                    (lambda (_%e12271255%_
                             _%hd12261259%_
                             _%tl12251262%_
                             _%e12301265%_
                             _%hd12291269%_
                             _%tl12281272%_
                             _%e12331275%_
                             _%hd12321279%_
                             _%tl12311282%_
                             _%__splice18171818%_
                             _%target12341285%_
                             _%tl12361288%_)
                      (letrec ((_%loop12371291%_
                                (lambda (_%hd12351295%_ _%body12411298%_)
                                  (if (gx#stx-pair? _%hd12351295%_)
                                      (let ((_%e12381301%_
                                             (gx#syntax-e _%hd12351295%_)))
                                        (let ((_%lp-tl12401308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12381301%_)))
                                              (_%lp-hd12391305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12381301%_))))
                                          (_%loop12371291%_
                                           _%lp-tl12401308%_
                                           (cons _%lp-hd12391305%_
                                                 _%body12411298%_))))
                                      (let ((_%body12421311%_
                                             (reverse _%body12411298%_)))
                                        (_%__kont18151816%_
                                         _%body12421311%_
                                         _%tl12311282%_
                                         _%hd12321279%_
                                         _%hd12261259%_))))))
                        (_%loop12371291%_ _%target12341285%_ '()))))
                   (_%__match18911892%_
                    (lambda (_%e11961356%_
                             _%hd11951360%_
                             _%tl11941363%_
                             _%e11991366%_
                             _%hd11981370%_
                             _%tl11971373%_
                             _%e12021376%_
                             _%hd12011380%_
                             _%tl12001383%_
                             _%e12051386%_
                             _%hd12041390%_
                             _%tl12031393%_
                             _%e12081396%_
                             _%hd12071400%_
                             _%tl12061403%_
                             _%e12111406%_
                             _%hd12101410%_
                             _%tl12091413%_
                             _%__splice18131814%_
                             _%target12121416%_
                             _%tl12141419%_)
                      (letrec ((_%loop12151422%_
                                (lambda (_%hd12131426%_ _%body12191429%_)
                                  (if (gx#stx-pair? _%hd12131426%_)
                                      (let ((_%e12161432%_
                                             (gx#syntax-e _%hd12131426%_)))
                                        (let ((_%lp-tl12181439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12161432%_)))
                                              (_%lp-hd12171436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12161432%_))))
                                          (_%loop12151422%_
                                           _%lp-tl12181439%_
                                           (cons _%lp-hd12171436%_
                                                 _%body12191429%_))))
                                      (let ((_%body12201442%_
                                             (reverse _%body12191429%_)))
                                        (_%__kont18111812%_
                                         _%body12201442%_
                                         _%tl12001383%_
                                         _%hd12101410%_
                                         _%tl12061403%_
                                         _%hd11951360%_))))))
                        (_%loop12151422%_ _%target12121416%_ '()))))
                   (_%__match18411842%_
                    (lambda (_%e11761494%_
                             _%hd11751498%_
                             _%tl11741501%_
                             _%e11791504%_
                             _%hd11781508%_
                             _%tl11771511%_
                             _%__splice18091810%_
                             _%target11801514%_
                             _%tl11821517%_)
                      (letrec ((_%loop11831520%_
                                (lambda (_%hd11811524%_ _%body11871527%_)
                                  (if (gx#stx-pair? _%hd11811524%_)
                                      (let ((_%e11841530%_
                                             (gx#syntax-e _%hd11811524%_)))
                                        (let ((_%lp-tl11861537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11841530%_)))
                                              (_%lp-hd11851534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11841530%_))))
                                          (_%loop11831520%_
                                           _%lp-tl11861537%_
                                           (cons _%lp-hd11851534%_
                                                 _%body11871527%_))))
                                      (let ((_%body11881540%_
                                             (reverse _%body11871527%_)))
                                        (_%__kont18071808%_
                                         _%body11881540%_))))))
                        (_%loop11831520%_ _%target11801514%_ '())))))
              (if (gx#stx-pair? _%__stx18041805%_)
                  (let ((_%e11761494%_ (gx#syntax-e _%__stx18041805%_)))
                    (let ((_%tl11741501%_
                           (let () (declare (not safe)) (##cdr _%e11761494%_)))
                          (_%hd11751498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e11761494%_))))
                      (if (gx#stx-pair? _%tl11741501%_)
                          (let ((_%e11791504%_ (gx#syntax-e _%tl11741501%_)))
                            (let ((_%tl11771511%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e11791504%_)))
                                  (_%hd11781508%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e11791504%_))))
                              (if (gx#stx-null? _%hd11781508%_)
                                  (if (gx#stx-pair/null? _%tl11771511%_)
                                      (let ((_%__splice18091810%_
                                             (gx#syntax-split-splice
                                              _%tl11771511%_
                                              '0)))
                                        (let ((_%tl11821517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18091810%_
                                                  '1)))
                                              (_%target11801514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18091810%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl11821517%_)
                                              (_%__match18411842%_
                                               _%e11761494%_
                                               _%hd11751498%_
                                               _%tl11741501%_
                                               _%e11791504%_
                                               _%hd11781508%_
                                               _%tl11771511%_
                                               _%__splice18091810%_
                                               _%target11801514%_
                                               _%tl11821517%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g11711248%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11711248%_)))
                                  (if (gx#stx-pair? _%hd11781508%_)
                                      (let ((_%e12021376%_
                                             (gx#syntax-e _%hd11781508%_)))
                                        (let ((_%tl12001383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12021376%_)))
                                              (_%hd12011380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12021376%_))))
                                          (if (gx#stx-pair? _%hd12011380%_)
                                              (let ((_%e12051386%_
                                                     (gx#syntax-e
                                                      _%hd12011380%_)))
                                                (let ((_%tl12031393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12051386%_)))
                                                      (_%hd12041390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12051386%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12041390%_)
                                                      (let ((_%e12081396%_
                                                             (gx#syntax-e
                                                              _%hd12041390%_)))
                                                        (let ((_%tl12061403%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12081396%_)))
                      (_%hd12071400%_
                       (let () (declare (not safe)) (##car _%e12081396%_))))
                  (if (gx#identifier? _%hd12071400%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1923_|
                           _%hd12071400%_)
                          (if (gx#stx-pair? _%tl12031393%_)
                              (let ((_%e12111406%_
                                     (gx#syntax-e _%tl12031393%_)))
                                (let ((_%tl12091413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12111406%_)))
                                      (_%hd12101410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12111406%_))))
                                  (if (gx#stx-null? _%tl12091413%_)
                                      (if (gx#stx-pair/null? _%tl11771511%_)
                                          (let ((_%__splice18131814%_
                                                 (gx#syntax-split-splice
                                                  _%tl11771511%_
                                                  '0)))
                                            (let ((_%tl12141419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18131814%_
                                                      '1)))
                                                  (_%target12121416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18131814%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12141419%_)
                                                  (_%__match18911892%_
                                                   _%e11761494%_
                                                   _%hd11751498%_
                                                   _%tl11741501%_
                                                   _%e11791504%_
                                                   _%hd11781508%_
                                                   _%tl11771511%_
                                                   _%e12021376%_
                                                   _%hd12011380%_
                                                   _%tl12001383%_
                                                   _%e12051386%_
                                                   _%hd12041390%_
                                                   _%tl12031393%_
                                                   _%e12081396%_
                                                   _%hd12071400%_
                                                   _%tl12061403%_
                                                   _%e12111406%_
                                                   _%hd12101410%_
                                                   _%tl12091413%_
                                                   _%__splice18131814%_
                                                   _%target12121416%_
                                                   _%tl12141419%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11711248%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11711248%_)))
                                      (if (gx#stx-pair/null? _%tl11771511%_)
                                          (let ((_%__splice18171818%_
                                                 (gx#syntax-split-splice
                                                  _%tl11771511%_
                                                  '0)))
                                            (let ((_%tl12361288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18171818%_
                                                      '1)))
                                                  (_%target12341285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18171818%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12361288%_)
                                                  (_%__match19171918%_
                                                   _%e11761494%_
                                                   _%hd11751498%_
                                                   _%tl11741501%_
                                                   _%e11791504%_
                                                   _%hd11781508%_
                                                   _%tl11771511%_
                                                   _%e12021376%_
                                                   _%hd12011380%_
                                                   _%tl12001383%_
                                                   _%__splice18171818%_
                                                   _%target12341285%_
                                                   _%tl12361288%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11711248%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11711248%_))))))
                              (if (gx#stx-pair/null? _%tl11771511%_)
                                  (let ((_%__splice18171818%_
                                         (gx#syntax-split-splice
                                          _%tl11771511%_
                                          '0)))
                                    (let ((_%tl12361288%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18171818%_
                                              '1)))
                                          (_%target12341285%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18171818%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12361288%_)
                                          (_%__match19171918%_
                                           _%e11761494%_
                                           _%hd11751498%_
                                           _%tl11741501%_
                                           _%e11791504%_
                                           _%hd11781508%_
                                           _%tl11771511%_
                                           _%e12021376%_
                                           _%hd12011380%_
                                           _%tl12001383%_
                                           _%__splice18171818%_
                                           _%target12341285%_
                                           _%tl12361288%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g11711248%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g11711248%_))))
                          (if (gx#stx-pair/null? _%tl11771511%_)
                              (let ((_%__splice18171818%_
                                     (gx#syntax-split-splice
                                      _%tl11771511%_
                                      '0)))
                                (let ((_%tl12361288%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18171818%_
                                          '1)))
                                      (_%target12341285%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18171818%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12361288%_)
                                      (_%__match19171918%_
                                       _%e11761494%_
                                       _%hd11751498%_
                                       _%tl11741501%_
                                       _%e11791504%_
                                       _%hd11781508%_
                                       _%tl11771511%_
                                       _%e12021376%_
                                       _%hd12011380%_
                                       _%tl12001383%_
                                       _%__splice18171818%_
                                       _%target12341285%_
                                       _%tl12361288%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g11711248%_)))))
                              (let () (declare (not safe)) (_%g11711248%_))))
                      (if (gx#stx-pair/null? _%tl11771511%_)
                          (let ((_%__splice18171818%_
                                 (gx#syntax-split-splice _%tl11771511%_ '0)))
                            (let ((_%tl12361288%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18171818%_ '1)))
                                  (_%target12341285%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18171818%_ '0))))
                              (if (gx#stx-null? _%tl12361288%_)
                                  (_%__match19171918%_
                                   _%e11761494%_
                                   _%hd11751498%_
                                   _%tl11741501%_
                                   _%e11791504%_
                                   _%hd11781508%_
                                   _%tl11771511%_
                                   _%e12021376%_
                                   _%hd12011380%_
                                   _%tl12001383%_
                                   _%__splice18171818%_
                                   _%target12341285%_
                                   _%tl12361288%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g11711248%_)))))
                          (let () (declare (not safe)) (_%g11711248%_))))))
              (if (gx#stx-pair/null? _%tl11771511%_)
                  (let ((_%__splice18171818%_
                         (gx#syntax-split-splice _%tl11771511%_ '0)))
                    (let ((_%tl12361288%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18171818%_ '1)))
                          (_%target12341285%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18171818%_ '0))))
                      (if (gx#stx-null? _%tl12361288%_)
                          (_%__match19171918%_
                           _%e11761494%_
                           _%hd11751498%_
                           _%tl11741501%_
                           _%e11791504%_
                           _%hd11781508%_
                           _%tl11771511%_
                           _%e12021376%_
                           _%hd12011380%_
                           _%tl12001383%_
                           _%__splice18171818%_
                           _%target12341285%_
                           _%tl12361288%_)
                          (let () (declare (not safe)) (_%g11711248%_)))))
                  (let () (declare (not safe)) (_%g11711248%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl11771511%_)
                                                  (let ((_%__splice18171818%_
                                                         (gx#syntax-split-splice
                                                          _%tl11771511%_
                                                          '0)))
                                                    (let ((_%tl12361288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18171818%_
                                                              '1)))
                                                          (_%target12341285%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18171818%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12361288%_)
                                                          (_%__match19171918%_
                                                           _%e11761494%_
                                                           _%hd11751498%_
                                                           _%tl11741501%_
                                                           _%e11791504%_
                                                           _%hd11781508%_
                                                           _%tl11771511%_
                                                           _%e12021376%_
                                                           _%hd12011380%_
                                                           _%tl12001383%_
                                                           _%__splice18171818%_
                                                           _%target12341285%_
                                                           _%tl12361288%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g11711248%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11711248%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11711248%_))))))
                          (let () (declare (not safe)) (_%g11711248%_)))))
                  (let () (declare (not safe)) (_%g11711248%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1576%_)
        (let* ((_%g15791597%_
                (lambda (_%g15801593%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g15801593%_)))
               (_%g15781652%_
                (lambda (_%g15801601%_)
                  (if (gx#stx-pair? _%g15801601%_)
                      (let ((_%e15851604%_ (gx#syntax-e _%g15801601%_)))
                        (let ((_%hd15841608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e15851604%_)))
                              (_%tl15831611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e15851604%_))))
                          (if (gx#stx-pair? _%tl15831611%_)
                              (let ((_%e15881614%_
                                     (gx#syntax-e _%tl15831611%_)))
                                (let ((_%hd15871618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e15881614%_)))
                                      (_%tl15861621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e15881614%_))))
                                  (if (gx#stx-pair? _%tl15861621%_)
                                      (let ((_%e15911624%_
                                             (gx#syntax-e _%tl15861621%_)))
                                        (let ((_%hd15901628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e15911624%_)))
                                              (_%tl15891631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e15911624%_))))
                                          (if (gx#stx-null? _%tl15891631%_)
                                              ((lambda (_%L1634%_ _%L1636%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%L1634%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%L1636%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd15901628%_
                                               _%hd15871618%_)
                                              (_%g15791597%_ _%g15801601%_))))
                                      (_%g15791597%_ _%g15801601%_))))
                              (_%g15791597%_ _%g15801601%_))))
                      (_%g15791597%_ _%g15801601%_)))))
          (_%g15781652%_ _%stx1576%_))))))
