(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g449311_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449318_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449320_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449322_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449324_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449326_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449338_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449340_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449342_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449344_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g449346_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx442769%_)
        (let* ((_%g442773442791%_
                (lambda (_%g442774442787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g442774442787%_))))
               (_%g442772442846%_
                (lambda (_%g442774442795%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g442774442795%_))
                      (let ((_%e442777442798%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g442774442795%_))))
                        (let ((_%hd442778442802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e442777442798%_)))
                              (_%tl442779442805%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e442777442798%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl442779442805%_))
                              (let ((_%e442780442808%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl442779442805%_))))
                                (let ((_%hd442781442812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e442780442808%_)))
                                      (_%tl442782442815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e442780442808%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl442782442815%_))
                                      (let ((_%e442783442818%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl442782442815%_))))
                                        (let ((_%hd442784442822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e442783442818%_)))
                                              (_%tl442785442825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e442783442818%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl442785442825%_))
                                              ((lambda (_%g442775442828%_
                                                        _%g442776442830%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g442776442830%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g442776442830%_ '()))
                         (cons _%g442775442828%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g442773442791%_
                                                      _%g442774442795%_)))
                                               _%hd442784442822%_
                                               _%hd442781442812%_)
                                              (_%g442773442791%_
                                               _%g442774442795%_))))
                                      (_%g442773442791%_ _%g442774442795%_))))
                              (_%g442773442791%_ _%g442774442795%_))))
                      (_%g442773442791%_ _%g442774442795%_)))))
          (_%g442772442846%_ _%$stx442769%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx442850%_)
        (let* ((_%g442854442872%_
                (lambda (_%g442855442868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g442855442868%_))))
               (_%g442853442927%_
                (lambda (_%g442855442876%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g442855442876%_))
                      (let ((_%e442858442879%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g442855442876%_))))
                        (let ((_%hd442859442883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e442858442879%_)))
                              (_%tl442860442886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e442858442879%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl442860442886%_))
                              (let ((_%e442861442889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl442860442886%_))))
                                (let ((_%hd442862442893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e442861442889%_)))
                                      (_%tl442863442896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e442861442889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl442863442896%_))
                                      (let ((_%e442864442899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl442863442896%_))))
                                        (let ((_%hd442865442903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e442864442899%_)))
                                              (_%tl442866442906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e442864442899%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl442866442906%_))
                                              ((lambda (_%g442856442909%_
                                                        _%g442857442911%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%g442857442911%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g442857442911%_ '()))
                         (cons _%g442856442909%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g442854442872%_
                                                      _%g442855442876%_)))
                                               _%hd442865442903%_
                                               _%hd442862442893%_)
                                              (_%g442854442872%_
                                               _%g442855442876%_))))
                                      (_%g442854442872%_ _%g442855442876%_))))
                              (_%g442854442872%_ _%g442855442876%_))))
                      (_%g442854442872%_ _%g442855442876%_)))))
          (_%g442853442927%_ _%$stx442850%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx442931%_)
        (let* ((_%g442935442964%_
                (lambda (_%g442936442960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g442936442960%_))))
               (_%g442934443060%_
                (lambda (_%g442936442968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g442936442968%_))
                      (let ((_%e442939442971%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g442936442968%_))))
                        (let ((_%hd442940442975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e442939442971%_)))
                              (_%tl442941442978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e442939442971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl442941442978%_))
                              (let ((_g449289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl442941442978%_
                                        '0))))
                                (begin
                                  (let ((_g449290_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g449289_)
                                               (##values-length _g449289_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g449290_ 2)))
                                        (error "Context expects 2 values"
                                               _g449290_)))
                                  (let ((_%target442942442981%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449289_ 0)))
                                        (_%tl442944442984%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449289_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl442944442984%_))
                                        (letrec ((_%loop442945442987%_
                                                  (lambda (_%hd442943442991%_
                                                           _%type442949442994%_
                                                           _%symbol442950442995%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd442943442991%_))
                                                        (let ((_%e442946442997%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd442943442991%_))))
                  (let ((_%lp-hd442947443001%_
                         (let ()
                           (declare (not safe))
                           (##car _%e442946442997%_)))
                        (_%lp-tl442948443004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e442946442997%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd442947443001%_))
                        (let ((_%e442953443007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd442947443001%_))))
                          (let ((_%hd442954443011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e442953443007%_)))
                                (_%tl442955443014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e442953443007%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl442955443014%_))
                                (let ((_%e442956443017%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl442955443014%_))))
                                  (let ((_%hd442957443021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e442956443017%_)))
                                        (_%tl442958443024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e442956443017%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl442958443024%_))
                                        (_%loop442945442987%_
                                         _%lp-tl442948443004%_
                                         (cons _%hd442957443021%_
                                               _%type442949442994%_)
                                         (cons _%hd442954443011%_
                                               _%symbol442950442995%_))
                                        (_%g442935442964%_
                                         _%g442936442968%_))))
                                (_%g442935442964%_ _%g442936442968%_))))
                        (_%g442935442964%_ _%g442936442968%_))))
                (let ((_%type442951443027%_ (reverse _%type442949442994%_))
                      (_%symbol442952443029%_
                       (reverse _%symbol442950442995%_)))
                  ((lambda (_%g442937443031%_ _%g442938443033%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g442937443031%_
                                _%g442938443033%_))
                             (let ((__tmp449291
                                    (lambda (_%g443048443052%_
                                             _%g443049443055%_
                                             _%g443050443057%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g443049443055%_
                                                        (cons _%g443048443052%_
                                                              '())))
                                            _%g443050443057%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp449291
                                '()
                                _%g442937443031%_
                                _%g442938443033%_)))))
                   _%type442951443027%_
                   _%symbol442952443029%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop442945442987%_
                                           _%target442942442981%_
                                           '()
                                           '()))
                                        (_%g442935442964%_
                                         _%g442936442968%_)))))
                              (_%g442935442964%_ _%g442936442968%_))))
                      (_%g442935442964%_ _%g442936442968%_)))))
          (_%g442934443060%_ _%$stx442931%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx443065%_)
        (let* ((_%__stx448600448601%_ _%$stx443065%_)
               (_%g443070443112%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx448600448601%_)))))
          (let ((_%__kont448603448604%_
                 (lambda (_%g443072443240%_
                          _%g443073443242%_
                          _%g443074443243%_
                          _%g443075443244%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g443075443244%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g443074443243%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g443073443242%_ '()))
                                           (cons _%g443072443240%_ '())))))))
                (_%__kont448605448606%_
                 (lambda (_%g443091443159%_
                          _%g443092443161%_
                          _%g443093443162%_
                          _%g443094443163%_)
                   (cons _%g443094443163%_
                         (cons _%g443093443162%_
                               (cons _%g443092443161%_
                                     (cons _%g443091443159%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match448639448640%_
                   (lambda (_%e443076443190%_
                            _%hd443077443194%_
                            _%tl443078443197%_
                            _%e443079443200%_
                            _%hd443080443204%_
                            _%tl443081443207%_
                            _%e443082443210%_
                            _%hd443083443214%_
                            _%tl443084443217%_
                            _%e443085443220%_
                            _%hd443086443224%_
                            _%tl443087443227%_
                            _%e443088443230%_
                            _%hd443089443234%_
                            _%tl443090443237%_)
                     (let ((_%g443072443240%_ _%hd443089443234%_)
                           (_%g443073443242%_ _%hd443086443224%_)
                           (_%g443074443243%_ _%hd443083443214%_)
                           (_%g443075443244%_ _%hd443080443204%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g443075443244%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g443074443243%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g443073443242%_)))
                           (_%__kont448603448604%_
                            _%g443072443240%_
                            _%g443073443242%_
                            _%g443074443243%_
                            _%g443075443244%_)
                           (let ()
                             (declare (not safe))
                             (_%g443070443112%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx448600448601%_))
                  (let ((_%e443076443190%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx448600448601%_))))
                    (let ((_%tl443078443197%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e443076443190%_)))
                          (_%hd443077443194%_
                           (let ()
                             (declare (not safe))
                             (##car _%e443076443190%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl443078443197%_))
                          (let ((_%e443079443200%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl443078443197%_))))
                            (let ((_%tl443081443207%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e443079443200%_)))
                                  (_%hd443080443204%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e443079443200%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl443081443207%_))
                                  (let ((_%e443082443210%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl443081443207%_))))
                                    (let ((_%tl443084443217%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e443082443210%_)))
                                          (_%hd443083443214%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e443082443210%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl443084443217%_))
                                          (let ((_%e443085443220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl443084443217%_))))
                                            (let ((_%tl443087443227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e443085443220%_)))
                                                  (_%hd443086443224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e443085443220%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl443087443227%_))
                                                  (let ((_%e443088443230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl443087443227%_))))
                                                    (let ((_%tl443090443237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e443088443230%_)))
                                                          (_%hd443089443234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e443088443230%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl443090443237%_))
                                                          (_%__match448639448640%_
                                                           _%e443076443190%_
                                                           _%hd443077443194%_
                                                           _%tl443078443197%_
                                                           _%e443079443200%_
                                                           _%hd443080443204%_
                                                           _%tl443081443207%_
                                                           _%e443082443210%_
                                                           _%hd443083443214%_
                                                           _%tl443084443217%_
                                                           _%e443085443220%_
                                                           _%hd443086443224%_
                                                           _%tl443087443227%_
                                                           _%e443088443230%_
                                                           _%hd443089443234%_
                                                           _%tl443090443237%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g443070443112%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl443087443227%_))
                                                      (_%__kont448605448606%_
                                                       _%hd443086443224%_
                                                       _%hd443083443214%_
                                                       _%hd443080443204%_
                                                       _%hd443077443194%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g443070443112%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g443070443112%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g443070443112%_)))))
                          (let () (declare (not safe)) (_%g443070443112%_)))))
                  (let () (declare (not safe)) (_%g443070443112%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx443269%_)
        (let* ((_%g443273443308%_
                (lambda (_%g443274443304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g443274443304%_))))
               (_%g443272443421%_
                (lambda (_%g443274443312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g443274443312%_))
                      (let ((_%e443278443315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g443274443312%_))))
                        (let ((_%hd443279443319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443278443315%_)))
                              (_%tl443280443322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443278443315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl443280443322%_))
                              (let ((_g449292_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl443280443322%_
                                        '0))))
                                (begin
                                  (let ((_g449293_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g449292_)
                                               (##values-length _g449292_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g449293_ 2)))
                                        (error "Context expects 2 values"
                                               _g449293_)))
                                  (let ((_%target443281443325%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449292_ 0)))
                                        (_%tl443283443328%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449292_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl443283443328%_))
                                        (letrec ((_%loop443284443331%_
                                                  (lambda (_%hd443282443335%_
                                                           _%symbol443288443338%_
                                                           _%method443289443339%_
                                                           _%type-t443290443340%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd443282443335%_))
                                                        (let ((_%e443285443342%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd443282443335%_))))
                  (let ((_%lp-hd443286443346%_
                         (let ()
                           (declare (not safe))
                           (##car _%e443285443342%_)))
                        (_%lp-tl443287443349%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e443285443342%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd443286443346%_))
                        (let ((_%e443294443352%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd443286443346%_))))
                          (let ((_%hd443295443356%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e443294443352%_)))
                                (_%tl443296443359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e443294443352%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl443296443359%_))
                                (let ((_%e443297443362%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl443296443359%_))))
                                  (let ((_%hd443298443366%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e443297443362%_)))
                                        (_%tl443299443369%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e443297443362%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl443299443369%_))
                                        (let ((_%e443300443372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl443299443369%_))))
                                          (let ((_%hd443301443376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e443300443372%_)))
                                                (_%tl443302443379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e443300443372%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl443302443379%_))
                                                (_%loop443284443331%_
                                                 _%lp-tl443287443349%_
                                                 (cons _%hd443301443376%_
                                                       _%symbol443288443338%_)
                                                 (cons _%hd443298443366%_
                                                       _%method443289443339%_)
                                                 (cons _%hd443295443356%_
                                                       _%type-t443290443340%_))
                                                (_%g443273443308%_
                                                 _%g443274443312%_))))
                                        (_%g443273443308%_
                                         _%g443274443312%_))))
                                (_%g443273443308%_ _%g443274443312%_))))
                        (_%g443273443308%_ _%g443274443312%_))))
                (let ((_%symbol443291443382%_ (reverse _%symbol443288443338%_))
                      (_%method443292443384%_ (reverse _%method443289443339%_))
                      (_%type-t443293443385%_
                       (reverse _%type-t443290443340%_)))
                  ((lambda (_%g443275443387%_
                            _%g443276443389%_
                            _%g443277443390%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g443275443387%_
                                _%g443276443389%_
                                _%g443277443390%_))
                             (let ((__tmp449294
                                    (lambda (_%g443406443411%_
                                             _%g443407443414%_
                                             _%g443408443416%_
                                             _%g443409443418%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g443408443416%_
                                                        (cons _%g443407443414%_
                                                              (cons _%g443406443411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g443409443418%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp449294
                                '()
                                _%g443275443387%_
                                _%g443276443389%_
                                _%g443277443390%_)))))
                   _%symbol443291443382%_
                   _%method443292443384%_
                   _%type-t443293443385%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop443284443331%_
                                           _%target443281443325%_
                                           '()
                                           '()
                                           '()))
                                        (_%g443273443308%_
                                         _%g443274443312%_)))))
                              (_%g443273443308%_ _%g443274443312%_))))
                      (_%g443273443308%_ _%g443274443312%_)))))
          (_%g443272443421%_ _%$stx443269%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx443426%_)
        (let* ((_%g443430443463%_
                (lambda (_%g443431443459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g443431443459%_))))
               (_%g443429443573%_
                (lambda (_%g443431443467%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g443431443467%_))
                      (let ((_%e443435443470%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g443431443467%_))))
                        (let ((_%hd443436443474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443435443470%_)))
                              (_%tl443437443477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443435443470%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443437443477%_))
                              (let ((_%e443438443480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443437443477%_))))
                                (let ((_%hd443439443484%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443438443480%_)))
                                      (_%tl443440443487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443438443480%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl443440443487%_))
                                      (let ((_g449295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl443440443487%_
                                                '0))))
                                        (begin
                                          (let ((_g449296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g449295_)
                                                       (##values-length
                                                        _g449295_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g449296_ 2)))
                                                (error "Context expects 2 values"
                                                       _g449296_)))
                                          (let ((_%target443441443490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g449295_ 0)))
                                                (_%tl443443443493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g449295_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl443443443493%_))
                                                (letrec ((_%loop443444443496%_
                                                          (lambda (_%hd443442443500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol443448443503%_
                           _%method443449443504%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd443442443500%_))
                        (let ((_%e443445443506%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd443442443500%_))))
                          (let ((_%lp-hd443446443510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e443445443506%_)))
                                (_%lp-tl443447443513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e443445443506%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd443446443510%_))
                                (let ((_%e443452443516%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd443446443510%_))))
                                  (let ((_%hd443453443520%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e443452443516%_)))
                                        (_%tl443454443523%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e443452443516%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl443454443523%_))
                                        (let ((_%e443455443526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl443454443523%_))))
                                          (let ((_%hd443456443530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e443455443526%_)))
                                                (_%tl443457443533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e443455443526%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl443457443533%_))
                                                (_%loop443444443496%_
                                                 _%lp-tl443447443513%_
                                                 (cons _%hd443456443530%_
                                                       _%symbol443448443503%_)
                                                 (cons _%hd443453443520%_
                                                       _%method443449443504%_))
                                                (_%g443430443463%_
                                                 _%g443431443467%_))))
                                        (_%g443430443463%_
                                         _%g443431443467%_))))
                                (_%g443430443463%_ _%g443431443467%_))))
                        (let ((_%symbol443450443536%_
                               (reverse _%symbol443448443503%_))
                              (_%method443451443538%_
                               (reverse _%method443449443504%_)))
                          ((lambda (_%g443432443540%_
                                    _%g443433443542%_
                                    _%g443434443543%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%g443432443540%_
                                        _%g443433443542%_))
                                     (let ((__tmp449297
                                            (lambda (_%g443561443565%_
                                                     _%g443562443568%_
                                                     _%g443563443570%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%g443434443543%_
                                                                (cons _%g443562443568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g443561443565%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g443563443570%_))))
                                       (declare (not safe))
                                       (foldr__1
                                        __tmp449297
                                        '()
                                        _%g443432443540%_
                                        _%g443433443542%_)))))
                           _%symbol443450443536%_
                           _%method443451443538%_
                           _%hd443439443484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop443444443496%_
                                                   _%target443441443490%_
                                                   '()
                                                   '()))
                                                (_%g443430443463%_
                                                 _%g443431443467%_)))))
                                      (_%g443430443463%_ _%g443431443467%_))))
                              (_%g443430443463%_ _%g443431443467%_))))
                      (_%g443430443463%_ _%g443431443467%_)))))
          (_%g443429443573%_ _%$stx443426%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx443578%_)
        (let* ((_%g443582443596%_
                (lambda (_%g443583443592%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g443583443592%_))))
               (_%g443581443637%_
                (lambda (_%g443583443600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g443583443600%_))
                      (let ((_%e443585443603%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g443583443600%_))))
                        (let ((_%hd443586443607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443585443603%_)))
                              (_%tl443587443610%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443585443603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443587443610%_))
                              (let ((_%e443588443613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443587443610%_))))
                                (let ((_%hd443589443617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443588443613%_)))
                                      (_%tl443590443620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443588443613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl443590443620%_))
                                      ((lambda (_%g443584443623%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g443584443623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd443589443617%_)
                                      (_%g443582443596%_ _%g443583443600%_))))
                              (_%g443582443596%_ _%g443583443600%_))))
                      (_%g443582443596%_ _%g443583443600%_)))))
          (_%g443581443637%_ _%$stx443578%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx443641%_)
        (let* ((_%g443645443699%_
                (lambda (_%g443646443695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g443646443695%_))))
               (_%g443644443880%_
                (lambda (_%g443646443703%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g443646443703%_))
                      (let ((_%e443658443706%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g443646443703%_))))
                        (let ((_%hd443659443710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443658443706%_)))
                              (_%tl443660443713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443658443706%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443660443713%_))
                              (let ((_%e443661443716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443660443713%_))))
                                (let ((_%hd443662443720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443661443716%_)))
                                      (_%tl443663443723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443661443716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl443663443723%_))
                                      (let ((_%e443664443726%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl443663443723%_))))
                                        (let ((_%hd443665443730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e443664443726%_)))
                                              (_%tl443666443733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e443664443726%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl443666443733%_))
                                              (let ((_%e443667443736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl443666443733%_))))
                                                (let ((_%hd443668443740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e443667443736%_)))
                                                      (_%tl443669443743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e443667443736%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl443669443743%_))
                                                      (let ((_%e443670443746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl443669443743%_))))
                (let ((_%hd443671443750%_
                       (let () (declare (not safe)) (##car _%e443670443746%_)))
                      (_%tl443672443753%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e443670443746%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl443672443753%_))
                      (let ((_%e443673443756%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl443672443753%_))))
                        (let ((_%hd443674443760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443673443756%_)))
                              (_%tl443675443763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443673443756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443675443763%_))
                              (let ((_%e443676443766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443675443763%_))))
                                (let ((_%hd443677443770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443676443766%_)))
                                      (_%tl443678443773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443676443766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl443678443773%_))
                                      (let ((_%e443679443776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl443678443773%_))))
                                        (let ((_%hd443680443780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e443679443776%_)))
                                              (_%tl443681443783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e443679443776%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl443681443783%_))
                                              (let ((_%e443682443786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl443681443783%_))))
                                                (let ((_%hd443683443790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e443682443786%_)))
                                                      (_%tl443684443793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e443682443786%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl443684443793%_))
                                                      (let ((_%e443685443796%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl443684443793%_))))
                (let ((_%hd443686443800%_
                       (let () (declare (not safe)) (##car _%e443685443796%_)))
                      (_%tl443687443803%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e443685443796%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl443687443803%_))
                      (let ((_%e443688443806%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl443687443803%_))))
                        (let ((_%hd443689443810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443688443806%_)))
                              (_%tl443690443813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443688443806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443690443813%_))
                              (let ((_%e443691443816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443690443813%_))))
                                (let ((_%hd443692443820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443691443816%_)))
                                      (_%tl443693443823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443691443816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl443693443823%_))
                                      ((lambda (_%g443647443826%_
                                                _%g443648443828%_
                                                _%g443649443829%_
                                                _%g443650443830%_
                                                _%g443651443831%_
                                                _%g443652443832%_
                                                _%g443653443833%_
                                                _%g443654443834%_
                                                _%g443655443835%_
                                                _%g443656443836%_
                                                _%g443657443837%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g443657443837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g443656443836%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%g443655443835%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g443654443834%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g443653443833%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g443652443832%_ '()))
                                           (cons _%g443651443831%_
                                                 (cons _%g443650443830%_
                                                       (cons _%g443649443829%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g443648443828%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g443647443826%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd443692443820%_
                                       _%hd443689443810%_
                                       _%hd443686443800%_
                                       _%hd443683443790%_
                                       _%hd443680443780%_
                                       _%hd443677443770%_
                                       _%hd443674443760%_
                                       _%hd443671443750%_
                                       _%hd443668443740%_
                                       _%hd443665443730%_
                                       _%hd443662443720%_)
                                      (_%g443645443699%_ _%g443646443703%_))))
                              (_%g443645443699%_ _%g443646443703%_))))
                      (_%g443645443699%_ _%g443646443703%_))))
              (_%g443645443699%_ _%g443646443703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g443645443699%_
                                               _%g443646443703%_))))
                                      (_%g443645443699%_ _%g443646443703%_))))
                              (_%g443645443699%_ _%g443646443703%_))))
                      (_%g443645443699%_ _%g443646443703%_))))
              (_%g443645443699%_ _%g443646443703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g443645443699%_
                                               _%g443646443703%_))))
                                      (_%g443645443699%_ _%g443646443703%_))))
                              (_%g443645443699%_ _%g443646443703%_))))
                      (_%g443645443699%_ _%g443646443703%_)))))
          (_%g443644443880%_ _%$stx443641%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx443884%_)
        (let* ((_%g443888443902%_
                (lambda (_%g443889443898%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g443889443898%_))))
               (_%g443887443943%_
                (lambda (_%g443889443906%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g443889443906%_))
                      (let ((_%e443891443909%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g443889443906%_))))
                        (let ((_%hd443892443913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443891443909%_)))
                              (_%tl443893443916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443891443909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443893443916%_))
                              (let ((_%e443894443919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443893443916%_))))
                                (let ((_%hd443895443923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443894443919%_)))
                                      (_%tl443896443926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443894443919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl443896443926%_))
                                      ((lambda (_%g443890443929%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g443890443929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd443895443923%_)
                                      (_%g443888443902%_ _%g443889443906%_))))
                              (_%g443888443902%_ _%g443889443906%_))))
                      (_%g443888443902%_ _%g443889443906%_)))))
          (_%g443887443943%_ _%$stx443884%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx443947%_)
        (let* ((_%g443951443965%_
                (lambda (_%g443952443961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g443952443961%_))))
               (_%g443950444006%_
                (lambda (_%g443952443969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g443952443969%_))
                      (let ((_%e443954443972%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g443952443969%_))))
                        (let ((_%hd443955443976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e443954443972%_)))
                              (_%tl443956443979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e443954443972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl443956443979%_))
                              (let ((_%e443957443982%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl443956443979%_))))
                                (let ((_%hd443958443986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e443957443982%_)))
                                      (_%tl443959443989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e443957443982%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl443959443989%_))
                                      ((lambda (_%g443953443992%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g443953443992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd443958443986%_)
                                      (_%g443951443965%_ _%g443952443969%_))))
                              (_%g443951443965%_ _%g443952443969%_))))
                      (_%g443951443965%_ _%g443952443969%_)))))
          (_%g443950444006%_ _%$stx443947%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx444010%_)
        (let* ((_%g444014444036%_
                (lambda (_%g444015444032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444015444032%_))))
               (_%g444013444105%_
                (lambda (_%g444015444040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444015444040%_))
                      (let ((_%e444019444043%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444015444040%_))))
                        (let ((_%hd444020444047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444019444043%_)))
                              (_%tl444021444050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444019444043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl444021444050%_))
                              (let ((_%e444022444053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl444021444050%_))))
                                (let ((_%hd444023444057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444022444053%_)))
                                      (_%tl444024444060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444022444053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl444024444060%_))
                                      (let ((_%e444025444063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl444024444060%_))))
                                        (let ((_%hd444026444067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e444025444063%_)))
                                              (_%tl444027444070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e444025444063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl444027444070%_))
                                              (let ((_%e444028444073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl444027444070%_))))
                                                (let ((_%hd444029444077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e444028444073%_)))
                                                      (_%tl444030444080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e444028444073%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl444030444080%_))
                                                      ((lambda (_%g444016444083%_
                                                                _%g444017444085%_
                                                                _%g444018444086%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g444018444086%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g444017444085%_ '()))
                                   (cons _%g444016444083%_ '())))))
               _%hd444029444077%_
               _%hd444026444067%_
               _%hd444023444057%_)
              (_%g444014444036%_ _%g444015444040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g444014444036%_
                                               _%g444015444040%_))))
                                      (_%g444014444036%_ _%g444015444040%_))))
                              (_%g444014444036%_ _%g444015444040%_))))
                      (_%g444014444036%_ _%g444015444040%_)))))
          (_%g444013444105%_ _%$stx444010%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx444109%_)
        (let* ((_%g444113444135%_
                (lambda (_%g444114444131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444114444131%_))))
               (_%g444112444204%_
                (lambda (_%g444114444139%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444114444139%_))
                      (let ((_%e444118444142%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444114444139%_))))
                        (let ((_%hd444119444146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444118444142%_)))
                              (_%tl444120444149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444118444142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl444120444149%_))
                              (let ((_%e444121444152%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl444120444149%_))))
                                (let ((_%hd444122444156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444121444152%_)))
                                      (_%tl444123444159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444121444152%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl444123444159%_))
                                      (let ((_%e444124444162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl444123444159%_))))
                                        (let ((_%hd444125444166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e444124444162%_)))
                                              (_%tl444126444169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e444124444162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl444126444169%_))
                                              (let ((_%e444127444172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl444126444169%_))))
                                                (let ((_%hd444128444176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e444127444172%_)))
                                                      (_%tl444129444179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e444127444172%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl444129444179%_))
                                                      ((lambda (_%g444115444182%_
                                                                _%g444116444184%_
                                                                _%g444117444185%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g444117444185%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%g444116444184%_ '()))
                                   (cons _%g444115444182%_ '())))))
               _%hd444128444176%_
               _%hd444125444166%_
               _%hd444122444156%_)
              (_%g444113444135%_ _%g444114444139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g444113444135%_
                                               _%g444114444139%_))))
                                      (_%g444113444135%_ _%g444114444139%_))))
                              (_%g444113444135%_ _%g444114444139%_))))
                      (_%g444113444135%_ _%g444114444139%_)))))
          (_%g444112444204%_ _%$stx444109%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx444208%_)
        (let* ((_%g444212444226%_
                (lambda (_%g444213444222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444213444222%_))))
               (_%g444211444267%_
                (lambda (_%g444213444230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444213444230%_))
                      (let ((_%e444215444233%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444213444230%_))))
                        (let ((_%hd444216444237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444215444233%_)))
                              (_%tl444217444240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444215444233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl444217444240%_))
                              (let ((_%e444218444243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl444217444240%_))))
                                (let ((_%hd444219444247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444218444243%_)))
                                      (_%tl444220444250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444218444243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl444220444250%_))
                                      ((lambda (_%g444214444253%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%g444214444253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd444219444247%_)
                                      (_%g444212444226%_ _%g444213444230%_))))
                              (_%g444212444226%_ _%g444213444230%_))))
                      (_%g444212444226%_ _%g444213444230%_)))))
          (_%g444211444267%_ _%$stx444208%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx444271%_)
        (let* ((_%g444275444293%_
                (lambda (_%g444276444289%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444276444289%_))))
               (_%g444274444348%_
                (lambda (_%g444276444297%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444276444297%_))
                      (let ((_%e444279444300%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444276444297%_))))
                        (let ((_%hd444280444304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444279444300%_)))
                              (_%tl444281444307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444279444300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl444281444307%_))
                              (let ((_%e444282444310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl444281444307%_))))
                                (let ((_%hd444283444314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444282444310%_)))
                                      (_%tl444284444317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444282444310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl444284444317%_))
                                      (let ((_%e444285444320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl444284444317%_))))
                                        (let ((_%hd444286444324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e444285444320%_)))
                                              (_%tl444287444327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e444285444320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl444287444327%_))
                                              ((lambda (_%g444277444330%_
                                                        _%g444278444332%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g444278444332%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g444277444330%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd444286444324%_
                                               _%hd444283444314%_)
                                              (_%g444275444293%_
                                               _%g444276444297%_))))
                                      (_%g444275444293%_ _%g444276444297%_))))
                              (_%g444275444293%_ _%g444276444297%_))))
                      (_%g444275444293%_ _%g444276444297%_)))))
          (_%g444274444348%_ _%$stx444271%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx444352%_)
        (let* ((_%__stx448668448669%_ _%$stx444352%_)
               (_%g444359444420%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx448668448669%_)))))
          (let ((_%__kont448671448672%_
                 (lambda (_%g444361444658%_ _%g444362444660%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g444362444660%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g444361444658%_ '()))
                                     '())))))
                (_%__kont448673448674%_
                 (lambda (_%g444372444597%_
                          _%g444373444599%_
                          _%g444374444600%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g444374444600%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g444373444599%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g444372444597%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont448675448676%_
                 (lambda (_%g444391444521%_ _%g444392444523%_)
                   (cons _%g444392444523%_
                         (cons _%g444391444521%_ (cons '#f '())))))
                (_%__kont448677448678%_
                 (lambda (_%g444399444471%_
                          _%g444400444473%_
                          _%g444401444474%_)
                   (cons _%g444401444474%_
                         (cons _%g444400444473%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g444399444471%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx448668448669%_))
                (let ((_%e444363444628%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx448668448669%_))))
                  (let ((_%tl444365444635%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e444363444628%_)))
                        (_%hd444364444632%_
                         (let ()
                           (declare (not safe))
                           (##car _%e444363444628%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl444365444635%_))
                        (let ((_%e444366444638%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl444365444635%_))))
                          (let ((_%tl444368444645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e444366444638%_)))
                                (_%hd444367444642%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e444366444638%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl444368444645%_))
                                (let ((_%e444369444648%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl444368444645%_))))
                                  (let ((_%tl444371444655%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e444369444648%_)))
                                        (_%hd444370444652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e444369444648%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl444371444655%_))
                                        (_%__kont448671448672%_
                                         _%hd444370444652%_
                                         _%hd444367444642%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl444371444655%_))
                                            (let ((_%e444384444573%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl444371444655%_))))
                                              (let ((_%tl444386444580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e444384444573%_)))
                                                    (_%hd444385444577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e444384444573%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd444385444577%_))
                                                    (let ((_%e444387444583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd444385444577%_))))
                                                      (if (equal? _%e444387444583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl444386444580%_))
                      (let ((_%e444388444587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl444386444580%_))))
                        (let ((_%tl444390444594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444388444587%_)))
                              (_%hd444389444591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444388444587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl444390444594%_))
                              (_%__kont448673448674%_
                               _%hd444389444591%_
                               _%hd444370444652%_
                               _%hd444367444642%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd444370444652%_))
                                  (let ((_%e444411444457%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd444370444652%_))))
                                    (declare (not safe))
                                    (_%g444359444420%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g444359444420%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd444370444652%_))
                          (let ((_%e444411444457%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd444370444652%_))))
                            (if (equal? _%e444411444457%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl444386444580%_))
                                    (_%__kont448677448678%_
                                     _%hd444385444577%_
                                     _%hd444367444642%_
                                     _%hd444364444632%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g444359444420%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g444359444420%_))))
                          (let () (declare (not safe)) (_%g444359444420%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd444370444652%_))
                      (let ((_%e444411444457%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd444370444652%_))))
                        (if (equal? _%e444411444457%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl444386444580%_))
                                (_%__kont448677448678%_
                                 _%hd444385444577%_
                                 _%hd444367444642%_
                                 _%hd444364444632%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g444359444420%_)))
                            (let () (declare (not safe)) (_%g444359444420%_))))
                      (let () (declare (not safe)) (_%g444359444420%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd444370444652%_))
                                                        (let ((_%e444411444457%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd444370444652%_))))
                  (if (equal? _%e444411444457%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl444386444580%_))
                          (_%__kont448677448678%_
                           _%hd444385444577%_
                           _%hd444367444642%_
                           _%hd444364444632%_)
                          (let () (declare (not safe)) (_%g444359444420%_)))
                      (let () (declare (not safe)) (_%g444359444420%_))))
                (let () (declare (not safe)) (_%g444359444420%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd444370444652%_))
                                                (let ((_%e444411444457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd444370444652%_))))
                                                  (declare (not safe))
                                                  (_%g444359444420%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g444359444420%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl444368444645%_))
                                    (_%__kont448675448676%_
                                     _%hd444367444642%_
                                     _%hd444364444632%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g444359444420%_))))))
                        (let () (declare (not safe)) (_%g444359444420%_)))))
                (let () (declare (not safe)) (_%g444359444420%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx444679%_)
        (let* ((_%g444683444712%_
                (lambda (_%g444684444708%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444684444708%_))))
               (_%g444682444817%_
                (lambda (_%g444684444716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444684444716%_))
                      (let ((_%e444686444719%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444684444716%_))))
                        (let ((_%hd444687444723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444686444719%_)))
                              (_%tl444688444726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444686444719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl444688444726%_))
                              (let ((_g449298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl444688444726%_
                                        '0))))
                                (begin
                                  (let ((_g449299_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g449298_)
                                               (##values-length _g449298_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g449299_ 2)))
                                        (error "Context expects 2 values"
                                               _g449299_)))
                                  (let ((_%target444689444729%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449298_ 0)))
                                        (_%tl444691444732%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449298_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl444691444732%_))
                                        (letrec ((_%loop444692444735%_
                                                  (lambda (_%hd444690444739%_
                                                           _%clause444696444742%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd444690444739%_))
                                                        (let ((_%e444693444744%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd444690444739%_))))
                  (let ((_%lp-hd444694444748%_
                         (let ()
                           (declare (not safe))
                           (##car _%e444693444744%_)))
                        (_%lp-tl444695444751%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e444693444744%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd444694444748%_))
                        (let ((_g449300_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd444694444748%_
                                  '0))))
                          (begin
                            (let ((_g449301_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g449300_)
                                         (##values-length _g449300_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g449301_ 2)))
                                  (error "Context expects 2 values"
                                         _g449301_)))
                            (let ((_%target444698444754%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g449300_ 0)))
                                  (_%tl444700444757%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g449300_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl444700444757%_))
                                  (letrec ((_%loop444701444760%_
                                            (lambda (_%hd444699444764%_
                                                     _%clause444705444767%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd444699444764%_))
                                                  (let ((_%e444702444769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd444699444764%_))))
                                                    (let ((_%lp-hd444703444773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e444702444769%_)))
                                                          (_%lp-tl444704444776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e444702444769%_))))
                                                      (_%loop444701444760%_
                                                       _%lp-tl444704444776%_
                                                       (cons _%lp-hd444703444773%_
                                                             _%clause444705444767%_))))
                                                  (let ((_%clause444706444779%_
                                                         (reverse _%clause444705444767%_)))
                                                    (_%loop444692444735%_
                                                     _%lp-tl444695444751%_
                                                     (cons _%clause444706444779%_
                                                           _%clause444696444742%_)))))))
                                    (_%loop444701444760%_
                                     _%target444698444754%_
                                     '()))
                                  (_%g444683444712%_ _%g444684444716%_)))))
                        (_%g444683444712%_ _%g444684444716%_))))
                (let ((_%clause444697444782%_
                       (reverse _%clause444696444742%_)))
                  ((lambda (_%g444685444785%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp449302
                                              (lambda (_%g444800444805%_
                                                       _%g444801444808%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp449303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g444802444811%_ _%g444803444814%_)
                             (cons _%g444802444811%_ _%g444803444814%_))))
                      (declare (not safe))
                      (foldr__0 __tmp449303 '() _%g444800444805%_)))
              _%g444801444808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp449302
                                          '()
                                          _%g444685444785%_)))
                                 '())))
                   _%clause444697444782%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop444692444735%_
                                           _%target444689444729%_
                                           '()))
                                        (_%g444683444712%_
                                         _%g444684444716%_)))))
                              (_%g444683444712%_ _%g444684444716%_))))
                      (_%g444683444712%_ _%g444684444716%_)))))
          (_%g444682444817%_ _%$stx444679%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx444823%_)
        (let* ((_%g444827444845%_
                (lambda (_%g444828444841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444828444841%_))))
               (_%g444826444900%_
                (lambda (_%g444828444849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444828444849%_))
                      (let ((_%e444831444852%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444828444849%_))))
                        (let ((_%hd444832444856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444831444852%_)))
                              (_%tl444833444859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444831444852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl444833444859%_))
                              (let ((_%e444834444862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl444833444859%_))))
                                (let ((_%hd444835444866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444834444862%_)))
                                      (_%tl444836444869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444834444862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl444836444869%_))
                                      (let ((_%e444837444872%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl444836444869%_))))
                                        (let ((_%hd444838444876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e444837444872%_)))
                                              (_%tl444839444879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e444837444872%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl444839444879%_))
                                              ((lambda (_%g444829444882%_
                                                        _%g444830444884%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g444830444884%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g444829444882%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd444838444876%_
                                               _%hd444835444866%_)
                                              (_%g444827444845%_
                                               _%g444828444849%_))))
                                      (_%g444827444845%_ _%g444828444849%_))))
                              (_%g444827444845%_ _%g444828444849%_))))
                      (_%g444827444845%_ _%g444828444849%_)))))
          (_%g444826444900%_ _%$stx444823%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx444904%_)
        (let* ((_%g444908444926%_
                (lambda (_%g444909444922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444909444922%_))))
               (_%g444907444981%_
                (lambda (_%g444909444930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444909444930%_))
                      (let ((_%e444912444933%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444909444930%_))))
                        (let ((_%hd444913444937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444912444933%_)))
                              (_%tl444914444940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444912444933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl444914444940%_))
                              (let ((_%e444915444943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl444914444940%_))))
                                (let ((_%hd444916444947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e444915444943%_)))
                                      (_%tl444917444950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e444915444943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl444917444950%_))
                                      (let ((_%e444918444953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl444917444950%_))))
                                        (let ((_%hd444919444957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e444918444953%_)))
                                              (_%tl444920444960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e444918444953%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl444920444960%_))
                                              ((lambda (_%g444910444963%_
                                                        _%g444911444965%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g444911444965%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%g444910444963%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd444919444957%_
                                               _%hd444916444947%_)
                                              (_%g444908444926%_
                                               _%g444909444930%_))))
                                      (_%g444908444926%_ _%g444909444930%_))))
                              (_%g444908444926%_ _%g444909444930%_))))
                      (_%g444908444926%_ _%g444909444930%_)))))
          (_%g444907444981%_ _%$stx444904%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx444985%_)
        (let* ((_%g444989445018%_
                (lambda (_%g444990445014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g444990445014%_))))
               (_%g444988445114%_
                (lambda (_%g444990445022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g444990445022%_))
                      (let ((_%e444993445025%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g444990445022%_))))
                        (let ((_%hd444994445029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e444993445025%_)))
                              (_%tl444995445032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e444993445025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl444995445032%_))
                              (let ((_g449304_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl444995445032%_
                                        '0))))
                                (begin
                                  (let ((_g449305_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g449304_)
                                               (##values-length _g449304_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g449305_ 2)))
                                        (error "Context expects 2 values"
                                               _g449305_)))
                                  (let ((_%target444996445035%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449304_ 0)))
                                        (_%tl444998445038%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449304_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl444998445038%_))
                                        (letrec ((_%loop444999445041%_
                                                  (lambda (_%hd444997445045%_
                                                           _%rule445003445048%_
                                                           _%proc445004445049%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd444997445045%_))
                                                        (let ((_%e445000445051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd444997445045%_))))
                  (let ((_%lp-hd445001445055%_
                         (let ()
                           (declare (not safe))
                           (##car _%e445000445051%_)))
                        (_%lp-tl445002445058%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e445000445051%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd445001445055%_))
                        (let ((_%e445007445061%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd445001445055%_))))
                          (let ((_%hd445008445065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e445007445061%_)))
                                (_%tl445009445068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e445007445061%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl445009445068%_))
                                (let ((_%e445010445071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl445009445068%_))))
                                  (let ((_%hd445011445075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e445010445071%_)))
                                        (_%tl445012445078%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e445010445071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl445012445078%_))
                                        (_%loop444999445041%_
                                         _%lp-tl445002445058%_
                                         (cons _%hd445011445075%_
                                               _%rule445003445048%_)
                                         (cons _%hd445008445065%_
                                               _%proc445004445049%_))
                                        (_%g444989445018%_
                                         _%g444990445022%_))))
                                (_%g444989445018%_ _%g444990445022%_))))
                        (_%g444989445018%_ _%g444990445022%_))))
                (let ((_%rule445005445081%_ (reverse _%rule445003445048%_))
                      (_%proc445006445083%_ (reverse _%proc445004445049%_)))
                  ((lambda (_%g444991445085%_ _%g444992445087%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%g444991445085%_
                                _%g444992445087%_))
                             (let ((__tmp449306
                                    (lambda (_%g445102445106%_
                                             _%g445103445109%_
                                             _%g445104445111%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g445103445109%_
                                                        (cons _%g445102445106%_
                                                              '())))
                                            _%g445104445111%_))))
                               (declare (not safe))
                               (foldr__1
                                __tmp449306
                                '()
                                _%g444991445085%_
                                _%g444992445087%_)))))
                   _%rule445005445081%_
                   _%proc445006445083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop444999445041%_
                                           _%target444996445035%_
                                           '()
                                           '()))
                                        (_%g444989445018%_
                                         _%g444990445022%_)))))
                              (_%g444989445018%_ _%g444990445022%_))))
                      (_%g444989445018%_ _%g444990445022%_)))))
          (_%g444988445114%_ _%$stx444985%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx445119%_)
        (let* ((_%g445123445141%_
                (lambda (_%g445124445137%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g445124445137%_))))
               (_%g445122445196%_
                (lambda (_%g445124445145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g445124445145%_))
                      (let ((_%e445127445148%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g445124445145%_))))
                        (let ((_%hd445128445152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e445127445148%_)))
                              (_%tl445129445155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e445127445148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl445129445155%_))
                              (let ((_%e445130445158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl445129445155%_))))
                                (let ((_%hd445131445162%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e445130445158%_)))
                                      (_%tl445132445165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e445130445158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl445132445165%_))
                                      (let ((_%e445133445168%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl445132445165%_))))
                                        (let ((_%hd445134445172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e445133445168%_)))
                                              (_%tl445135445175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e445133445168%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl445135445175%_))
                                              ((lambda (_%g445125445178%_
                                                        _%g445126445180%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g445126445180%_
                                                         '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%g445125445178%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g445126445180%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd445134445172%_
                                               _%hd445131445162%_)
                                              (_%g445123445141%_
                                               _%g445124445145%_))))
                                      (_%g445123445141%_ _%g445124445145%_))))
                              (_%g445123445141%_ _%g445124445145%_))))
                      (_%g445123445141%_ _%g445124445145%_)))))
          (_%g445122445196%_ _%$stx445119%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx445200%_)
        (let* ((_%__stx448786448787%_ _%$stx445200%_)
               (_%g445205445230%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx448786448787%_)))))
          (let ((_%__kont448789448790%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont448791448792%_
                 (lambda (_%g445210445277%_
                          _%g445211445279%_
                          _%g445212445280%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g445212445280%_
                                           (cons _%g445211445279%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g445210445277%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx448786448787%_))
                (let ((_%e445207445306%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx448786448787%_))))
                  (let ((_%tl445209445313%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e445207445306%_)))
                        (_%hd445208445310%_
                         (let ()
                           (declare (not safe))
                           (##car _%e445207445306%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl445209445313%_))
                        (_%__kont448789448790%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl445209445313%_))
                            (let ((_%e445216445247%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl445209445313%_))))
                              (let ((_%tl445218445254%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e445216445247%_)))
                                    (_%hd445217445251%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e445216445247%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd445217445251%_))
                                    (let ((_%e445219445257%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd445217445251%_))))
                                      (let ((_%tl445221445264%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e445219445257%_)))
                                            (_%hd445220445261%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e445219445257%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl445221445264%_))
                                            (let ((_%e445222445267%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl445221445264%_))))
                                              (let ((_%tl445224445274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e445222445267%_)))
                                                    (_%hd445223445271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e445222445267%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl445224445274%_))
                                                    (_%__kont448791448792%_
                                                     _%tl445218445254%_
                                                     _%hd445223445271%_
                                                     _%hd445220445261%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g445205445230%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g445205445230%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g445205445230%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g445205445230%_))))))
                (let () (declare (not safe)) (_%g445205445230%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx445324%_)
        (let* ((_%__stx448830448831%_ _%$stx445324%_)
               (_%g445329445360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx448830448831%_)))))
          (let ((_%__kont448833448834%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont448835448836%_
                 (lambda (_%g445334445425%_
                          _%g445335445427%_
                          _%g445336445428%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g445336445428%_
                                           (let ((__tmp449307
                                                  (lambda (_%g445448445451%_
                                                           _%g445449445454%_)
                                                    (cons _%g445448445451%_
                                                          _%g445449445454%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp449307
                                              '()
                                              _%g445335445427%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g445334445425%_)
                                     '()))))))
            (let ((_%__match448873448874%_
                   (lambda (_%e445337445367%_
                            _%hd445338445371%_
                            _%tl445339445374%_
                            _%e445340445377%_
                            _%hd445341445381%_
                            _%tl445342445384%_
                            _%e445343445387%_
                            _%hd445344445391%_
                            _%tl445345445394%_
                            _%__splice448837448838%_
                            _%target445346445397%_
                            _%tl445348445400%_)
                     (letrec ((_%loop445349445403%_
                               (lambda (_%hd445347445407%_ _%sig445353445410%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd445347445407%_))
                                     (let ((_%e445350445412%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd445347445407%_))))
                                       (let ((_%lp-tl445352445419%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e445350445412%_)))
                                             (_%lp-hd445351445416%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e445350445412%_))))
                                         (_%loop445349445403%_
                                          _%lp-tl445352445419%_
                                          (cons _%lp-hd445351445416%_
                                                _%sig445353445410%_))))
                                     (let ((_%sig445354445422%_
                                            (reverse _%sig445353445410%_)))
                                       (_%__kont448835448836%_
                                        _%tl445342445384%_
                                        _%sig445354445422%_
                                        _%hd445344445391%_))))))
                       (_%loop445349445403%_ _%target445346445397%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx448830448831%_))
                  (let ((_%e445331445464%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx448830448831%_))))
                    (let ((_%tl445333445471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e445331445464%_)))
                          (_%hd445332445468%_
                           (let ()
                             (declare (not safe))
                             (##car _%e445331445464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl445333445471%_))
                          (_%__kont448833448834%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl445333445471%_))
                              (let ((_%e445340445377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl445333445471%_))))
                                (let ((_%tl445342445384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e445340445377%_)))
                                      (_%hd445341445381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e445340445377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd445341445381%_))
                                      (let ((_%e445343445387%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd445341445381%_))))
                                        (let ((_%tl445345445394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e445343445387%_)))
                                              (_%hd445344445391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e445343445387%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl445345445394%_))
                                              (let ((_%__splice448837448838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl445345445394%_
                                                        '0))))
                                                (let ((_%tl445348445400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice448837448838%_
                                                          '1)))
                                                      (_%target445346445397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice448837448838%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl445348445400%_))
                                                      (_%__match448873448874%_
                                                       _%e445331445464%_
                                                       _%hd445332445468%_
                                                       _%tl445333445471%_
                                                       _%e445340445377%_
                                                       _%hd445341445381%_
                                                       _%tl445342445384%_
                                                       _%e445343445387%_
                                                       _%hd445344445391%_
                                                       _%tl445345445394%_
                                                       _%__splice448837448838%_
                                                       _%target445346445397%_
                                                       _%tl445348445400%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g445329445360%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g445329445360%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g445329445360%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g445329445360%_))))))
                  (let () (declare (not safe)) (_%g445329445360%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx445483%_)
        (let* ((_%__stx448876448877%_ _%$stx445483%_)
               (_%g445488445535%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx448876448877%_)))))
          (let ((_%__kont448879448880%_
                 (lambda (_%g445490445693%_ _%g445491445695%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g445491445695%_
                               (let ((__tmp449308
                                      (lambda (_%g445715445718%_
                                               _%g445716445721%_)
                                        (cons _%g445715445718%_
                                              _%g445716445721%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp449308
                                  '()
                                  _%g445490445693%_))))))
                (_%__kont448883448884%_
                 (lambda (_%g445513445590%_ _%g445514445592%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g445514445592%_
                               (let ((__tmp449309
                                      (lambda (_%g445609445612%_
                                               _%g445610445615%_)
                                        (cons _%g445609445612%_
                                              _%g445610445615%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp449309
                                  '()
                                  _%g445513445590%_)))))))
            (let* ((_%__match448943448944%_
                    (lambda (_%e445515445542%_
                             _%hd445516445546%_
                             _%tl445517445549%_
                             _%e445518445552%_
                             _%hd445519445556%_
                             _%tl445520445559%_
                             _%__splice448885448886%_
                             _%target445521445562%_
                             _%tl445523445565%_)
                      (letrec ((_%loop445524445568%_
                                (lambda (_%hd445522445572%_
                                         _%sig445528445575%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd445522445572%_))
                                      (let ((_%e445525445577%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd445522445572%_))))
                                        (let ((_%lp-tl445527445584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e445525445577%_)))
                                              (_%lp-hd445526445581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e445525445577%_))))
                                          (_%loop445524445568%_
                                           _%lp-tl445527445584%_
                                           (cons _%lp-hd445526445581%_
                                                 _%sig445528445575%_))))
                                      (let ((_%sig445529445587%_
                                             (reverse _%sig445528445575%_)))
                                        (_%__kont448883448884%_
                                         _%sig445529445587%_
                                         _%hd445519445556%_))))))
                        (_%loop445524445568%_ _%target445521445562%_ '()))))
                   (_%__match448935448936%_
                    (lambda (_%e445515445542%_
                             _%hd445516445546%_
                             _%tl445517445549%_
                             _%e445518445552%_
                             _%hd445519445556%_
                             _%tl445520445559%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl445520445559%_))
                          (let ((_%__splice448885448886%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl445520445559%_
                                    '0))))
                            (let ((_%tl445523445565%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice448885448886%_
                                      '1)))
                                  (_%target445521445562%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice448885448886%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl445523445565%_))
                                  (_%__match448943448944%_
                                   _%e445515445542%_
                                   _%hd445516445546%_
                                   _%tl445517445549%_
                                   _%e445518445552%_
                                   _%hd445519445556%_
                                   _%tl445520445559%_
                                   _%__splice448885448886%_
                                   _%target445521445562%_
                                   _%tl445523445565%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g445488445535%_)))))
                          (let () (declare (not safe)) (_%g445488445535%_)))))
                   (_%__match448923448924%_
                    (lambda (_%e445492445625%_
                             _%hd445493445629%_
                             _%tl445494445632%_
                             _%e445495445635%_
                             _%hd445496445639%_
                             _%tl445497445642%_
                             _%e445498445645%_
                             _%hd445499445649%_
                             _%tl445500445652%_
                             _%e445501445655%_
                             _%hd445502445659%_
                             _%tl445503445662%_
                             _%__splice448881448882%_
                             _%target445504445665%_
                             _%tl445506445668%_)
                      (letrec ((_%loop445507445671%_
                                (lambda (_%hd445505445675%_
                                         _%sig445511445678%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd445505445675%_))
                                      (let ((_%e445508445680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd445505445675%_))))
                                        (let ((_%lp-tl445510445687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e445508445680%_)))
                                              (_%lp-hd445509445684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e445508445680%_))))
                                          (_%loop445507445671%_
                                           _%lp-tl445510445687%_
                                           (cons _%lp-hd445509445684%_
                                                 _%sig445511445678%_))))
                                      (let ((_%sig445512445690%_
                                             (reverse _%sig445511445678%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl445500445652%_))
                                            (_%__kont448879448880%_
                                             _%sig445512445690%_
                                             _%hd445496445639%_)
                                            (_%__match448935448936%_
                                             _%e445492445625%_
                                             _%hd445493445629%_
                                             _%tl445494445632%_
                                             _%e445495445635%_
                                             _%hd445496445639%_
                                             _%tl445497445642%_)))))))
                        (_%loop445507445671%_ _%target445504445665%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx448876448877%_))
                  (let ((_%e445492445625%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx448876448877%_))))
                    (let ((_%tl445494445632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e445492445625%_)))
                          (_%hd445493445629%_
                           (let ()
                             (declare (not safe))
                             (##car _%e445492445625%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl445494445632%_))
                          (let ((_%e445495445635%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl445494445632%_))))
                            (let ((_%tl445497445642%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e445495445635%_)))
                                  (_%hd445496445639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e445495445635%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl445497445642%_))
                                  (let ((_%e445498445645%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl445497445642%_))))
                                    (let ((_%tl445500445652%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e445498445645%_)))
                                          (_%hd445499445649%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e445498445645%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd445499445649%_))
                                          (let ((_%e445501445655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd445499445649%_))))
                                            (let ((_%tl445503445662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e445501445655%_)))
                                                  (_%hd445502445659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e445501445655%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd445502445659%_))
                                                  (if (let ((__tmp449310
                                                             |gxc[1]#_g449311_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp449310
                                                         _%hd445502445659%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl445503445662%_))
                                                          (let ((_%__splice448881448882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl445503445662%_
                            '0))))
                    (let ((_%tl445506445668%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice448881448882%_ '1)))
                          (_%target445504445665%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice448881448882%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl445506445668%_))
                          (_%__match448923448924%_
                           _%e445492445625%_
                           _%hd445493445629%_
                           _%tl445494445632%_
                           _%e445495445635%_
                           _%hd445496445639%_
                           _%tl445497445642%_
                           _%e445498445645%_
                           _%hd445499445649%_
                           _%tl445500445652%_
                           _%e445501445655%_
                           _%hd445502445659%_
                           _%tl445503445662%_
                           _%__splice448881448882%_
                           _%target445504445665%_
                           _%tl445506445668%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl445497445642%_))
                              (let ((_%__splice448885448886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl445497445642%_
                                        '0))))
                                (let ((_%tl445523445565%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice448885448886%_
                                          '1)))
                                      (_%target445521445562%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice448885448886%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl445523445565%_))
                                      (_%__match448943448944%_
                                       _%e445492445625%_
                                       _%hd445493445629%_
                                       _%tl445494445632%_
                                       _%e445495445635%_
                                       _%hd445496445639%_
                                       _%tl445497445642%_
                                       _%__splice448885448886%_
                                       _%target445521445562%_
                                       _%tl445523445565%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g445488445535%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g445488445535%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl445497445642%_))
                      (let ((_%__splice448885448886%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl445497445642%_
                                '0))))
                        (let ((_%tl445523445565%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice448885448886%_ '1)))
                              (_%target445521445562%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice448885448886%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl445523445565%_))
                              (_%__match448943448944%_
                               _%e445492445625%_
                               _%hd445493445629%_
                               _%tl445494445632%_
                               _%e445495445635%_
                               _%hd445496445639%_
                               _%tl445497445642%_
                               _%__splice448885448886%_
                               _%target445521445562%_
                               _%tl445523445565%_)
                              (let ()
                                (declare (not safe))
                                (_%g445488445535%_)))))
                      (let () (declare (not safe)) (_%g445488445535%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl445497445642%_))
                  (let ((_%__splice448885448886%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl445497445642%_
                            '0))))
                    (let ((_%tl445523445565%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice448885448886%_ '1)))
                          (_%target445521445562%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice448885448886%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl445523445565%_))
                          (_%__match448943448944%_
                           _%e445492445625%_
                           _%hd445493445629%_
                           _%tl445494445632%_
                           _%e445495445635%_
                           _%hd445496445639%_
                           _%tl445497445642%_
                           _%__splice448885448886%_
                           _%target445521445562%_
                           _%tl445523445565%_)
                          (let () (declare (not safe)) (_%g445488445535%_)))))
                  (let () (declare (not safe)) (_%g445488445535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl445497445642%_))
                                                      (let ((_%__splice448885448886%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl445497445642%_
                        '0))))
                (let ((_%tl445523445565%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice448885448886%_ '1)))
                      (_%target445521445562%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice448885448886%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl445523445565%_))
                      (_%__match448943448944%_
                       _%e445492445625%_
                       _%hd445493445629%_
                       _%tl445494445632%_
                       _%e445495445635%_
                       _%hd445496445639%_
                       _%tl445497445642%_
                       _%__splice448885448886%_
                       _%target445521445562%_
                       _%tl445523445565%_)
                      (let () (declare (not safe)) (_%g445488445535%_)))))
              (let () (declare (not safe)) (_%g445488445535%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl445497445642%_))
                                              (let ((_%__splice448885448886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl445497445642%_
                                                        '0))))
                                                (let ((_%tl445523445565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice448885448886%_
                                                          '1)))
                                                      (_%target445521445562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice448885448886%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl445523445565%_))
                                                      (_%__match448943448944%_
                                                       _%e445492445625%_
                                                       _%hd445493445629%_
                                                       _%tl445494445632%_
                                                       _%e445495445635%_
                                                       _%hd445496445639%_
                                                       _%tl445497445642%_
                                                       _%__splice448885448886%_
                                                       _%target445521445562%_
                                                       _%tl445523445565%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g445488445535%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g445488445535%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl445497445642%_))
                                      (let ((_%__splice448885448886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl445497445642%_
                                                '0))))
                                        (let ((_%tl445523445565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice448885448886%_
                                                  '1)))
                                              (_%target445521445562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice448885448886%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl445523445565%_))
                                              (_%__match448943448944%_
                                               _%e445492445625%_
                                               _%hd445493445629%_
                                               _%tl445494445632%_
                                               _%e445495445635%_
                                               _%hd445496445639%_
                                               _%tl445497445642%_
                                               _%__splice448885448886%_
                                               _%target445521445562%_
                                               _%tl445523445565%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g445488445535%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g445488445535%_))))))
                          (let () (declare (not safe)) (_%g445488445535%_)))))
                  (let () (declare (not safe)) (_%g445488445535%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx446878%_ _%id446880%_)
        (let ((_%proc446884%_
               (let ((__tmp449312
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id446880%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp449312))))
          (if (procedure? _%proc446884%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx446878%_
                 _%id446880%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx446869%_ _%id446871%_)
        (let ((_%klass446875%_
               (let ((__tmp449313
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id446871%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp449313))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass446875%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx446869%_
                 _%id446871%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx446119%_ _%proc446121%_ _%sig446122%_)
        (letrec ((_%signature-arity446124%_
                  (lambda (_%args446801%_)
                    (let _%loop446804%_ ((_%rest446807%_ _%args446801%_)
                                         (_%count446809%_ '0))
                      (let* ((_%rest446810446821%_ _%rest446807%_)
                             (_%E446814446827%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest446810446821%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K446817446858%_
                               (lambda (_%rest446855%_)
                                 (_%loop446804%_
                                  _%rest446855%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count446809%_ '1)))))
                              (_%K446816446847%_ (lambda () _%count446809%_))
                              (_%K446815446835%_
                               (lambda () (cons _%count446809%_ '()))))
                          (let ((_%try-match446812446851%_
                                 (lambda ()
                                   (if (null? _%rest446810446821%_)
                                       (_%K446816446847%_)
                                       (_%K446815446835%_)))))
                            (if (pair? _%rest446810446821%_)
                                (let* ((_%tl446819446862%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest446810446821%_)))
                                       (_%rest446866%_ _%tl446819446862%_))
                                  (_%K446817446858%_ _%rest446866%_))
                                (_%try-match446812446851%_))))))))
                 (_%make-signature446126%_
                  (lambda (_%args446683%_
                           _%return446685%_
                           _%effect446686%_
                           _%unchecked446687%_)
                    (let ((__tmp449314
                           (lambda (_%g446688446690%_)
                             (|gxc[1]#verify-class!|
                              _%ctx446119%_
                              _%g446688446690%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp449314 _%args446683%_))
                    (|gxc[1]#verify-class!| _%ctx446119%_ _%return446685%_)
                    (if _%unchecked446687%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx446119%_
                         _%unchecked446687%_)
                        '#!void)
                    (let ((_%arity446694%_
                           (_%signature-arity446124%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args446683%_)))))
                      (if _%effect446686%_
                          (let ((_%effect446697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect446686%_))))
                            (if (and (list? _%effect446697%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect446697%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx446119%_
                                   _%proc446121%_
                                   _%effect446697%_))))
                          '#!void)
                      (cons _%arity446694%_
                            (cons (let* ((_%g446700446723%_
                                          (lambda (_%g446701446719%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g446701446719%_))))
                                         (_%g446699446797%_
                                          (lambda (_%g446701446727%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g446701446727%_))
                                                (let ((_%e446706446730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g446701446727%_))))
                                                  (let ((_%hd446707446734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e446706446730%_)))
                                                        (_%tl446708446737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e446706446730%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl446708446737%_))
                                                        (let ((_%e446709446740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl446708446737%_))))
                  (let ((_%hd446710446744%_
                         (let ()
                           (declare (not safe))
                           (##car _%e446709446740%_)))
                        (_%tl446711446747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e446709446740%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl446711446747%_))
                        (let ((_%e446712446750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl446711446747%_))))
                          (let ((_%hd446713446754%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e446712446750%_)))
                                (_%tl446714446757%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e446712446750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl446714446757%_))
                                (let ((_%e446715446760%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl446714446757%_))))
                                  (let ((_%hd446716446764%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e446715446760%_)))
                                        (_%tl446717446767%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e446715446760%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl446717446767%_))
                                        ((lambda (_%g446702446770%_
                                                  _%g446703446772%_
                                                  _%g446704446773%_
                                                  _%g446705446774%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g446705446774%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%g446704446773%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g446703446772%_
                                                         '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g446702446770%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd446716446764%_
                                         _%hd446713446754%_
                                         _%hd446710446744%_
                                         _%hd446707446734%_)
                                        (_%g446700446723%_
                                         _%g446701446727%_))))
                                (_%g446700446723%_ _%g446701446727%_))))
                        (_%g446700446723%_ _%g446701446727%_))))
                (_%g446700446723%_ _%g446701446727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g446700446723%_
                                                 _%g446701446727%_)))))
                                    (_%g446699446797%_
                                     (list _%args446683%_
                                           _%return446685%_
                                           _%effect446686%_
                                           _%unchecked446687%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx446119%_ _%proc446121%_)
          (let* ((_%__stx448954448955%_ _%sig446122%_)
                 (_%g446133446236%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx448954448955%_)))))
            (let ((_%__kont448957448958%_
                   (lambda (_%g446135446664%_ _%g446136446666%_)
                     (_%make-signature446126%_
                      _%g446136446666%_
                      _%g446135446664%_
                      '#f
                      '#f)))
                  (_%__kont448959448960%_
                   (lambda (_%g446143446615%_
                            _%g446144446617%_
                            _%g446145446618%_)
                     (_%make-signature446126%_
                      _%g446145446618%_
                      _%g446144446617%_
                      _%g446143446615%_
                      '#f)))
                  (_%__kont448961448962%_
                   (lambda (_%g446159446539%_
                            _%g446160446541%_
                            _%g446161446542%_)
                     (_%make-signature446126%_
                      _%g446161446542%_
                      _%g446160446541%_
                      _%g446159446539%_
                      (let ((__tmp449315
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc446121%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp449315)))))
                  (_%__kont448963448964%_
                   (lambda (_%g446179446445%_
                            _%g446180446447%_
                            _%g446181446448%_
                            _%g446182446449%_)
                     (_%make-signature446126%_
                      _%g446182446449%_
                      _%g446181446448%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g446179446445%_)))))
                  (_%__kont448965448966%_
                   (lambda (_%g446203446352%_ _%g446204446354%_)
                     (_%make-signature446126%_
                      _%g446204446354%_
                      _%g446203446352%_
                      '#f
                      (let ((__tmp449316
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc446121%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp449316)))))
                  (_%__kont448967448968%_
                   (lambda (_%g446215446287%_
                            _%g446216446289%_
                            _%g446217446290%_)
                     (_%make-signature446126%_
                      _%g446217446290%_
                      _%g446216446289%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g446215446287%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx448954448955%_))
                  (let ((_%e446137446644%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx448954448955%_))))
                    (let ((_%tl446139446651%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e446137446644%_)))
                          (_%hd446138446648%_
                           (let ()
                             (declare (not safe))
                             (##car _%e446137446644%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl446139446651%_))
                          (let ((_%e446140446654%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl446139446651%_))))
                            (let ((_%tl446142446661%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e446140446654%_)))
                                  (_%hd446141446658%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e446140446654%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl446142446661%_))
                                  (_%__kont448957448958%_
                                   _%hd446141446658%_
                                   _%hd446138446648%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl446142446661%_))
                                      (let ((_%e446152446591%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl446142446661%_))))
                                        (let ((_%tl446154446598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e446152446591%_)))
                                              (_%hd446153446595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e446152446591%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd446153446595%_))
                                              (let ((_%e446155446601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd446153446595%_))))
                                                (if (equal? _%e446155446601%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl446154446598%_))
                                                        (let ((_%e446156446605%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl446154446598%_))))
                  (let ((_%tl446158446612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e446156446605%_)))
                        (_%hd446157446609%_
                         (let ()
                           (declare (not safe))
                           (##car _%e446156446605%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl446158446612%_))
                        (_%__kont448959448960%_
                         _%hd446157446609%_
                         _%hd446141446658%_
                         _%hd446138446648%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl446158446612%_))
                            (let ((_%e446175446525%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl446158446612%_))))
                              (let ((_%tl446177446532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e446175446525%_)))
                                    (_%hd446176446529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e446175446525%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd446176446529%_))
                                    (let ((_%e446178446535%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd446176446529%_))))
                                      (if (equal? _%e446178446535%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl446177446532%_))
                                              (_%__kont448961448962%_
                                               _%hd446157446609%_
                                               _%hd446141446658%_
                                               _%hd446138446648%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl446177446532%_))
                                                  (let ((_%e446200446435%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl446177446532%_))))
                                                    (let ((_%tl446202446442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e446200446435%_)))
                                                          (_%hd446201446439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e446200446435%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl446202446442%_))
                                                          (_%__kont448963448964%_
                                                           _%hd446201446439%_
                                                           _%hd446157446609%_
                                                           _%hd446141446658%_
                                                           _%hd446138446648%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g446133446236%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g446133446236%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g446133446236%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g446133446236%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g446133446236%_))))))
                (let () (declare (not safe)) (_%g446133446236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e446155446601%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl446154446598%_))
                                                            (_%__kont448965448966%_
                                                             _%hd446141446658%_
                                                             _%hd446138446648%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl446154446598%_))
                        (let ((_%e446228446277%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl446154446598%_))))
                          (let ((_%tl446230446284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e446228446277%_)))
                                (_%hd446229446281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e446228446277%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl446230446284%_))
                                (_%__kont448967448968%_
                                 _%hd446229446281%_
                                 _%hd446141446658%_
                                 _%hd446138446648%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g446133446236%_)))))
                        (let () (declare (not safe)) (_%g446133446236%_))))
                (let () (declare (not safe)) (_%g446133446236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g446133446236%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g446133446236%_))))))
                          (let () (declare (not safe)) (_%g446133446236%_)))))
                  (let () (declare (not safe)) (_%g446133446236%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig445730%_)
        (let* ((_%g445733445813%_
                (lambda (_%g445734445809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g445734445809%_))))
               (_%g445732446115%_
                (lambda (_%g445734445817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g445734445817%_))
                      (let ((_%e445740445820%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g445734445817%_))))
                        (let ((_%hd445741445824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e445740445820%_)))
                              (_%tl445742445827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e445740445820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl445742445827%_))
                              (let ((_%e445743445830%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl445742445827%_))))
                                (let ((_%hd445744445834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e445743445830%_)))
                                      (_%tl445745445837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e445743445830%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd445744445834%_))
                                      (let ((_%e445746445840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd445744445834%_))))
                                        (if (equal? _%e445746445840%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl445745445837%_))
                                                (let ((_%e445747445844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl445745445837%_))))
                                                  (let ((_%hd445748445848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e445747445844%_)))
                                                        (_%tl445749445851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e445747445844%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd445748445848%_))
                                                        (let ((_%e445750445854%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd445748445848%_))))
                  (let ((_%hd445751445858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e445750445854%_)))
                        (_%tl445752445861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e445750445854%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd445751445858%_))
                        (if (let ((__tmp449317 |gxc[1]#_g449318_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp449317
                               _%hd445751445858%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl445752445861%_))
                                (let ((_%e445753445864%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl445752445861%_))))
                                  (let ((_%hd445754445868%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e445753445864%_)))
                                        (_%tl445755445871%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e445753445864%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl445755445871%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl445749445851%_))
                                            (let ((_%e445756445874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl445749445851%_))))
                                              (let ((_%hd445757445878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e445756445874%_)))
                                                    (_%tl445758445881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e445756445874%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd445757445878%_))
                                                    (let ((_%e445759445884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd445757445878%_))))
                                                      (if (equal? _%e445759445884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl445758445881%_))
                      (let ((_%e445760445888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl445758445881%_))))
                        (let ((_%hd445761445892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e445760445888%_)))
                              (_%tl445762445895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e445760445888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd445761445892%_))
                              (let ((_%e445763445898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd445761445892%_))))
                                (let ((_%hd445764445902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e445763445898%_)))
                                      (_%tl445765445905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e445763445898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd445764445902%_))
                                      (if (let ((__tmp449319
                                                 |gxc[1]#_g449320_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp449319
                                             _%hd445764445902%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl445765445905%_))
                                              (let ((_%e445766445908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl445765445905%_))))
                                                (let ((_%hd445767445912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e445766445908%_)))
                                                      (_%tl445768445915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e445766445908%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl445768445915%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl445762445895%_))
                                                          (let ((_%e445769445918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl445762445895%_))))
                    (let ((_%hd445770445922%_
                           (let ()
                             (declare (not safe))
                             (##car _%e445769445918%_)))
                          (_%tl445771445925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e445769445918%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd445770445922%_))
                          (let ((_%e445772445928%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd445770445922%_))))
                            (if (equal? _%e445772445928%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl445771445925%_))
                                    (let ((_%e445773445932%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl445771445925%_))))
                                      (let ((_%hd445774445936%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e445773445932%_)))
                                            (_%tl445775445939%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e445773445932%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd445774445936%_))
                                            (let ((_%e445776445942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd445774445936%_))))
                                              (let ((_%hd445777445946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e445776445942%_)))
                                                    (_%tl445778445949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e445776445942%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd445777445946%_))
                                                    (if (let ((__tmp449321
                                                               |gxc[1]#_g449322_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp449321
                                                           _%hd445777445946%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl445778445949%_))
                                                            (let ((_%e445779445952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl445778445949%_))))
                      (let ((_%hd445780445956%_
                             (let ()
                               (declare (not safe))
                               (##car _%e445779445952%_)))
                            (_%tl445781445959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e445779445952%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl445781445959%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl445775445939%_))
                                (let ((_%e445782445962%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl445775445939%_))))
                                  (let ((_%hd445783445966%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e445782445962%_)))
                                        (_%tl445784445969%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e445782445962%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd445783445966%_))
                                        (let ((_%e445785445972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd445783445966%_))))
                                          (if (equal? _%e445785445972%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl445784445969%_))
                                                  (let ((_%e445786445976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl445784445969%_))))
                                                    (let ((_%hd445787445980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e445786445976%_)))
                                                          (_%tl445788445983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e445786445976%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd445787445980%_))
                                                          (let ((_%e445789445986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd445787445980%_))))
                    (let ((_%hd445790445990%_
                           (let ()
                             (declare (not safe))
                             (##car _%e445789445986%_)))
                          (_%tl445791445993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e445789445986%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd445790445990%_))
                          (if (let ((__tmp449323 |gxc[1]#_g449324_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp449323
                                 _%hd445790445990%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl445791445993%_))
                                  (let ((_%e445792445996%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl445791445993%_))))
                                    (let ((_%hd445793446000%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e445792445996%_)))
                                          (_%tl445794446003%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e445792445996%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl445794446003%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl445788445983%_))
                                              (let ((_%e445795446006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl445788445983%_))))
                                                (let ((_%hd445796446010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e445795446006%_)))
                                                      (_%tl445797446013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e445795446006%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd445796446010%_))
                                                      (let ((_%e445798446016%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd445796446010%_))))
                (if (equal? _%e445798446016%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl445797446013%_))
                        (let ((_%e445799446020%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl445797446013%_))))
                          (let ((_%hd445800446024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e445799446020%_)))
                                (_%tl445801446027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e445799446020%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd445800446024%_))
                                (let ((_%e445802446030%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd445800446024%_))))
                                  (let ((_%hd445803446034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e445802446030%_)))
                                        (_%tl445804446037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e445802446030%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd445803446034%_))
                                        (if (let ((__tmp449325
                                                   |gxc[1]#_g449326_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp449325
                                               _%hd445803446034%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl445804446037%_))
                                                (let ((_%e445805446040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl445804446037%_))))
                                                  (let ((_%hd445806446044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e445805446040%_)))
                                                        (_%tl445807446047%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e445805446040%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl445807446047%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl445801446027%_))
                                                            ((lambda (_%g445735446050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g445736446052%_
                              _%g445737446053%_
                              _%g445738446054%_
                              _%g445739446055%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-e _%g445736446052%_))
                           (cons _%g445736446052%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%g445738446054%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g445735446050%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd445806446044%_
                     _%hd445793446000%_
                     _%hd445780445956%_
                     _%hd445767445912%_
                     _%hd445754445868%_)
                    (_%g445733445813%_ _%g445734445817%_))
                (_%g445733445813%_ _%g445734445817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g445733445813%_
                                                 _%g445734445817%_))
                                            (_%g445733445813%_
                                             _%g445734445817%_))
                                        (_%g445733445813%_
                                         _%g445734445817%_))))
                                (_%g445733445813%_ _%g445734445817%_))))
                        (_%g445733445813%_ _%g445734445817%_))
                    (_%g445733445813%_ _%g445734445817%_)))
              (_%g445733445813%_ _%g445734445817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g445733445813%_
                                               _%g445734445817%_))
                                          (_%g445733445813%_
                                           _%g445734445817%_))))
                                  (_%g445733445813%_ _%g445734445817%_))
                              (_%g445733445813%_ _%g445734445817%_))
                          (_%g445733445813%_ _%g445734445817%_))))
                  (_%g445733445813%_ _%g445734445817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g445733445813%_
                                                   _%g445734445817%_))
                                              (_%g445733445813%_
                                               _%g445734445817%_)))
                                        (_%g445733445813%_
                                         _%g445734445817%_))))
                                (_%g445733445813%_ _%g445734445817%_))
                            (_%g445733445813%_ _%g445734445817%_))))
                    (_%g445733445813%_ _%g445734445817%_))
                (_%g445733445813%_ _%g445734445817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g445733445813%_
                                                     _%g445734445817%_))))
                                            (_%g445733445813%_
                                             _%g445734445817%_))))
                                    (_%g445733445813%_ _%g445734445817%_))
                                (_%g445733445813%_ _%g445734445817%_)))
                          (_%g445733445813%_ _%g445734445817%_))))
                  (_%g445733445813%_ _%g445734445817%_))
              (_%g445733445813%_ _%g445734445817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g445733445813%_
                                               _%g445734445817%_))
                                          (_%g445733445813%_
                                           _%g445734445817%_))
                                      (_%g445733445813%_ _%g445734445817%_))))
                              (_%g445733445813%_ _%g445734445817%_))))
                      (_%g445733445813%_ _%g445734445817%_))
                  (_%g445733445813%_ _%g445734445817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g445733445813%_
                                                     _%g445734445817%_))))
                                            (_%g445733445813%_
                                             _%g445734445817%_))
                                        (_%g445733445813%_
                                         _%g445734445817%_))))
                                (_%g445733445813%_ _%g445734445817%_))
                            (_%g445733445813%_ _%g445734445817%_))
                        (_%g445733445813%_ _%g445734445817%_))))
                (_%g445733445813%_ _%g445734445817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g445733445813%_
                                                 _%g445734445817%_))
                                            (_%g445733445813%_
                                             _%g445734445817%_)))
                                      (_%g445733445813%_ _%g445734445817%_))))
                              (_%g445733445813%_ _%g445734445817%_))))
                      (_%g445733445813%_ _%g445734445817%_)))))
          (_%g445732446115%_ _%sig445730%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx446887%_)
        (let* ((_%g446890446908%_
                (lambda (_%g446891446904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g446891446904%_))))
               (_%g446889446963%_
                (lambda (_%g446891446912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g446891446912%_))
                      (let ((_%e446894446915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g446891446912%_))))
                        (let ((_%hd446895446919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e446894446915%_)))
                              (_%tl446896446922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e446894446915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl446896446922%_))
                              (let ((_%e446897446925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl446896446922%_))))
                                (let ((_%hd446898446929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e446897446925%_)))
                                      (_%tl446899446932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e446897446925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl446899446932%_))
                                      (let ((_%e446900446935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl446899446932%_))))
                                        (let ((_%hd446901446939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e446900446935%_)))
                                              (_%tl446902446942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e446900446935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl446902446942%_))
                                              ((lambda (_%g446892446945%_
                                                        _%g446893446947%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g446893446947%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%g446892446945%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx446887%_
                                                        _%g446893446947%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx446887%_
                                                        _%g446892446945%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%g446893446947%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%g446892446945%_
                                                         '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g446890446908%_
                                                      _%g446891446912%_)))
                                               _%hd446901446939%_
                                               _%hd446898446929%_)
                                              (_%g446890446908%_
                                               _%g446891446912%_))))
                                      (_%g446890446908%_ _%g446891446912%_))))
                              (_%g446890446908%_ _%g446891446912%_))))
                      (_%g446890446908%_ _%g446891446912%_)))))
          (_%g446889446963%_ _%stx446887%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx446967%_)
        (let* ((_%g446970446994%_
                (lambda (_%g446971446990%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g446971446990%_))))
               (_%g446969447275%_
                (lambda (_%g446971446998%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g446971446998%_))
                      (let ((_%e446974447001%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g446971446998%_))))
                        (let ((_%hd446975447005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e446974447001%_)))
                              (_%tl446976447008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e446974447001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl446976447008%_))
                              (let ((_%e446977447011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl446976447008%_))))
                                (let ((_%hd446978447015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e446977447011%_)))
                                      (_%tl446979447018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e446977447011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl446979447018%_))
                                      (let ((_g449327_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl446979447018%_
                                                '0))))
                                        (begin
                                          (let ((_g449328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g449327_)
                                                       (##values-length
                                                        _g449327_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g449328_ 2)))
                                                (error "Context expects 2 values"
                                                       _g449328_)))
                                          (let ((_%target446980447021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g449327_ 0)))
                                                (_%tl446982447024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g449327_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl446982447024%_))
                                                (letrec ((_%loop446983447027%_
                                                          (lambda (_%hd446981447031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature446987447034%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd446981447031%_))
                        (let ((_%e446984447036%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd446981447031%_))))
                          (let ((_%lp-hd446985447040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e446984447036%_)))
                                (_%lp-tl446986447043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e446984447036%_))))
                            (_%loop446983447027%_
                             _%lp-tl446986447043%_
                             (cons _%lp-hd446985447040%_
                                   _%signature446987447034%_))))
                        (let ((_%signature446988447046%_
                               (reverse _%signature446987447034%_)))
                          ((lambda (_%g446972447049%_ _%g446973447051%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g446973447051%_))
                                 (let* ((_%g447069447084%_
                                         (lambda (_%g447070447080%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g447070447080%_))))
                                        (_%g447068447263%_
                                         (lambda (_%g447070447088%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g447070447088%_))
                                               (let ((_%e447073447091%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g447070447088%_))))
                                                 (let ((_%hd447074447095%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e447073447091%_)))
                                                       (_%tl447075447098%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e447073447091%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl447075447098%_))
                                                       (let ((_%e447076447101%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl447075447098%_))))
                 (let ((_%hd447077447105%_
                        (let ()
                          (declare (not safe))
                          (##car _%e447076447101%_)))
                       (_%tl447078447108%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e447076447101%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl447078447108%_))
                       ((lambda (_%g447071447111%_ _%g447072447113%_)
                          (let* ((_%g447129447137%_
                                  (lambda (_%g447130447133%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g447130447133%_))))
                                 (_%g447128447259%_
                                  (lambda (_%g447130447141%_)
                                    ((lambda (_%g447131447144%_)
                                       (let* ((_%unchecked447157%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%g447071447111%_))
                                              (_%g447160447168%_
                                               (lambda (_%g447161447164%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g447161447164%_))))
                                              (_%g447159447191%_
                                               (lambda (_%g447161447172%_)
                                                 ((lambda (_%g447162447175%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g447131447144%_
                                                                (cons _%g447162447175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g447161447172%_))))
                                         (_%g447159447191%_
                                          (if _%unchecked447157%_
                                              (let* ((_%g447195447210%_
                                                      (lambda (_%g447196447206%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g447196447206%_))))
                                                     (_%g447194447255%_
                                                      (lambda (_%g447196447214%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g447196447214%_))
                                                            (let ((_%e447199447217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g447196447214%_))))
                      (let ((_%hd447200447221%_
                             (let ()
                               (declare (not safe))
                               (##car _%e447199447217%_)))
                            (_%tl447201447224%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e447199447217%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl447201447224%_))
                            (let ((_%e447202447227%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl447201447224%_))))
                              (let ((_%hd447203447231%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e447202447227%_)))
                                    (_%tl447204447234%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e447202447227%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl447204447234%_))
                                    ((lambda (_%g447197447237%_
                                              _%g447198447239%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%g447198447239%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%g447072447113%_ '()))
                             (cons '#f
                                   (cons 'signature:
                                         (cons _%g447197447237%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd447203447231%_
                                     _%hd447200447221%_)
                                    (_%g447195447210%_ _%g447196447214%_))))
                            (_%g447195447210%_ _%g447196447214%_))))
                    (_%g447195447210%_ _%g447196447214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g447194447255%_
                                                 _%unchecked447157%_))
                                              '(begin)))))
                                     _%g447130447141%_))))
                            (_%g447128447259%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%g446973447051%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%g447072447113%_ '()))
                   (cons '#f (cons 'signature: (cons _%g447071447111%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd447077447105%_
                        _%hd447074447095%_)
                       (_%g447069447084%_ _%g447070447088%_))))
               (_%g447069447084%_ _%g447070447088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g447069447084%_
                                                _%g447070447088%_)))))
                                   (_%g447068447263%_
                                    (|gxc[1]#parse-signature|
                                     _%stx446967%_
                                     _%g446973447051%_
                                     (let ((__tmp449329
                                            (lambda (_%g447266447269%_
                                                     _%g447267447272%_)
                                              (cons _%g447266447269%_
                                                    _%g447267447272%_))))
                                       (declare (not safe))
                                       (foldr__0
                                        __tmp449329
                                        '()
                                        _%g446972447049%_)))))
                                 (_%g446970446994%_ _%g446971446998%_)))
                           _%signature446988447046%_
                           _%hd446978447015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop446983447027%_
                                                   _%target446980447021%_
                                                   '()))
                                                (_%g446970446994%_
                                                 _%g446971446998%_)))))
                                      (_%g446970446994%_ _%g446971446998%_))))
                              (_%g446970446994%_ _%g446971446998%_))))
                      (_%g446970446994%_ _%g446971446998%_)))))
          (_%g446969447275%_ _%stx446967%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx447280%_)
        (let* ((_%g447283447307%_
                (lambda (_%g447284447303%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g447284447303%_))))
               (_%g447282448182%_
                (lambda (_%g447284447311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g447284447311%_))
                      (let ((_%e447287447314%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g447284447311%_))))
                        (let ((_%hd447288447318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e447287447314%_)))
                              (_%tl447289447321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e447287447314%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl447289447321%_))
                              (let ((_%e447290447324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl447289447321%_))))
                                (let ((_%hd447291447328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e447290447324%_)))
                                      (_%tl447292447331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e447290447324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl447292447331%_))
                                      (let ((_g449330_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl447292447331%_
                                                '0))))
                                        (begin
                                          (let ((_g449331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g449330_)
                                                       (##values-length
                                                        _g449330_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g449331_ 2)))
                                                (error "Context expects 2 values"
                                                       _g449331_)))
                                          (let ((_%target447293447334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g449330_ 0)))
                                                (_%tl447295447337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g449330_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl447295447337%_))
                                                (letrec ((_%loop447296447340%_
                                                          (lambda (_%hd447294447344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature447300447347%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd447294447344%_))
                        (let ((_%e447297447349%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd447294447344%_))))
                          (let ((_%lp-hd447298447353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e447297447349%_)))
                                (_%lp-tl447299447356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e447297447349%_))))
                            (_%loop447296447340%_
                             _%lp-tl447299447356%_
                             (cons _%lp-hd447298447353%_
                                   _%case-signature447300447347%_))))
                        (let ((_%case-signature447301447359%_
                               (reverse _%case-signature447300447347%_)))
                          ((lambda (_%g447285447362%_ _%g447286447364%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g447286447364%_))
                                 (let* ((_%signatures447395%_
                                         (map (lambda (_%g447381447383%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx447280%_
                                                 _%g447286447364%_
                                                 _%g447381447383%_))
                                              (let ((__tmp449332
                                                     (lambda (_%g447386447389%_
                                                              _%g447387447392%_)
                                                       (cons _%g447386447389%_
                                                             _%g447387447392%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp449332
                                                 '()
                                                 _%g447285447362%_))))
                                        (_%g447398447424%_
                                         (lambda (_%g447399447420%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g447399447420%_))))
                                        (_%g447397448178%_
                                         (lambda (_%g447399447428%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g447399447428%_))
                                               (let ((_g449333_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g447399447428%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g449334_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g449333_)
                        (##values-length _g449333_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g449334_ 2)))
                 (error "Context expects 2 values" _g449334_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target447402447431%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g449333_
                                                             0)))
                                                         (_%tl447404447434%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g449333_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl447404447434%_))
                                                         (letrec ((_%loop447405447437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd447403447441%_
                                    _%sig447409447444%_
                                    _%arity447410447445%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd447403447441%_))
                                 (let ((_%e447406447447%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd447403447441%_))))
                                   (let ((_%lp-hd447407447451%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e447406447447%_)))
                                         (_%lp-tl447408447454%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e447406447447%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd447407447451%_))
                                         (let ((_%e447413447457%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd447407447451%_))))
                                           (let ((_%hd447414447461%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e447413447457%_)))
                                                 (_%tl447415447464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e447413447457%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl447415447464%_))
                                                 (let ((_%e447416447467%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl447415447464%_))))
                                                   (let ((_%hd447417447471%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e447416447467%_)))
                                                         (_%tl447418447474%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e447416447467%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl447418447474%_))
                                                         (_%loop447405447437%_
                                                          _%lp-tl447408447454%_
                                                          (cons _%hd447417447471%_
                                                                _%sig447409447444%_)
                                                          (cons _%hd447414447461%_
                                                                _%arity447410447445%_))
                                                         (_%g447398447424%_
                                                          _%g447399447428%_))))
                                                 (_%g447398447424%_
                                                  _%g447399447428%_))))
                                         (_%g447398447424%_
                                          _%g447399447428%_))))
                                 (let ((_%sig447411447477%_
                                        (reverse _%sig447409447444%_))
                                       (_%arity447412447479%_
                                        (reverse _%arity447410447445%_)))
                                   ((lambda (_%g447400447481%_
                                             _%g447401447483%_)
                                      (let* ((_%g447500447508%_
                                              (lambda (_%g447501447504%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g447501447504%_))))
                                             (_%g447499448163%_
                                              (lambda (_%g447501447512%_)
                                                ((lambda (_%g447502447515%_)
                                                   (let* ((_%g447528447536%_
                                                           (lambda (_%g447529447532%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g447529447532%_))))
                  (_%g447527447558%_
                   (lambda (_%g447529447540%_)
                     ((lambda (_%g447530447543%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%g447502447515%_
                                    (cons _%g447530447543%_ '()))))
                      _%g447529447540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g447527447558%_
                                                      (let ((_g449335_
                                                             (let _%loop447562%_ ((_%rest447565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures447395%_)
                                          (_%unchecked-proc447567%_ '#f)
                                          (_%unchecked-clauses447568%_ '()))
                       (let* ((_%rest447569447577%_ _%rest447565%_)
                              (_%else447571447589%_
                               (lambda ()
                                 (values _%unchecked-proc447567%_
                                         (reverse!
                                          _%unchecked-clauses447568%_))))
                              (_%K447573448030%_
                               (lambda (_%rest447593%_ _%hd447595%_)
                                 (let* ((_%g447597447684%_
                                         (lambda (_%g447598447680%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g447598447680%_))))
                                        (_%g447596448026%_
                                         (lambda (_%g447598447688%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g447598447688%_))
                                               (let ((_%e447605447691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g447598447688%_))))
                                                 (let ((_%hd447606447695%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e447605447691%_)))
                                                       (_%tl447607447698%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e447605447691%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl447607447698%_))
                                                       (let ((_%e447608447701%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl447607447698%_))))
                 (let ((_%hd447609447705%_
                        (let ()
                          (declare (not safe))
                          (##car _%e447608447701%_)))
                       (_%tl447610447708%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e447608447701%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd447609447705%_))
                       (let ((_%e447611447711%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd447609447705%_))))
                         (let ((_%hd447612447715%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e447611447711%_)))
                               (_%tl447613447718%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e447611447711%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl447613447718%_))
                               (let ((_%e447614447721%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl447613447718%_))))
                                 (let ((_%hd447615447725%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e447614447721%_)))
                                       (_%tl447616447728%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e447614447721%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd447615447725%_))
                                       (let ((_%e447617447731%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd447615447725%_))))
                                         (if (equal? _%e447617447731%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl447616447728%_))
                                                 (let ((_%e447618447735%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl447616447728%_))))
                                                   (let ((_%hd447619447739%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e447618447735%_)))
                                                         (_%tl447620447742%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e447618447735%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd447619447739%_))
                                                         (let ((_%e447621447745%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd447619447739%_))))
                   (let ((_%hd447622447749%_
                          (let ()
                            (declare (not safe))
                            (##car _%e447621447745%_)))
                         (_%tl447623447752%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e447621447745%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd447622447749%_))
                         (if (let ((__tmp449337 |gxc[1]#_g449338_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp449337
                                _%hd447622447749%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl447623447752%_))
                                 (let ((_%e447624447755%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl447623447752%_))))
                                   (let ((_%hd447625447759%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e447624447755%_)))
                                         (_%tl447626447762%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e447624447755%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl447626447762%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl447620447742%_))
                                             (let ((_%e447627447765%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl447620447742%_))))
                                               (let ((_%hd447628447769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e447627447765%_)))
                                                     (_%tl447629447772%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e447627447765%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd447628447769%_))
                                                     (let ((_%e447630447775%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd447628447769%_))))
                                                       (if (equal? _%e447630447775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl447629447772%_))
                       (let ((_%e447631447779%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl447629447772%_))))
                         (let ((_%hd447632447783%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e447631447779%_)))
                               (_%tl447633447786%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e447631447779%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd447632447783%_))
                               (let ((_%e447634447789%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd447632447783%_))))
                                 (let ((_%hd447635447793%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e447634447789%_)))
                                       (_%tl447636447796%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e447634447789%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd447635447793%_))
                                       (if (let ((__tmp449339
                                                  |gxc[1]#_g449340_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp449339
                                              _%hd447635447793%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl447636447796%_))
                                               (let ((_%e447637447799%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl447636447796%_))))
                                                 (let ((_%hd447638447803%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e447637447799%_)))
                                                       (_%tl447639447806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e447637447799%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl447639447806%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl447633447786%_))
                                                           (let ((_%e447640447809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl447633447786%_))))
                     (let ((_%hd447641447813%_
                            (let ()
                              (declare (not safe))
                              (##car _%e447640447809%_)))
                           (_%tl447642447816%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e447640447809%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd447641447813%_))
                           (let ((_%e447643447819%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd447641447813%_))))
                             (if (equal? _%e447643447819%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl447642447816%_))
                                     (let ((_%e447644447823%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl447642447816%_))))
                                       (let ((_%hd447645447827%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e447644447823%_)))
                                             (_%tl447646447830%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e447644447823%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd447645447827%_))
                                             (let ((_%e447647447833%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd447645447827%_))))
                                               (let ((_%hd447648447837%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e447647447833%_)))
                                                     (_%tl447649447840%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e447647447833%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd447648447837%_))
                                                     (if (let ((__tmp449341
                                                                |gxc[1]#_g449342_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp449341
                                                            _%hd447648447837%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl447649447840%_))
                     (let ((_%e447650447843%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl447649447840%_))))
                       (let ((_%hd447651447847%_
                              (let ()
                                (declare (not safe))
                                (##car _%e447650447843%_)))
                             (_%tl447652447850%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e447650447843%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl447652447850%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl447646447830%_))
                                 (let ((_%e447653447853%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl447646447830%_))))
                                   (let ((_%hd447654447857%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e447653447853%_)))
                                         (_%tl447655447860%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e447653447853%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd447654447857%_))
                                         (let ((_%e447656447863%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd447654447857%_))))
                                           (if (equal? _%e447656447863%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl447655447860%_))
                                                   (let ((_%e447657447867%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl447655447860%_))))
                                                     (let ((_%hd447658447871%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e447657447867%_)))
                                                           (_%tl447659447874%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e447657447867%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd447658447871%_))
                                                           (let ((_%e447660447877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd447658447871%_))))
                     (let ((_%hd447661447881%_
                            (let ()
                              (declare (not safe))
                              (##car _%e447660447877%_)))
                           (_%tl447662447884%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e447660447877%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd447661447881%_))
                           (if (let ((__tmp449343 |gxc[1]#_g449344_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp449343
                                  _%hd447661447881%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl447662447884%_))
                                   (let ((_%e447663447887%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl447662447884%_))))
                                     (let ((_%hd447664447891%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e447663447887%_)))
                                           (_%tl447665447894%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e447663447887%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl447665447894%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl447659447874%_))
                                               (let ((_%e447666447897%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl447659447874%_))))
                                                 (let ((_%hd447667447901%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e447666447897%_)))
                                                       (_%tl447668447904%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e447666447897%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd447667447901%_))
                                                       (let ((_%e447669447907%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd447667447901%_))))
                 (if (equal? _%e447669447907%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl447668447904%_))
                         (let ((_%e447670447911%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl447668447904%_))))
                           (let ((_%hd447671447915%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e447670447911%_)))
                                 (_%tl447672447918%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e447670447911%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd447671447915%_))
                                 (let ((_%e447673447921%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd447671447915%_))))
                                   (let ((_%hd447674447925%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e447673447921%_)))
                                         (_%tl447675447928%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e447673447921%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd447674447925%_))
                                         (if (let ((__tmp449345
                                                    |gxc[1]#_g449346_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp449345
                                                _%hd447674447925%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl447675447928%_))
                                                 (let ((_%e447676447931%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl447675447928%_))))
                                                   (let ((_%hd447677447935%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e447676447931%_)))
                                                         (_%tl447678447938%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e447676447931%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl447678447938%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl447672447918%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl447610447708%_))
                         ((lambda (_%g447599447941%_
                                   _%g447600447943%_
                                   _%g447601447944%_
                                   _%g447602447945%_
                                   _%g447603447946%_
                                   _%g447604447947%_)
                            (let ((_%clause448018%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%g447604447947%_
                                                           '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g447602447945%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g447599447941%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked448020%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g447600447943%_))))
                              (_%loop447562%_
                               _%rest447593%_
                               (let ((_%$e448022%_ _%unchecked448020%_))
                                 (if _%$e448022%_
                                     _%$e448022%_
                                     _%unchecked-proc447567%_))
                               (cons _%clause448018%_
                                     _%unchecked-clauses447568%_))))
                          _%hd447677447935%_
                          _%hd447664447891%_
                          _%hd447651447847%_
                          _%hd447638447803%_
                          _%hd447625447759%_
                          _%hd447606447695%_)
                         (_%g447597447684%_ _%g447598447688%_))
                     (_%g447597447684%_ _%g447598447688%_))
                 (_%g447597447684%_ _%g447598447688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g447597447684%_
                                                  _%g447598447688%_))
                                             (_%g447597447684%_
                                              _%g447598447688%_))
                                         (_%g447597447684%_
                                          _%g447598447688%_))))
                                 (_%g447597447684%_ _%g447598447688%_))))
                         (_%g447597447684%_ _%g447598447688%_))
                     (_%g447597447684%_ _%g447598447688%_)))
               (_%g447597447684%_ _%g447598447688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g447597447684%_
                                                _%g447598447688%_))
                                           (_%g447597447684%_
                                            _%g447598447688%_))))
                                   (_%g447597447684%_ _%g447598447688%_))
                               (_%g447597447684%_ _%g447598447688%_))
                           (_%g447597447684%_ _%g447598447688%_))))
                   (_%g447597447684%_ _%g447598447688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g447597447684%_
                                                    _%g447598447688%_))
                                               (_%g447597447684%_
                                                _%g447598447688%_)))
                                         (_%g447597447684%_
                                          _%g447598447688%_))))
                                 (_%g447597447684%_ _%g447598447688%_))
                             (_%g447597447684%_ _%g447598447688%_))))
                     (_%g447597447684%_ _%g447598447688%_))
                 (_%g447597447684%_ _%g447598447688%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g447597447684%_
                                                      _%g447598447688%_))))
                                             (_%g447597447684%_
                                              _%g447598447688%_))))
                                     (_%g447597447684%_ _%g447598447688%_))
                                 (_%g447597447684%_ _%g447598447688%_)))
                           (_%g447597447684%_ _%g447598447688%_))))
                   (_%g447597447684%_ _%g447598447688%_))
               (_%g447597447684%_ _%g447598447688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g447597447684%_
                                                _%g447598447688%_))
                                           (_%g447597447684%_
                                            _%g447598447688%_))
                                       (_%g447597447684%_ _%g447598447688%_))))
                               (_%g447597447684%_ _%g447598447688%_))))
                       (_%g447597447684%_ _%g447598447688%_))
                   (_%g447597447684%_ _%g447598447688%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g447597447684%_
                                                      _%g447598447688%_))))
                                             (_%g447597447684%_
                                              _%g447598447688%_))
                                         (_%g447597447684%_
                                          _%g447598447688%_))))
                                 (_%g447597447684%_ _%g447598447688%_))
                             (_%g447597447684%_ _%g447598447688%_))
                         (_%g447597447684%_ _%g447598447688%_))))
                 (_%g447597447684%_ _%g447598447688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g447597447684%_
                                                  _%g447598447688%_))
                                             (_%g447597447684%_
                                              _%g447598447688%_)))
                                       (_%g447597447684%_ _%g447598447688%_))))
                               (_%g447597447684%_ _%g447598447688%_))))
                       (_%g447597447684%_ _%g447598447688%_))))
               (_%g447597447684%_ _%g447598447688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g447597447684%_
                                                _%g447598447688%_)))))
                                   (_%g447596448026%_ _%hd447595%_)))))
                         (if (pair? _%rest447569447577%_)
                             (let ((_%hd447574448034%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest447569447577%_)))
                                   (_%tl447575448037%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest447569447577%_))))
                               (let* ((_%hd448040%_ _%hd447574448034%_)
                                      (_%rest448043%_ _%tl447575448037%_))
                                 (_%K447573448030%_
                                  _%rest448043%_
                                  _%hd448040%_)))
                             (_%else447571447589%_))))))
                (begin
                  (let ((_g449336_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g449335_)
                               (##values-length _g449335_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g449336_ 2)))
                        (error "Context expects 2 values" _g449336_)))
                  (let ((_%unchecked-proc448046%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g449335_ 0)))
                        (_%unchecked-clauses448048%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g449335_ 1))))
                    (if _%unchecked-proc448046%_
                        (let* ((_%g448050448074%_
                                (lambda (_%g448051448070%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g448051448070%_))))
                               (_%g448049448159%_
                                (lambda (_%g448051448078%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g448051448078%_))
                                      (let ((_%e448054448081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g448051448078%_))))
                                        (let ((_%hd448055448085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e448054448081%_)))
                                              (_%tl448056448088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e448054448081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl448056448088%_))
                                              (let ((_%e448057448091%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl448056448088%_))))
                                                (let ((_%hd448058448095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e448057448091%_)))
                                                      (_%tl448059448098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e448057448091%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd448058448095%_))
                                                      (let ((_g449347_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd448058448095%_ '0))))
                (begin
                  (let ((_g449348_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g449347_)
                               (##values-length _g449347_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g449348_ 2)))
                        (error "Context expects 2 values" _g449348_)))
                  (let ((_%target448060448101%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g449347_ 0)))
                        (_%tl448062448104%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g449347_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl448062448104%_))
                        (letrec ((_%loop448063448107%_
                                  (lambda (_%hd448061448111%_
                                           _%clause448067448114%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd448061448111%_))
                                        (let ((_%e448064448116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd448061448111%_))))
                                          (let ((_%lp-hd448065448120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e448064448116%_)))
                                                (_%lp-tl448066448123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e448064448116%_))))
                                            (_%loop448063448107%_
                                             _%lp-tl448066448123%_
                                             (cons _%lp-hd448065448120%_
                                                   _%clause448067448114%_))))
                                        (let ((_%clause448068448126%_
                                               (reverse _%clause448067448114%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl448059448098%_))
                                              ((lambda (_%g448052448129%_
                                                        _%g448053448131%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%g448053448131%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp449349
                                                    (lambda (_%g448150448153%_
                                                             _%g448151448156%_)
                                                      (cons _%g448150448153%_
                                                            _%g448151448156%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp449349
                                                '()
                                                _%g448052448129%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause448068448126%_
                                               _%hd448055448085%_)
                                              (_%g448050448074%_
                                               _%g448051448078%_)))))))
                          (_%loop448063448107%_ _%target448060448101%_ '()))
                        (_%g448050448074%_ _%g448051448078%_)))))
              (_%g448050448074%_ _%g448051448078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g448050448074%_
                                               _%g448051448078%_))))
                                      (_%g448050448074%_ _%g448051448078%_)))))
                          (_%g448049448159%_
                           (list _%unchecked-proc448046%_
                                 _%unchecked-clauses448048%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g447501447512%_))))
                                        (_%g447499448163%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g447286447364%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%g447400447481%_
                                          _%g447401447483%_))
                                       (let ((__tmp449350
                                              (lambda (_%g448166448170%_
                                                       _%g448167448173%_
                                                       _%g448168448175%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g448167448173%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g448166448170%_ '())))))
              _%g448168448175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr__1
                                          __tmp449350
                                          '()
                                          _%g447400447481%_
                                          _%g447401447483%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig447411447477%_
                                    _%arity447412447479%_))))))
                   (_%loop447405447437%_ _%target447402447431%_ '() '()))
                 (_%g447398447424%_ _%g447399447428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g447398447424%_
                                                _%g447399447428%_)))))
                                   (_%g447397448178%_ _%signatures447395%_))
                                 (_%g447283447307%_ _%g447284447311%_)))
                           _%case-signature447301447359%_
                           _%hd447291447328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop447296447340%_
                                                   _%target447293447334%_
                                                   '()))
                                                (_%g447283447307%_
                                                 _%g447284447311%_)))))
                                      (_%g447283447307%_ _%g447284447311%_))))
                              (_%g447283447307%_ _%g447284447311%_))))
                      (_%g447283447307%_ _%g447284447311%_)))))
          (_%g447282448182%_ _%stx447280%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx448190%_)
        (let* ((_%__stx449170449171%_ _%$stx448190%_)
               (_%g448196448256%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx449170449171%_)))))
          (let ((_%__kont449173449174%_
                 (lambda (_%g448198448478%_ _%g448199448480%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g448199448480%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g448199448480%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g448198448478%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont449175449176%_
                 (lambda (_%g448213448403%_
                          _%g448214448405%_
                          _%g448215448406%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g448215448406%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g448215448406%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g448214448405%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g448213448403%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont449177449178%_
                 (lambda (_%g448232448317%_
                          _%g448233448319%_
                          _%g448234448320%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g448234448320%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%g448234448320%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g448233448319%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g448232448317%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx449170449171%_))
                (let ((_%e448200448434%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx449170449171%_))))
                  (let ((_%tl448202448441%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e448200448434%_)))
                        (_%hd448201448438%_
                         (let ()
                           (declare (not safe))
                           (##car _%e448200448434%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl448202448441%_))
                        (let ((_%e448203448444%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl448202448441%_))))
                          (let ((_%tl448205448451%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e448203448444%_)))
                                (_%hd448204448448%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e448203448444%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd448204448448%_))
                                (let ((_%e448206448454%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd448204448448%_))))
                                  (if (equal? _%e448206448454%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl448205448451%_))
                                          (let ((_%e448207448458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl448205448451%_))))
                                            (let ((_%tl448209448465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e448207448458%_)))
                                                  (_%hd448208448462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e448207448458%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl448209448465%_))
                                                  (let ((_%e448210448468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl448209448465%_))))
                                                    (let ((_%tl448212448475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e448210448468%_)))
                                                          (_%hd448211448472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e448210448468%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl448212448475%_))
                                                          (_%__kont449173449174%_
                                                           _%hd448211448472%_
                                                           _%hd448208448462%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g448196448256%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g448196448256%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g448196448256%_)))
                                      (if (equal? _%e448206448454%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl448205448451%_))
                                              (let ((_%e448223448373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl448205448451%_))))
                                                (let ((_%tl448225448380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e448223448373%_)))
                                                      (_%hd448224448377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e448223448373%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl448225448380%_))
                                                      (let ((_%e448226448383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl448225448380%_))))
                (let ((_%tl448228448390%_
                       (let () (declare (not safe)) (##cdr _%e448226448383%_)))
                      (_%hd448227448387%_
                       (let ()
                         (declare (not safe))
                         (##car _%e448226448383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl448228448390%_))
                      (let ((_%e448229448393%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl448228448390%_))))
                        (let ((_%tl448231448400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e448229448393%_)))
                              (_%hd448230448397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e448229448393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl448231448400%_))
                              (_%__kont449175449176%_
                               _%hd448230448397%_
                               _%hd448227448387%_
                               _%hd448224448377%_)
                              (let ()
                                (declare (not safe))
                                (_%g448196448256%_)))))
                      (let () (declare (not safe)) (_%g448196448256%_)))))
              (let () (declare (not safe)) (_%g448196448256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g448196448256%_)))
                                          (if (equal? _%e448206448454%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl448205448451%_))
                                                  (let ((_%e448242448287%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl448205448451%_))))
                                                    (let ((_%tl448244448294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e448242448287%_)))
                                                          (_%hd448243448291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e448242448287%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl448244448294%_))
                                                          (let ((_%e448245448297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl448244448294%_))))
                    (let ((_%tl448247448304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e448245448297%_)))
                          (_%hd448246448301%_
                           (let ()
                             (declare (not safe))
                             (##car _%e448245448297%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl448247448304%_))
                          (let ((_%e448248448307%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl448247448304%_))))
                            (let ((_%tl448250448314%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e448248448307%_)))
                                  (_%hd448249448311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e448248448307%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl448250448314%_))
                                  (_%__kont449177449178%_
                                   _%hd448249448311%_
                                   _%hd448246448301%_
                                   _%hd448243448291%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g448196448256%_)))))
                          (let () (declare (not safe)) (_%g448196448256%_)))))
                  (let () (declare (not safe)) (_%g448196448256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g448196448256%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g448196448256%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g448196448256%_)))))
                        (let () (declare (not safe)) (_%g448196448256%_)))))
                (let () (declare (not safe)) (_%g448196448256%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx448502%_)
        (let* ((_%g448506448526%_
                (lambda (_%g448507448522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g448507448522%_))))
               (_%g448505448595%_
                (lambda (_%g448507448530%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g448507448530%_))
                      (let ((_%e448509448533%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g448507448530%_))))
                        (let ((_%hd448510448537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e448509448533%_)))
                              (_%tl448511448540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e448509448533%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl448511448540%_))
                              (let ((_g449351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl448511448540%_
                                        '0))))
                                (begin
                                  (let ((_g449352_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g449351_)
                                               (##values-length _g449351_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g449352_ 2)))
                                        (error "Context expects 2 values"
                                               _g449352_)))
                                  (let ((_%target448512448543%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449351_ 0)))
                                        (_%tl448514448546%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g449351_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl448514448546%_))
                                        (letrec ((_%loop448515448549%_
                                                  (lambda (_%hd448513448553%_
                                                           _%decl448519448556%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd448513448553%_))
                                                        (let ((_%e448516448558%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd448513448553%_))))
                  (let ((_%lp-hd448517448562%_
                         (let ()
                           (declare (not safe))
                           (##car _%e448516448558%_)))
                        (_%lp-tl448518448565%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e448516448558%_))))
                    (_%loop448515448549%_
                     _%lp-tl448518448565%_
                     (cons _%lp-hd448517448562%_ _%decl448519448556%_))))
                (let ((_%decl448520448568%_ (reverse _%decl448519448556%_)))
                  ((lambda (_%g448508448571%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp449353
                                  (lambda (_%g448586448589%_ _%g448587448592%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g448586448589%_)
                                          _%g448587448592%_))))
                             (declare (not safe))
                             (foldr__0 __tmp449353 '() _%g448508448571%_))))
                   _%decl448520448568%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop448515448549%_
                                           _%target448512448543%_
                                           '()))
                                        (_%g448506448526%_
                                         _%g448507448530%_)))))
                              (_%g448506448526%_ _%g448507448530%_))))
                      (_%g448506448526%_ _%g448507448530%_)))))
          (_%g448505448595%_ _%$stx448502%_))))))
