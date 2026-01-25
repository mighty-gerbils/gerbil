(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g45835_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx44859%_)
        (let* ((_%g4486344874%_
                (lambda (_%g4486444870%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4486444870%_)))
               (_%g4486244904%_
                (lambda (_%g4486444878%_)
                  (if (gx#stx-pair? _%g4486444878%_)
                      (let ((_%e4486644881%_ (gx#syntax-e _%g4486444878%_)))
                        (let ((_%hd4486744885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4486644881%_)))
                              (_%tl4486844888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4486644881%_))))
                          ((lambda (_%g4486544891%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%g4486544891%_)
                                               '()))))
                           _%tl4486844888%_)))
                      (_%g4486344874%_ _%g4486444878%_)))))
          (_%g4486244904%_ _%$stx44859%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx44908%_)
        (let* ((_%g4491144944%_
                (lambda (_%g4491244940%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4491244940%_)))
               (_%g4491045346%_
                (lambda (_%g4491244948%_)
                  (if (gx#stx-pair? _%g4491244948%_)
                      (let ((_%e4491544951%_ (gx#syntax-e _%g4491244948%_)))
                        (let ((_%hd4491644955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4491544951%_)))
                              (_%tl4491744958%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4491544951%_))))
                          (if (gx#stx-pair? _%tl4491744958%_)
                              (let ((_%e4491844961%_
                                     (gx#syntax-e _%tl4491744958%_)))
                                (let ((_%hd4491944965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4491844961%_)))
                                      (_%tl4492044968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4491844961%_))))
                                  (if (gx#stx-pair/null? _%hd4491944965%_)
                                      (let ((_g45829_
                                             (gx#syntax-split-splice
                                              _%hd4491944965%_
                                              '0)))
                                        (begin
                                          (let ((_g45830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45829_)
                                                       (##values-length
                                                        _g45829_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45830_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45830_)))
                                          (let ((_%target4492144971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45829_ 0)))
                                                (_%tl4492344974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45829_ 1))))
                                            (if (gx#stx-null? _%tl4492344974%_)
                                                (letrec ((_%loop4492444977%_
                                                          (lambda (_%hd4492244981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4492844984%_)
                    (if (gx#stx-pair? _%hd4492244981%_)
                        (let ((_%e4492544986%_ (gx#syntax-e _%hd4492244981%_)))
                          (let ((_%lp-hd4492644990%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4492544986%_)))
                                (_%lp-tl4492744993%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4492544986%_))))
                            (_%loop4492444977%_
                             _%lp-tl4492744993%_
                             (cons _%lp-hd4492644990%_ _%clause4492844984%_))))
                        (let ((_%clause4492944996%_
                               (reverse _%clause4492844984%_)))
                          (if (gx#stx-pair/null? _%tl4492044968%_)
                              (let ((_g45831_
                                     (gx#syntax-split-splice
                                      _%tl4492044968%_
                                      '0)))
                                (begin
                                  (let ((_g45832_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45831_)
                                               (##values-length _g45831_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45832_ 2)))
                                        (error "Context expects 2 values"
                                               _g45832_)))
                                  (let ((_%target4493044999%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45831_ 0)))
                                        (_%tl4493245002%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45831_ 1))))
                                    (if (gx#stx-null? _%tl4493245002%_)
                                        (letrec ((_%loop4493345005%_
                                                  (lambda (_%hd4493145009%_
                                                           _%body4493745012%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4493145009%_)
                                                        (let ((_%e4493445014%_
                                                               (gx#syntax-e
                                                                _%hd4493145009%_)))
                                                          (let ((_%lp-hd4493545018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4493445014%_)))
                        (_%lp-tl4493645021%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4493445014%_))))
                    (_%loop4493345005%_
                     _%lp-tl4493645021%_
                     (cons _%lp-hd4493545018%_ _%body4493745012%_))))
                (let ((_%body4493845024%_ (reverse _%body4493745012%_)))
                  ((lambda (_%g4491345027%_ _%g4491445029%_)
                     (let* ((_%g4505145068%_
                             (lambda (_%g4505245064%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4505245064%_)))
                            (_%g4505045135%_
                             (lambda (_%g4505245072%_)
                               (if (gx#stx-pair/null? _%g4505245072%_)
                                   (let ((_g45833_
                                          (gx#syntax-split-splice
                                           _%g4505245072%_
                                           '0)))
                                     (begin
                                       (let ((_g45834_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g45833_)
                                                    (##values-length _g45833_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g45834_ 2)))
                                             (error "Context expects 2 values"
                                                    _g45834_)))
                                       (let ((_%target4505445075%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45833_ 0)))
                                             (_%tl4505645078%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g45833_ 1))))
                                         (if (gx#stx-null? _%tl4505645078%_)
                                             (letrec ((_%loop4505745081%_
                                                       (lambda (_%hd4505545085%_
                                                                _%clause4506145088%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4505545085%_)
                                                             (let ((_%e4505845090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4505545085%_)))
                       (let ((_%lp-hd4505945094%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4505845090%_)))
                             (_%lp-tl4506045097%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4505845090%_))))
                         (_%loop4505745081%_
                          _%lp-tl4506045097%_
                          (cons _%lp-hd4505945094%_ _%clause4506145088%_))))
                     (let ((_%clause4506245100%_
                            (reverse _%clause4506145088%_)))
                       ((lambda (_%g4505345103%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%g4511845123%_
                                                      _%g4511945126%_)
                                               (cons _%g4511845123%_
                                                     _%g4511945126%_))
                                             '()
                                             _%g4505345103%_)
                                      (foldr (lambda (_%g4512045129%_
                                                      _%g4512145132%_)
                                               (cons _%g4512045129%_
                                                     _%g4512145132%_))
                                             '()
                                             _%g4491345027%_))))
                        _%clause4506245100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4505745081%_
                                                _%target4505445075%_
                                                '()))
                                             (_%g4505145068%_
                                              _%g4505245072%_)))))
                                   (_%g4505145068%_ _%g4505245072%_)))))
                       (_%g4505045135%_
                        (map (lambda (_%clause45139%_)
                               (let* ((_%__stx4576645767%_ _%clause45139%_)
                                      (_%g4514345182%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4576645767%_))))
                                 (let ((_%__kont4576945770%_
                                        (lambda (_%g4514545315%_
                                                 _%g4514645317%_)
                                          (cons _%g4514645317%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-temp)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g4514545315%_ '()))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%__kont4577145772%_
                                        (lambda (_%g4515945237%_
                                                 _%g4516045239%_
                                                 _%g4516145240%_)
                                          (cons _%g4516145240%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-identifier)
                                                            (cons _%g4516045239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g4525945262%_ _%g4526045265%_)
                                   (cons _%g4525945262%_ _%g4526045265%_))
                                 '()
                                 _%g4515945237%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4582745828%_
                                           (lambda (_%e4516245189%_
                                                    _%hd4516345193%_
                                                    _%tl4516445196%_
                                                    _%e4516545199%_
                                                    _%hd4516645203%_
                                                    _%tl4516745206%_
                                                    _%__splice4577345774%_
                                                    _%target4516845209%_
                                                    _%tl4517045212%_)
                                             (letrec ((_%loop4517145215%_
                                                       (lambda (_%hd4516945219%_
                                                                _%components4517545222%_)
                                                         (if (gx#stx-pair?
                                                              _%hd4516945219%_)
                                                             (let ((_%e4517245224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd4516945219%_)))
                       (let ((_%lp-tl4517445231%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e4517245224%_)))
                             (_%lp-hd4517345228%_
                              (let ()
                                (declare (not safe))
                                (##car _%e4517245224%_))))
                         (_%loop4517145215%_
                          _%lp-tl4517445231%_
                          (cons _%lp-hd4517345228%_
                                _%components4517545222%_))))
                     (let ((_%components4517645234%_
                            (reverse _%components4517545222%_)))
                       (let ((_%g4515945237%_ _%components4517645234%_)
                             (_%g4516045239%_ _%hd4516645203%_)
                             (_%g4516145240%_ _%hd4516345193%_))
                         (if (gx#identifier? _%g4516145240%_)
                             (_%__kont4577145772%_
                              _%g4515945237%_
                              _%g4516045239%_
                              _%g4516145240%_)
                             (let ()
                               (declare (not safe))
                               (_%g4514345182%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop4517145215%_
                                                _%target4516845209%_
                                                '()))))
                                          (_%__match4580745808%_
                                           (lambda (_%e4514745275%_
                                                    _%hd4514845279%_
                                                    _%tl4514945282%_
                                                    _%e4515045285%_
                                                    _%hd4515145289%_
                                                    _%tl4515245292%_
                                                    _%e4515345295%_
                                                    _%hd4515445299%_
                                                    _%tl4515545302%_
                                                    _%e4515645305%_
                                                    _%hd4515745309%_
                                                    _%tl4515845312%_)
                                             (let ((_%g4514545315%_
                                                    _%hd4515745309%_)
                                                   (_%g4514645317%_
                                                    _%hd4514845279%_))
                                               (if (and (gx#identifier?
                                                         _%g4514645317%_)
                                                        (gx#identifier?
                                                         _%g4514545315%_))
                                                   (_%__kont4576945770%_
                                                    _%g4514545315%_
                                                    _%g4514645317%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4515245292%_)
                                                       (let ((_%__splice4577345774%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4515245292%_
                                                               '0)))
                                                         (let ((_%tl4517045212%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4577345774%_ '1)))
                       (_%target4516845209%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4577345774%_ '0))))
                   (if (gx#stx-null? _%tl4517045212%_)
                       (_%__match4582745828%_
                        _%e4514745275%_
                        _%hd4514845279%_
                        _%tl4514945282%_
                        _%e4515045285%_
                        _%hd4515145289%_
                        _%tl4515245292%_
                        _%__splice4577345774%_
                        _%target4516845209%_
                        _%tl4517045212%_)
                       (let () (declare (not safe)) (_%g4514345182%_)))))
               (let () (declare (not safe)) (_%g4514345182%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (gx#stx-pair? _%__stx4576645767%_)
                                         (let ((_%e4514745275%_
                                                (gx#syntax-e
                                                 _%__stx4576645767%_)))
                                           (let ((_%tl4514945282%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4514745275%_)))
                                                 (_%hd4514845279%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4514745275%_))))
                                             (if (gx#stx-pair?
                                                  _%tl4514945282%_)
                                                 (let ((_%e4515045285%_
                                                        (gx#syntax-e
                                                         _%tl4514945282%_)))
                                                   (let ((_%tl4515245292%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e4515045285%_)))
                                                         (_%hd4515145289%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e4515045285%_))))
                                                     (if (gx#stx-pair?
                                                          _%hd4515145289%_)
                                                         (let ((_%e4515345295%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd4515145289%_)))
                   (let ((_%tl4515545302%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4515345295%_)))
                         (_%hd4515445299%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4515345295%_))))
                     (if (gx#identifier? _%hd4515445299%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-syntax-sugar[1]#_g45835_|
                              _%hd4515445299%_)
                             (if (gx#stx-pair? _%tl4515545302%_)
                                 (let ((_%e4515645305%_
                                        (gx#syntax-e _%tl4515545302%_)))
                                   (let ((_%tl4515845312%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4515645305%_)))
                                         (_%hd4515745309%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4515645305%_))))
                                     (if (gx#stx-null? _%tl4515845312%_)
                                         (if (gx#stx-null? _%tl4515245292%_)
                                             (_%__match4580745808%_
                                              _%e4514745275%_
                                              _%hd4514845279%_
                                              _%tl4514945282%_
                                              _%e4515045285%_
                                              _%hd4515145289%_
                                              _%tl4515245292%_
                                              _%e4515345295%_
                                              _%hd4515445299%_
                                              _%tl4515545302%_
                                              _%e4515645305%_
                                              _%hd4515745309%_
                                              _%tl4515845312%_)
                                             (if (gx#stx-pair/null?
                                                  _%tl4515245292%_)
                                                 (let ((_%__splice4577345774%_
                                                        (gx#syntax-split-splice->vector
                                                         _%tl4515245292%_
                                                         '0)))
                                                   (let ((_%tl4517045212%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4577345774%_
                                                             '1)))
                                                         (_%target4516845209%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4577345774%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%tl4517045212%_)
                                                         (_%__match4582745828%_
                                                          _%e4514745275%_
                                                          _%hd4514845279%_
                                                          _%tl4514945282%_
                                                          _%e4515045285%_
                                                          _%hd4515145289%_
                                                          _%tl4515245292%_
                                                          _%__splice4577345774%_
                                                          _%target4516845209%_
                                                          _%tl4517045212%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%g4514345182%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4514345182%_))))
                                         (if (gx#stx-pair/null?
                                              _%tl4515245292%_)
                                             (let ((_%__splice4577345774%_
                                                    (gx#syntax-split-splice->vector
                                                     _%tl4515245292%_
                                                     '0)))
                                               (let ((_%tl4517045212%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4577345774%_
                                                         '1)))
                                                     (_%target4516845209%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4577345774%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%tl4517045212%_)
                                                     (_%__match4582745828%_
                                                      _%e4514745275%_
                                                      _%hd4514845279%_
                                                      _%tl4514945282%_
                                                      _%e4515045285%_
                                                      _%hd4515145289%_
                                                      _%tl4515245292%_
                                                      _%__splice4577345774%_
                                                      _%target4516845209%_
                                                      _%tl4517045212%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g4514345182%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g4514345182%_))))))
                                 (if (gx#stx-pair/null? _%tl4515245292%_)
                                     (let ((_%__splice4577345774%_
                                            (gx#syntax-split-splice->vector
                                             _%tl4515245292%_
                                             '0)))
                                       (let ((_%tl4517045212%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4577345774%_
                                                 '1)))
                                             (_%target4516845209%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4577345774%_
                                                 '0))))
                                         (if (gx#stx-null? _%tl4517045212%_)
                                             (_%__match4582745828%_
                                              _%e4514745275%_
                                              _%hd4514845279%_
                                              _%tl4514945282%_
                                              _%e4515045285%_
                                              _%hd4515145289%_
                                              _%tl4515245292%_
                                              _%__splice4577345774%_
                                              _%target4516845209%_
                                              _%tl4517045212%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4514345182%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g4514345182%_))))
                             (if (gx#stx-pair/null? _%tl4515245292%_)
                                 (let ((_%__splice4577345774%_
                                        (gx#syntax-split-splice->vector
                                         _%tl4515245292%_
                                         '0)))
                                   (let ((_%tl4517045212%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4577345774%_
                                             '1)))
                                         (_%target4516845209%_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref
                                             _%__splice4577345774%_
                                             '0))))
                                     (if (gx#stx-null? _%tl4517045212%_)
                                         (_%__match4582745828%_
                                          _%e4514745275%_
                                          _%hd4514845279%_
                                          _%tl4514945282%_
                                          _%e4515045285%_
                                          _%hd4515145289%_
                                          _%tl4515245292%_
                                          _%__splice4577345774%_
                                          _%target4516845209%_
                                          _%tl4517045212%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g4514345182%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g4514345182%_))))
                         (if (gx#stx-pair/null? _%tl4515245292%_)
                             (let ((_%__splice4577345774%_
                                    (gx#syntax-split-splice->vector
                                     _%tl4515245292%_
                                     '0)))
                               (let ((_%tl4517045212%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4577345774%_
                                         '1)))
                                     (_%target4516845209%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4577345774%_
                                         '0))))
                                 (if (gx#stx-null? _%tl4517045212%_)
                                     (_%__match4582745828%_
                                      _%e4514745275%_
                                      _%hd4514845279%_
                                      _%tl4514945282%_
                                      _%e4515045285%_
                                      _%hd4515145289%_
                                      _%tl4515245292%_
                                      _%__splice4577345774%_
                                      _%target4516845209%_
                                      _%tl4517045212%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g4514345182%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g4514345182%_))))))
                 (if (gx#stx-pair/null? _%tl4515245292%_)
                     (let ((_%__splice4577345774%_
                            (gx#syntax-split-splice->vector
                             _%tl4515245292%_
                             '0)))
                       (let ((_%tl4517045212%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4577345774%_ '1)))
                             (_%target4516845209%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4577345774%_ '0))))
                         (if (gx#stx-null? _%tl4517045212%_)
                             (_%__match4582745828%_
                              _%e4514745275%_
                              _%hd4514845279%_
                              _%tl4514945282%_
                              _%e4515045285%_
                              _%hd4515145289%_
                              _%tl4515245292%_
                              _%__splice4577345774%_
                              _%target4516845209%_
                              _%tl4517045212%_)
                             (let () (declare (not safe)) (_%g4514345182%_)))))
                     (let () (declare (not safe)) (_%g4514345182%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g4514345182%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g4514345182%_)))))))
                             (foldr (lambda (_%g4533745340%_ _%g4533845343%_)
                                      (cons _%g4533745340%_ _%g4533845343%_))
                                    '()
                                    _%g4491445029%_)))))
                   _%body4493845024%_
                   _%clause4492944996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4493345005%_
                                           _%target4493044999%_
                                           '()))
                                        (_%g4491144944%_ _%g4491244948%_)))))
                              (_%g4491144944%_ _%g4491244948%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4492444977%_
                                                   _%target4492144971%_
                                                   '()))
                                                (_%g4491144944%_
                                                 _%g4491244948%_)))))
                                      (_%g4491144944%_ _%g4491244948%_))))
                              (_%g4491144944%_ _%g4491244948%_))))
                      (_%g4491144944%_ _%g4491244948%_)))))
          (_%g4491045346%_ _%stx44908%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx45354%_)
        (let* ((_%g4535845395%_
                (lambda (_%g4535945391%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4535945391%_)))
               (_%g4535745532%_
                (lambda (_%g4535945399%_)
                  (if (gx#stx-pair? _%g4535945399%_)
                      (let ((_%e4536345402%_ (gx#syntax-e _%g4535945399%_)))
                        (let ((_%hd4536445406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4536345402%_)))
                              (_%tl4536545409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4536345402%_))))
                          (if (gx#stx-pair? _%tl4536545409%_)
                              (let ((_%e4536645412%_
                                     (gx#syntax-e _%tl4536545409%_)))
                                (let ((_%hd4536745416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4536645412%_)))
                                      (_%tl4536845419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4536645412%_))))
                                  (if (gx#stx-pair? _%hd4536745416%_)
                                      (let ((_%e4536945422%_
                                             (gx#syntax-e _%hd4536745416%_)))
                                        (let ((_%hd4537045426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4536945422%_)))
                                              (_%tl4537145429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4536945422%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4537145429%_)
                                              (let ((_g45836_
                                                     (gx#syntax-split-splice
                                                      _%tl4537145429%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45837_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45836_)
                                                               (##values-length
                                                                _g45836_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45837_ 2)))
                (error "Context expects 2 values" _g45837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4537245432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45836_
                                                            0)))
                                                        (_%tl4537445435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45836_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4537445435%_)
                                                        (letrec ((_%loop4537545438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4537345442%_ _%components4537945445%_)
                            (if (gx#stx-pair? _%hd4537345442%_)
                                (let ((_%e4537645447%_
                                       (gx#syntax-e _%hd4537345442%_)))
                                  (let ((_%lp-hd4537745451%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4537645447%_)))
                                        (_%lp-tl4537845454%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4537645447%_))))
                                    (_%loop4537545438%_
                                     _%lp-tl4537845454%_
                                     (cons _%lp-hd4537745451%_
                                           _%components4537945445%_))))
                                (let ((_%components4538045457%_
                                       (reverse _%components4537945445%_)))
                                  (if (gx#stx-pair/null? _%tl4536845419%_)
                                      (let ((_g45838_
                                             (gx#syntax-split-splice
                                              _%tl4536845419%_
                                              '0)))
                                        (begin
                                          (let ((_g45839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45838_)
                                                       (##values-length
                                                        _g45838_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45839_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45839_)))
                                          (let ((_%target4538145460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45838_ 0)))
                                                (_%tl4538345463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45838_ 1))))
                                            (if (gx#stx-null? _%tl4538345463%_)
                                                (letrec ((_%loop4538445466%_
                                                          (lambda (_%hd4538245470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4538845473%_)
                    (if (gx#stx-pair? _%hd4538245470%_)
                        (let ((_%e4538545475%_ (gx#syntax-e _%hd4538245470%_)))
                          (let ((_%lp-hd4538645479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4538545475%_)))
                                (_%lp-tl4538745482%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4538545475%_))))
                            (_%loop4538445466%_
                             _%lp-tl4538745482%_
                             (cons _%lp-hd4538645479%_ _%body4538845473%_))))
                        (let ((_%body4538945485%_
                               (reverse _%body4538845473%_)))
                          ((lambda (_%g4536045488%_
                                    _%g4536145490%_
                                    _%g4536245491%_)
                             (if (gx#identifier? _%g4536245491%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%g4536245491%_
                                                         (foldr (lambda (_%g4551545520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4551645523%_)
                          (cons _%g4551545520%_ _%g4551645523%_))
                        '()
                        _%g4536145490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%g4551745526%_
                                                             _%g4551845529%_)
                                                      (cons _%g4551745526%_
                                                            _%g4551845529%_))
                                                    '()
                                                    _%g4536045488%_)))
                                 (_%g4535845395%_ _%g4535945399%_)))
                           _%body4538945485%_
                           _%components4538045457%_
                           _%hd4537045426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4538445466%_
                                                   _%target4538145460%_
                                                   '()))
                                                (_%g4535845395%_
                                                 _%g4535945399%_)))))
                                      (_%g4535845395%_ _%g4535945399%_)))))))
                  (_%loop4537545438%_ _%target4537245432%_ '()))
                (_%g4535845395%_ _%g4535945399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4535845395%_
                                               _%g4535945399%_))))
                                      (_%g4535845395%_ _%g4535945399%_))))
                              (_%g4535845395%_ _%g4535945399%_))))
                      (_%g4535845395%_ _%g4535945399%_)))))
          (_%g4535745532%_ _%$stx45354%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#defsyntax-case|
      (lambda (_%stx45538%_)
        (let* ((_%g4554145578%_
                (lambda (_%g4554245574%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4554245574%_)))
               (_%g4554045746%_
                (lambda (_%g4554245582%_)
                  (if (gx#stx-pair? _%g4554245582%_)
                      (let ((_%e4554645585%_ (gx#syntax-e _%g4554245582%_)))
                        (let ((_%hd4554745589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4554645585%_)))
                              (_%tl4554845592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4554645585%_))))
                          (if (gx#stx-pair? _%tl4554845592%_)
                              (let ((_%e4554945595%_
                                     (gx#syntax-e _%tl4554845592%_)))
                                (let ((_%hd4555045599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4554945595%_)))
                                      (_%tl4555145602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4554945595%_))))
                                  (if (gx#stx-pair? _%tl4555145602%_)
                                      (let ((_%e4555245605%_
                                             (gx#syntax-e _%tl4555145602%_)))
                                        (let ((_%hd4555345609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4555245605%_)))
                                              (_%tl4555445612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4555245605%_))))
                                          (if (gx#stx-pair/null?
                                               _%hd4555345609%_)
                                              (let ((_g45840_
                                                     (gx#syntax-split-splice
                                                      _%hd4555345609%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45840_)
                                                               (##values-length
                                                                _g45840_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45841_ 2)))
                (error "Context expects 2 values" _g45841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4555545615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45840_
                                                            0)))
                                                        (_%tl4555745618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45840_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4555745618%_)
                                                        (letrec ((_%loop4555845621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4555645625%_ _%lit4556245628%_)
                            (if (gx#stx-pair? _%hd4555645625%_)
                                (let ((_%e4555945630%_
                                       (gx#syntax-e _%hd4555645625%_)))
                                  (let ((_%lp-hd4556045634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4555945630%_)))
                                        (_%lp-tl4556145637%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4555945630%_))))
                                    (_%loop4555845621%_
                                     _%lp-tl4556145637%_
                                     (cons _%lp-hd4556045634%_
                                           _%lit4556245628%_))))
                                (let ((_%lit4556345640%_
                                       (reverse _%lit4556245628%_)))
                                  (if (gx#stx-pair/null? _%tl4555445612%_)
                                      (let ((_g45842_
                                             (gx#syntax-split-splice
                                              _%tl4555445612%_
                                              '0)))
                                        (begin
                                          (let ((_g45843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45842_)
                                                       (##values-length
                                                        _g45842_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45843_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45843_)))
                                          (let ((_%target4556445643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45842_ 0)))
                                                (_%tl4556645646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45842_ 1))))
                                            (if (gx#stx-null? _%tl4556645646%_)
                                                (letrec ((_%loop4556745649%_
                                                          (lambda (_%hd4556545653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4557145656%_)
                    (if (gx#stx-pair? _%hd4556545653%_)
                        (let ((_%e4556845658%_ (gx#syntax-e _%hd4556545653%_)))
                          (let ((_%lp-hd4556945662%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4556845658%_)))
                                (_%lp-tl4557045665%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4556845658%_))))
                            (_%loop4556745649%_
                             _%lp-tl4557045665%_
                             (cons _%lp-hd4556945662%_ _%clause4557145656%_))))
                        (let ((_%clause4557245668%_
                               (reverse _%clause4557145656%_)))
                          ((lambda (_%g4554345671%_
                                    _%g4554445673%_
                                    _%g4554545674%_)
                             (let* ((_%g4569945707%_
                                     (lambda (_%g4570045703%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4570045703%_)))
                                    (_%g4569845742%_
                                     (lambda (_%g4570045711%_)
                                       ((lambda (_%g4570145714%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%g4554545674%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _%g4570145714%_ '())
                                (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                            (cons _%g4570145714%_
                                                  (cons (foldr (lambda (_%g4572545730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g4572645733%_)
                         (cons _%g4572545730%_ _%g4572645733%_))
                       '()
                       _%g4554445673%_)
                (foldr (lambda (_%g4572745736%_ _%g4572845739%_)
                         (cons _%g4572745736%_ _%g4572845739%_))
                       '()
                       _%g4554345671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g4570045711%_))))
                               (_%g4569845742%_
                                (gx#syntax-local-introduce 'stx))))
                           _%clause4557245668%_
                           _%lit4556345640%_
                           _%hd4555045599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4556745649%_
                                                   _%target4556445643%_
                                                   '()))
                                                (_%g4554145578%_
                                                 _%g4554245582%_)))))
                                      (_%g4554145578%_ _%g4554245582%_)))))))
                  (_%loop4555845621%_ _%target4555545615%_ '()))
                (_%g4554145578%_ _%g4554245582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4554145578%_
                                               _%g4554245582%_))))
                                      (_%g4554145578%_ _%g4554245582%_))))
                              (_%g4554145578%_ _%g4554245582%_))))
                      (_%g4554145578%_ _%g4554245582%_)))))
          (_%g4554045746%_ _%stx45538%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx45752%_)
        (let ((_%g4575545762%_
               (lambda (_%g4575645758%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4575645758%_))))
          (_%g4575545762%_ _%$stx45752%_))))))
